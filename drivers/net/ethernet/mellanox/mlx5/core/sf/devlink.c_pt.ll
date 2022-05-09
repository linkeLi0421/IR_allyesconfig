; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/sf/devlink.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/sf/devlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.197 }
%union.anon.197 = type { %struct.anon.198 }
%struct.anon.198 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.199, %struct.trace_event, ptr, ptr, %union.anon.200, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.199 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.200 = type { ptr }
%union.anon.201 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.202 = type { %struct.bpf_raw_event_map }
%union.anon.203 = type { %struct.bpf_raw_event_map }
%union.anon.204 = type { %struct.bpf_raw_event_map }
%union.anon.205 = type { %struct.bpf_raw_event_map }
%union.anon.206 = type { %struct.bpf_raw_event_map }
%union.anon.207 = type { %struct.bpf_raw_event_map }
%union.anon.208 = type { %struct.bpf_raw_event_map }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
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
%struct.trace_event_raw_mlx5_sf_add = type { %struct.trace_entry, i32, i32, i32, i16, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_mlx5_sf_free = type { %struct.trace_entry, i32, i32, i32, i16, [0 x i8] }
%struct.trace_event_raw_mlx5_sf_hwc_alloc = type { %struct.trace_entry, i32, i32, i16, i32, [0 x i8] }
%struct.trace_event_raw_mlx5_sf_hwc_free = type { %struct.trace_entry, i32, i16, [0 x i8] }
%struct.trace_event_raw_mlx5_sf_hwc_deferred_free = type { %struct.trace_entry, i32, i16, [0 x i8] }
%struct.trace_event_raw_mlx5_sf_state_template = type { %struct.trace_entry, i32, i32, i32, i16, [0 x i8] }
%struct.trace_event_raw_mlx5_sf_update_state = type { %struct.trace_entry, i32, i32, i32, i16, i8, [0 x i8] }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.144 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.144 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.mlx5_sf_table = type { ptr, %struct.xarray, %struct.refcount_struct, %struct.completion, %struct.mutex, %struct.notifier_block, %struct.notifier_block, i8 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlx5_sf = type { %struct.devlink_port, i32, i32, i16, i16, i16 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.138, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.169, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
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
%struct.devlink_port_new_attrs = type { i32, i32, i32, i32, i16, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.137, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.137 = type { ptr }
%struct.mlx5_hca_cap = type { [1024 x i32], [1024 x i32] }
%struct.mlx5_vhca_state_event = type { i16, i16, i8 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_mlx5_sf_add = internal constant [12 x i8] c"mlx5_sf_add\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_sf_add = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_sf_add }, align 4
@__tracepoint_mlx5_sf_add = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_sf_add, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_sf_add, ptr null, ptr @__traceiter_mlx5_sf_add, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_sf_add = internal constant ptr @__tracepoint_mlx5_sf_add, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlx5_sf_free = internal constant [13 x i8] c"mlx5_sf_free\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_sf_free = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_sf_free }, align 4
@__tracepoint_mlx5_sf_free = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_sf_free, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_sf_free, ptr null, ptr @__traceiter_mlx5_sf_free, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_sf_free = internal constant ptr @__tracepoint_mlx5_sf_free, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlx5_sf_hwc_alloc = internal constant [18 x i8] c"mlx5_sf_hwc_alloc\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_sf_hwc_alloc = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_sf_hwc_alloc }, align 4
@__tracepoint_mlx5_sf_hwc_alloc = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_sf_hwc_alloc, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_sf_hwc_alloc, ptr null, ptr @__traceiter_mlx5_sf_hwc_alloc, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_sf_hwc_alloc = internal constant ptr @__tracepoint_mlx5_sf_hwc_alloc, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlx5_sf_hwc_free = internal constant [17 x i8] c"mlx5_sf_hwc_free\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_sf_hwc_free = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_sf_hwc_free }, align 4
@__tracepoint_mlx5_sf_hwc_free = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_sf_hwc_free, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_sf_hwc_free, ptr null, ptr @__traceiter_mlx5_sf_hwc_free, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_sf_hwc_free = internal constant ptr @__tracepoint_mlx5_sf_hwc_free, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlx5_sf_hwc_deferred_free = internal constant [26 x i8] c"mlx5_sf_hwc_deferred_free\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_sf_hwc_deferred_free = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_sf_hwc_deferred_free }, align 4
@__tracepoint_mlx5_sf_hwc_deferred_free = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_sf_hwc_deferred_free, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_sf_hwc_deferred_free, ptr null, ptr @__traceiter_mlx5_sf_hwc_deferred_free, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_sf_hwc_deferred_free = internal constant ptr @__tracepoint_mlx5_sf_hwc_deferred_free, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlx5_sf_activate = internal constant [17 x i8] c"mlx5_sf_activate\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_sf_activate = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_sf_activate }, align 4
@__tracepoint_mlx5_sf_activate = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_sf_activate, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_sf_activate, ptr null, ptr @__traceiter_mlx5_sf_activate, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_sf_activate = internal constant ptr @__tracepoint_mlx5_sf_activate, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlx5_sf_deactivate = internal constant [19 x i8] c"mlx5_sf_deactivate\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_sf_deactivate = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_sf_deactivate }, align 4
@__tracepoint_mlx5_sf_deactivate = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_sf_deactivate, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_sf_deactivate, ptr null, ptr @__traceiter_mlx5_sf_deactivate, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_sf_deactivate = internal constant ptr @__tracepoint_mlx5_sf_deactivate, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlx5_sf_update_state = internal constant [21 x i8] c"mlx5_sf_update_state\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_sf_update_state = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_sf_update_state }, align 4
@__tracepoint_mlx5_sf_update_state = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_sf_update_state, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_sf_update_state, ptr null, ptr @__traceiter_mlx5_sf_update_state, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_sf_update_state = internal constant ptr @__tracepoint_mlx5_sf_update_state, section "__tracepoints_ptrs", align 4
@str__mlx5__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mlx5\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_mlx5_sf_add = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.197 { %struct.anon.198 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.197 { %struct.anon.198 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.197 { %struct.anon.198 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.197 { %struct.anon.198 { ptr @.str.10, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.197 { %struct.anon.198 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_mlx5_sf_add = internal global %struct.trace_event_class { ptr @str__mlx5__trace_system_name, ptr @trace_event_raw_event_mlx5_sf_add, ptr @perf_trace_mlx5_sf_add, ptr @trace_event_reg, ptr @trace_event_fields_mlx5_sf_add, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlx5_sf_add, i64 24), ptr getelementptr (i8, ptr @event_class_mlx5_sf_add, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlx5_sf_add = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlx5_sf_add, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlx5_sf_add = internal global { [137 x i8], [55 x i8] } { [137 x i8] c"\22(%s) port_index=%u controller=%u hw_id=0x%x sfnum=%u\0A\22, __get_str(devname), REC->port_index, REC->controller, REC->hw_fn_id, REC->sfnum\00", [55 x i8] zeroinitializer }, align 32
@event_mlx5_sf_add = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_sf_add, %union.anon.199 { ptr @__tracepoint_mlx5_sf_add }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_sf_add }, ptr @print_fmt_mlx5_sf_add, ptr null, %union.anon.200 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_sf_add = internal global ptr @event_mlx5_sf_add, section "_ftrace_events", align 4
@trace_event_fields_mlx5_sf_free = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.197 { %struct.anon.198 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.197 { %struct.anon.198 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.197 { %struct.anon.198 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.197 { %struct.anon.198 { ptr @.str.10, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_mlx5_sf_free = internal global %struct.trace_event_class { ptr @str__mlx5__trace_system_name, ptr @trace_event_raw_event_mlx5_sf_free, ptr @perf_trace_mlx5_sf_free, ptr @trace_event_reg, ptr @trace_event_fields_mlx5_sf_free, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlx5_sf_free, i64 24), ptr getelementptr (i8, ptr @event_class_mlx5_sf_free, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlx5_sf_free = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlx5_sf_free, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlx5_sf_free = internal global { [116 x i8], [44 x i8] } { [116 x i8] c"\22(%s) port_index=%u controller=%u hw_id=0x%x\0A\22, __get_str(devname), REC->port_index, REC->controller, REC->hw_fn_id\00", [44 x i8] zeroinitializer }, align 32
@event_mlx5_sf_free = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_sf_free, %union.anon.199 { ptr @__tracepoint_mlx5_sf_free }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_sf_free }, ptr @print_fmt_mlx5_sf_free, ptr null, %union.anon.200 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_sf_free = internal global ptr @event_mlx5_sf_free, section "_ftrace_events", align 4
@trace_event_fields_mlx5_sf_hwc_alloc = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.197 { %struct.anon.198 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.197 { %struct.anon.198 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.197 { %struct.anon.198 { ptr @.str.10, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.197 { %struct.anon.198 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_mlx5_sf_hwc_alloc = internal global %struct.trace_event_class { ptr @str__mlx5__trace_system_name, ptr @trace_event_raw_event_mlx5_sf_hwc_alloc, ptr @perf_trace_mlx5_sf_hwc_alloc, ptr @trace_event_reg, ptr @trace_event_fields_mlx5_sf_hwc_alloc, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlx5_sf_hwc_alloc, i64 24), ptr getelementptr (i8, ptr @event_class_mlx5_sf_hwc_alloc, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlx5_sf_hwc_alloc = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlx5_sf_hwc_alloc, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlx5_sf_hwc_alloc = internal global { [106 x i8], [54 x i8] } { [106 x i8] c"\22(%s) controller=%u hw_id=0x%x sfnum=%u\0A\22, __get_str(devname), REC->controller, REC->hw_fn_id, REC->sfnum\00", [54 x i8] zeroinitializer }, align 32
@event_mlx5_sf_hwc_alloc = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_sf_hwc_alloc, %union.anon.199 { ptr @__tracepoint_mlx5_sf_hwc_alloc }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_sf_hwc_alloc }, ptr @print_fmt_mlx5_sf_hwc_alloc, ptr null, %union.anon.200 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_sf_hwc_alloc = internal global ptr @event_mlx5_sf_hwc_alloc, section "_ftrace_events", align 4
@trace_event_fields_mlx5_sf_hwc_free = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.197 { %struct.anon.198 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.197 { %struct.anon.198 { ptr @.str.10, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_mlx5_sf_hwc_free = internal global %struct.trace_event_class { ptr @str__mlx5__trace_system_name, ptr @trace_event_raw_event_mlx5_sf_hwc_free, ptr @perf_trace_mlx5_sf_hwc_free, ptr @trace_event_reg, ptr @trace_event_fields_mlx5_sf_hwc_free, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlx5_sf_hwc_free, i64 24), ptr getelementptr (i8, ptr @event_class_mlx5_sf_hwc_free, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlx5_sf_hwc_free = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlx5_sf_hwc_free, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlx5_sf_hwc_free = internal global { [54 x i8], [42 x i8] } { [54 x i8] c"\22(%s) hw_id=0x%x\0A\22, __get_str(devname), REC->hw_fn_id\00", [42 x i8] zeroinitializer }, align 32
@event_mlx5_sf_hwc_free = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_sf_hwc_free, %union.anon.199 { ptr @__tracepoint_mlx5_sf_hwc_free }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_sf_hwc_free }, ptr @print_fmt_mlx5_sf_hwc_free, ptr null, %union.anon.200 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_sf_hwc_free = internal global ptr @event_mlx5_sf_hwc_free, section "_ftrace_events", align 4
@trace_event_fields_mlx5_sf_hwc_deferred_free = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.197 { %struct.anon.198 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.197 { %struct.anon.198 { ptr @.str.10, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_mlx5_sf_hwc_deferred_free = internal global %struct.trace_event_class { ptr @str__mlx5__trace_system_name, ptr @trace_event_raw_event_mlx5_sf_hwc_deferred_free, ptr @perf_trace_mlx5_sf_hwc_deferred_free, ptr @trace_event_reg, ptr @trace_event_fields_mlx5_sf_hwc_deferred_free, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlx5_sf_hwc_deferred_free, i64 24), ptr getelementptr (i8, ptr @event_class_mlx5_sf_hwc_deferred_free, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlx5_sf_hwc_deferred_free = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlx5_sf_hwc_deferred_free, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlx5_sf_hwc_deferred_free = internal global { [54 x i8], [42 x i8] } { [54 x i8] c"\22(%s) hw_id=0x%x\0A\22, __get_str(devname), REC->hw_fn_id\00", [42 x i8] zeroinitializer }, align 32
@event_mlx5_sf_hwc_deferred_free = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_sf_hwc_deferred_free, %union.anon.199 { ptr @__tracepoint_mlx5_sf_hwc_deferred_free }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_sf_hwc_deferred_free }, ptr @print_fmt_mlx5_sf_hwc_deferred_free, ptr null, %union.anon.200 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_sf_hwc_deferred_free = internal global ptr @event_mlx5_sf_hwc_deferred_free, section "_ftrace_events", align 4
@trace_event_fields_mlx5_sf_state_template = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.197 { %struct.anon.198 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.197 { %struct.anon.198 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.197 { %struct.anon.198 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.197 { %struct.anon.198 { ptr @.str.10, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_mlx5_sf_state_template = internal global %struct.trace_event_class { ptr @str__mlx5__trace_system_name, ptr @trace_event_raw_event_mlx5_sf_state_template, ptr @perf_trace_mlx5_sf_state_template, ptr @trace_event_reg, ptr @trace_event_fields_mlx5_sf_state_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlx5_sf_state_template, i64 24), ptr getelementptr (i8, ptr @event_class_mlx5_sf_state_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlx5_sf_state_template = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlx5_sf_state_template, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlx5_sf_state_template = internal global { [116 x i8], [44 x i8] } { [116 x i8] c"\22(%s) port_index=%u controller=%u hw_id=0x%x\0A\22, __get_str(devname), REC->port_index, REC->controller, REC->hw_fn_id\00", [44 x i8] zeroinitializer }, align 32
@event_mlx5_sf_activate = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_sf_state_template, %union.anon.199 { ptr @__tracepoint_mlx5_sf_activate }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_sf_state_template }, ptr @print_fmt_mlx5_sf_state_template, ptr null, %union.anon.200 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_sf_activate = internal global ptr @event_mlx5_sf_activate, section "_ftrace_events", align 4
@event_mlx5_sf_deactivate = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_sf_state_template, %union.anon.199 { ptr @__tracepoint_mlx5_sf_deactivate }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_sf_state_template }, ptr @print_fmt_mlx5_sf_state_template, ptr null, %union.anon.200 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_sf_deactivate = internal global ptr @event_mlx5_sf_deactivate, section "_ftrace_events", align 4
@trace_event_fields_mlx5_sf_update_state = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.197 { %struct.anon.198 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.197 { %struct.anon.198 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.197 { %struct.anon.198 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.197 { %struct.anon.198 { ptr @.str.10, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.197 { %struct.anon.198 { ptr @.str.17, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_mlx5_sf_update_state = internal global %struct.trace_event_class { ptr @str__mlx5__trace_system_name, ptr @trace_event_raw_event_mlx5_sf_update_state, ptr @perf_trace_mlx5_sf_update_state, ptr @trace_event_reg, ptr @trace_event_fields_mlx5_sf_update_state, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlx5_sf_update_state, i64 24), ptr getelementptr (i8, ptr @event_class_mlx5_sf_update_state, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlx5_sf_update_state = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlx5_sf_update_state, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlx5_sf_update_state = internal global { [137 x i8], [55 x i8] } { [137 x i8] c"\22(%s) port_index=%u controller=%u hw_id=0x%x state=%u\0A\22, __get_str(devname), REC->port_index, REC->controller, REC->hw_fn_id, REC->state\00", [55 x i8] zeroinitializer }, align 32
@event_mlx5_sf_update_state = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_sf_update_state, %union.anon.199 { ptr @__tracepoint_mlx5_sf_update_state }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_sf_update_state }, ptr @print_fmt_mlx5_sf_update_state, ptr null, %union.anon.200 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_sf_update_state = internal global ptr @event_mlx5_sf_update_state, section "_ftrace_events", align 4
@__bpf_trace_tp_map_mlx5_sf_add = internal global %union.anon.201 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_sf_add, ptr @__bpf_trace_mlx5_sf_add, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlx5_sf_free = internal global %union.anon.202 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_sf_free, ptr @__bpf_trace_mlx5_sf_free, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlx5_sf_hwc_alloc = internal global %union.anon.203 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_sf_hwc_alloc, ptr @__bpf_trace_mlx5_sf_hwc_alloc, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlx5_sf_hwc_free = internal global %union.anon.204 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_sf_hwc_free, ptr @__bpf_trace_mlx5_sf_hwc_free, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlx5_sf_hwc_deferred_free = internal global %union.anon.205 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_sf_hwc_deferred_free, ptr @__bpf_trace_mlx5_sf_hwc_deferred_free, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlx5_sf_activate = internal global %union.anon.206 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_sf_activate, ptr @__bpf_trace_mlx5_sf_state_template, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlx5_sf_deactivate = internal global %union.anon.207 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_sf_deactivate, ptr @__bpf_trace_mlx5_sf_state_template, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlx5_sf_update_state = internal global %union.anon.208 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_sf_update_state, ptr @__bpf_trace_mlx5_sf_update_state, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@mlx5_devlink_sf_port_fn_state_set.__msg = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"mlx5_core: Port state set is only supported in eswitch switchdev mode or SF ports are disabled.\00", [32 x i8] zeroinitializer }, align 32
@mlx5_devlink_sf_port_new.__msg = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"mlx5_core: Port add is only supported in eswitch switchdev mode or SF ports are disabled.\00", [38 x i8] zeroinitializer }, align 32
@mlx5_devlink_sf_port_del.__msg = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"mlx5_core: Port del is only supported in eswitch switchdev mode or SF ports are disabled.\00", [38 x i8] zeroinitializer }, align 32
@mlx5_sf_table_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&table->sf_state_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/sf/devlink.c\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devname\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"port_index\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"controller\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hw_fn_id\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sfnum\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"(%s) port_index=%u controller=%u hw_id=0x%x sfnum=%u\0A\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(%s) port_index=%u controller=%u hw_id=0x%x\0A\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(%s) controller=%u hw_id=0x%x sfnum=%u\0A\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(%s) hw_id=0x%x\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"(%s) port_index=%u controller=%u hw_id=0x%x state=%u\0A\0A\00", [41 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@mlx5_sf_activate.__msg = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"mlx5_core: SF is inactivated but it is still attached\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/sf/diag/sf_tracepoint.h\00", [32 x i8] zeroinitializer }, align 32
@trace_mlx5_sf_activate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_mlx5_sf_deactivate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mlx5_sf_new_check_attr.__msg = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mlx5_core: Driver supports only SF port addition\00", [47 x i8] zeroinitializer }, align 32
@mlx5_sf_new_check_attr.__msg.22 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"mlx5_core: Driver does not support user defined port index assignment\00", [58 x i8] zeroinitializer }, align 32
@mlx5_sf_new_check_attr.__msg.23 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"mlx5_core: User must provide unique sfnum. Driver does not support auto assignment\00", [45 x i8] zeroinitializer }, align 32
@mlx5_sf_new_check_attr.__msg.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"mlx5_core: External controller is unsupported\00", [50 x i8] zeroinitializer }, align 32
@mlx5_sf_new_check_attr.__msg.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mlx5_core: Invalid pfnum supplied\00", [62 x i8] zeroinitializer }, align 32
@mlx5_sf_alloc.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mlx5_core: Invalid controller number\00", [59 x i8] zeroinitializer }, align 32
@mlx5_sf_alloc.__msg.26 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"mlx5_core: SF already exist. Choose different sfnum\00", [44 x i8] zeroinitializer }, align 32
@trace_mlx5_sf_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_mlx5_sf_free.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@trace_mlx5_sf_update_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2]
@___asan_gen_.30 = private unnamed_addr constant [29 x i8] c"str__mlx5__trace_system_name\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 36, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant [31 x i8] c"trace_event_fields_mlx5_sf_add\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_mlx5_sf_add\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"print_fmt_mlx5_sf_add\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"event_mlx5_sf_add\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [32 x i8] c"trace_event_fields_mlx5_sf_free\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_mlx5_sf_free\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [23 x i8] c"print_fmt_mlx5_sf_free\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c"event_mlx5_sf_free\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [37 x i8] c"trace_event_fields_mlx5_sf_hwc_alloc\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_mlx5_sf_hwc_alloc\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [28 x i8] c"print_fmt_mlx5_sf_hwc_alloc\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [24 x i8] c"event_mlx5_sf_hwc_alloc\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [36 x i8] c"trace_event_fields_mlx5_sf_hwc_free\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_mlx5_sf_hwc_free\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [27 x i8] c"print_fmt_mlx5_sf_hwc_free\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [23 x i8] c"event_mlx5_sf_hwc_free\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [45 x i8] c"trace_event_fields_mlx5_sf_hwc_deferred_free\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [49 x i8] c"trace_event_type_funcs_mlx5_sf_hwc_deferred_free\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [36 x i8] c"print_fmt_mlx5_sf_hwc_deferred_free\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [32 x i8] c"event_mlx5_sf_hwc_deferred_free\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 93, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant [42 x i8] c"trace_event_fields_mlx5_sf_state_template\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [46 x i8] c"trace_event_type_funcs_mlx5_sf_state_template\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [33 x i8] c"print_fmt_mlx5_sf_state_template\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 106, i32 1 }
@___asan_gen_.102 = private unnamed_addr constant [23 x i8] c"event_mlx5_sf_activate\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [25 x i8] c"event_mlx5_sf_deactivate\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 134, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant [40 x i8] c"trace_event_fields_mlx5_sf_update_state\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_mlx5_sf_update_state\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [31 x i8] c"print_fmt_mlx5_sf_update_state\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [27 x i8] c"event_mlx5_sf_update_state\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 267, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 354, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 393, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 532, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 567, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 14, i32 1 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 38, i32 1 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 59, i32 1 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 80, i32 1 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 142, i32 1 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 206, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [67 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/sf/diag/sf_tracepoint.h\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 126, i32 1 }
@___asan_gen_.199 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 108, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 314, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 318, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 323, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 329, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 333, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 74, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.220 = private constant [56 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/sf/devlink.c\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 109, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 378, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 87, i32 2 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__bpf_trace_tp_map_mlx5_sf_activate, ptr @__bpf_trace_tp_map_mlx5_sf_add, ptr @__bpf_trace_tp_map_mlx5_sf_deactivate, ptr @__bpf_trace_tp_map_mlx5_sf_free, ptr @__bpf_trace_tp_map_mlx5_sf_hwc_alloc, ptr @__bpf_trace_tp_map_mlx5_sf_hwc_deferred_free, ptr @__bpf_trace_tp_map_mlx5_sf_hwc_free, ptr @__bpf_trace_tp_map_mlx5_sf_update_state, ptr @__event_mlx5_sf_activate, ptr @__event_mlx5_sf_add, ptr @__event_mlx5_sf_deactivate, ptr @__event_mlx5_sf_free, ptr @__event_mlx5_sf_hwc_alloc, ptr @__event_mlx5_sf_hwc_deferred_free, ptr @__event_mlx5_sf_hwc_free, ptr @__event_mlx5_sf_update_state, ptr @__tracepoint_mlx5_sf_activate, ptr @__tracepoint_mlx5_sf_add, ptr @__tracepoint_mlx5_sf_deactivate, ptr @__tracepoint_mlx5_sf_free, ptr @__tracepoint_mlx5_sf_hwc_alloc, ptr @__tracepoint_mlx5_sf_hwc_deferred_free, ptr @__tracepoint_mlx5_sf_hwc_free, ptr @__tracepoint_mlx5_sf_update_state, ptr @__tracepoint_ptr_mlx5_sf_activate, ptr @__tracepoint_ptr_mlx5_sf_add, ptr @__tracepoint_ptr_mlx5_sf_deactivate, ptr @__tracepoint_ptr_mlx5_sf_free, ptr @__tracepoint_ptr_mlx5_sf_hwc_alloc, ptr @__tracepoint_ptr_mlx5_sf_hwc_deferred_free, ptr @__tracepoint_ptr_mlx5_sf_hwc_free, ptr @__tracepoint_ptr_mlx5_sf_update_state, ptr @event_class_mlx5_sf_add, ptr @event_class_mlx5_sf_free, ptr @event_class_mlx5_sf_hwc_alloc, ptr @event_class_mlx5_sf_hwc_deferred_free, ptr @event_class_mlx5_sf_hwc_free, ptr @event_class_mlx5_sf_state_template, ptr @event_class_mlx5_sf_update_state, ptr @event_mlx5_sf_activate, ptr @event_mlx5_sf_add, ptr @event_mlx5_sf_deactivate, ptr @event_mlx5_sf_free, ptr @event_mlx5_sf_hwc_alloc, ptr @event_mlx5_sf_hwc_deferred_free, ptr @event_mlx5_sf_hwc_free, ptr @event_mlx5_sf_update_state, ptr @str__mlx5__trace_system_name, ptr @trace_event_fields_mlx5_sf_add, ptr @trace_event_type_funcs_mlx5_sf_add, ptr @print_fmt_mlx5_sf_add, ptr @trace_event_fields_mlx5_sf_free, ptr @trace_event_type_funcs_mlx5_sf_free, ptr @print_fmt_mlx5_sf_free, ptr @trace_event_fields_mlx5_sf_hwc_alloc, ptr @trace_event_type_funcs_mlx5_sf_hwc_alloc, ptr @print_fmt_mlx5_sf_hwc_alloc, ptr @trace_event_fields_mlx5_sf_hwc_free, ptr @trace_event_type_funcs_mlx5_sf_hwc_free, ptr @print_fmt_mlx5_sf_hwc_free, ptr @trace_event_fields_mlx5_sf_hwc_deferred_free, ptr @trace_event_type_funcs_mlx5_sf_hwc_deferred_free, ptr @print_fmt_mlx5_sf_hwc_deferred_free, ptr @trace_event_fields_mlx5_sf_state_template, ptr @trace_event_type_funcs_mlx5_sf_state_template, ptr @print_fmt_mlx5_sf_state_template, ptr @trace_event_fields_mlx5_sf_update_state, ptr @trace_event_type_funcs_mlx5_sf_update_state, ptr @print_fmt_mlx5_sf_update_state, ptr @mlx5_devlink_sf_port_fn_state_set.__msg, ptr @mlx5_devlink_sf_port_new.__msg, ptr @mlx5_devlink_sf_port_del.__msg, ptr @mlx5_sf_table_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @mlx5_sf_activate.__msg, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @mlx5_sf_new_check_attr.__msg, ptr @mlx5_sf_new_check_attr.__msg.22, ptr @mlx5_sf_new_check_attr.__msg.23, ptr @mlx5_sf_new_check_attr.__msg.24, ptr @mlx5_sf_new_check_attr.__msg.25, ptr @mlx5_sf_alloc.__msg, ptr @mlx5_sf_alloc.__msg.26, ptr @xa_init_flags.__key, ptr @.str.27, ptr @init_completion.__key, ptr @.str.28], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__mlx5__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlx5_sf_add to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlx5_sf_add to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlx5_sf_add to i32), i32 137, i32 192, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_sf_add to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlx5_sf_free to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlx5_sf_free to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlx5_sf_free to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_sf_free to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlx5_sf_hwc_alloc to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlx5_sf_hwc_alloc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlx5_sf_hwc_alloc to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_sf_hwc_alloc to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlx5_sf_hwc_free to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlx5_sf_hwc_free to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlx5_sf_hwc_free to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_sf_hwc_free to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlx5_sf_hwc_deferred_free to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlx5_sf_hwc_deferred_free to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlx5_sf_hwc_deferred_free to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_sf_hwc_deferred_free to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlx5_sf_state_template to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlx5_sf_state_template to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlx5_sf_state_template to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_sf_activate to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_sf_deactivate to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlx5_sf_update_state to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlx5_sf_update_state to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlx5_sf_update_state to i32), i32 137, i32 192, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_sf_update_state to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_sf_port_fn_state_set.__msg to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_sf_port_new.__msg to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_sf_port_del.__msg to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_sf_table_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_sf_activate.__msg to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_sf_new_check_attr.__msg to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_sf_new_check_attr.__msg.22 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_sf_new_check_attr.__msg.23 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_sf_new_check_attr.__msg.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_sf_new_check_attr.__msg.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_sf_alloc.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_sf_alloc.__msg.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mlx5_sf_add(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id, i32 noundef %sfnum) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_add, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id, i32 noundef %sfnum) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mlx5_sf_free(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_free, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mlx5_sf_hwc_alloc(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %controller, i16 noundef zeroext %hw_fn_id, i32 noundef %sfnum) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_hwc_alloc, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %controller, i16 noundef zeroext %hw_fn_id, i32 noundef %sfnum) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mlx5_sf_hwc_free(ptr nocapture readnone %__data, ptr noundef %dev, i16 noundef zeroext %hw_fn_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_hwc_free, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i16 noundef zeroext %hw_fn_id) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mlx5_sf_hwc_deferred_free(ptr nocapture readnone %__data, ptr noundef %dev, i16 noundef zeroext %hw_fn_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_hwc_deferred_free, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i16 noundef zeroext %hw_fn_id) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mlx5_sf_activate(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_activate, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mlx5_sf_deactivate(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_deactivate, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mlx5_sf_update_state(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id, i8 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_update_state, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id, i8 noundef zeroext %state) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mlx5_sf_add(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id, i32 noundef %sfnum) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !170

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !171

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_mlx5_sf_add.exit_crit_edge

if.end.trace_event_get_offsets_mlx5_sf_add.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %trace_event_get_offsets_mlx5_sf_add.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %tobool.not.i34 = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not.i34, ptr @.str.2, ptr %8
  br label %trace_event_get_offsets_mlx5_sf_add.exit

trace_event_get_offsets_mlx5_sf_add.exit:         ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_mlx5_sf_add.exit_crit_edge
  %cond.i = phi ptr [ %6, %if.end.trace_event_get_offsets_mlx5_sf_add.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #13
  %add = add i32 %call4.i, 29
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_mlx5_sf_add.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_mlx5_sf_add.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_mlx5_sf_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_mlx5_sf_add.exit
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65564
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_add, ptr %call3, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i40

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i40:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i40, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str.2, %dev_name.exit.cond.end_crit_edge ], [ %17, %if.end.i40 ], [ %13, %if.end5.cond.end_crit_edge ]
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #14
  %port_index12 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_add, ptr %call3, i32 0, i32 2
  %18 = ptrtoint ptr %port_index12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %port_index, ptr %port_index12, align 4
  %controller13 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_add, ptr %call3, i32 0, i32 3
  %19 = ptrtoint ptr %controller13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %controller, ptr %controller13, align 4
  %hw_fn_id14 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_add, ptr %call3, i32 0, i32 4
  %20 = ptrtoint ptr %hw_fn_id14 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %hw_fn_id, ptr %hw_fn_id14, align 4
  %sfnum15 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_add, ptr %call3, i32 0, i32 5
  %21 = ptrtoint ptr %sfnum15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sfnum, ptr %sfnum15, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_mlx5_sf_add.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlx5_sf_add(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id, i32 noundef %sfnum) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !172
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !172
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_mlx5_sf_add.exit_crit_edge

entry.trace_event_get_offsets_mlx5_sf_add.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %trace_event_get_offsets_mlx5_sf_add.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not.i, ptr @.str.2, ptr %7
  br label %trace_event_get_offsets_mlx5_sf_add.exit

trace_event_get_offsets_mlx5_sf_add.exit:         ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_mlx5_sf_add.exit_crit_edge
  %cond.i = phi ptr [ %5, %entry.trace_event_get_offsets_mlx5_sf_add.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #13
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65564
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %8 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %perf_events, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_mlx5_sf_add.exit.if.end_crit_edge

trace_event_get_offsets_mlx5_sf_add.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_mlx5_sf_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_mlx5_sf_add.exit
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %17, align 4
  %tobool.not.i58.not = icmp eq ptr %21, null
  br i1 %tobool.not.i58.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_mlx5_sf_add.exit.if.end_crit_edge
  %add12 = add i32 %call4.i, 40
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %22 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__regs, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #10
  %25 = ptrtoint ptr %24 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.i, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %28 = ptrtoint ptr %27 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx2.i, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !160) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_add, ptr %call13, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %tobool20.not = icmp eq ptr %39, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i62

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i62:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i62, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str.2, %dev_name.exit.cond.end_crit_edge ], [ %41, %if.end.i62 ], [ %37, %if.end16.cond.end_crit_edge ]
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #14
  %port_index24 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_add, ptr %call13, i32 0, i32 2
  %42 = ptrtoint ptr %port_index24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %port_index, ptr %port_index24, align 4
  %controller25 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_add, ptr %call13, i32 0, i32 3
  %43 = ptrtoint ptr %controller25 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %controller, ptr %controller25, align 4
  %hw_fn_id26 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_add, ptr %call13, i32 0, i32 4
  %44 = ptrtoint ptr %hw_fn_id26 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %hw_fn_id, ptr %hw_fn_id26, align 4
  %sfnum27 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_add, ptr %call13, i32 0, i32 5
  %45 = ptrtoint ptr %sfnum27 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sfnum, ptr %sfnum27, align 4
  %46 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rctx, align 4
  %48 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %47, ptr noundef %__data, i64 noundef 1, ptr noundef %49, ptr noundef %17, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mlx5_sf_free(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !170

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !171

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_mlx5_sf_free.exit_crit_edge

if.end.trace_event_get_offsets_mlx5_sf_free.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %trace_event_get_offsets_mlx5_sf_free.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %tobool.not.i31 = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not.i31, ptr @.str.2, ptr %8
  br label %trace_event_get_offsets_mlx5_sf_free.exit

trace_event_get_offsets_mlx5_sf_free.exit:        ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_mlx5_sf_free.exit_crit_edge
  %cond.i = phi ptr [ %6, %if.end.trace_event_get_offsets_mlx5_sf_free.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #13
  %add = add i32 %call4.i, 25
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_mlx5_sf_free.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_mlx5_sf_free.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_mlx5_sf_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_mlx5_sf_free.exit
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65558
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_free, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 22
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i32 = icmp eq ptr %13, null
  br i1 %tobool.not.i32, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i37

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i37:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i37, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str.2, %dev_name.exit.cond.end_crit_edge ], [ %17, %if.end.i37 ], [ %13, %if.end5.cond.end_crit_edge ]
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #14
  %port_index12 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_free, ptr %call3, i32 0, i32 2
  %18 = ptrtoint ptr %port_index12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %port_index, ptr %port_index12, align 4
  %controller13 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_free, ptr %call3, i32 0, i32 3
  %19 = ptrtoint ptr %controller13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %controller, ptr %controller13, align 4
  %hw_fn_id14 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_free, ptr %call3, i32 0, i32 4
  %20 = ptrtoint ptr %hw_fn_id14 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %hw_fn_id, ptr %hw_fn_id14, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_mlx5_sf_free.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlx5_sf_free(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !172
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !172
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_mlx5_sf_free.exit_crit_edge

entry.trace_event_get_offsets_mlx5_sf_free.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %trace_event_get_offsets_mlx5_sf_free.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not.i, ptr @.str.2, ptr %7
  br label %trace_event_get_offsets_mlx5_sf_free.exit

trace_event_get_offsets_mlx5_sf_free.exit:        ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_mlx5_sf_free.exit_crit_edge
  %cond.i = phi ptr [ %5, %entry.trace_event_get_offsets_mlx5_sf_free.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #13
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65558
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %8 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %perf_events, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_mlx5_sf_free.exit.if.end_crit_edge

trace_event_get_offsets_mlx5_sf_free.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_mlx5_sf_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_mlx5_sf_free.exit
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %17, align 4
  %tobool.not.i55.not = icmp eq ptr %21, null
  br i1 %tobool.not.i55.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_mlx5_sf_free.exit.if.end_crit_edge
  %add12 = add i32 %call4.i, 36
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %22 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__regs, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #10
  %25 = ptrtoint ptr %24 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.i, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %28 = ptrtoint ptr %27 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx2.i, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !160) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_free, ptr %call13, i32 0, i32 1
  %33 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 22
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i56 = icmp eq ptr %37, null
  br i1 %tobool.not.i56, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %tobool20.not = icmp eq ptr %39, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i59

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i59:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i59, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str.2, %dev_name.exit.cond.end_crit_edge ], [ %41, %if.end.i59 ], [ %37, %if.end16.cond.end_crit_edge ]
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #14
  %port_index24 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_free, ptr %call13, i32 0, i32 2
  %42 = ptrtoint ptr %port_index24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %port_index, ptr %port_index24, align 4
  %controller25 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_free, ptr %call13, i32 0, i32 3
  %43 = ptrtoint ptr %controller25 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %controller, ptr %controller25, align 4
  %hw_fn_id26 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_free, ptr %call13, i32 0, i32 4
  %44 = ptrtoint ptr %hw_fn_id26 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %hw_fn_id, ptr %hw_fn_id26, align 4
  %45 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rctx, align 4
  %47 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %46, ptr noundef %__data, i64 noundef 1, ptr noundef %48, ptr noundef %17, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mlx5_sf_hwc_alloc(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %controller, i16 noundef zeroext %hw_fn_id, i32 noundef %sfnum) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !170

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !171

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_mlx5_sf_hwc_alloc.exit_crit_edge

if.end.trace_event_get_offsets_mlx5_sf_hwc_alloc.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %trace_event_get_offsets_mlx5_sf_hwc_alloc.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %tobool.not.i31 = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not.i31, ptr @.str.2, ptr %8
  br label %trace_event_get_offsets_mlx5_sf_hwc_alloc.exit

trace_event_get_offsets_mlx5_sf_hwc_alloc.exit:   ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_mlx5_sf_hwc_alloc.exit_crit_edge
  %cond.i = phi ptr [ %6, %if.end.trace_event_get_offsets_mlx5_sf_hwc_alloc.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #13
  %add = add i32 %call4.i, 25
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_mlx5_sf_hwc_alloc.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_mlx5_sf_hwc_alloc.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_mlx5_sf_hwc_alloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_mlx5_sf_hwc_alloc.exit
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65560
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_hwc_alloc, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 24
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i32 = icmp eq ptr %13, null
  br i1 %tobool.not.i32, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i37

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i37:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i37, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str.2, %dev_name.exit.cond.end_crit_edge ], [ %17, %if.end.i37 ], [ %13, %if.end5.cond.end_crit_edge ]
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #14
  %controller12 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_hwc_alloc, ptr %call3, i32 0, i32 2
  %18 = ptrtoint ptr %controller12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %controller, ptr %controller12, align 4
  %hw_fn_id13 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_hwc_alloc, ptr %call3, i32 0, i32 3
  %19 = ptrtoint ptr %hw_fn_id13 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %hw_fn_id, ptr %hw_fn_id13, align 4
  %sfnum14 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_hwc_alloc, ptr %call3, i32 0, i32 4
  %20 = ptrtoint ptr %sfnum14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sfnum, ptr %sfnum14, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_mlx5_sf_hwc_alloc.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlx5_sf_hwc_alloc(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %controller, i16 noundef zeroext %hw_fn_id, i32 noundef %sfnum) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !172
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !172
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_mlx5_sf_hwc_alloc.exit_crit_edge

entry.trace_event_get_offsets_mlx5_sf_hwc_alloc.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %trace_event_get_offsets_mlx5_sf_hwc_alloc.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not.i, ptr @.str.2, ptr %7
  br label %trace_event_get_offsets_mlx5_sf_hwc_alloc.exit

trace_event_get_offsets_mlx5_sf_hwc_alloc.exit:   ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_mlx5_sf_hwc_alloc.exit_crit_edge
  %cond.i = phi ptr [ %5, %entry.trace_event_get_offsets_mlx5_sf_hwc_alloc.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #13
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65560
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %8 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %perf_events, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_mlx5_sf_hwc_alloc.exit.if.end_crit_edge

trace_event_get_offsets_mlx5_sf_hwc_alloc.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_mlx5_sf_hwc_alloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_mlx5_sf_hwc_alloc.exit
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %17, align 4
  %tobool.not.i55.not = icmp eq ptr %21, null
  br i1 %tobool.not.i55.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_mlx5_sf_hwc_alloc.exit.if.end_crit_edge
  %add12 = add i32 %call4.i, 36
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %22 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__regs, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #10
  %25 = ptrtoint ptr %24 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.i, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %28 = ptrtoint ptr %27 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx2.i, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !160) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_hwc_alloc, ptr %call13, i32 0, i32 1
  %33 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 24
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i56 = icmp eq ptr %37, null
  br i1 %tobool.not.i56, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %tobool20.not = icmp eq ptr %39, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i59

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i59:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i59, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str.2, %dev_name.exit.cond.end_crit_edge ], [ %41, %if.end.i59 ], [ %37, %if.end16.cond.end_crit_edge ]
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #14
  %controller24 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_hwc_alloc, ptr %call13, i32 0, i32 2
  %42 = ptrtoint ptr %controller24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %controller, ptr %controller24, align 4
  %hw_fn_id25 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_hwc_alloc, ptr %call13, i32 0, i32 3
  %43 = ptrtoint ptr %hw_fn_id25 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %hw_fn_id, ptr %hw_fn_id25, align 4
  %sfnum26 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_hwc_alloc, ptr %call13, i32 0, i32 4
  %44 = ptrtoint ptr %sfnum26 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sfnum, ptr %sfnum26, align 4
  %45 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rctx, align 4
  %47 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %46, ptr noundef %__data, i64 noundef 1, ptr noundef %48, ptr noundef %17, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mlx5_sf_hwc_free(ptr noundef %__data, ptr nocapture noundef readonly %dev, i16 noundef zeroext %hw_fn_id) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !170

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !171

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_mlx5_sf_hwc_free.exit_crit_edge

if.end.trace_event_get_offsets_mlx5_sf_hwc_free.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %trace_event_get_offsets_mlx5_sf_hwc_free.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %tobool.not.i25 = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not.i25, ptr @.str.2, ptr %8
  br label %trace_event_get_offsets_mlx5_sf_hwc_free.exit

trace_event_get_offsets_mlx5_sf_hwc_free.exit:    ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_mlx5_sf_hwc_free.exit_crit_edge
  %cond.i = phi ptr [ %6, %if.end.trace_event_get_offsets_mlx5_sf_hwc_free.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #13
  %add = add i32 %call4.i, 17
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_mlx5_sf_hwc_free.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_mlx5_sf_hwc_free.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_mlx5_sf_hwc_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_mlx5_sf_hwc_free.exit
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65550
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_hwc_free, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 14
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i26 = icmp eq ptr %13, null
  br i1 %tobool.not.i26, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i31

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i31:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i31, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str.2, %dev_name.exit.cond.end_crit_edge ], [ %17, %if.end.i31 ], [ %13, %if.end5.cond.end_crit_edge ]
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #14
  %hw_fn_id12 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_hwc_free, ptr %call3, i32 0, i32 2
  %18 = ptrtoint ptr %hw_fn_id12 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %hw_fn_id, ptr %hw_fn_id12, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_mlx5_sf_hwc_free.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlx5_sf_hwc_free(ptr noundef %__data, ptr nocapture noundef readonly %dev, i16 noundef zeroext %hw_fn_id) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !172
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !172
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_mlx5_sf_hwc_free.exit_crit_edge

entry.trace_event_get_offsets_mlx5_sf_hwc_free.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %trace_event_get_offsets_mlx5_sf_hwc_free.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not.i, ptr @.str.2, ptr %7
  br label %trace_event_get_offsets_mlx5_sf_hwc_free.exit

trace_event_get_offsets_mlx5_sf_hwc_free.exit:    ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_mlx5_sf_hwc_free.exit_crit_edge
  %cond.i = phi ptr [ %5, %entry.trace_event_get_offsets_mlx5_sf_hwc_free.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #13
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65550
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %8 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %perf_events, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_mlx5_sf_hwc_free.exit.if.end_crit_edge

trace_event_get_offsets_mlx5_sf_hwc_free.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_mlx5_sf_hwc_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_mlx5_sf_hwc_free.exit
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %17, align 4
  %tobool.not.i49.not = icmp eq ptr %21, null
  br i1 %tobool.not.i49.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_mlx5_sf_hwc_free.exit.if.end_crit_edge
  %add12 = add i32 %call4.i, 28
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %22 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__regs, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #10
  %25 = ptrtoint ptr %24 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.i, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %28 = ptrtoint ptr %27 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx2.i, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !160) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_hwc_free, ptr %call13, i32 0, i32 1
  %33 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 14
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i50 = icmp eq ptr %37, null
  br i1 %tobool.not.i50, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %tobool20.not = icmp eq ptr %39, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i53

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i53:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i53, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str.2, %dev_name.exit.cond.end_crit_edge ], [ %41, %if.end.i53 ], [ %37, %if.end16.cond.end_crit_edge ]
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #14
  %hw_fn_id24 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_hwc_free, ptr %call13, i32 0, i32 2
  %42 = ptrtoint ptr %hw_fn_id24 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %hw_fn_id, ptr %hw_fn_id24, align 4
  %43 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rctx, align 4
  %45 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %44, ptr noundef %__data, i64 noundef 1, ptr noundef %46, ptr noundef %17, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mlx5_sf_hwc_deferred_free(ptr noundef %__data, ptr nocapture noundef readonly %dev, i16 noundef zeroext %hw_fn_id) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !170

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !171

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_mlx5_sf_hwc_deferred_free.exit_crit_edge

if.end.trace_event_get_offsets_mlx5_sf_hwc_deferred_free.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %trace_event_get_offsets_mlx5_sf_hwc_deferred_free.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %tobool.not.i25 = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not.i25, ptr @.str.2, ptr %8
  br label %trace_event_get_offsets_mlx5_sf_hwc_deferred_free.exit

trace_event_get_offsets_mlx5_sf_hwc_deferred_free.exit: ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_mlx5_sf_hwc_deferred_free.exit_crit_edge
  %cond.i = phi ptr [ %6, %if.end.trace_event_get_offsets_mlx5_sf_hwc_deferred_free.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #13
  %add = add i32 %call4.i, 17
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_mlx5_sf_hwc_deferred_free.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_mlx5_sf_hwc_deferred_free.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_mlx5_sf_hwc_deferred_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_mlx5_sf_hwc_deferred_free.exit
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65550
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_hwc_deferred_free, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 14
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i26 = icmp eq ptr %13, null
  br i1 %tobool.not.i26, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i31

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i31:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i31, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str.2, %dev_name.exit.cond.end_crit_edge ], [ %17, %if.end.i31 ], [ %13, %if.end5.cond.end_crit_edge ]
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #14
  %hw_fn_id12 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_hwc_deferred_free, ptr %call3, i32 0, i32 2
  %18 = ptrtoint ptr %hw_fn_id12 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %hw_fn_id, ptr %hw_fn_id12, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_mlx5_sf_hwc_deferred_free.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlx5_sf_hwc_deferred_free(ptr noundef %__data, ptr nocapture noundef readonly %dev, i16 noundef zeroext %hw_fn_id) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !172
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !172
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_mlx5_sf_hwc_deferred_free.exit_crit_edge

entry.trace_event_get_offsets_mlx5_sf_hwc_deferred_free.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %trace_event_get_offsets_mlx5_sf_hwc_deferred_free.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not.i, ptr @.str.2, ptr %7
  br label %trace_event_get_offsets_mlx5_sf_hwc_deferred_free.exit

trace_event_get_offsets_mlx5_sf_hwc_deferred_free.exit: ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_mlx5_sf_hwc_deferred_free.exit_crit_edge
  %cond.i = phi ptr [ %5, %entry.trace_event_get_offsets_mlx5_sf_hwc_deferred_free.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #13
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65550
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %8 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %perf_events, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_mlx5_sf_hwc_deferred_free.exit.if.end_crit_edge

trace_event_get_offsets_mlx5_sf_hwc_deferred_free.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_mlx5_sf_hwc_deferred_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_mlx5_sf_hwc_deferred_free.exit
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %17, align 4
  %tobool.not.i49.not = icmp eq ptr %21, null
  br i1 %tobool.not.i49.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_mlx5_sf_hwc_deferred_free.exit.if.end_crit_edge
  %add12 = add i32 %call4.i, 28
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %22 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__regs, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #10
  %25 = ptrtoint ptr %24 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.i, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %28 = ptrtoint ptr %27 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx2.i, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !160) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_hwc_deferred_free, ptr %call13, i32 0, i32 1
  %33 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 14
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i50 = icmp eq ptr %37, null
  br i1 %tobool.not.i50, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %tobool20.not = icmp eq ptr %39, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i53

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i53:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i53, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str.2, %dev_name.exit.cond.end_crit_edge ], [ %41, %if.end.i53 ], [ %37, %if.end16.cond.end_crit_edge ]
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #14
  %hw_fn_id24 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_hwc_deferred_free, ptr %call13, i32 0, i32 2
  %42 = ptrtoint ptr %hw_fn_id24 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %hw_fn_id, ptr %hw_fn_id24, align 4
  %43 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rctx, align 4
  %45 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %44, ptr noundef %__data, i64 noundef 1, ptr noundef %46, ptr noundef %17, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mlx5_sf_state_template(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !170

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !171

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_mlx5_sf_state_template.exit_crit_edge

if.end.trace_event_get_offsets_mlx5_sf_state_template.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %trace_event_get_offsets_mlx5_sf_state_template.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %tobool.not.i31 = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not.i31, ptr @.str.2, ptr %8
  br label %trace_event_get_offsets_mlx5_sf_state_template.exit

trace_event_get_offsets_mlx5_sf_state_template.exit: ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_mlx5_sf_state_template.exit_crit_edge
  %cond.i = phi ptr [ %6, %if.end.trace_event_get_offsets_mlx5_sf_state_template.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #13
  %add = add i32 %call4.i, 25
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_mlx5_sf_state_template.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_mlx5_sf_state_template.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_mlx5_sf_state_template.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_mlx5_sf_state_template.exit
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65558
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_state_template, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 22
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i32 = icmp eq ptr %13, null
  br i1 %tobool.not.i32, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i37

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i37:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i37, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str.2, %dev_name.exit.cond.end_crit_edge ], [ %17, %if.end.i37 ], [ %13, %if.end5.cond.end_crit_edge ]
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #14
  %port_index12 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_state_template, ptr %call3, i32 0, i32 2
  %18 = ptrtoint ptr %port_index12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %port_index, ptr %port_index12, align 4
  %controller13 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_state_template, ptr %call3, i32 0, i32 3
  %19 = ptrtoint ptr %controller13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %controller, ptr %controller13, align 4
  %hw_fn_id14 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_state_template, ptr %call3, i32 0, i32 4
  %20 = ptrtoint ptr %hw_fn_id14 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %hw_fn_id, ptr %hw_fn_id14, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_mlx5_sf_state_template.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlx5_sf_state_template(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !172
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !172
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_mlx5_sf_state_template.exit_crit_edge

entry.trace_event_get_offsets_mlx5_sf_state_template.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %trace_event_get_offsets_mlx5_sf_state_template.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not.i, ptr @.str.2, ptr %7
  br label %trace_event_get_offsets_mlx5_sf_state_template.exit

trace_event_get_offsets_mlx5_sf_state_template.exit: ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_mlx5_sf_state_template.exit_crit_edge
  %cond.i = phi ptr [ %5, %entry.trace_event_get_offsets_mlx5_sf_state_template.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #13
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65558
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %8 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %perf_events, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_mlx5_sf_state_template.exit.if.end_crit_edge

trace_event_get_offsets_mlx5_sf_state_template.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_mlx5_sf_state_template.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_mlx5_sf_state_template.exit
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %17, align 4
  %tobool.not.i55.not = icmp eq ptr %21, null
  br i1 %tobool.not.i55.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_mlx5_sf_state_template.exit.if.end_crit_edge
  %add12 = add i32 %call4.i, 36
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %22 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__regs, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #10
  %25 = ptrtoint ptr %24 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.i, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %28 = ptrtoint ptr %27 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx2.i, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !160) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_state_template, ptr %call13, i32 0, i32 1
  %33 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 22
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i56 = icmp eq ptr %37, null
  br i1 %tobool.not.i56, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %tobool20.not = icmp eq ptr %39, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i59

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i59:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i59, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str.2, %dev_name.exit.cond.end_crit_edge ], [ %41, %if.end.i59 ], [ %37, %if.end16.cond.end_crit_edge ]
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #14
  %port_index24 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_state_template, ptr %call13, i32 0, i32 2
  %42 = ptrtoint ptr %port_index24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %port_index, ptr %port_index24, align 4
  %controller25 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_state_template, ptr %call13, i32 0, i32 3
  %43 = ptrtoint ptr %controller25 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %controller, ptr %controller25, align 4
  %hw_fn_id26 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_state_template, ptr %call13, i32 0, i32 4
  %44 = ptrtoint ptr %hw_fn_id26 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %hw_fn_id, ptr %hw_fn_id26, align 4
  %45 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rctx, align 4
  %47 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %46, ptr noundef %__data, i64 noundef 1, ptr noundef %48, ptr noundef %17, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mlx5_sf_update_state(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id, i8 noundef zeroext %state) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !170

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !171

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_mlx5_sf_update_state.exit_crit_edge

if.end.trace_event_get_offsets_mlx5_sf_update_state.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %trace_event_get_offsets_mlx5_sf_update_state.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %tobool.not.i34 = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not.i34, ptr @.str.2, ptr %8
  br label %trace_event_get_offsets_mlx5_sf_update_state.exit

trace_event_get_offsets_mlx5_sf_update_state.exit: ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_mlx5_sf_update_state.exit_crit_edge
  %cond.i = phi ptr [ %6, %if.end.trace_event_get_offsets_mlx5_sf_update_state.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #13
  %add = add i32 %call4.i, 25
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_mlx5_sf_update_state.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_mlx5_sf_update_state.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_mlx5_sf_update_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_mlx5_sf_update_state.exit
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65559
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_update_state, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 23
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i40

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i40:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i40, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str.2, %dev_name.exit.cond.end_crit_edge ], [ %17, %if.end.i40 ], [ %13, %if.end5.cond.end_crit_edge ]
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #14
  %port_index12 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_update_state, ptr %call3, i32 0, i32 2
  %18 = ptrtoint ptr %port_index12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %port_index, ptr %port_index12, align 4
  %controller13 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_update_state, ptr %call3, i32 0, i32 3
  %19 = ptrtoint ptr %controller13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %controller, ptr %controller13, align 4
  %hw_fn_id14 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_update_state, ptr %call3, i32 0, i32 4
  %20 = ptrtoint ptr %hw_fn_id14 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %hw_fn_id, ptr %hw_fn_id14, align 4
  %state15 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_update_state, ptr %call3, i32 0, i32 5
  %21 = ptrtoint ptr %state15 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %state, ptr %state15, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_mlx5_sf_update_state.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlx5_sf_update_state(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id, i8 noundef zeroext %state) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !172
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !172
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_mlx5_sf_update_state.exit_crit_edge

entry.trace_event_get_offsets_mlx5_sf_update_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %trace_event_get_offsets_mlx5_sf_update_state.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not.i, ptr @.str.2, ptr %7
  br label %trace_event_get_offsets_mlx5_sf_update_state.exit

trace_event_get_offsets_mlx5_sf_update_state.exit: ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_mlx5_sf_update_state.exit_crit_edge
  %cond.i = phi ptr [ %5, %entry.trace_event_get_offsets_mlx5_sf_update_state.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #13
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65559
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %8 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %perf_events, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_mlx5_sf_update_state.exit.if.end_crit_edge

trace_event_get_offsets_mlx5_sf_update_state.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_mlx5_sf_update_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_mlx5_sf_update_state.exit
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %17, align 4
  %tobool.not.i58.not = icmp eq ptr %21, null
  br i1 %tobool.not.i58.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_mlx5_sf_update_state.exit.if.end_crit_edge
  %add12 = add i32 %call4.i, 36
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %22 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__regs, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #10
  %25 = ptrtoint ptr %24 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.i, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %28 = ptrtoint ptr %27 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx2.i, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !160) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_update_state, ptr %call13, i32 0, i32 1
  %33 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 23
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %tobool20.not = icmp eq ptr %39, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i62

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i62:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i62, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str.2, %dev_name.exit.cond.end_crit_edge ], [ %41, %if.end.i62 ], [ %37, %if.end16.cond.end_crit_edge ]
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #14
  %port_index24 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_update_state, ptr %call13, i32 0, i32 2
  %42 = ptrtoint ptr %port_index24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %port_index, ptr %port_index24, align 4
  %controller25 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_update_state, ptr %call13, i32 0, i32 3
  %43 = ptrtoint ptr %controller25 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %controller, ptr %controller25, align 4
  %hw_fn_id26 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_update_state, ptr %call13, i32 0, i32 4
  %44 = ptrtoint ptr %hw_fn_id26 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %hw_fn_id, ptr %hw_fn_id26, align 4
  %state27 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_update_state, ptr %call13, i32 0, i32 5
  %45 = ptrtoint ptr %state27 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %state, ptr %state27, align 2
  %46 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rctx, align 4
  %48 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %47, ptr noundef %__data, i64 noundef 1, ptr noundef %49, ptr noundef %17, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlx5_sf_add(ptr noundef %__data, ptr noundef %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id, i32 noundef %sfnum) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %port_index to i64
  %conv8 = zext i32 %controller to i64
  %conv12 = zext i16 %hw_fn_id to i64
  %conv16 = zext i32 %sfnum to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlx5_sf_free(ptr noundef %__data, ptr noundef %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %port_index to i64
  %conv8 = zext i32 %controller to i64
  %conv12 = zext i16 %hw_fn_id to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlx5_sf_hwc_alloc(ptr noundef %__data, ptr noundef %dev, i32 noundef %controller, i16 noundef zeroext %hw_fn_id, i32 noundef %sfnum) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %controller to i64
  %conv8 = zext i16 %hw_fn_id to i64
  %conv12 = zext i32 %sfnum to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlx5_sf_hwc_free(ptr noundef %__data, ptr noundef %dev, i16 noundef zeroext %hw_fn_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i16 %hw_fn_id to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlx5_sf_hwc_deferred_free(ptr noundef %__data, ptr noundef %dev, i16 noundef zeroext %hw_fn_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i16 %hw_fn_id to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlx5_sf_state_template(ptr noundef %__data, ptr noundef %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %port_index to i64
  %conv8 = zext i32 %controller to i64
  %conv12 = zext i16 %hw_fn_id to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlx5_sf_update_state(ptr noundef %__data, ptr noundef %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id, i8 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %port_index to i64
  %conv8 = zext i32 %controller to i64
  %conv12 = zext i16 %hw_fn_id to i64
  %conv16 = zext i8 %state to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_devlink_sf_port_fn_state_get(ptr nocapture noundef readonly %dl_port, ptr nocapture noundef writeonly %state, ptr nocapture noundef writeonly %opstate, ptr nocapture noundef readnone %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink = getelementptr inbounds %struct.devlink_port, ptr %dl_port, i32 0, i32 3
  %0 = ptrtoint ptr %devlink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devlink, align 4
  %call = tail call ptr @devlink_priv(ptr noundef %1) #10
  %call1 = tail call fastcc ptr @mlx5_sf_table_try_get(ptr noundef %call)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.devlink_port, ptr %dl_port, i32 0, i32 4
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %port_indices.i = getelementptr inbounds %struct.mlx5_sf_table, ptr %call1, i32 0, i32 1
  %call.i = tail call ptr @xa_load(ptr noundef %port_indices.i, i32 noundef %3) #10
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.sf_err_crit_edge, label %if.end5

if.end.sf_err_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sf_err

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sf_state_lock = getelementptr inbounds %struct.mlx5_sf_table, ptr %call1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %sf_state_lock, i32 noundef 0) #10
  %hw_state = getelementptr inbounds %struct.mlx5_sf, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %hw_state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hw_state, align 4
  %6 = and i16 %5, 254
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %6)
  %switch.i = icmp eq i16 %6, 2
  %..i = zext i1 %switch.i to i32
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %..i, ptr %state, align 4
  %8 = ptrtoint ptr %hw_state to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hw_state, align 4
  %conv8 = trunc i16 %9 to i8
  %hw_state.off.i = add i8 %conv8, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %hw_state.off.i)
  %switch.i21 = icmp ult i8 %hw_state.off.i, 2
  %..i22 = zext i1 %switch.i21 to i32
  %10 = ptrtoint ptr %opstate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %..i22, ptr %opstate, align 4
  tail call void @mutex_unlock(ptr noundef %sf_state_lock) #10
  br label %sf_err

sf_err:                                           ; preds = %if.end5, %if.end.sf_err_crit_edge
  %err.0 = phi i32 [ 0, %if.end5 ], [ -95, %if.end.sf_err_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.mlx5_sf_table, ptr %call1, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !174
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sf_err
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !170

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %sf_err
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  %disable_complete.i = getelementptr inbounds %struct.mlx5_sf_table, ptr %call1, i32 0, i32 3
  tail call void @complete(ptr noundef %disable_complete.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %err.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i ], [ %err.0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5_sf_table_try_get(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sf_table = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 44
  %0 = ptrtoint ptr %sf_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sf_table, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.mlx5_sf_table, ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #10
  %2 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.end
  %4 = phi i32 [ %3, %if.end ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %4, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #10
  %6 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %7, i32 %add.i.i.i, ptr elementtype(i32) %refcount) #10, !srcloc !176
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !170

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %9 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %10, 1
  %11 = or i32 %add5.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !170

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #10
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %12 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.i.i.i.not = icmp eq i32 %13, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #10
  %spec.select = select i1 %tobool12.i.i.i.not, ptr null, ptr %1
  br label %cleanup

cleanup:                                          ; preds = %refcount_inc_not_zero.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %refcount_inc_not_zero.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_devlink_sf_port_fn_state_set(ptr nocapture noundef readonly %dl_port, i32 noundef %state, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink = getelementptr inbounds %struct.devlink_port, ptr %dl_port, i32 0, i32 3
  %0 = ptrtoint ptr %devlink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devlink, align 4
  %call = tail call ptr @devlink_priv(ptr noundef %1) #10
  %call1 = tail call fastcc ptr @mlx5_sf_table_try_get(ptr noundef %call)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_devlink_sf_port_fn_state_set.__msg) #10
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @mlx5_devlink_sf_port_fn_state_set.__msg, ptr %extack, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.devlink_port, ptr %dl_port, i32 0, i32 4
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  %port_indices.i = getelementptr inbounds %struct.mlx5_sf_table, ptr %call1, i32 0, i32 1
  %call.i = tail call ptr @xa_load(ptr noundef %port_indices.i, i32 noundef %4) #10
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end4.out_crit_edge, label %if.end8

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8:                                          ; preds = %if.end4
  %sf_state_lock.i = getelementptr inbounds %struct.mlx5_sf_table, ptr %call1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %sf_state_lock.i, i32 noundef 0) #10
  %hw_state.i = getelementptr inbounds %struct.mlx5_sf, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %hw_state.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %hw_state.i, align 4
  %7 = and i16 %6, 254
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %7)
  %switch.i.i = icmp eq i16 %7, 2
  %..i.i = zext i1 %switch.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %..i.i, i32 %state)
  %cmp.i = icmp eq i32 %..i.i, %state
  br i1 %cmp.i, label %if.end8.mlx5_sf_state_set.exit_crit_edge, label %if.end.i

if.end8.mlx5_sf_state_set.exit_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_sf_state_set.exit

if.end.i:                                         ; preds = %if.end8
  %8 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %if.end.i.mlx5_sf_state_set.exit_crit_edge [
    i32 1, label %if.then4.i
    i32 0, label %if.then8.i
  ]

if.end.i.mlx5_sf_state_set.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_sf_state_set.exit

if.then4.i:                                       ; preds = %if.end.i
  %9 = and i16 %6, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %9)
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %if.then4.i.mlx5_sf_state_set.exit_crit_edge, label %if.end.i.i

if.then4.i.mlx5_sf_state_set.exit_crit_edge:      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_sf_state_set.exit

if.end.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %cmp.not.i.i = icmp eq i16 %6, 1
  br i1 %cmp.not.i.i, label %if.end5.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_sf_activate.__msg) #10
  %tobool.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i, label %do.body.i.i.mlx5_sf_state_set.exit_crit_edge, label %if.then3.i.i

do.body.i.i.mlx5_sf_state_set.exit_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_sf_state_set.exit

if.then3.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mlx5_sf_activate.__msg, ptr %extack, align 4
  br label %mlx5_sf_state_set.exit

if.end5.i.i:                                      ; preds = %if.end.i.i
  %hw_fn_id.i.i = getelementptr inbounds %struct.mlx5_sf, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %hw_fn_id.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hw_fn_id.i.i, align 2
  %call6.i.i = tail call i32 @mlx5_cmd_sf_enable_hca(ptr noundef %call, i16 noundef zeroext %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end5.i.i.mlx5_sf_state_set.exit_crit_edge

if.end5.i.i.mlx5_sf_state_set.exit_crit_edge:     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_sf_state_set.exit

if.end9.i.i:                                      ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %hw_state.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %hw_state.i, align 4
  %port_index.i.i = getelementptr inbounds %struct.mlx5_sf, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %port_index.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_index.i.i, align 4
  %controller.i.i = getelementptr inbounds %struct.mlx5_sf, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %controller.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %controller.i.i, align 4
  %19 = ptrtoint ptr %hw_fn_id.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hw_fn_id.i.i, align 2
  tail call fastcc void @trace_mlx5_sf_activate(ptr noundef %call, i32 noundef %16, i32 noundef %18, i16 noundef zeroext %20) #10
  br label %mlx5_sf_state_set.exit

if.then8.i:                                       ; preds = %if.end.i
  %21 = and i16 %6, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %21)
  %22 = icmp eq i16 %21, 2
  br i1 %22, label %if.end.i23.i, label %if.then8.i.mlx5_sf_state_set.exit_crit_edge

if.then8.i.mlx5_sf_state_set.exit_crit_edge:      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_sf_state_set.exit

if.end.i23.i:                                     ; preds = %if.then8.i
  %hw_fn_id.i21.i = getelementptr inbounds %struct.mlx5_sf, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %hw_fn_id.i21.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %hw_fn_id.i21.i, align 2
  %call1.i.i = tail call i32 @mlx5_cmd_sf_disable_hca(ptr noundef %call, i16 noundef zeroext %24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i22.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i22.i, label %if.end3.i.i, label %if.end.i23.i.mlx5_sf_state_set.exit_crit_edge

if.end.i23.i.mlx5_sf_state_set.exit_crit_edge:    ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_sf_state_set.exit

if.end3.i.i:                                      ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %hw_state.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 4, ptr %hw_state.i, align 4
  %port_index.i24.i = getelementptr inbounds %struct.mlx5_sf, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %port_index.i24.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port_index.i24.i, align 4
  %controller.i25.i = getelementptr inbounds %struct.mlx5_sf, ptr %call.i, i32 0, i32 2
  %28 = ptrtoint ptr %controller.i25.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %controller.i25.i, align 4
  %30 = ptrtoint ptr %hw_fn_id.i21.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %hw_fn_id.i21.i, align 2
  tail call fastcc void @trace_mlx5_sf_deactivate(ptr noundef %call, i32 noundef %27, i32 noundef %29, i16 noundef zeroext %31) #10
  br label %mlx5_sf_state_set.exit

mlx5_sf_state_set.exit:                           ; preds = %if.end3.i.i, %if.end.i23.i.mlx5_sf_state_set.exit_crit_edge, %if.then8.i.mlx5_sf_state_set.exit_crit_edge, %if.end9.i.i, %if.end5.i.i.mlx5_sf_state_set.exit_crit_edge, %if.then3.i.i, %do.body.i.i.mlx5_sf_state_set.exit_crit_edge, %if.then4.i.mlx5_sf_state_set.exit_crit_edge, %if.end.i.mlx5_sf_state_set.exit_crit_edge, %if.end8.mlx5_sf_state_set.exit_crit_edge
  %err.0.i = phi i32 [ 0, %if.end8.mlx5_sf_state_set.exit_crit_edge ], [ -22, %if.end.i.mlx5_sf_state_set.exit_crit_edge ], [ 0, %if.end9.i.i ], [ 0, %if.then4.i.mlx5_sf_state_set.exit_crit_edge ], [ -16, %if.then3.i.i ], [ -16, %do.body.i.i.mlx5_sf_state_set.exit_crit_edge ], [ %call6.i.i, %if.end5.i.i.mlx5_sf_state_set.exit_crit_edge ], [ 0, %if.end3.i.i ], [ 0, %if.then8.i.mlx5_sf_state_set.exit_crit_edge ], [ %call1.i.i, %if.end.i23.i.mlx5_sf_state_set.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %sf_state_lock.i) #10
  br label %out

out:                                              ; preds = %mlx5_sf_state_set.exit, %if.end4.out_crit_edge
  %err.0 = phi i32 [ %err.0.i, %mlx5_sf_state_set.exit ], [ -19, %if.end4.out_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.mlx5_sf_table, ptr %call1, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !174
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !170

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  %disable_complete.i = getelementptr inbounds %struct.mlx5_sf_table, ptr %call1, i32 0, i32 3
  tail call void @complete(ptr noundef %disable_complete.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then3 ], [ -95, %do.body.cleanup_crit_edge ], [ %err.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i ], [ %err.0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_devlink_sf_port_new(ptr noundef %devlink, ptr nocapture noundef readonly %new_attr, ptr noundef writeonly %extack, ptr nocapture noundef writeonly %new_port_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #10
  %0 = ptrtoint ptr %new_attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %new_attr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 7
  br i1 %cmp.not.i, label %if.end2.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_sf_new_check_attr.__msg) #10
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %do.body.i.return.sink.split.i_crit_edge

do.body.i.return.sink.split.i_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2.i:                                        ; preds = %entry
  %port_index_valid.i = getelementptr inbounds %struct.devlink_port_new_attrs, ptr %new_attr, i32 0, i32 5
  %2 = ptrtoint ptr %port_index_valid.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %port_index_valid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool3.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool3.not.i, label %if.end12.i, label %do.body5.i

do.body5.i:                                       ; preds = %if.end2.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_sf_new_check_attr.__msg.22) #10
  %tobool7.not.i = icmp eq ptr %extack, null
  br i1 %tobool7.not.i, label %do.body5.i.cleanup_crit_edge, label %do.body5.i.return.sink.split.i_crit_edge

do.body5.i.return.sink.split.i_crit_edge:         ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i

do.body5.i.cleanup_crit_edge:                     ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12.i:                                       ; preds = %if.end2.i
  %3 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool15.not.i = icmp eq i8 %3, 0
  br i1 %tobool15.not.i, label %do.body17.i, label %if.end24.i

do.body17.i:                                      ; preds = %if.end12.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_sf_new_check_attr.__msg.23) #10
  %tobool19.not.i = icmp eq ptr %extack, null
  br i1 %tobool19.not.i, label %do.body17.i.cleanup_crit_edge, label %do.body17.i.return.sink.split.i_crit_edge

do.body17.i.return.sink.split.i_crit_edge:        ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i

do.body17.i.cleanup_crit_edge:                    ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24.i:                                       ; preds = %if.end12.i
  %4 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool28.not.i = icmp eq i8 %4, 0
  br i1 %tobool28.not.i, label %if.end24.i.if.end39.i_crit_edge, label %land.lhs.true.i

if.end24.i.if.end39.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

land.lhs.true.i:                                  ; preds = %if.end24.i
  %controller.i = getelementptr inbounds %struct.devlink_port_new_attrs, ptr %new_attr, i32 0, i32 2
  %5 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %controller.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool29.not.i = icmp eq i32 %6, 0
  br i1 %tobool29.not.i, label %land.lhs.true.i.if.end39.i_crit_edge, label %land.lhs.true30.i

land.lhs.true.i.if.end39.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

land.lhs.true30.i:                                ; preds = %land.lhs.true.i
  %embedded_cpu.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 8, i32 5
  %7 = ptrtoint ptr %embedded_cpu.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %embedded_cpu.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i.i, label %land.lhs.true30.i.do.body32.i_crit_edge, label %mlx5_core_is_ecpf_esw_manager.exit.i

land.lhs.true30.i.do.body32.i_crit_edge:          ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body32.i

mlx5_core_is_ecpf_esw_manager.exit.i:             ; preds = %land.lhs.true30.i
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 8
  %9 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %10, i32 13
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i, align 4
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool2.i.not.i, label %mlx5_core_is_ecpf_esw_manager.exit.i.do.body32.i_crit_edge, label %mlx5_core_is_ecpf_esw_manager.exit.i.if.end39.i_crit_edge

mlx5_core_is_ecpf_esw_manager.exit.i.if.end39.i_crit_edge: ; preds = %mlx5_core_is_ecpf_esw_manager.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

mlx5_core_is_ecpf_esw_manager.exit.i.do.body32.i_crit_edge: ; preds = %mlx5_core_is_ecpf_esw_manager.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body32.i

do.body32.i:                                      ; preds = %mlx5_core_is_ecpf_esw_manager.exit.i.do.body32.i_crit_edge, %land.lhs.true30.i.do.body32.i_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_sf_new_check_attr.__msg.24) #10
  %tobool34.not.i = icmp eq ptr %extack, null
  br i1 %tobool34.not.i, label %do.body32.i.cleanup_crit_edge, label %do.body32.i.return.sink.split.i_crit_edge

do.body32.i.return.sink.split.i_crit_edge:        ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i

do.body32.i.cleanup_crit_edge:                    ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39.i:                                       ; preds = %mlx5_core_is_ecpf_esw_manager.exit.i.if.end39.i_crit_edge, %land.lhs.true.i.if.end39.i_crit_edge, %if.end24.i.if.end39.i_crit_edge
  %pfnum.i = getelementptr inbounds %struct.devlink_port_new_attrs, ptr %new_attr, i32 0, i32 4
  %14 = ptrtoint ptr %pfnum.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %pfnum.i, align 4
  %conv40.i = zext i16 %15 to i32
  %caps.i68.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 8
  %16 = ptrtoint ptr %caps.i68.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %caps.i68.i, align 8
  %add.ptr.i69.i = getelementptr i32, ptr %17, i32 48
  %18 = ptrtoint ptr %add.ptr.i69.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i69.i, align 4
  %shr.i.i = lshr i32 %19, 16
  %and.i.i = and i32 %shr.i.i, 255
  %20 = add nsw i32 %and.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %21 = icmp ult i32 %20, 2
  br i1 %21, label %if.end39.i.mlx5_get_dev_index.exit.i_crit_edge, label %if.else.i.i

if.end39.i.mlx5_get_dev_index.exit.i_crit_edge:   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_get_dev_index.exit.i

if.else.i.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 2
  %22 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i.i, align 8
  %devfn.i.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %devfn.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %devfn.i.i, align 4
  %and2.i.i = and i32 %25, 7
  br label %mlx5_get_dev_index.exit.i

mlx5_get_dev_index.exit.i:                        ; preds = %if.else.i.i, %if.end39.i.mlx5_get_dev_index.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %and2.i.i, %if.else.i.i ], [ %20, %if.end39.i.mlx5_get_dev_index.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %conv40.i)
  %cmp42.not.i = icmp eq i32 %retval.0.i.i, %conv40.i
  br i1 %cmp42.not.i, label %if.end, label %do.body45.i

do.body45.i:                                      ; preds = %mlx5_get_dev_index.exit.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_sf_new_check_attr.__msg.25) #10
  %tobool47.not.i = icmp eq ptr %extack, null
  br i1 %tobool47.not.i, label %do.body45.i.cleanup_crit_edge, label %do.body45.i.return.sink.split.i_crit_edge

do.body45.i.return.sink.split.i_crit_edge:        ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i

do.body45.i.cleanup_crit_edge:                    ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

return.sink.split.i:                              ; preds = %do.body45.i.return.sink.split.i_crit_edge, %do.body32.i.return.sink.split.i_crit_edge, %do.body17.i.return.sink.split.i_crit_edge, %do.body5.i.return.sink.split.i_crit_edge, %do.body.i.return.sink.split.i_crit_edge
  %mlx5_sf_new_check_attr.__msg.25.sink.i = phi ptr [ @mlx5_sf_new_check_attr.__msg, %do.body.i.return.sink.split.i_crit_edge ], [ @mlx5_sf_new_check_attr.__msg.22, %do.body5.i.return.sink.split.i_crit_edge ], [ @mlx5_sf_new_check_attr.__msg.23, %do.body17.i.return.sink.split.i_crit_edge ], [ @mlx5_sf_new_check_attr.__msg.24, %do.body32.i.return.sink.split.i_crit_edge ], [ @mlx5_sf_new_check_attr.__msg.25, %do.body45.i.return.sink.split.i_crit_edge ]
  %26 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %mlx5_sf_new_check_attr.__msg.25.sink.i, ptr %extack, align 4
  br label %cleanup

if.end:                                           ; preds = %mlx5_get_dev_index.exit.i
  %call2 = tail call fastcc ptr @mlx5_sf_table_try_get(ptr noundef %call)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.body, label %if.end8

do.body:                                          ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_devlink_sf_port_new.__msg) #10
  %tobool5.not = icmp eq ptr %extack, null
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @mlx5_devlink_sf_port_new.__msg, ptr %extack, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %eswitch.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 17, i32 28
  %28 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %eswitch.i, align 4
  %controller.i22 = getelementptr inbounds %struct.devlink_port_new_attrs, ptr %new_attr, i32 0, i32 2
  %30 = ptrtoint ptr %controller.i22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %controller.i22, align 4
  %sfnum.i = getelementptr inbounds %struct.devlink_port_new_attrs, ptr %new_attr, i32 0, i32 3
  %32 = ptrtoint ptr %sfnum.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sfnum.i, align 4
  %call.i.i = tail call zeroext i1 @mlx5_esw_offloads_controller_valid(ptr noundef %29, i32 noundef %31) #10
  br i1 %call.i.i, label %if.end3.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end8
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_sf_alloc.__msg) #10
  %tobool.not.i.i23 = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i23, label %do.body.i.i.if.then.i_crit_edge, label %if.then1.i.i

do.body.i.i.if.then.i_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then1.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @mlx5_sf_alloc.__msg, ptr %extack, align 4
  br label %if.then.i

if.end3.i.i:                                      ; preds = %if.end8
  %35 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call2, align 4
  %call4.i.i = tail call i32 @mlx5_sf_hw_table_sf_alloc(ptr noundef %36, i32 noundef %31, i32 noundef %33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp.i.i, label %if.end3.i.i.id_err24.i.i_crit_edge, label %if.end6.i.i

if.end3.i.i.id_err24.i.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %id_err24.i.i

if.end6.i.i:                                      ; preds = %if.end3.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 372) #15
  %tobool8.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  %.pre.i.i = trunc i32 %call4.i.i to i16
  br i1 %tobool8.not.i.i, label %if.end6.i.i.alloc_err.i.i_crit_edge, label %if.end10.i.i

if.end6.i.i.alloc_err.i.i_crit_edge:              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_err.i.i

if.end10.i.i:                                     ; preds = %if.end6.i.i
  %id.i.i = getelementptr inbounds %struct.mlx5_sf, ptr %call7.i.i.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %.pre.i.i, ptr %id.i.i, align 4
  %39 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call2, align 4
  %call13.i.i = tail call zeroext i16 @mlx5_sf_sw_to_hw_id(ptr noundef %40, i32 noundef %31, i16 noundef zeroext %.pre.i.i) #10
  %41 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call2, align 4
  %caps.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %caps.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i32, ptr %44, i32 1
  %45 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i.i.i, align 4
  %shl.i.i.i = shl i32 %46, 16
  %conv.i.i.i = zext i16 %call13.i.i to i32
  %or.i.i.i = or i32 %shl.i.i.i, %conv.i.i.i
  %port_index.i.i = getelementptr inbounds %struct.mlx5_sf, ptr %call7.i.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %port_index.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or.i.i.i, ptr %port_index.i.i, align 4
  %hw_fn_id16.i.i = getelementptr inbounds %struct.mlx5_sf, ptr %call7.i.i.i.i, i32 0, i32 4
  %48 = ptrtoint ptr %hw_fn_id16.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %call13.i.i, ptr %hw_fn_id16.i.i, align 2
  %hw_state.i.i = getelementptr inbounds %struct.mlx5_sf, ptr %call7.i.i.i.i, i32 0, i32 5
  %49 = ptrtoint ptr %hw_state.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %hw_state.i.i, align 8
  %controller17.i.i = getelementptr inbounds %struct.mlx5_sf, ptr %call7.i.i.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %controller17.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %31, ptr %controller17.i.i, align 8
  %port_indices.i.i.i = getelementptr inbounds %struct.mlx5_sf_table, ptr %call2, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %port_indices.i.i.i) #10
  %call.i.i.i.i = tail call i32 @__xa_insert(ptr noundef %port_indices.i.i.i, i32 noundef %or.i.i.i, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 3264) #10
  tail call void @_raw_spin_unlock(ptr noundef %port_indices.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool19.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool19.not.i.i, label %if.end10.i.i.mlx5_sf_alloc.exit.i_crit_edge, label %insert_err.i.i

if.end10.i.i.mlx5_sf_alloc.exit.i_crit_edge:      ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_sf_alloc.exit.i

insert_err.i.i:                                   ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  br label %alloc_err.i.i

alloc_err.i.i:                                    ; preds = %insert_err.i.i, %if.end6.i.i.alloc_err.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call.i.i.i.i, %insert_err.i.i ], [ -12, %if.end6.i.i.alloc_err.i.i_crit_edge ]
  %51 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call2, align 4
  tail call void @mlx5_sf_hw_table_sf_free(ptr noundef %52, i32 noundef %31, i16 noundef zeroext %.pre.i.i) #10
  br label %id_err24.i.i

id_err24.i.i:                                     ; preds = %alloc_err.i.i, %if.end3.i.i.id_err24.i.i_crit_edge
  %err.1.i.i = phi i32 [ %err.0.i.i, %alloc_err.i.i ], [ %call4.i.i, %if.end3.i.i.id_err24.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %err.1.i.i)
  %cmp25.i.i = icmp eq i32 %err.1.i.i, -17
  br i1 %cmp25.i.i, label %do.body28.i.i, label %id_err24.i.i.if.end36.i.i_crit_edge

id_err24.i.i.if.end36.i.i_crit_edge:              ; preds = %id_err24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i.i

do.body28.i.i:                                    ; preds = %id_err24.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_sf_alloc.__msg.26) #10
  %tobool30.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool30.not.i.i, label %do.body28.i.i.if.end36.i.i_crit_edge, label %if.then31.i.i

do.body28.i.i.if.end36.i.i_crit_edge:             ; preds = %do.body28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i.i

if.then31.i.i:                                    ; preds = %do.body28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @mlx5_sf_alloc.__msg.26, ptr %extack, align 4
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.then31.i.i, %do.body28.i.i.if.end36.i.i_crit_edge, %id_err24.i.i.if.end36.i.i_crit_edge
  %54 = inttoptr i32 %err.1.i.i to ptr
  br label %mlx5_sf_alloc.exit.i

mlx5_sf_alloc.exit.i:                             ; preds = %if.end36.i.i, %if.end10.i.i.mlx5_sf_alloc.exit.i_crit_edge
  %retval.0.i.i24 = phi ptr [ %54, %if.end36.i.i ], [ %call7.i.i.i.i, %if.end10.i.i.mlx5_sf_alloc.exit.i_crit_edge ]
  %cmp.i30.i = icmp ugt ptr %retval.0.i.i24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30.i, label %mlx5_sf_alloc.exit.i.if.then.i_crit_edge, label %if.end.i

mlx5_sf_alloc.exit.i.if.then.i_crit_edge:         ; preds = %mlx5_sf_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %mlx5_sf_alloc.exit.i.if.then.i_crit_edge, %if.then1.i.i, %do.body.i.i.if.then.i_crit_edge
  %retval.0.i35.i = phi ptr [ %retval.0.i.i24, %mlx5_sf_alloc.exit.i.if.then.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then1.i.i ], [ inttoptr (i32 -22 to ptr), %do.body.i.i.if.then.i_crit_edge ]
  %55 = ptrtoint ptr %retval.0.i35.i to i32
  br label %mlx5_sf_add.exit

if.end.i:                                         ; preds = %mlx5_sf_alloc.exit.i
  %hw_fn_id.i = getelementptr inbounds %struct.mlx5_sf, ptr %retval.0.i.i24, i32 0, i32 4
  %56 = ptrtoint ptr %hw_fn_id.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %hw_fn_id.i, align 2
  %58 = ptrtoint ptr %controller.i22 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %controller.i22, align 4
  %60 = ptrtoint ptr %sfnum.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sfnum.i, align 4
  %call5.i = tail call i32 @mlx5_esw_offloads_sf_vport_enable(ptr noundef %29, ptr noundef %retval.0.i.i24, i16 noundef zeroext %57, i32 noundef %59, i32 noundef %61) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i25 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i25, label %if.end7.i, label %esw_err.i

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %port_index.i = getelementptr inbounds %struct.mlx5_sf, ptr %retval.0.i.i24, i32 0, i32 1
  %62 = ptrtoint ptr %port_index.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %port_index.i, align 4
  %64 = ptrtoint ptr %new_port_index to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %new_port_index, align 4
  %65 = load i32, ptr %port_index.i, align 4
  %controller9.i = getelementptr inbounds %struct.mlx5_sf, ptr %retval.0.i.i24, i32 0, i32 2
  %66 = ptrtoint ptr %controller9.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %controller9.i, align 4
  %68 = ptrtoint ptr %hw_fn_id.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %hw_fn_id.i, align 2
  %70 = ptrtoint ptr %sfnum.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sfnum.i, align 4
  tail call fastcc void @trace_mlx5_sf_add(ptr noundef %call, i32 noundef %65, i32 noundef %67, i16 noundef zeroext %69, i32 noundef %71) #10
  br label %mlx5_sf_add.exit

esw_err.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %port_indices.i.i31.i = getelementptr inbounds %struct.mlx5_sf_table, ptr %call2, i32 0, i32 1
  %port_index.i.i.i = getelementptr inbounds %struct.mlx5_sf, ptr %retval.0.i.i24, i32 0, i32 1
  %72 = ptrtoint ptr %port_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %port_index.i.i.i, align 4
  %call.i.i.i = tail call ptr @xa_erase(ptr noundef %port_indices.i.i31.i, i32 noundef %73) #10
  %74 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call2, align 4
  %controller.i.i = getelementptr inbounds %struct.mlx5_sf, ptr %retval.0.i.i24, i32 0, i32 2
  %76 = ptrtoint ptr %controller.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %controller.i.i, align 4
  %id.i32.i = getelementptr inbounds %struct.mlx5_sf, ptr %retval.0.i.i24, i32 0, i32 3
  %78 = ptrtoint ptr %id.i32.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %id.i32.i, align 4
  tail call void @mlx5_sf_hw_table_sf_free(ptr noundef %75, i32 noundef %77, i16 noundef zeroext %79) #10
  %80 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call2, align 4
  %82 = ptrtoint ptr %port_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %port_index.i.i.i, align 4
  %84 = ptrtoint ptr %controller.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %controller.i.i, align 4
  %86 = ptrtoint ptr %hw_fn_id.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %hw_fn_id.i, align 2
  tail call fastcc void @trace_mlx5_sf_free(ptr noundef %81, i32 noundef %83, i32 noundef %85, i16 noundef zeroext %87) #10
  tail call void @kfree(ptr noundef %retval.0.i.i24) #10
  br label %mlx5_sf_add.exit

mlx5_sf_add.exit:                                 ; preds = %esw_err.i, %if.end7.i, %if.then.i
  %retval.0.i26 = phi i32 [ %55, %if.then.i ], [ %call5.i, %esw_err.i ], [ 0, %if.end7.i ]
  %refcount.i = getelementptr inbounds %struct.mlx5_sf_table, ptr %call2, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %88 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !174
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %88, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i27, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %mlx5_sf_add.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !170

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %cleanup

if.then.i27:                                      ; preds = %mlx5_sf_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  %disable_complete.i = getelementptr inbounds %struct.mlx5_sf_table, ptr %call2, i32 0, i32 3
  tail call void @complete(ptr noundef %disable_complete.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i27, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then6, %do.body.cleanup_crit_edge, %return.sink.split.i, %do.body45.i.cleanup_crit_edge, %do.body32.i.cleanup_crit_edge, %do.body17.i.cleanup_crit_edge, %do.body5.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then6 ], [ -95, %do.body.cleanup_crit_edge ], [ %retval.0.i26, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %retval.0.i26, %if.then10.i.i.i.i ], [ %retval.0.i26, %if.then.i27 ], [ -95, %do.body.i.cleanup_crit_edge ], [ -95, %do.body5.i.cleanup_crit_edge ], [ -95, %do.body17.i.cleanup_crit_edge ], [ -95, %do.body32.i.cleanup_crit_edge ], [ -95, %do.body45.i.cleanup_crit_edge ], [ -95, %return.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_devlink_sf_port_del(ptr noundef %devlink, i32 noundef %port_index, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #10
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 17, i32 28
  %0 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eswitch, align 4
  %call1 = tail call fastcc ptr @mlx5_sf_table_try_get(ptr noundef %call)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_devlink_sf_port_del.__msg) #10
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @mlx5_devlink_sf_port_del.__msg, ptr %extack, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %port_indices.i = getelementptr inbounds %struct.mlx5_sf_table, ptr %call1, i32 0, i32 1
  %call.i = tail call ptr @xa_load(ptr noundef %port_indices.i, i32 noundef %port_index) #10
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end4.sf_err_crit_edge, label %if.end8

if.end4.sf_err_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sf_err

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %hw_fn_id = getelementptr inbounds %struct.mlx5_sf, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %hw_fn_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %hw_fn_id, align 2
  tail call void @mlx5_esw_offloads_sf_vport_disable(ptr noundef %1, i16 noundef zeroext %4) #10
  %port_index.i = getelementptr inbounds %struct.mlx5_sf, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %port_index.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port_index.i, align 4
  %call.i26 = tail call ptr @xa_erase(ptr noundef %port_indices.i, i32 noundef %6) #10
  %sf_state_lock = getelementptr inbounds %struct.mlx5_sf_table, ptr %call1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %sf_state_lock, i32 noundef 0) #10
  tail call fastcc void @mlx5_sf_dealloc(ptr noundef nonnull %call1, ptr noundef nonnull %call.i)
  tail call void @mutex_unlock(ptr noundef %sf_state_lock) #10
  br label %sf_err

sf_err:                                           ; preds = %if.end8, %if.end4.sf_err_crit_edge
  %err.0 = phi i32 [ 0, %if.end8 ], [ -19, %if.end4.sf_err_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.mlx5_sf_table, ptr %call1, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !174
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sf_err
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !170

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %sf_err
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  %disable_complete.i = getelementptr inbounds %struct.mlx5_sf_table, ptr %call1, i32 0, i32 3
  tail call void @complete(ptr noundef %disable_complete.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then3 ], [ -95, %do.body.cleanup_crit_edge ], [ %err.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i ], [ %err.0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_esw_offloads_sf_vport_disable(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_sf_dealloc(ptr noundef %table, ptr noundef %sf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_state = getelementptr inbounds %struct.mlx5_sf, ptr %sf, i32 0, i32 5
  %0 = ptrtoint ptr %hw_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp = icmp eq i16 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port_indices.i.i = getelementptr inbounds %struct.mlx5_sf_table, ptr %table, i32 0, i32 1
  %port_index.i.i = getelementptr inbounds %struct.mlx5_sf, ptr %sf, i32 0, i32 1
  %2 = ptrtoint ptr %port_index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_index.i.i, align 4
  %call.i.i = tail call ptr @xa_erase(ptr noundef %port_indices.i.i, i32 noundef %3) #10
  %4 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table, align 4
  %controller.i = getelementptr inbounds %struct.mlx5_sf, ptr %sf, i32 0, i32 2
  %6 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %controller.i, align 4
  %id.i = getelementptr inbounds %struct.mlx5_sf, ptr %sf, i32 0, i32 3
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %id.i, align 4
  tail call void @mlx5_sf_hw_table_sf_free(ptr noundef %5, i32 noundef %7, i16 noundef zeroext %9) #10
  %10 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %table, align 4
  %12 = ptrtoint ptr %port_index.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_index.i.i, align 4
  %14 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %controller.i, align 4
  %hw_fn_id.i = getelementptr inbounds %struct.mlx5_sf, ptr %sf, i32 0, i32 4
  %16 = ptrtoint ptr %hw_fn_id.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hw_fn_id.i, align 2
  tail call fastcc void @trace_mlx5_sf_free(ptr noundef %11, i32 noundef %13, i32 noundef %15, i16 noundef zeroext %17) #10
  br label %if.end9

if.else:                                          ; preds = %entry
  %18 = and i16 %1, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %18)
  %19 = icmp eq i16 %18, 2
  %20 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %table, align 4
  br i1 %19, label %if.then2, label %if.else5

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %hw_fn_id = getelementptr inbounds %struct.mlx5_sf, ptr %sf, i32 0, i32 4
  %22 = ptrtoint ptr %hw_fn_id to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hw_fn_id, align 2
  %call3 = tail call i32 @mlx5_cmd_sf_disable_hca(ptr noundef %21, i16 noundef zeroext %23) #10
  %24 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %table, align 4
  %controller = getelementptr inbounds %struct.mlx5_sf, ptr %sf, i32 0, i32 2
  %26 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %controller, align 4
  %id = getelementptr inbounds %struct.mlx5_sf, ptr %sf, i32 0, i32 3
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %id, align 4
  tail call void @mlx5_sf_hw_table_sf_deferred_free(ptr noundef %25, i32 noundef %27, i16 noundef zeroext %29) #10
  br label %if.end9

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %controller7 = getelementptr inbounds %struct.mlx5_sf, ptr %sf, i32 0, i32 2
  %30 = ptrtoint ptr %controller7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %controller7, align 4
  %id8 = getelementptr inbounds %struct.mlx5_sf, ptr %sf, i32 0, i32 3
  %32 = ptrtoint ptr %id8 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %id8, align 4
  tail call void @mlx5_sf_hw_table_sf_deferred_free(ptr noundef %21, i32 noundef %31, i16 noundef zeroext %33) #10
  br label %if.end9

if.end9:                                          ; preds = %if.else5, %if.then2, %if.then
  tail call void @kfree(ptr noundef %sf) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_sf_table_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %eswitch.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 28
  %0 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eswitch.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not.i = icmp eq i32 %6, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %mlx5_sf_table_supported.exit

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mlx5_sf_table_supported.exit:                     ; preds = %land.lhs.true.i
  %call.i = tail call zeroext i1 @mlx5_sf_hw_table_supported(ptr noundef %dev) #10
  br i1 %call.i, label %lor.lhs.false, label %mlx5_sf_table_supported.exit.cleanup_crit_edge

mlx5_sf_table_supported.exit.cleanup_crit_edge:   ; preds = %mlx5_sf_table_supported.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %mlx5_sf_table_supported.exit
  %7 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %caps.i, align 8
  %add.ptr.i48 = getelementptr %struct.mlx5_hca_cap, ptr %8, i32 0, i32 1, i32 31
  %9 = ptrtoint ptr %add.ptr.i48 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i48, align 4
  %11 = and i32 %10, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 236) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  %sf_state_lock = getelementptr inbounds %struct.mlx5_sf_table, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %sf_state_lock, ptr noundef nonnull @.str, ptr noundef nonnull @mlx5_sf_table_init.__key) #10
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %call7.i.i, align 8
  %port_indices = getelementptr inbounds %struct.mlx5_sf_table, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %port_indices, ptr noundef nonnull @.str.27, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #10
  %xa_flags.i.i = getelementptr inbounds %struct.mlx5_sf_table, ptr %call7.i.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %xa_flags.i.i, align 8
  %xa_head.i.i = getelementptr inbounds %struct.mlx5_sf_table, ptr %call7.i.i, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %xa_head.i.i, align 4
  %sf_table = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 44
  %16 = ptrtoint ptr %sf_table to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %sf_table, align 8
  %refcount = getelementptr inbounds %struct.mlx5_sf_table, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %17 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 0, ptr %refcount, align 8
  %esw_nb = getelementptr inbounds %struct.mlx5_sf_table, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %esw_nb to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mlx5_sf_esw_event, ptr %esw_nb, align 8
  %19 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %eswitch.i, align 4
  %call8 = tail call i32 @mlx5_esw_event_notifier_register(ptr noundef %20, ptr noundef %esw_nb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.body.reg_err_crit_edge

do.body.reg_err_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %reg_err

if.end11:                                         ; preds = %do.body
  %vhca_nb = getelementptr inbounds %struct.mlx5_sf_table, ptr %call7.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %vhca_nb to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mlx5_sf_vhca_event, ptr %vhca_nb, align 4
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call7.i.i, align 8
  %call15 = tail call i32 @mlx5_vhca_event_notifier_register(ptr noundef %23, ptr noundef %vhca_nb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end11.cleanup_crit_edge, label %vhca_err

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

vhca_err:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %eswitch.i, align 4
  tail call void @mlx5_esw_event_notifier_unregister(ptr noundef %25, ptr noundef %esw_nb) #10
  br label %reg_err

reg_err:                                          ; preds = %vhca_err, %do.body.reg_err_crit_edge
  %err.0 = phi i32 [ %call8, %do.body.reg_err_crit_edge ], [ %call15, %vhca_err ]
  tail call void @mutex_destroy(ptr noundef %sf_state_lock) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %26 = ptrtoint ptr %sf_table to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %sf_table, align 8
  br label %cleanup

cleanup:                                          ; preds = %reg_err, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %mlx5_sf_table_supported.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %reg_err ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %mlx5_sf_table_supported.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_sf_esw_event(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %index.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -208
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %data, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.29)
  switch i16 %1, label %entry.sw.epilog_crit_edge [
    i16 2, label %sw.bb
    i16 0, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %disable_complete.i = getelementptr i8, ptr %nb, i32 -148
  %3 = ptrtoint ptr %disable_complete.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %disable_complete.i, align 4
  %wait.i.i = getelementptr i8, ptr %nb, i32 -144
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @init_completion.__key) #10
  %refcount.i = getelementptr i8, ptr %nb, i32 -152
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  %4 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %refcount.i, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %refcount.i3 = getelementptr i8, ptr %nb, i32 -152
  %call.i.i.i.i4 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i3, i32 noundef 4) #10
  %5 = ptrtoint ptr %refcount.i3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %refcount.i3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %sw.bb1.sw.epilog_crit_edge, label %if.end.i

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i3, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %refcount.i3, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i3, ptr %refcount.i3, i32 1, ptr elementtype(i32) %refcount.i3) #10, !srcloc !174
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.mlx5_sf_table_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !170

if.end5.i.i.i.i.i.mlx5_sf_table_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_sf_table_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i3, i32 noundef 3) #10
  br label %mlx5_sf_table_put.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  %disable_complete.i.i = getelementptr i8, ptr %nb, i32 -148
  tail call void @complete(ptr noundef %disable_complete.i.i) #10
  br label %mlx5_sf_table_put.exit.i

mlx5_sf_table_put.exit.i:                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.mlx5_sf_table_put.exit.i_crit_edge
  %disable_complete.i5 = getelementptr i8, ptr %nb, i32 -148
  tail call void @wait_for_completion(ptr noundef %disable_complete.i5) #10
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %eswitch.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %9, i32 0, i32 17, i32 28
  %10 = ptrtoint ptr %eswitch.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eswitch.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i.i) #10
  %12 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %index.i.i, align 4
  %port_indices.i.i = getelementptr i8, ptr %nb, i32 -204
  %call.i.i = call ptr @xa_find(ptr noundef %port_indices.i.i, ptr noundef nonnull %index.i.i, i32 noundef -1, i32 noundef 8) #10
  %tobool.not10.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not10.i.i, label %mlx5_sf_table_put.exit.i.mlx5_sf_deactivate_all.exit.i_crit_edge, label %mlx5_sf_table_put.exit.i.for.body.i.i_crit_edge

mlx5_sf_table_put.exit.i.for.body.i.i_crit_edge:  ; preds = %mlx5_sf_table_put.exit.i
  br label %for.body.i.i

mlx5_sf_table_put.exit.i.mlx5_sf_deactivate_all.exit.i_crit_edge: ; preds = %mlx5_sf_table_put.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_sf_deactivate_all.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %mlx5_sf_table_put.exit.i.for.body.i.i_crit_edge
  %sf.011.i.i = phi ptr [ %call2.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %mlx5_sf_table_put.exit.i.for.body.i.i_crit_edge ]
  %hw_fn_id.i.i = getelementptr inbounds %struct.mlx5_sf, ptr %sf.011.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %hw_fn_id.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hw_fn_id.i.i, align 2
  call void @mlx5_esw_offloads_sf_vport_disable(ptr noundef %11, i16 noundef zeroext %14) #10
  %port_index.i.i.i = getelementptr inbounds %struct.mlx5_sf, ptr %sf.011.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %port_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_index.i.i.i, align 4
  %call.i.i.i = call ptr @xa_erase(ptr noundef %port_indices.i.i, i32 noundef %16) #10
  call fastcc void @mlx5_sf_dealloc(ptr noundef %add.ptr, ptr noundef nonnull %sf.011.i.i) #10
  %call2.i.i = call ptr @xa_find_after(ptr noundef %port_indices.i.i, ptr noundef nonnull %index.i.i, i32 noundef -1, i32 noundef 8) #10
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.i.mlx5_sf_deactivate_all.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.mlx5_sf_deactivate_all.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_sf_deactivate_all.exit.i

mlx5_sf_deactivate_all.exit.i:                    ; preds = %for.body.i.i.mlx5_sf_deactivate_all.exit.i_crit_edge, %mlx5_sf_table_put.exit.i.mlx5_sf_deactivate_all.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i.i) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %mlx5_sf_deactivate_all.exit.i, %sw.bb1.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_event_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_sf_vhca_event(ptr nocapture noundef readonly %nb, i32 noundef %opcode, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %index.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -220
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call fastcc ptr @mlx5_sf_table_try_get(ptr noundef %1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %sf_state_lock = getelementptr inbounds %struct.mlx5_sf_table, ptr %call, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %sf_state_lock, i32 noundef 0) #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %data, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i) #10
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %index.i, align 4
  %port_indices.i = getelementptr inbounds %struct.mlx5_sf_table, ptr %call, i32 0, i32 1
  %call.i = call ptr @xa_find(ptr noundef %port_indices.i, ptr noundef nonnull %index.i, i32 noundef -1, i32 noundef 8) #10
  %tobool.not8.i = icmp eq ptr %call.i, null
  br i1 %tobool.not8.i, label %if.end.mlx5_sf_lookup_by_function_id.exit.thread_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.mlx5_sf_lookup_by_function_id.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_sf_lookup_by_function_id.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %sf.09.i = phi ptr [ %call3.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %if.end.for.body.i_crit_edge ]
  %hw_fn_id.i = getelementptr inbounds %struct.mlx5_sf, ptr %sf.09.i, i32 0, i32 4
  %5 = ptrtoint ptr %hw_fn_id.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %hw_fn_id.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %3)
  %cmp.i = icmp eq i16 %6, %3
  br i1 %cmp.i, label %if.end4, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %call3.i = call ptr @xa_find_after(ptr noundef %port_indices.i, ptr noundef nonnull %index.i, i32 noundef -1, i32 noundef 8) #10
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %for.inc.i.mlx5_sf_lookup_by_function_id.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.mlx5_sf_lookup_by_function_id.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_sf_lookup_by_function_id.exit.thread

mlx5_sf_lookup_by_function_id.exit.thread:        ; preds = %for.inc.i.mlx5_sf_lookup_by_function_id.exit.thread_crit_edge, %if.end.mlx5_sf_lookup_by_function_id.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #10
  br label %sf_err

if.end4:                                          ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #10
  %new_vhca_state = getelementptr inbounds %struct.mlx5_vhca_state_event, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %new_vhca_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %new_vhca_state, align 2
  %hw_state.i = getelementptr inbounds %struct.mlx5_sf, ptr %sf.09.i, i32 0, i32 5
  %9 = ptrtoint ptr %hw_state.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hw_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %10)
  %cmp.i32 = icmp eq i16 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp3.i = icmp eq i8 %8, 3
  %or.cond.i = and i1 %cmp3.i, %cmp.i32
  br i1 %or.cond.i, label %if.end4.if.then7_crit_edge, label %if.end.i

if.end4.if.then7_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %10)
  %cmp7.i = icmp eq i16 %10, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp11.i = icmp eq i8 %8, 2
  %or.cond29.i = and i1 %cmp11.i, %cmp7.i
  br i1 %or.cond29.i, label %if.end.i.if.then7_crit_edge, label %mlx5_sf_state_update_check.exit

if.end.i.if.then7_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

mlx5_sf_state_update_check.exit:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %10)
  %cmp17.i = icmp eq i16 %10, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp21.i = icmp eq i8 %8, 1
  %or.cond30.i = and i1 %cmp21.i, %cmp17.i
  br i1 %or.cond30.i, label %mlx5_sf_state_update_check.exit.if.then7_crit_edge, label %mlx5_sf_state_update_check.exit.if.end10_crit_edge

mlx5_sf_state_update_check.exit.if.end10_crit_edge: ; preds = %mlx5_sf_state_update_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

mlx5_sf_state_update_check.exit.if.then7_crit_edge: ; preds = %mlx5_sf_state_update_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7:                                         ; preds = %mlx5_sf_state_update_check.exit.if.then7_crit_edge, %if.end.i.if.then7_crit_edge, %if.end4.if.then7_crit_edge
  %conv9 = zext i8 %8 to i16
  %11 = ptrtoint ptr %hw_state.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv9, ptr %hw_state.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %mlx5_sf_state_update_check.exit.if.end10_crit_edge
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  %port_index = getelementptr inbounds %struct.mlx5_sf, ptr %sf.09.i, i32 0, i32 1
  %14 = ptrtoint ptr %port_index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_index, align 4
  %controller = getelementptr inbounds %struct.mlx5_sf, ptr %sf.09.i, i32 0, i32 2
  %16 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %controller, align 4
  %18 = ptrtoint ptr %hw_fn_id.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hw_fn_id.i, align 2
  %20 = ptrtoint ptr %hw_state.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hw_state.i, align 4
  %conv13 = trunc i16 %21 to i8
  call fastcc void @trace_mlx5_sf_update_state(ptr noundef %13, i32 noundef %15, i32 noundef %17, i16 noundef zeroext %19, i8 noundef zeroext %conv13)
  br label %sf_err

sf_err:                                           ; preds = %if.end10, %mlx5_sf_lookup_by_function_id.exit.thread
  call void @mutex_unlock(ptr noundef %sf_state_lock) #10
  %refcount.i = getelementptr inbounds %struct.mlx5_sf_table, ptr %call, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %22 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !174
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sf_err
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !170

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %sf_err
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  %disable_complete.i = getelementptr inbounds %struct.mlx5_sf_table, ptr %call, i32 0, i32 3
  call void @complete(ptr noundef %disable_complete.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vhca_event_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_esw_event_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_sf_table_cleanup(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sf_table = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 44
  %0 = ptrtoint ptr %sf_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sf_table, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %vhca_nb = getelementptr inbounds %struct.mlx5_sf_table, ptr %1, i32 0, i32 6
  tail call void @mlx5_vhca_event_notifier_unregister(ptr noundef %3, ptr noundef %vhca_nb) #10
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 28
  %4 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eswitch, align 4
  %esw_nb = getelementptr inbounds %struct.mlx5_sf_table, ptr %1, i32 0, i32 5
  tail call void @mlx5_esw_event_notifier_unregister(ptr noundef %5, ptr noundef %esw_nb) #10
  %refcount = getelementptr inbounds %struct.mlx5_sf_table, ptr %1, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #10
  %6 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end.if.end18_crit_edge, label %do.end, !prof !170

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 567, i32 noundef 9, ptr noundef null) #10
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end.if.end18_crit_edge
  %sf_state_lock = getelementptr inbounds %struct.mlx5_sf_table, ptr %1, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %sf_state_lock) #10
  %xa_head.i = getelementptr inbounds %struct.mlx5_sf_table, ptr %1, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xa_head.i, align 4
  %cmp.i = icmp eq ptr %9, null
  br i1 %cmp.i, label %if.end18.if.end50_crit_edge, label %do.end44, !prof !170

if.end18.if.end50_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

do.end44:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 569, i32 noundef 9, ptr noundef null) #10
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end18.if.end50_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_vhca_event_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mlx5_sf_add(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_add, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_devname, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %port_index = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_add, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %port_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_index, align 4
  %controller = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_add, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %controller, align 4
  %hw_fn_id = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_add, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %hw_fn_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hw_fn_id, align 4
  %conv = zext i16 %9 to i32
  %sfnum = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_add, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %sfnum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sfnum, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.12, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7, i32 noundef %conv, i32 noundef %11) #10
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
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
define internal i32 @trace_raw_output_mlx5_sf_free(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_free, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_devname, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %port_index = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_free, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %port_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_index, align 4
  %controller = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_free, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %controller, align 4
  %hw_fn_id = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_free, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %hw_fn_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hw_fn_id, align 4
  %conv = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.13, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7, i32 noundef %conv) #10
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mlx5_sf_hwc_alloc(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_hwc_alloc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_devname, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %controller = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_hwc_alloc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %controller, align 4
  %hw_fn_id = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_hwc_alloc, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %hw_fn_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hw_fn_id, align 4
  %conv = zext i16 %7 to i32
  %sfnum = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_hwc_alloc, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %sfnum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sfnum, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.14, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %conv, i32 noundef %9) #10
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mlx5_sf_hwc_free(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_hwc_free, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_devname, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %hw_fn_id = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_hwc_free, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %hw_fn_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hw_fn_id, align 4
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.15, ptr noundef %add.ptr, i32 noundef %conv) #10
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mlx5_sf_hwc_deferred_free(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_hwc_deferred_free, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_devname, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %hw_fn_id = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_hwc_deferred_free, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %hw_fn_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hw_fn_id, align 4
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.15, ptr noundef %add.ptr, i32 noundef %conv) #10
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mlx5_sf_state_template(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_state_template, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_devname, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %port_index = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_state_template, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %port_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_index, align 4
  %controller = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_state_template, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %controller, align 4
  %hw_fn_id = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_state_template, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %hw_fn_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hw_fn_id, align 4
  %conv = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.13, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7, i32 noundef %conv) #10
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mlx5_sf_update_state(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_update_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_devname, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %port_index = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_update_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %port_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_index, align 4
  %controller = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_update_state, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %controller, align 4
  %hw_fn_id = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_update_state, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %hw_fn_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hw_fn_id, align 4
  %conv = zext i16 %9 to i32
  %state = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_update_state, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %state, align 2
  %conv1 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.18, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7, i32 noundef %conv, i32 noundef %conv1) #10
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_sf_enable_hca(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_sf_activate(ptr noundef %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_activate, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mlx5_sf_activate, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !177

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !170

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !178
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_activate, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id) #10
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !179
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !179
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !170

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !180
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_activate, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mlx5_sf_activate.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_mlx5_sf_activate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 132, ptr noundef nonnull @.str.20) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !181
  %38 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_sf_disable_hca(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_sf_deactivate(ptr noundef %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_deactivate, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mlx5_sf_deactivate, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !177

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !170

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !182
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_deactivate, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id) #10
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !183
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !183
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !170

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !180
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_deactivate, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mlx5_sf_deactivate.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_mlx5_sf_deactivate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 140, ptr noundef nonnull @.str.20) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !181
  %38 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
declare dso_local i32 @mlx5_esw_offloads_sf_vport_enable(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_sf_add(ptr noundef %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id, i32 noundef %sfnum) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_add, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mlx5_sf_add, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !177

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !170

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !184
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_add, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id, i32 noundef %sfnum) #10
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !185
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !185
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !170

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !180
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_add, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mlx5_sf_add.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_mlx5_sf_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 36, ptr noundef nonnull @.str.20) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !181
  %38 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
declare dso_local zeroext i1 @mlx5_esw_offloads_controller_valid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_sf_hw_table_sf_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlx5_sf_sw_to_hw_id(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_sf_hw_table_sf_free(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_sf_free(ptr noundef %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_free, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mlx5_sf_free, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !177

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !170

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !186
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_free, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id) #10
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !187
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !187
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !170

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !180
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_free, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mlx5_sf_free.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_mlx5_sf_free.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 57, ptr noundef nonnull @.str.20) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !181
  %38 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_sf_hw_table_sf_deferred_free(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_sf_hw_table_supported(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_sf_update_state(ptr noundef %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id, i8 noundef zeroext %state) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_update_state, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mlx5_sf_update_state, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !177

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !170

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !188
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_update_state, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %dev, i32 noundef %port_index, i32 noundef %controller, i16 noundef zeroext %hw_fn_id, i8 noundef zeroext %state) #10
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !189
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !189
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !170

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !180
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_update_state, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mlx5_sf_update_state.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_mlx5_sf_update_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 164, ptr noundef nonnull @.str.20) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !181
  %38 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !66, !68, !70, !72, !73, !75, !76, !77, !78, !79, !80, !81, !82, !83, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !125, !126, !127, !128, !129, !131, !132, !133, !134, !136, !138, !140, !142, !144, !146, !148, !149, !150, !151, !152, !154, !155, !157, !158, !159}
!llvm.named.register.sp = !{!160}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @__tracepoint_mlx5_sf_add, !1, !"__tracepoint_mlx5_sf_add", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/diag/sf_tracepoint.h", i32 14, i32 1}
!2 = !{ptr @__tracepoint_ptr_mlx5_sf_add, !1, !"__tracepoint_ptr_mlx5_sf_add", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_mlx5_sf_add, !1, !"__SCK__tp_func_mlx5_sf_add", i1 false, i1 false}
!4 = !{ptr @__tracepoint_mlx5_sf_free, !5, !"__tracepoint_mlx5_sf_free", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/diag/sf_tracepoint.h", i32 38, i32 1}
!6 = !{ptr @__tracepoint_ptr_mlx5_sf_free, !5, !"__tracepoint_ptr_mlx5_sf_free", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_mlx5_sf_free, !5, !"__SCK__tp_func_mlx5_sf_free", i1 false, i1 false}
!8 = !{ptr @__tracepoint_mlx5_sf_hwc_alloc, !9, !"__tracepoint_mlx5_sf_hwc_alloc", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/diag/sf_tracepoint.h", i32 59, i32 1}
!10 = !{ptr @__tracepoint_ptr_mlx5_sf_hwc_alloc, !9, !"__tracepoint_ptr_mlx5_sf_hwc_alloc", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_mlx5_sf_hwc_alloc, !9, !"__SCK__tp_func_mlx5_sf_hwc_alloc", i1 false, i1 false}
!12 = !{ptr @__tracepoint_mlx5_sf_hwc_free, !13, !"__tracepoint_mlx5_sf_hwc_free", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/diag/sf_tracepoint.h", i32 80, i32 1}
!14 = !{ptr @__tracepoint_ptr_mlx5_sf_hwc_free, !13, !"__tracepoint_ptr_mlx5_sf_hwc_free", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_mlx5_sf_hwc_free, !13, !"__SCK__tp_func_mlx5_sf_hwc_free", i1 false, i1 false}
!16 = !{ptr @__tracepoint_mlx5_sf_hwc_deferred_free, !17, !"__tracepoint_mlx5_sf_hwc_deferred_free", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/diag/sf_tracepoint.h", i32 93, i32 1}
!18 = !{ptr @__tracepoint_ptr_mlx5_sf_hwc_deferred_free, !17, !"__tracepoint_ptr_mlx5_sf_hwc_deferred_free", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_mlx5_sf_hwc_deferred_free, !17, !"__SCK__tp_func_mlx5_sf_hwc_deferred_free", i1 false, i1 false}
!20 = !{ptr @__tracepoint_mlx5_sf_activate, !21, !"__tracepoint_mlx5_sf_activate", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/diag/sf_tracepoint.h", i32 126, i32 1}
!22 = !{ptr @__tracepoint_ptr_mlx5_sf_activate, !21, !"__tracepoint_ptr_mlx5_sf_activate", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_mlx5_sf_activate, !21, !"__SCK__tp_func_mlx5_sf_activate", i1 false, i1 false}
!24 = !{ptr @__tracepoint_mlx5_sf_deactivate, !25, !"__tracepoint_mlx5_sf_deactivate", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/diag/sf_tracepoint.h", i32 134, i32 1}
!26 = !{ptr @__tracepoint_ptr_mlx5_sf_deactivate, !25, !"__tracepoint_ptr_mlx5_sf_deactivate", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_mlx5_sf_deactivate, !25, !"__SCK__tp_func_mlx5_sf_deactivate", i1 false, i1 false}
!28 = !{ptr @__tracepoint_mlx5_sf_update_state, !29, !"__tracepoint_mlx5_sf_update_state", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/diag/sf_tracepoint.h", i32 142, i32 1}
!30 = !{ptr @__tracepoint_ptr_mlx5_sf_update_state, !29, !"__tracepoint_ptr_mlx5_sf_update_state", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_mlx5_sf_update_state, !29, !"__SCK__tp_func_mlx5_sf_update_state", i1 false, i1 false}
!32 = !{ptr @event_class_mlx5_sf_add, !1, !"event_class_mlx5_sf_add", i1 false, i1 false}
!33 = !{ptr @event_mlx5_sf_add, !1, !"event_mlx5_sf_add", i1 false, i1 false}
!34 = !{ptr @__event_mlx5_sf_add, !1, !"__event_mlx5_sf_add", i1 false, i1 false}
!35 = !{ptr @event_class_mlx5_sf_free, !5, !"event_class_mlx5_sf_free", i1 false, i1 false}
!36 = !{ptr @event_mlx5_sf_free, !5, !"event_mlx5_sf_free", i1 false, i1 false}
!37 = !{ptr @__event_mlx5_sf_free, !5, !"__event_mlx5_sf_free", i1 false, i1 false}
!38 = !{ptr @event_class_mlx5_sf_hwc_alloc, !9, !"event_class_mlx5_sf_hwc_alloc", i1 false, i1 false}
!39 = !{ptr @event_mlx5_sf_hwc_alloc, !9, !"event_mlx5_sf_hwc_alloc", i1 false, i1 false}
!40 = !{ptr @__event_mlx5_sf_hwc_alloc, !9, !"__event_mlx5_sf_hwc_alloc", i1 false, i1 false}
!41 = !{ptr @event_class_mlx5_sf_hwc_free, !13, !"event_class_mlx5_sf_hwc_free", i1 false, i1 false}
!42 = !{ptr @event_mlx5_sf_hwc_free, !13, !"event_mlx5_sf_hwc_free", i1 false, i1 false}
!43 = !{ptr @__event_mlx5_sf_hwc_free, !13, !"__event_mlx5_sf_hwc_free", i1 false, i1 false}
!44 = !{ptr @event_class_mlx5_sf_hwc_deferred_free, !17, !"event_class_mlx5_sf_hwc_deferred_free", i1 false, i1 false}
!45 = !{ptr @event_mlx5_sf_hwc_deferred_free, !17, !"event_mlx5_sf_hwc_deferred_free", i1 false, i1 false}
!46 = !{ptr @__event_mlx5_sf_hwc_deferred_free, !17, !"__event_mlx5_sf_hwc_deferred_free", i1 false, i1 false}
!47 = !{ptr @event_class_mlx5_sf_state_template, !48, !"event_class_mlx5_sf_state_template", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/diag/sf_tracepoint.h", i32 106, i32 1}
!49 = !{ptr @event_mlx5_sf_activate, !21, !"event_mlx5_sf_activate", i1 false, i1 false}
!50 = !{ptr @__event_mlx5_sf_activate, !21, !"__event_mlx5_sf_activate", i1 false, i1 false}
!51 = !{ptr @event_mlx5_sf_deactivate, !25, !"event_mlx5_sf_deactivate", i1 false, i1 false}
!52 = !{ptr @__event_mlx5_sf_deactivate, !25, !"__event_mlx5_sf_deactivate", i1 false, i1 false}
!53 = !{ptr @event_class_mlx5_sf_update_state, !29, !"event_class_mlx5_sf_update_state", i1 false, i1 false}
!54 = !{ptr @event_mlx5_sf_update_state, !29, !"event_mlx5_sf_update_state", i1 false, i1 false}
!55 = !{ptr @__event_mlx5_sf_update_state, !29, !"__event_mlx5_sf_update_state", i1 false, i1 false}
!56 = !{ptr @__bpf_trace_tp_map_mlx5_sf_add, !1, !"__bpf_trace_tp_map_mlx5_sf_add", i1 false, i1 false}
!57 = !{ptr @__bpf_trace_tp_map_mlx5_sf_free, !5, !"__bpf_trace_tp_map_mlx5_sf_free", i1 false, i1 false}
!58 = !{ptr @__bpf_trace_tp_map_mlx5_sf_hwc_alloc, !9, !"__bpf_trace_tp_map_mlx5_sf_hwc_alloc", i1 false, i1 false}
!59 = !{ptr @__bpf_trace_tp_map_mlx5_sf_hwc_free, !13, !"__bpf_trace_tp_map_mlx5_sf_hwc_free", i1 false, i1 false}
!60 = !{ptr @__bpf_trace_tp_map_mlx5_sf_hwc_deferred_free, !17, !"__bpf_trace_tp_map_mlx5_sf_hwc_deferred_free", i1 false, i1 false}
!61 = !{ptr @__bpf_trace_tp_map_mlx5_sf_activate, !21, !"__bpf_trace_tp_map_mlx5_sf_activate", i1 false, i1 false}
!62 = !{ptr @__bpf_trace_tp_map_mlx5_sf_deactivate, !25, !"__bpf_trace_tp_map_mlx5_sf_deactivate", i1 false, i1 false}
!63 = !{ptr @__bpf_trace_tp_map_mlx5_sf_update_state, !29, !"__bpf_trace_tp_map_mlx5_sf_update_state", i1 false, i1 false}
!64 = !{ptr @mlx5_devlink_sf_port_fn_state_set.__msg, !65, !"__msg", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/devlink.c", i32 267, i32 3}
!66 = !{ptr @mlx5_devlink_sf_port_new.__msg, !67, !"__msg", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/devlink.c", i32 354, i32 3}
!68 = !{ptr @mlx5_devlink_sf_port_del.__msg, !69, !"__msg", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/devlink.c", i32 393, i32 3}
!70 = !{ptr @mlx5_sf_table_init.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/devlink.c", i32 532, i32 2}
!72 = !{ptr @.str, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.1, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/devlink.c", i32 567, i32 2}
!75 = !{ptr @__tpstrtab_mlx5_sf_add, !1, !"__tpstrtab_mlx5_sf_add", i1 false, i1 false}
!76 = !{ptr @__tpstrtab_mlx5_sf_free, !5, !"__tpstrtab_mlx5_sf_free", i1 false, i1 false}
!77 = !{ptr @__tpstrtab_mlx5_sf_hwc_alloc, !9, !"__tpstrtab_mlx5_sf_hwc_alloc", i1 false, i1 false}
!78 = !{ptr @__tpstrtab_mlx5_sf_hwc_free, !13, !"__tpstrtab_mlx5_sf_hwc_free", i1 false, i1 false}
!79 = !{ptr @__tpstrtab_mlx5_sf_hwc_deferred_free, !17, !"__tpstrtab_mlx5_sf_hwc_deferred_free", i1 false, i1 false}
!80 = !{ptr @__tpstrtab_mlx5_sf_activate, !21, !"__tpstrtab_mlx5_sf_activate", i1 false, i1 false}
!81 = !{ptr @__tpstrtab_mlx5_sf_deactivate, !25, !"__tpstrtab_mlx5_sf_deactivate", i1 false, i1 false}
!82 = !{ptr @__tpstrtab_mlx5_sf_update_state, !29, !"__tpstrtab_mlx5_sf_update_state", i1 false, i1 false}
!83 = !{ptr @str__mlx5__trace_system_name, !84, !"str__mlx5__trace_system_name", i1 false, i1 false}
!84 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!85 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @trace_event_fields_mlx5_sf_add, !1, !"trace_event_fields_mlx5_sf_add", i1 false, i1 false}
!96 = !{ptr @trace_event_type_funcs_mlx5_sf_add, !1, !"trace_event_type_funcs_mlx5_sf_add", i1 false, i1 false}
!97 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @print_fmt_mlx5_sf_add, !1, !"print_fmt_mlx5_sf_add", i1 false, i1 false}
!99 = !{ptr @trace_event_fields_mlx5_sf_free, !5, !"trace_event_fields_mlx5_sf_free", i1 false, i1 false}
!100 = !{ptr @trace_event_type_funcs_mlx5_sf_free, !5, !"trace_event_type_funcs_mlx5_sf_free", i1 false, i1 false}
!101 = !{ptr @.str.13, !5, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @print_fmt_mlx5_sf_free, !5, !"print_fmt_mlx5_sf_free", i1 false, i1 false}
!103 = !{ptr @trace_event_fields_mlx5_sf_hwc_alloc, !9, !"trace_event_fields_mlx5_sf_hwc_alloc", i1 false, i1 false}
!104 = !{ptr @trace_event_type_funcs_mlx5_sf_hwc_alloc, !9, !"trace_event_type_funcs_mlx5_sf_hwc_alloc", i1 false, i1 false}
!105 = !{ptr @.str.14, !9, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @print_fmt_mlx5_sf_hwc_alloc, !9, !"print_fmt_mlx5_sf_hwc_alloc", i1 false, i1 false}
!107 = !{ptr @trace_event_fields_mlx5_sf_hwc_free, !13, !"trace_event_fields_mlx5_sf_hwc_free", i1 false, i1 false}
!108 = !{ptr @trace_event_type_funcs_mlx5_sf_hwc_free, !13, !"trace_event_type_funcs_mlx5_sf_hwc_free", i1 false, i1 false}
!109 = !{ptr @.str.15, !13, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @print_fmt_mlx5_sf_hwc_free, !13, !"print_fmt_mlx5_sf_hwc_free", i1 false, i1 false}
!111 = !{ptr @trace_event_fields_mlx5_sf_hwc_deferred_free, !17, !"trace_event_fields_mlx5_sf_hwc_deferred_free", i1 false, i1 false}
!112 = !{ptr @trace_event_type_funcs_mlx5_sf_hwc_deferred_free, !17, !"trace_event_type_funcs_mlx5_sf_hwc_deferred_free", i1 false, i1 false}
!113 = !{ptr @print_fmt_mlx5_sf_hwc_deferred_free, !17, !"print_fmt_mlx5_sf_hwc_deferred_free", i1 false, i1 false}
!114 = !{ptr @trace_event_fields_mlx5_sf_state_template, !48, !"trace_event_fields_mlx5_sf_state_template", i1 false, i1 false}
!115 = !{ptr @trace_event_type_funcs_mlx5_sf_state_template, !48, !"trace_event_type_funcs_mlx5_sf_state_template", i1 false, i1 false}
!116 = !{ptr @print_fmt_mlx5_sf_state_template, !48, !"print_fmt_mlx5_sf_state_template", i1 false, i1 false}
!117 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @trace_event_fields_mlx5_sf_update_state, !29, !"trace_event_fields_mlx5_sf_update_state", i1 false, i1 false}
!120 = !{ptr @trace_event_type_funcs_mlx5_sf_update_state, !29, !"trace_event_type_funcs_mlx5_sf_update_state", i1 false, i1 false}
!121 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @print_fmt_mlx5_sf_update_state, !29, !"print_fmt_mlx5_sf_update_state", i1 false, i1 false}
!123 = !{ptr @mlx5_sf_activate.__msg, !124, !"__msg", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/devlink.c", i32 206, i32 3}
!125 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!126 = !{ptr @.str.19, !21, !"<string literal>", i1 false, i1 false}
!127 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!128 = !{ptr @.str.20, !21, !"<string literal>", i1 false, i1 false}
!129 = distinct !{null, !130, !"__already_done", i1 false, i1 false}
!130 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!131 = !{ptr @.str.21, !130, !"<string literal>", i1 false, i1 false}
!132 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!133 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!134 = !{ptr @mlx5_sf_new_check_attr.__msg, !135, !"__msg", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/devlink.c", i32 314, i32 3}
!136 = !{ptr @mlx5_sf_new_check_attr.__msg.22, !137, !"__msg", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/devlink.c", i32 318, i32 3}
!138 = !{ptr @mlx5_sf_new_check_attr.__msg.23, !139, !"__msg", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/devlink.c", i32 323, i32 3}
!140 = !{ptr @mlx5_sf_new_check_attr.__msg.24, !141, !"__msg", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/devlink.c", i32 329, i32 3}
!142 = !{ptr @mlx5_sf_new_check_attr.__msg.25, !143, !"__msg", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/devlink.c", i32 333, i32 3}
!144 = !{ptr @mlx5_sf_alloc.__msg, !145, !"__msg", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/devlink.c", i32 74, i32 3}
!146 = !{ptr @mlx5_sf_alloc.__msg.26, !147, !"__msg", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/devlink.c", i32 109, i32 3}
!148 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!149 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!150 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!151 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!152 = !{ptr @xa_init_flags.__key, !153, !"__key", i1 false, i1 false}
!153 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!154 = !{ptr @.str.27, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @init_completion.__key, !156, !"__key", i1 false, i1 false}
!156 = !{!"../include/linux/completion.h", i32 87, i32 2}
!157 = !{ptr @.str.28, !156, !"<string literal>", i1 false, i1 false}
!158 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!159 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!160 = !{!"sp"}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{!"branch_weights", i32 2000, i32 1}
!171 = !{!"branch_weights", i32 1, i32 2000}
!172 = !{!"auto-init"}
!173 = !{i64 2148345812}
!174 = !{i64 2148260276, i64 2148260308, i64 2148260337, i64 2148260371, i64 2148260402, i64 2148260425}
!175 = !{i64 2150115450}
!176 = !{i64 740017, i64 740041, i64 740062, i64 740079, i64 740096}
!177 = !{i64 2148738096, i64 2148738101, i64 2148738114, i64 2148738158, i64 2148738192, i64 2148738213}
!178 = !{i64 2160651599}
!179 = !{i64 2160651868}
!180 = !{i64 2150173552}
!181 = !{i64 2150174588}
!182 = !{i64 2160669749}
!183 = !{i64 2160670022}
!184 = !{i64 2160555233}
!185 = !{i64 2160559567}
!186 = !{i64 2160577131}
!187 = !{i64 2160577392}
!188 = !{i64 2160688468}
!189 = !{i64 2160692820}
