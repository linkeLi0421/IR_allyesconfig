; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/sf/dev/dev.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/sf/dev/dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.179 }
%union.anon.179 = type { %struct.anon.180 }
%struct.anon.180 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.181, %struct.trace_event, ptr, ptr, %union.anon.182, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.181 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.182 = type { ptr }
%union.anon.183 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.184 = type { %struct.bpf_raw_event_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
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
%struct.trace_event_raw_mlx5_sf_dev_template = type { %struct.trace_entry, i32, ptr, i32, i16, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.mlx5_sf_dev = type { %struct.auxiliary_device, ptr, ptr, i32, i32, i16 }
%struct.auxiliary_device = type { %struct.device, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.151, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.128 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
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
%struct.mlx5_hca_cap = type { [1024 x i32], [1024 x i32] }
%struct.mlx5_sf_dev_table = type { %struct.xarray, i32, i32, i64, %struct.notifier_block, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.127 = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.110, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.21 }
%struct.llist_node = type { ptr }
%union.anon.21 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.23 }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.110 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5_vhca_state_event = type { i16, i16, i8 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_mlx5_sf_dev_add = internal constant [16 x i8] c"mlx5_sf_dev_add\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_sf_dev_add = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_sf_dev_add }, align 4
@__tracepoint_mlx5_sf_dev_add = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_sf_dev_add, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_sf_dev_add, ptr null, ptr @__traceiter_mlx5_sf_dev_add, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_sf_dev_add = internal constant ptr @__tracepoint_mlx5_sf_dev_add, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlx5_sf_dev_del = internal constant [16 x i8] c"mlx5_sf_dev_del\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_sf_dev_del = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_sf_dev_del }, align 4
@__tracepoint_mlx5_sf_dev_del = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_sf_dev_del, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_sf_dev_del, ptr null, ptr @__traceiter_mlx5_sf_dev_del, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_sf_dev_del = internal constant ptr @__tracepoint_mlx5_sf_dev_del, section "__tracepoints_ptrs", align 4
@str__mlx5__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mlx5\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_mlx5_sf_dev_template = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.8, %union.anon.179 { %struct.anon.180 { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.179 { %struct.anon.180 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.179 { %struct.anon.180 { ptr @.str.13, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.179 { %struct.anon.180 { ptr @.str.15, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.179 { %struct.anon.180 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_mlx5_sf_dev_template = internal global %struct.trace_event_class { ptr @str__mlx5__trace_system_name, ptr @trace_event_raw_event_mlx5_sf_dev_template, ptr @perf_trace_mlx5_sf_dev_template, ptr @trace_event_reg, ptr @trace_event_fields_mlx5_sf_dev_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlx5_sf_dev_template, i64 24), ptr getelementptr (i8, ptr @event_class_mlx5_sf_dev_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlx5_sf_dev_template = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlx5_sf_dev_template, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlx5_sf_dev_template = internal global { [120 x i8], [40 x i8] } { [120 x i8] c"\22(%s) sfdev=%pK aux_id=%d hw_id=0x%x sfnum=%u\0A\22, __get_str(devname), REC->sfdev, REC->aux_id, REC->hw_fn_id, REC->sfnum\00", [40 x i8] zeroinitializer }, align 32
@event_mlx5_sf_dev_add = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_sf_dev_template, %union.anon.181 { ptr @__tracepoint_mlx5_sf_dev_add }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_sf_dev_template }, ptr @print_fmt_mlx5_sf_dev_template, ptr null, %union.anon.182 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_sf_dev_add = internal global ptr @event_mlx5_sf_dev_add, section "_ftrace_events", align 4
@event_mlx5_sf_dev_del = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_sf_dev_template, %union.anon.181 { ptr @__tracepoint_mlx5_sf_dev_del }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_sf_dev_template }, ptr @print_fmt_mlx5_sf_dev_template, ptr null, %union.anon.182 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_sf_dev_del = internal global ptr @event_mlx5_sf_dev_del, section "_ftrace_events", align 4
@__bpf_trace_tp_map_mlx5_sf_dev_add = internal global %union.anon.183 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_sf_dev_add, ptr @__bpf_trace_mlx5_sf_dev_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlx5_sf_dev_del = internal global %union.anon.184 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_sf_dev_del, ptr @__bpf_trace_mlx5_sf_dev_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@mlx5_sf_dev_table_create.__UNIQUE_ID_ddebug521 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx5_sf_dev_table_create\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/sf/dev/dev.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:%d:(pid %d): SF DEV: max sf devices=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@mlx5_sf_dev_table_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 261, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:(pid %d): SF DEV table create err = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_sf_dev_table_create._entry_ptr = internal global ptr @mlx5_sf_dev_table_create._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devname\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"const struct mlx5_sf_dev*\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sfdev\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"aux_id\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hw_fn_id\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sfnum\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(%s) sfdev=%pK aux_id=%d hw_id=0x%x sfnum=%u\0A\0A\00", [49 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5_sf_dev_state_change_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 184, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%s:%d:(pid %d): SF DEV: teardown state for invalid dev index=%d fn_id=0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mlx5_sf_dev_state_change_handler\00", [63 x i8] zeroinitializer }, align 32
@mlx5_sf_dev_state_change_handler._entry_ptr = internal global ptr @mlx5_sf_dev_state_change_handler._entry, section ".printk_index", align 4
@.str.21 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/sf/dev/diag/dev_tracepoint.h\00", [59 x i8] zeroinitializer }, align 32
@trace_mlx5_sf_dev_del.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sf\00", [29 x i8] zeroinitializer }, align 32
@sf_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sf_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@mlx5_sf_dev_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s:%d:(pid %d): SF DEV: fail device add for index=%d sfnum=%d err=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlx5_sf_dev_add\00", [16 x i8] zeroinitializer }, align 32
@mlx5_sf_dev_add._entry_ptr = internal global ptr @mlx5_sf_dev_add._entry, section ".printk_index", align 4
@sf_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sf_device_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@sf_device_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_sfnum, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_sfnum = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sfnum_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@trace_mlx5_sf_dev_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 4]
@___asan_gen_.29 = private unnamed_addr constant [29 x i8] c"str__mlx5__trace_system_name\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 36, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [40 x i8] c"trace_event_fields_mlx5_sf_dev_template\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_mlx5_sf_dev_template\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [31 x i8] c"print_fmt_mlx5_sf_dev_template\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [22 x i8] c"event_mlx5_sf_dev_add\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 37, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"event_mlx5_sf_dev_del\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 251, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 261, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 14, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 182, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant [72 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/sf/dev/diag/dev_tracepoint.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 44, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 108, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 101, i32 22 }
@___asan_gen_.128 = private unnamed_addr constant [15 x i8] c"sf_attr_groups\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 54, i32 38 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 140, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [14 x i8] c"sf_attr_group\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 50, i32 37 }
@___asan_gen_.143 = private unnamed_addr constant [16 x i8] c"sf_device_attrs\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 45, i32 26 }
@___asan_gen_.146 = private unnamed_addr constant [15 x i8] c"dev_attr_sfnum\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 43, i32 8 }
@___asan_gen_.150 = private constant [56 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/sf/dev/dev.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 41, i32 25 }
@___asan_gen_.152 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 378, i32 2 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__bpf_trace_tp_map_mlx5_sf_dev_add, ptr @__bpf_trace_tp_map_mlx5_sf_dev_del, ptr @__event_mlx5_sf_dev_add, ptr @__event_mlx5_sf_dev_del, ptr @__tracepoint_mlx5_sf_dev_add, ptr @__tracepoint_mlx5_sf_dev_del, ptr @__tracepoint_ptr_mlx5_sf_dev_add, ptr @__tracepoint_ptr_mlx5_sf_dev_del, ptr @event_class_mlx5_sf_dev_template, ptr @event_mlx5_sf_dev_add, ptr @event_mlx5_sf_dev_del, ptr @mlx5_sf_dev_add._entry, ptr @mlx5_sf_dev_add._entry_ptr, ptr @mlx5_sf_dev_state_change_handler._entry, ptr @mlx5_sf_dev_state_change_handler._entry_ptr, ptr @mlx5_sf_dev_table_create._entry, ptr @mlx5_sf_dev_table_create._entry_ptr, ptr @str__mlx5__trace_system_name, ptr @trace_event_fields_mlx5_sf_dev_template, ptr @trace_event_type_funcs_mlx5_sf_dev_template, ptr @print_fmt_mlx5_sf_dev_template, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @sf_attr_groups, ptr @.str.25, ptr @.str.26, ptr @sf_attr_group, ptr @sf_device_attrs, ptr @dev_attr_sfnum, ptr @.str.27, ptr @xa_init_flags.__key, ptr @.str.28], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__mlx5__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlx5_sf_dev_template to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlx5_sf_dev_template to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlx5_sf_dev_template to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_sf_dev_add to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_sf_dev_del to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_sf_dev_table_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_sf_dev_state_change_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sf_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_sf_dev_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sf_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sf_device_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sfnum to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mlx5_sf_dev_add(ptr nocapture readnone %__data, ptr noundef %dev, ptr noundef %sfdev, i32 noundef %aux_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_dev_add, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, ptr noundef %sfdev, i32 noundef %aux_id) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mlx5_sf_dev_del(ptr nocapture readnone %__data, ptr noundef %dev, ptr noundef %sfdev, i32 noundef %aux_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_dev_del, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, ptr noundef %sfdev, i32 noundef %aux_id) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mlx5_sf_dev_template(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr noundef %sfdev, i32 noundef %aux_id) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !91

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !92

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
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
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_mlx5_sf_dev_template.exit_crit_edge

if.end.trace_event_get_offsets_mlx5_sf_dev_template.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %trace_event_get_offsets_mlx5_sf_dev_template.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %tobool.not.i33 = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not.i33, ptr @.str.7, ptr %8
  br label %trace_event_get_offsets_mlx5_sf_dev_template.exit

trace_event_get_offsets_mlx5_sf_dev_template.exit: ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_mlx5_sf_dev_template.exit_crit_edge
  %cond.i = phi ptr [ %6, %if.end.trace_event_get_offsets_mlx5_sf_dev_template.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #14
  %add = add i32 %call4.i, 29
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_mlx5_sf_dev_template.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_mlx5_sf_dev_template.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_mlx5_sf_dev_template.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_mlx5_sf_dev_template.exit
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65564
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_dev_template, ptr %call3, i32 0, i32 1
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
  %tobool.not.i34 = icmp eq ptr %13, null
  br i1 %tobool.not.i34, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i39

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end.i39:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i39, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str.7, %dev_name.exit.cond.end_crit_edge ], [ %17, %if.end.i39 ], [ %13, %if.end5.cond.end_crit_edge ]
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #15
  %sfdev12 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_dev_template, ptr %call3, i32 0, i32 2
  %18 = ptrtoint ptr %sfdev12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %sfdev, ptr %sfdev12, align 4
  %aux_id13 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_dev_template, ptr %call3, i32 0, i32 3
  %19 = ptrtoint ptr %aux_id13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %aux_id, ptr %aux_id13, align 4
  %fn_id = getelementptr inbounds %struct.mlx5_sf_dev, ptr %sfdev, i32 0, i32 5
  %20 = ptrtoint ptr %fn_id to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %fn_id, align 8
  %hw_fn_id = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_dev_template, ptr %call3, i32 0, i32 4
  %22 = ptrtoint ptr %hw_fn_id to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %hw_fn_id, align 4
  %sfnum = getelementptr inbounds %struct.mlx5_sf_dev, ptr %sfdev, i32 0, i32 4
  %23 = ptrtoint ptr %sfnum to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sfnum, align 4
  %sfnum14 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_dev_template, ptr %call3, i32 0, i32 5
  %25 = ptrtoint ptr %sfnum14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %sfnum14, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_mlx5_sf_dev_template.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlx5_sf_dev_template(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr noundef %sfdev, i32 noundef %aux_id) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !93
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_mlx5_sf_dev_template.exit_crit_edge

entry.trace_event_get_offsets_mlx5_sf_dev_template.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %trace_event_get_offsets_mlx5_sf_dev_template.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not.i, ptr @.str.7, ptr %7
  br label %trace_event_get_offsets_mlx5_sf_dev_template.exit

trace_event_get_offsets_mlx5_sf_dev_template.exit: ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_mlx5_sf_dev_template.exit_crit_edge
  %cond.i = phi ptr [ %5, %entry.trace_event_get_offsets_mlx5_sf_dev_template.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #14
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65564
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %8 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %perf_events, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !81) #11
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
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_mlx5_sf_dev_template.exit.if.end_crit_edge

trace_event_get_offsets_mlx5_sf_dev_template.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_mlx5_sf_dev_template.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_mlx5_sf_dev_template.exit
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %17, align 4
  %tobool.not.i57.not = icmp eq ptr %21, null
  br i1 %tobool.not.i57.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_mlx5_sf_dev_template.exit.if.end_crit_edge
  %add12 = add i32 %call4.i, 40
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %22 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__regs, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #11
  %25 = ptrtoint ptr %24 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.i, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %28 = ptrtoint ptr %27 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx2.i, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !81) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_dev_template, ptr %call13, i32 0, i32 1
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
  %tobool.not.i58 = icmp eq ptr %37, null
  br i1 %tobool.not.i58, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %tobool20.not = icmp eq ptr %39, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i61

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end.i61:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i61, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str.7, %dev_name.exit.cond.end_crit_edge ], [ %41, %if.end.i61 ], [ %37, %if.end16.cond.end_crit_edge ]
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #15
  %sfdev24 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_dev_template, ptr %call13, i32 0, i32 2
  %42 = ptrtoint ptr %sfdev24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %sfdev, ptr %sfdev24, align 4
  %aux_id25 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_dev_template, ptr %call13, i32 0, i32 3
  %43 = ptrtoint ptr %aux_id25 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %aux_id, ptr %aux_id25, align 4
  %fn_id = getelementptr inbounds %struct.mlx5_sf_dev, ptr %sfdev, i32 0, i32 5
  %44 = ptrtoint ptr %fn_id to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %fn_id, align 8
  %hw_fn_id = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_dev_template, ptr %call13, i32 0, i32 4
  %46 = ptrtoint ptr %hw_fn_id to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %hw_fn_id, align 4
  %sfnum = getelementptr inbounds %struct.mlx5_sf_dev, ptr %sfdev, i32 0, i32 4
  %47 = ptrtoint ptr %sfnum to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sfnum, align 4
  %sfnum26 = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_dev_template, ptr %call13, i32 0, i32 5
  %49 = ptrtoint ptr %sfnum26 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %sfnum26, align 4
  %50 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rctx, align 4
  %52 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %51, ptr noundef %__data, i64 noundef 1, ptr noundef %53, ptr noundef %17, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlx5_sf_dev_template(ptr noundef %__data, ptr noundef %dev, ptr noundef %sfdev, i32 noundef %aux_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %sfdev to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %aux_id to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5_sf_dev_allocated(ptr nocapture noundef readonly %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sf_dev_table = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 41
  %0 = ptrtoint ptr %sf_dev_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sf_dev_table, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %xa_head.i = getelementptr inbounds %struct.xarray, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xa_head.i, align 4
  %cmp.i = icmp ne ptr %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp.i, %land.rhs ]
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_sf_dev_table_create(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %1, i32 52
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not.i = icmp sgt i32 %3, -1
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %mlx5_sf_dev_supported.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

mlx5_sf_dev_supported.exit:                       ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.mlx5_hca_cap, ptr %1, i32 0, i32 1, i32 31
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %6 = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.i.not, label %mlx5_sf_dev_supported.exit.cleanup_crit_edge, label %lor.lhs.false

mlx5_sf_dev_supported.exit.cleanup_crit_edge:     ; preds = %mlx5_sf_dev_supported.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %mlx5_sf_dev_supported.exit
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i, align 4
  %9 = and i32 %8, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 88) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.do.end58_crit_edge, label %if.end4

if.end.do.end58_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end58

if.end4:                                          ; preds = %if.end
  %nb = getelementptr inbounds %struct.mlx5_sf_dev_table, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mlx5_sf_dev_state_change_handler, ptr %nb, align 8
  %dev5 = getelementptr inbounds %struct.mlx5_sf_dev_table, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %dev5, align 4
  %13 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %caps.i, align 8
  %add.ptr = getelementptr i32, ptr %14, i32 50
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %16)
  %tobool6.not = icmp ult i32 %16, 65536
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %shr = lshr i32 %16, 16
  br label %if.end24

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr21 = getelementptr i32, ptr %14, i32 52
  %17 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr21, align 4
  %shr22 = lshr i32 %18, 24
  %and23 = and i32 %shr22, 31
  %shl = shl nuw i32 1, %and23
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then7
  %max_sfs.0 = phi i32 [ %shr, %if.then7 ], [ %shl, %if.else ]
  %add.ptr30 = getelementptr i32, ptr %14, i32 52
  %19 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr30, align 4
  %shr31 = lshr i32 %20, 8
  %and32 = and i32 %shr31, 255
  %shl33 = shl i32 4096, %and32
  %conv = sext i32 %shl33 to i64
  %sf_bar_length = getelementptr inbounds %struct.mlx5_sf_dev_table, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %sf_bar_length to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv, ptr %sf_bar_length, align 8
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 8
  %arrayidx34 = getelementptr %struct.pci_dev, ptr %23, i32 0, i32 47, i32 2
  %24 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx34, align 8
  %base_address = getelementptr inbounds %struct.mlx5_sf_dev_table, ptr %call7.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %base_address to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %base_address, align 8
  %max_sfs35 = getelementptr inbounds %struct.mlx5_sf_dev_table, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %max_sfs35 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %max_sfs.0, ptr %max_sfs35, align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #11
  %xa_flags.i.i = getelementptr inbounds %struct.xarray, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.xarray, ptr %call7.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %xa_head.i.i, align 8
  %sf_dev_table = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 41
  %30 = ptrtoint ptr %sf_dev_table to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %sf_dev_table, align 4
  %call37 = tail call i32 @mlx5_vhca_event_notifier_register(ptr noundef %dev, ptr noundef %nb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end24.vhca_err_crit_edge

if.end24.vhca_err_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %vhca_err

if.end40:                                         ; preds = %if.end24
  %31 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev5, align 4
  %caps.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %caps.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i32, ptr %34, i32 52
  %35 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.i.i.i = icmp slt i32 %36, 0
  br i1 %tobool.i.i.i, label %if.end.i.i, label %if.end40.do.body_crit_edge

if.end40.do.body_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end.i.i:                                       ; preds = %if.end40
  %add.ptr.i.i95 = getelementptr i32, ptr %34, i32 50
  %37 = ptrtoint ptr %add.ptr.i.i95 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %38)
  %tobool.not.i.i = icmp ult i32 %38, 65536
  %shr.i.i = lshr i32 %38, 16
  %shr16.i.i = lshr i32 %36, 24
  %and17.i.i = and i32 %shr16.i.i, 31
  %shl.i.i = shl nuw i32 1, %and17.i.i
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %shl.i.i, i32 %shr.i.i
  %conv2.i = and i32 %retval.0.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2.i)
  %cmp15.not.i = icmp eq i32 %conv2.i, 0
  br i1 %cmp15.not.i, label %if.end.i.i.do.body_crit_edge, label %for.body.preheader.i

if.end.i.i.do.body_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.preheader.i:                             ; preds = %if.end.i.i
  %add.ptr.i96 = getelementptr i32, ptr %34, i32 55
  %39 = ptrtoint ptr %add.ptr.i96 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i96, align 4
  %conv.i = trunc i32 %40 to i16
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.017.i = phi i32 [ %inc5.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %function_id.016.i = phi i16 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ %conv.i, %for.body.preheader.i ]
  %call4.i = tail call i32 @mlx5_vhca_event_arm(ptr noundef %32, i16 noundef zeroext %function_id.016.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i97 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i97, label %if.end.i, label %arm_err

if.end.i:                                         ; preds = %for.body.i
  %inc.i = add i16 %function_id.016.i, 1
  %inc5.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc5.i, %conv2.i
  br i1 %exitcond.not.i, label %if.end.i.do.body_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %if.end.i.do.body_crit_edge, %if.end.i.i.do.body_crit_edge, %if.end40.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_sf_dev_table_create.__UNIQUE_ID_ddebug521, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_sf_dev_table_create, %if.then49)) #11
          to label %cleanup [label %if.then49], !srcloc !94

if.then49:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  %43 = tail call i32 @llvm.read_register.i32(metadata !81) #11
  %and.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 68
  %47 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_sf_dev_table_create.__UNIQUE_ID_ddebug521, ptr noundef %42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 251, i32 noundef %48, i32 noundef %max_sfs.0) #11
  br label %cleanup

arm_err:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5_vhca_event_notifier_unregister(ptr noundef %dev, ptr noundef %nb) #11
  br label %vhca_err

vhca_err:                                         ; preds = %arm_err, %if.end24.vhca_err_crit_edge
  %err.0 = phi i32 [ %call37, %if.end24.vhca_err_crit_edge ], [ %call4.i, %arm_err ]
  %49 = ptrtoint ptr %max_sfs35 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %max_sfs35, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %50 = ptrtoint ptr %sf_dev_table to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %sf_dev_table, align 4
  br label %do.end58

do.end58:                                         ; preds = %vhca_err, %if.end.do.end58_crit_edge
  %err.1 = phi i32 [ %err.0, %vhca_err ], [ -12, %if.end.do.end58_crit_edge ]
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 8
  %53 = tail call i32 @llvm.read_register.i32(metadata !81) #11
  %and.i99 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i99 to ptr
  %task61 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task61 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task61, align 8
  %pid62 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 68
  %57 = ptrtoint ptr %pid62 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pid62, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 261, i32 noundef %58, i32 noundef %err.1) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %if.then49, %do.body, %lor.lhs.false.cleanup_crit_edge, %mlx5_sf_dev_supported.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_sf_dev_state_change_handler(ptr noundef %nb, i32 noundef %event_code, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -72
  %dev = getelementptr i8, ptr %nb, i32 12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %3, i32 52
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.i = icmp slt i32 %5, 0
  br i1 %tobool.i.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i32, ptr %3, i32 50
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %7)
  %tobool.not.i = icmp ult i32 %7, 65536
  br i1 %tobool.not.i, label %mlx5_sf_max_functions.exit, label %mlx5_sf_max_functions.exit.thread77

mlx5_sf_max_functions.exit.thread77:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i = lshr i32 %7, 16
  br label %if.end

mlx5_sf_max_functions.exit:                       ; preds = %if.end.i
  %shr16.i = lshr i32 %5, 24
  %and17.i = and i32 %shr16.i, 31
  %shl.i = shl nuw i32 1, %and17.i
  %conv18.i = trunc i32 %shl.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv18.i)
  %tobool.not = icmp eq i16 %conv18.i, 0
  br i1 %tobool.not, label %mlx5_sf_max_functions.exit.cleanup_crit_edge, label %mlx5_sf_max_functions.exit.if.end_crit_edge

mlx5_sf_max_functions.exit.if.end_crit_edge:      ; preds = %mlx5_sf_max_functions.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

mlx5_sf_max_functions.exit.cleanup_crit_edge:     ; preds = %mlx5_sf_max_functions.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %mlx5_sf_max_functions.exit.if.end_crit_edge, %mlx5_sf_max_functions.exit.thread77
  %retval.0.i80 = phi i32 [ %shr.i, %mlx5_sf_max_functions.exit.thread77 ], [ %shl.i, %mlx5_sf_max_functions.exit.if.end_crit_edge ]
  %add.ptr2 = getelementptr i32, ptr %3, i32 55
  %8 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr2, align 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data, align 2
  %conv3 = zext i16 %11 to i32
  %conv4 = and i32 %9, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4, i32 %conv3)
  %cmp = icmp ugt i32 %conv4, %conv3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %conv9 = and i32 %retval.0.i80, 65535
  %add = add nuw nsw i32 %conv4, %conv9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv3)
  %cmp10.not = icmp ugt i32 %add, %conv3
  br i1 %cmp10.not, label %if.end13, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %12 = trunc i32 %9 to i16
  %conv17 = sub i16 %11, %12
  %conv18 = zext i16 %conv17 to i32
  %call19 = tail call ptr @xa_load(ptr noundef %add.ptr, i32 noundef %conv18) #11
  %new_vhca_state = getelementptr inbounds %struct.mlx5_vhca_state_event, ptr %data, i32 0, i32 2
  %13 = ptrtoint ptr %new_vhca_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %new_vhca_state, align 2
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %14, label %if.end13.cleanup_crit_edge [
    i8 0, label %if.end13.sw.bb_crit_edge
    i8 1, label %if.end13.sw.bb_crit_edge81
    i8 4, label %sw.bb25
    i8 2, label %sw.bb34
  ]

if.end13.sw.bb_crit_edge81:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end13.sw.bb_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end13.sw.bb_crit_edge, %if.end13.sw.bb_crit_edge81
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %sw.bb.cleanup_crit_edge, label %if.then22

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then22:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %sf_dev_table.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %17, i32 0, i32 17, i32 41
  %18 = ptrtoint ptr %sf_dev_table.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sf_dev_table.i, align 4
  %call.i = tail call ptr @xa_erase(ptr noundef %19, i32 noundef %conv18) #11
  %id1.i.i = getelementptr inbounds %struct.auxiliary_device, ptr %call19, i32 0, i32 2
  %20 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id1.i.i, align 4
  tail call fastcc void @trace_mlx5_sf_dev_del(ptr noundef %17, ptr noundef nonnull %call19, i32 noundef %21) #11
  tail call void @device_del(ptr noundef nonnull %call19) #11
  tail call void @put_device(ptr noundef nonnull %call19) #11
  br label %cleanup

sw.bb25:                                          ; preds = %if.end13
  %tobool26.not = icmp eq ptr %call19, null
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  br i1 %tobool26.not, label %do.end, label %if.then27

if.then27:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  %sf_dev_table.i71 = getelementptr inbounds %struct.mlx5_core_dev, ptr %23, i32 0, i32 17, i32 41
  %24 = ptrtoint ptr %sf_dev_table.i71 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sf_dev_table.i71, align 4
  %call.i73 = tail call ptr @xa_erase(ptr noundef %25, i32 noundef %conv18) #11
  %id1.i.i74 = getelementptr inbounds %struct.auxiliary_device, ptr %call19, i32 0, i32 2
  %26 = ptrtoint ptr %id1.i.i74 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id1.i.i74, align 4
  tail call fastcc void @trace_mlx5_sf_dev_del(ptr noundef %23, ptr noundef nonnull %call19, i32 noundef %27) #11
  tail call void @device_del(ptr noundef nonnull %call19) #11
  tail call void @put_device(ptr noundef nonnull %call19) #11
  br label %cleanup

do.end:                                           ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %23, align 8
  %30 = tail call i32 @llvm.read_register.i32(metadata !81) #11
  %and.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 68
  %34 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pid, align 8
  %sw_function_id = getelementptr inbounds %struct.mlx5_vhca_state_event, ptr %data, i32 0, i32 1
  %36 = ptrtoint ptr %sw_function_id to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %sw_function_id, align 2
  %conv32 = zext i16 %37 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 184, i32 noundef %35, i32 noundef %conv18, i32 noundef %conv32) #17
  br label %cleanup

sw.bb34:                                          ; preds = %if.end13
  %tobool35.not = icmp eq ptr %call19, null
  br i1 %tobool35.not, label %if.then36, label %sw.bb34.cleanup_crit_edge

sw.bb34.cleanup_crit_edge:                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then36:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %data, align 2
  %sw_function_id39 = getelementptr inbounds %struct.mlx5_vhca_state_event, ptr %data, i32 0, i32 1
  %42 = ptrtoint ptr %sw_function_id39 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %sw_function_id39, align 2
  %conv40 = zext i16 %43 to i32
  tail call fastcc void @mlx5_sf_dev_add(ptr noundef %39, i16 noundef zeroext %conv17, i16 noundef zeroext %41, i32 noundef %conv40)
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %sw.bb34.cleanup_crit_edge, %do.end, %if.then27, %if.then22, %sw.bb.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mlx5_sf_max_functions.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vhca_event_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_vhca_event_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_sf_dev_table_destroy(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %index.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sf_dev_table = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 41
  %0 = ptrtoint ptr %sf_dev_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sf_dev_table, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %nb = getelementptr inbounds %struct.mlx5_sf_dev_table, ptr %1, i32 0, i32 4
  tail call void @mlx5_vhca_event_notifier_unregister(ptr noundef %dev, ptr noundef %nb) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i) #11
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %index.i, align 4
  %call.i = call ptr @xa_find(ptr noundef nonnull %1, ptr noundef nonnull %index.i, i32 noundef -1, i32 noundef 8) #11
  %tobool.not9.i = icmp eq ptr %call.i, null
  br i1 %tobool.not9.i, label %if.end.mlx5_sf_dev_destroy_all.exit_crit_edge, label %for.body.lr.ph.i

if.end.mlx5_sf_dev_destroy_all.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_sf_dev_destroy_all.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %dev.i = getelementptr inbounds %struct.mlx5_sf_dev_table, ptr %1, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %sf_dev.010.i = phi ptr [ %call.i, %for.body.lr.ph.i ], [ %call4.i, %for.body.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index.i, align 4
  %call2.i = call ptr @xa_erase(ptr noundef nonnull %1, i32 noundef %4) #11
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %id1.i.i = getelementptr inbounds %struct.auxiliary_device, ptr %sf_dev.010.i, i32 0, i32 2
  %7 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id1.i.i, align 4
  call fastcc void @trace_mlx5_sf_dev_del(ptr noundef %6, ptr noundef nonnull %sf_dev.010.i, i32 noundef %8) #11
  call void @device_del(ptr noundef nonnull %sf_dev.010.i) #11
  call void @put_device(ptr noundef nonnull %sf_dev.010.i) #11
  %call4.i = call ptr @xa_find_after(ptr noundef nonnull %1, ptr noundef nonnull %index.i, i32 noundef -1, i32 noundef 8) #11
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %for.body.i.mlx5_sf_dev_destroy_all.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.mlx5_sf_dev_destroy_all.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_sf_dev_destroy_all.exit

mlx5_sf_dev_destroy_all.exit:                     ; preds = %for.body.i.mlx5_sf_dev_destroy_all.exit_crit_edge, %if.end.mlx5_sf_dev_destroy_all.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #11
  %xa_head.i = getelementptr inbounds %struct.xarray, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xa_head.i, align 4
  %cmp.i = icmp eq ptr %10, null
  br i1 %cmp.i, label %mlx5_sf_dev_destroy_all.exit.if.end16_crit_edge, label %do.end, !prof !91

mlx5_sf_dev_destroy_all.exit.if.end16_crit_edge:  ; preds = %mlx5_sf_dev_destroy_all.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

do.end:                                           ; preds = %mlx5_sf_dev_destroy_all.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 289, i32 noundef 9, ptr noundef null) #11
  br label %if.end16

if.end16:                                         ; preds = %do.end, %mlx5_sf_dev_destroy_all.exit.if.end16_crit_edge
  call void @kfree(ptr noundef nonnull %1) #11
  %11 = ptrtoint ptr %sf_dev_table to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %sf_dev_table, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

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
define internal i32 @trace_raw_output_mlx5_sf_dev_template(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_dev_template, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_devname, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %sfdev = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_dev_template, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %sfdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sfdev, align 4
  %aux_id = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_dev_template, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %aux_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aux_id, align 4
  %hw_fn_id = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_dev_template, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %hw_fn_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hw_fn_id, align 4
  %conv = zext i16 %9 to i32
  %sfnum = getelementptr inbounds %struct.trace_event_raw_mlx5_sf_dev_template, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %sfnum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sfnum, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.18, ptr noundef %add.ptr, ptr noundef %5, i32 noundef %7, i32 noundef %conv, i32 noundef %11) #11
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_sf_dev_add(ptr noundef %dev, i16 noundef zeroext %sf_index, i16 noundef zeroext %fn_id, i32 noundef %sfnum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sf_dev_table = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 41
  %0 = ptrtoint ptr %sf_dev_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sf_dev_table, align 4
  %call = tail call i32 @mlx5_adev_idx_alloc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 960) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5_adev_idx_free(i32 noundef %call) #11
  br label %do.end

if.end3:                                          ; preds = %if.end
  %pdev4 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev4, align 8
  %id5 = getelementptr inbounds %struct.auxiliary_device, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %id5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %id5, align 4
  %name = getelementptr inbounds %struct.auxiliary_device, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.24, ptr %name, align 8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %7 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mlx5_sf_dev_release, ptr %release, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev9, ptr %parent, align 8
  %groups = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 34
  %9 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sf_attr_groups, ptr %groups, align 8
  %sfnum14 = getelementptr inbounds %struct.mlx5_sf_dev, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %sfnum14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sfnum, ptr %sfnum14, align 4
  %parent_mdev = getelementptr inbounds %struct.mlx5_sf_dev, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %parent_mdev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %parent_mdev, align 8
  %fn_id15 = getelementptr inbounds %struct.mlx5_sf_dev, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %fn_id15 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %fn_id, ptr %fn_id15, align 8
  %max_sfs = getelementptr inbounds %struct.mlx5_sf_dev_table, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %max_sfs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_sfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool16.not = icmp eq i32 %14, 0
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5_adev_idx_free(i32 noundef %call) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %do.end

if.end18:                                         ; preds = %if.end3
  %base_address = getelementptr inbounds %struct.mlx5_sf_dev_table, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %base_address to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_address, align 8
  %conv19 = zext i16 %sf_index to i64
  %sf_bar_length = getelementptr inbounds %struct.mlx5_sf_dev_table, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %sf_bar_length to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %sf_bar_length, align 8
  %mul = mul i64 %18, %conv19
  %19 = trunc i64 %mul to i32
  %conv20 = add i32 %16, %19
  %bar_base_addr = getelementptr inbounds %struct.mlx5_sf_dev, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %bar_base_addr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv20, ptr %bar_base_addr, align 8
  tail call fastcc void @trace_mlx5_sf_dev_add(ptr noundef %dev, ptr noundef nonnull %call7.i.i, i32 noundef %call)
  %call22 = tail call i32 @auxiliary_device_init(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5_adev_idx_free(i32 noundef %call) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %do.end

if.end25:                                         ; preds = %if.end18
  %call27 = tail call i32 @__auxiliary_device_add(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end32, label %if.then29

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #11
  br label %do.end

if.end32:                                         ; preds = %if.end25
  %conv33 = zext i16 %sf_index to i32
  tail call void @_raw_spin_lock(ptr noundef %1) #11
  %call.i = tail call i32 @__xa_insert(ptr noundef %1, i32 noundef %conv33, ptr noundef nonnull %call7.i.i, i32 noundef 3264) #11
  tail call void @_raw_spin_unlock(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool35.not = icmp eq i32 %call.i, 0
  br i1 %tobool35.not, label %if.end32.cleanup_crit_edge, label %xa_err

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

xa_err:                                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id5, align 4
  tail call fastcc void @trace_mlx5_sf_dev_del(ptr noundef %dev, ptr noundef nonnull %call7.i.i, i32 noundef %22) #11
  tail call void @device_del(ptr noundef nonnull %call7.i.i) #11
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #11
  br label %do.end

do.end:                                           ; preds = %xa_err, %if.then29, %if.then24, %if.then17, %if.then2, %entry.do.end_crit_edge
  %err.0 = phi i32 [ %call22, %if.then24 ], [ %call27, %if.then29 ], [ %call.i, %xa_err ], [ -95, %if.then17 ], [ -12, %if.then2 ], [ %call, %entry.do.end_crit_edge ]
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  %25 = tail call i32 @llvm.read_register.i32(metadata !81) #11
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
  %conv39 = zext i16 %sf_index to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 141, i32 noundef %30, i32 noundef %conv39, i32 noundef %sfnum, i32 noundef %err.0) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end32.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_sf_dev_del(ptr noundef %dev, ptr noundef %sfdev, i32 noundef %aux_id) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_dev_del, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mlx5_sf_dev_del, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !94

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !81) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !91

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !81) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !95
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_dev_del, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %dev, ptr noundef %sfdev, i32 noundef %aux_id) #11
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !96
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !96
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !81) #11
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !81) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !91

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !81) #11
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !97
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_dev_del, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mlx5_sf_dev_del.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_mlx5_sf_dev_del.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 49, ptr noundef nonnull @.str.22) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !98
  %38 = tail call i32 @llvm.read_register.i32(metadata !81) #11
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
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_adev_idx_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_adev_idx_free(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_sf_dev_release(ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.auxiliary_device, ptr %device, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void @mlx5_adev_idx_free(i32 noundef %1) #11
  tail call void @kfree(ptr noundef %device) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_sf_dev_add(ptr noundef %dev, ptr noundef %sfdev, i32 noundef %aux_id) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_dev_add, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mlx5_sf_dev_add, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !94

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !81) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !91

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !81) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !99
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_dev_add, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %dev, ptr noundef %sfdev, i32 noundef %aux_id) #11
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !100
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !100
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !81) #11
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !81) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !91

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !81) #11
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !97
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_sf_dev_add, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mlx5_sf_dev_add.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_mlx5_sf_dev_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 42, ptr noundef nonnull @.str.22) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !98
  %38 = tail call i32 @llvm.read_register.i32(metadata !81) #11
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
declare dso_local i32 @auxiliary_device_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__auxiliary_device_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfnum_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sfnum = getelementptr inbounds %struct.mlx5_sf_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %sfnum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sfnum, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %1) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vhca_event_arm(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !49, !50, !51, !52, !53, !54, !55, !56, !58, !59, !61, !63, !64, !65, !66, !68, !70, !72, !74, !76, !77, !78, !80}
!llvm.named.register.sp = !{!81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__tracepoint_mlx5_sf_dev_add, !1, !"__tracepoint_mlx5_sf_dev_add", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/dev/diag/dev_tracepoint.h", i32 37, i32 1}
!2 = !{ptr @__tracepoint_ptr_mlx5_sf_dev_add, !1, !"__tracepoint_ptr_mlx5_sf_dev_add", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_mlx5_sf_dev_add, !1, !"__SCK__tp_func_mlx5_sf_dev_add", i1 false, i1 false}
!4 = !{ptr @__tracepoint_mlx5_sf_dev_del, !5, !"__tracepoint_mlx5_sf_dev_del", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/dev/diag/dev_tracepoint.h", i32 44, i32 1}
!6 = !{ptr @__tracepoint_ptr_mlx5_sf_dev_del, !5, !"__tracepoint_ptr_mlx5_sf_dev_del", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_mlx5_sf_dev_del, !5, !"__SCK__tp_func_mlx5_sf_dev_del", i1 false, i1 false}
!8 = !{ptr @event_class_mlx5_sf_dev_template, !9, !"event_class_mlx5_sf_dev_template", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/dev/diag/dev_tracepoint.h", i32 14, i32 1}
!10 = !{ptr @event_mlx5_sf_dev_add, !1, !"event_mlx5_sf_dev_add", i1 false, i1 false}
!11 = !{ptr @__event_mlx5_sf_dev_add, !1, !"__event_mlx5_sf_dev_add", i1 false, i1 false}
!12 = !{ptr @event_mlx5_sf_dev_del, !5, !"event_mlx5_sf_dev_del", i1 false, i1 false}
!13 = !{ptr @__event_mlx5_sf_dev_del, !5, !"__event_mlx5_sf_dev_del", i1 false, i1 false}
!14 = !{ptr @__bpf_trace_tp_map_mlx5_sf_dev_add, !1, !"__bpf_trace_tp_map_mlx5_sf_dev_add", i1 false, i1 false}
!15 = !{ptr @__bpf_trace_tp_map_mlx5_sf_dev_del, !5, !"__bpf_trace_tp_map_mlx5_sf_dev_del", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/dev/dev.c", i32 251, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mlx5_sf_dev_table_create.__UNIQUE_ID_ddebug521, !17, !"__UNIQUE_ID_ddebug521", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/dev/dev.c", i32 261, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mlx5_sf_dev_table_create._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @mlx5_sf_dev_table_create._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @__tpstrtab_mlx5_sf_dev_add, !1, !"__tpstrtab_mlx5_sf_dev_add", i1 false, i1 false}
!29 = !{ptr @__tpstrtab_mlx5_sf_dev_del, !5, !"__tpstrtab_mlx5_sf_dev_del", i1 false, i1 false}
!30 = !{ptr @str__mlx5__trace_system_name, !31, !"str__mlx5__trace_system_name", i1 false, i1 false}
!31 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!32 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.9, !9, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.10, !9, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !9, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.12, !9, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.13, !9, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.14, !9, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !9, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.16, !9, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.17, !9, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @trace_event_fields_mlx5_sf_dev_template, !9, !"trace_event_fields_mlx5_sf_dev_template", i1 false, i1 false}
!44 = !{ptr @trace_event_type_funcs_mlx5_sf_dev_template, !9, !"trace_event_type_funcs_mlx5_sf_dev_template", i1 false, i1 false}
!45 = !{ptr @.str.18, !9, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @print_fmt_mlx5_sf_dev_template, !9, !"print_fmt_mlx5_sf_dev_template", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/dev/dev.c", i32 182, i32 4}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mlx5_sf_dev_state_change_handler._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @mlx5_sf_dev_state_change_handler._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!53 = !{ptr @.str.21, !5, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!55 = !{ptr @.str.22, !5, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/dev/dev.c", i32 101, i32 22}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/dev/dev.c", i32 140, i32 2}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mlx5_sf_dev_add._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @mlx5_sf_dev_add._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @sf_attr_groups, !67, !"sf_attr_groups", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/dev/dev.c", i32 54, i32 38}
!68 = !{ptr @sf_attr_group, !69, !"sf_attr_group", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/dev/dev.c", i32 50, i32 37}
!70 = !{ptr @sf_device_attrs, !71, !"sf_device_attrs", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/dev/dev.c", i32 45, i32 26}
!72 = !{ptr @dev_attr_sfnum, !73, !"dev_attr_sfnum", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/dev/dev.c", i32 43, i32 8}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/dev/dev.c", i32 41, i32 25}
!76 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!77 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!78 = !{ptr @xa_init_flags.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!80 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!81 = !{!"sp"}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"branch_weights", i32 2000, i32 1}
!92 = !{!"branch_weights", i32 1, i32 2000}
!93 = !{!"auto-init"}
!94 = !{i64 2148730060, i64 2148730065, i64 2148730078, i64 2148730122, i64 2148730156, i64 2148730177}
!95 = !{i64 2158751257}
!96 = !{i64 2158751486}
!97 = !{i64 2150165516}
!98 = !{i64 2150166552}
!99 = !{i64 2158733730}
!100 = !{i64 2158733959}
