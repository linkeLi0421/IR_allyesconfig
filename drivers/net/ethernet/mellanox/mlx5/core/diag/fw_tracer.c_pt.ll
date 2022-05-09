; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__tracepoint_mlx5_fw\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_mlx5_fw\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_mlx5_fw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_mlx5_fw:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_mlx5_fw\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_mlx5_fw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__traceiter_mlx5_fw\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_mlx5_fw\09\09\09\09"
module asm "\09.long\09__crc___traceiter_mlx5_fw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_mlx5_fw:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_mlx5_fw\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_mlx5_fw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__SCK__tp_func_mlx5_fw\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_mlx5_fw\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_mlx5_fw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_mlx5_fw:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_mlx5_fw\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_mlx5_fw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.182 }
%union.anon.182 = type { %struct.anon.183 }
%struct.anon.183 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.184, %struct.trace_event, ptr, ptr, %union.anon.185, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.184 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.185 = type { ptr }
%union.anon.186 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.trace_event_raw_mlx5_fw = type { %struct.trace_entry, i32, i64, i8, i8, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
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
%struct.mlx5_fw_tracer = type { ptr, %struct.mlx5_nb, i8, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.anon.155, %struct.anon.156, %struct.anon.157, i64, %struct.work_struct, [64 x %struct.hlist_head], %struct.list_head }
%struct.anon.155 = type { i8, i8, i32, [8 x i32], [8 x i32], [8 x ptr], i8 }
%struct.anon.156 = type { i32, ptr, i32, i32, i32, i32 }
%struct.anon.157 = type { [8192 x %struct.mlx5_fw_trace_data], i32, %struct.mutex }
%struct.mlx5_fw_trace_data = type { i64, i8, i8, [256 x i8] }
%struct.hlist_head = type { ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.127 = type { ptr }
%struct.page = type { i32, %union.anon.3, %union.anon.125, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.125 = type { %struct.atomic_t }
%struct.tracer_event = type { i8, i32, i8, %union.anon.188 }
%union.anon.188 = type { %struct.tracer_timestamp_event }
%struct.tracer_timestamp_event = type { i64, i8 }
%struct.tracer_string_event = type { i32, i32, i32, i32 }
%struct.mlx5_eqe = type { i8, i8, i8, i8, [7 x i32], %union.ev_data, i16, i8, i8 }
%union.ev_data = type <{ %struct.mlx5_eqe_gpio, [12 x i8] }>
%struct.mlx5_eqe_gpio = type { [2 x i32], i64 }
%struct.tracer_string_format = type { ptr, [7 x i32], i32, i32, i8, i32, %struct.hlist_node, %struct.list_head, i32, i8 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_mlx5_fw = internal constant [8 x i8] c"mlx5_fw\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_fw = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_fw }, align 4
@__tracepoint_mlx5_fw = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_fw, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_fw, ptr null, ptr @__traceiter_mlx5_fw, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_fw = internal constant ptr @__tracepoint_mlx5_fw, section "__tracepoints_ptrs", align 4
@str__mlx5__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mlx5\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_mlx5_fw = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.38, %union.anon.182 { %struct.anon.183 { ptr @.str.39, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.40, %union.anon.182 { %struct.anon.183 { ptr @.str.41, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon.182 { %struct.anon.183 { ptr @.str.43, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.44, %union.anon.182 { %struct.anon.183 { ptr @.str.45, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.38, %union.anon.182 { %struct.anon.183 { ptr @.str.46, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_mlx5_fw = internal global %struct.trace_event_class { ptr @str__mlx5__trace_system_name, ptr @trace_event_raw_event_mlx5_fw, ptr @perf_trace_mlx5_fw, ptr @trace_event_reg, ptr @trace_event_fields_mlx5_fw, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlx5_fw, i64 24), ptr getelementptr (i8, ptr @event_class_mlx5_fw, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlx5_fw = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlx5_fw, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlx5_fw = internal global { [112 x i8], [48 x i8] } { [112 x i8] c"\22%s [0x%llx] %d [0x%x] %s\22, __get_str(dev_name), REC->trace_timestamp, REC->lost, REC->event_id, __get_str(msg)\00", [48 x i8] zeroinitializer }, align 32
@event_mlx5_fw = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_fw, %union.anon.184 { ptr @__tracepoint_mlx5_fw }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_fw }, ptr @print_fmt_mlx5_fw, ptr null, %union.anon.185 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_fw = internal global ptr @event_mlx5_fw, section "_ftrace_events", align 4
@__bpf_trace_tp_map_mlx5_fw = internal global %union.anon.186 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_fw, ptr @__bpf_trace_mlx5_fw, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dump fw traces\00", [17 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_create.__UNIQUE_ID_ddebug553 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_fw_tracer_create\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s:%d:(pid %d): FWTracer: Tracer capability not present\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mlx5_fw_tracer\00", [17 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&tracer->ownership_change_work)\00", [46 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_create.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&tracer->read_fw_strings_work)\00", [47 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_create.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&tracer->handle_traces_work)\00", [49 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_create.__UNIQUE_ID_ddebug554 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.12, i8 0, i8 -16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s:%d:(pid %d): FWTracer: Failed to query capabilities %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 966, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s:%d:(pid %d): FWTracer: Create log buffer failed %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_create._entry_ptr = internal global ptr @mlx5_fw_tracer_create._entry, section ".printk_index", align 4
@mlx5_fw_tracer_create._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 972, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s:%d:(pid %d): FWTracer: Allocate strings database failed %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_create._entry_ptr.18 = internal global ptr @mlx5_fw_tracer_create._entry.16, section ".printk_index", align 4
@mlx5_fw_tracer_create.__UNIQUE_ID_ddebug555 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.19, i8 0, i8 -12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s:%d:(pid %d): FWTracer: Tracer created\0A\00", [54 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 1009, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d:(pid %d): FWTracer: Failed to allocate PD %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mlx5_fw_tracer_init\00", [44 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_init._entry_ptr = internal global ptr @mlx5_fw_tracer_init._entry, section ".printk_index", align 4
@mlx5_fw_tracer_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 1015, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d:(pid %d): FWTracer: Failed to create mkey %d\0A\00", [44 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_init._entry_ptr.24 = internal global ptr @mlx5_fw_tracer_init._entry.22, section ".printk_index", align 4
@mlx5_fw_tracer_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.3, i32 1024, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d:(pid %d): FWTracer: Failed to start tracer %d\0A\00", [43 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_init._entry_ptr.27 = internal global ptr @mlx5_fw_tracer_init._entry.25, section ".printk_index", align 4
@mlx5_fw_tracer_cleanup.__UNIQUE_ID_ddebug556 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 1, i8 5, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5_fw_tracer_cleanup\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d:(pid %d): FWTracer: Cleanup, is owner ? (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_destroy.__UNIQUE_ID_ddebug557 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 1, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5_fw_tracer_destroy\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:%d:(pid %d): FWTracer: Destroy\0A\00", [61 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_reload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 1116, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s:%d:(pid %d): Failed to recreate FW tracer strings DB\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_fw_tracer_reload\00", [42 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_reload._entry_ptr = internal global ptr @mlx5_fw_tracer_reload._entry, section ".printk_index", align 4
@mlx5_fw_tracer_reload._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 1121, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d:(pid %d): Failed to re-initialize FW tracer\0A\00", [45 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_reload._entry_ptr.36 = internal global ptr @mlx5_fw_tracer_reload._entry.34, section ".printk_index", align 4
@__kstrtab___tracepoint_mlx5_fw = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_mlx5_fw = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_mlx5_fw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_mlx5_fw to i32), ptr @__kstrtab___tracepoint_mlx5_fw, ptr @__kstrtabns___tracepoint_mlx5_fw }, section "___ksymtab+__tracepoint_mlx5_fw", align 4
@__kstrtab___traceiter_mlx5_fw = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_mlx5_fw = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_mlx5_fw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_mlx5_fw to i32), ptr @__kstrtab___traceiter_mlx5_fw, ptr @__kstrtabns___traceiter_mlx5_fw }, section "___ksymtab+__traceiter_mlx5_fw", align 4
@__kstrtab___SCK__tp_func_mlx5_fw = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_mlx5_fw = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_mlx5_fw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_mlx5_fw to i32), ptr @__kstrtab___SCK__tp_func_mlx5_fw, ptr @__kstrtabns___SCK__tp_func_mlx5_fw }, section "___ksymtab+__SCK__tp_func_mlx5_fw", align 4
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev_name\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u64\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"trace_timestamp\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lost\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"event_id\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msg\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s [0x%llx] %d [0x%x] %s\0A\00", [38 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"timestamp\00", [22 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_ownership_change.__UNIQUE_ID_ddebug551 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 0, i8 -52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mlx5_fw_tracer_ownership_change\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s:%d:(pid %d): FWTracer: ownership changed, current=(%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@mlx5_tracer_read_strings_db.__UNIQUE_ID_ddebug534 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlx5_tracer_read_strings_db\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): FWTracer: Failed to read strings DB %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mlx5_tracer_read_strings_db.__UNIQUE_ID_ddebug537 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5_fw_tracer_handle_traces.__UNIQUE_ID_ddebug542 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mlx5_fw_tracer_handle_traces\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s:%d:(pid %d): FWTracer: Handle Trace event, owner=(%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_handle_traces._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.3, i32 710, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%d:(pid %d): FWTracer: Events were lost\0A\00", [52 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_handle_traces._entry_ptr = internal global ptr @mlx5_fw_tracer_handle_traces._entry, section ".printk_index", align 4
@mlx5_tracer_handle_trace.__UNIQUE_ID_ddebug541 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.56, ptr @.str.3, ptr @.str.57, i8 0, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx5_tracer_handle_trace\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s Got unrecognised type %d for parsing, exiting..\0A\00", [44 x i8] zeroinitializer }, align 32
@mlx5_tracer_handle_string_trace.__UNIQUE_ID_ddebug539 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str.3, ptr @.str.59, i8 0, i8 -105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mlx5_tracer_handle_string_trace\00", [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s Got string event for unknown string tdsm: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mlx5_tracer_handle_string_trace.__UNIQUE_ID_ddebug540 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str.3, ptr @.str.60, i8 0, i8 -103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s Number of params exceeds the max (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llx\00", [27 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer_tracepoint.h\00", [60 x i8] zeroinitializer }, align 32
@trace_mlx5_fw.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.65 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_arm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 349, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s:%d:(pid %d): FWTracer: Failed to arm tracer event %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx5_fw_tracer_arm\00", [45 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_arm._entry_ptr = internal global ptr @mlx5_fw_tracer_arm._entry, section ".printk_index", align 4
@mlx5_query_mtrc_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 51, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): FWTracer: Error reading tracer caps %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5_query_mtrc_caps\00", [43 x i8] zeroinitializer }, align 32
@mlx5_query_mtrc_caps._entry_ptr = internal global ptr @mlx5_query_mtrc_caps._entry, section ".printk_index", align 4
@mlx5_query_mtrc_caps.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.70, ptr @.str.3, ptr @.str.71, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%s:%d:(pid %d): FWTracer: Device does not support logging traces to memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_create_log_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 140, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): FWTracer: Failed to allocate pages, %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlx5_fw_tracer_create_log_buf\00", [34 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_create_log_buf._entry_ptr = internal global ptr @mlx5_fw_tracer_create_log_buf._entry, section ".printk_index", align 4
@mlx5_fw_tracer_create_log_buf._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.3, i32 149, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:%d:(pid %d): FWTracer: Unable to map DMA: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_create_log_buf._entry_ptr.76 = internal global ptr @mlx5_fw_tracer_create_log_buf._entry.74, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@mlx5_fw_tracer_init_saved_traces_array.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&tracer->st_arr.lock\00", [43 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_create_mkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.3, i32 211, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d:(pid %d): FWTracer: Failed to create mkey, %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mlx5_fw_tracer_create_mkey\00", [37 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_create_mkey._entry_ptr = internal global ptr @mlx5_fw_tracer_create_mkey._entry, section ".printk_index", align 4
@mlx5_fw_tracer_start.__UNIQUE_ID_ddebug549 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.82, ptr @.str.3, ptr @.str.83, i8 0, i8 -60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5_fw_tracer_start\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): FWTracer: Ownership was not granted %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.3, i32 792, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s:%d:(pid %d): FWTracer: Failed to set tracer configuration %d\0A\00", [63 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_start._entry_ptr = internal global ptr @mlx5_fw_tracer_start._entry, section ".printk_index", align 4
@mlx5_fw_tracer_start._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.82, ptr @.str.3, i32 799, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%d:(pid %d): FWTracer: Failed to enable tracer %d\0A\00", [42 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_start._entry_ptr.87 = internal global ptr @mlx5_fw_tracer_start._entry.85, section ".printk_index", align 4
@mlx5_fw_tracer_start.__UNIQUE_ID_ddebug550 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.82, ptr @.str.3, ptr @.str.88, i8 0, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): FWTracer: Ownership granted and active\0A\00", [40 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_ownership_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 103, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s:%d:(pid %d): FWTracer: Acquire tracer ownership failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mlx5_fw_tracer_ownership_acquire\00", [63 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_ownership_acquire._entry_ptr = internal global ptr @mlx5_fw_tracer_ownership_acquire._entry, section ".printk_index", align 4
@mlx5_fw_tracer_set_mtrc_conf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 753, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s:%d:(pid %d): FWTracer: Failed to set tracer configurations %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mlx5_fw_tracer_set_mtrc_conf\00", [35 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_set_mtrc_conf._entry_ptr = internal global ptr @mlx5_fw_tracer_set_mtrc_conf._entry, section ".printk_index", align 4
@mlx5_fw_tracer_recreate_strings_db.__UNIQUE_ID_ddebug558 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.93, ptr @.str.3, ptr @.str.12, i8 1, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mlx5_fw_tracer_recreate_strings_db\00", [61 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_recreate_strings_db._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.93, ptr @.str.3, i32 1096, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s:%d:(pid %d): FWTracer: Allocate strings DB failed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@mlx5_fw_tracer_recreate_strings_db._entry_ptr = internal global ptr @mlx5_fw_tracer_recreate_strings_db._entry, section ".printk_index", align 4
@fw_tracer_event.__UNIQUE_ID_ddebug559 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.95, ptr @.str.3, ptr @.str.96, i8 1, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fw_tracer_event\00", [16 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s:%d:(pid %d): FWTracer: Event with unrecognized subtype: sub_type %d\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 255]
@___asan_gen_.98 = private unnamed_addr constant [29 x i8] c"str__mlx5__trace_system_name\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 36, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant [27 x i8] c"trace_event_fields_mlx5_fw\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [31 x i8] c"trace_event_type_funcs_mlx5_fw\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [18 x i8] c"print_fmt_mlx5_fw\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [14 x i8] c"event_mlx5_fw\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 911, i32 47 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 936, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 944, i32 23 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 953, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 954, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 955, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 960, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 966, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 972, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 977, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1009, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1015, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1024, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1045, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1064, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1116, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1121, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 870, i32 40 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 816, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 297, i32 5 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 674, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 710, i32 5 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 657, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 605, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 611, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 352, i32 32 }
@___asan_gen_.306 = private unnamed_addr constant [73 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/./diag/fw_tracer_tracepoint.h\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 43, i32 1 }
@___asan_gen_.309 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 108, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 349, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 50, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 56, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 140, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 148, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 326, i32 6 }
@___asan_gen_.353 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 252, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 211, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 785, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 792, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 799, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 803, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 102, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 753, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1090, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1096, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.420 = private constant [60 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1143, i32 3 }
@llvm.compiler.used = appending global [134 x ptr] [ptr @__bpf_trace_tp_map_mlx5_fw, ptr @__event_mlx5_fw, ptr @__ksymtab___SCK__tp_func_mlx5_fw, ptr @__ksymtab___traceiter_mlx5_fw, ptr @__ksymtab___tracepoint_mlx5_fw, ptr @__tracepoint_mlx5_fw, ptr @__tracepoint_ptr_mlx5_fw, ptr @event_class_mlx5_fw, ptr @event_mlx5_fw, ptr @mlx5_fw_tracer_arm._entry, ptr @mlx5_fw_tracer_arm._entry_ptr, ptr @mlx5_fw_tracer_create._entry, ptr @mlx5_fw_tracer_create._entry.16, ptr @mlx5_fw_tracer_create._entry_ptr, ptr @mlx5_fw_tracer_create._entry_ptr.18, ptr @mlx5_fw_tracer_create_log_buf._entry, ptr @mlx5_fw_tracer_create_log_buf._entry.74, ptr @mlx5_fw_tracer_create_log_buf._entry_ptr, ptr @mlx5_fw_tracer_create_log_buf._entry_ptr.76, ptr @mlx5_fw_tracer_create_mkey._entry, ptr @mlx5_fw_tracer_create_mkey._entry_ptr, ptr @mlx5_fw_tracer_handle_traces._entry, ptr @mlx5_fw_tracer_handle_traces._entry_ptr, ptr @mlx5_fw_tracer_init._entry, ptr @mlx5_fw_tracer_init._entry.22, ptr @mlx5_fw_tracer_init._entry.25, ptr @mlx5_fw_tracer_init._entry_ptr, ptr @mlx5_fw_tracer_init._entry_ptr.24, ptr @mlx5_fw_tracer_init._entry_ptr.27, ptr @mlx5_fw_tracer_ownership_acquire._entry, ptr @mlx5_fw_tracer_ownership_acquire._entry_ptr, ptr @mlx5_fw_tracer_recreate_strings_db._entry, ptr @mlx5_fw_tracer_recreate_strings_db._entry_ptr, ptr @mlx5_fw_tracer_reload._entry, ptr @mlx5_fw_tracer_reload._entry.34, ptr @mlx5_fw_tracer_reload._entry_ptr, ptr @mlx5_fw_tracer_reload._entry_ptr.36, ptr @mlx5_fw_tracer_set_mtrc_conf._entry, ptr @mlx5_fw_tracer_set_mtrc_conf._entry_ptr, ptr @mlx5_fw_tracer_start._entry, ptr @mlx5_fw_tracer_start._entry.85, ptr @mlx5_fw_tracer_start._entry_ptr, ptr @mlx5_fw_tracer_start._entry_ptr.87, ptr @mlx5_query_mtrc_caps._entry, ptr @mlx5_query_mtrc_caps._entry_ptr, ptr @str__mlx5__trace_system_name, ptr @trace_event_fields_mlx5_fw, ptr @trace_event_type_funcs_mlx5_fw, ptr @print_fmt_mlx5_fw, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mlx5_fw_tracer_create.__key, ptr @.str.7, ptr @mlx5_fw_tracer_create.__key.8, ptr @.str.9, ptr @mlx5_fw_tracer_create.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @mlx5_fw_tracer_init_saved_traces_array.__key, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96], section "llvm.metadata"
@0 = internal global [108 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__mlx5__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlx5_fw to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlx5_fw to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlx5_fw to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_fw to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_tracer_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_tracer_create.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_tracer_create.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_tracer_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_tracer_create._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_tracer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_tracer_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_tracer_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_tracer_reload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_tracer_reload._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_tracer_handle_traces._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_tracer_arm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_query_mtrc_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_tracer_create_log_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_tracer_create_log_buf._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_tracer_init_saved_traces_array.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_tracer_create_mkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_tracer_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_tracer_start._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_tracer_ownership_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_tracer_set_mtrc_conf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_tracer_recreate_strings_db._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mlx5_fw(ptr nocapture readnone %__data, ptr noundef %tracer, i64 noundef %trace_timestamp, i1 noundef zeroext %lost, i8 noundef zeroext %event_id, ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_fw, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %2(ptr noundef %4, ptr noundef %tracer, i64 noundef %trace_timestamp, i1 noundef zeroext %lost, i8 noundef zeroext %event_id, ptr noundef %msg) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mlx5_fw(ptr noundef %__data, ptr nocapture noundef readonly %tracer, i64 noundef %trace_timestamp, i1 noundef zeroext %lost, i8 noundef zeroext %event_id, ptr noundef readonly %msg) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  %frombool = zext i1 %lost to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !225

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !226

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tracer, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_mlx5_fw.exit_crit_edge

if.end.trace_event_get_offsets_mlx5_fw.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %trace_event_get_offsets_mlx5_fw.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %tobool.not.i50 = icmp eq ptr %10, null
  %spec.select = select i1 %tobool.not.i50, ptr @.str.37, ptr %10
  br label %trace_event_get_offsets_mlx5_fw.exit

trace_event_get_offsets_mlx5_fw.exit:             ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_mlx5_fw.exit_crit_edge
  %cond.i = phi ptr [ %8, %if.end.trace_event_get_offsets_mlx5_fw.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call5.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #18
  %tobool9.not.i = icmp eq ptr %msg, null
  %spec.select.i = select i1 %tobool9.not.i, ptr @.str.37, ptr %msg
  %call14.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #18
  %add15.i = add i32 %call14.i, 1
  %add22.i = add i32 %call5.i, 33
  %add = add i32 %add22.i, %add15.i
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #15
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %trace_event_get_offsets_mlx5_fw.exit.cleanup_crit_edge, label %if.end6

trace_event_get_offsets_mlx5_fw.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_mlx5_fw.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %trace_event_get_offsets_mlx5_fw.exit
  %shl19.i = shl i32 %add15.i, 16
  %or21.i = or i32 %shl19.i, %add22.i
  %add.i = shl i32 %call5.i, 16
  %or.i = add i32 %add.i, 65568
  %__data_loc_dev_name = getelementptr inbounds %struct.trace_event_raw_mlx5_fw, ptr %call3, i32 0, i32 1
  %11 = ptrtoint ptr %__data_loc_dev_name to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %__data_loc_dev_name, align 8
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_mlx5_fw, ptr %call3, i32 0, i32 5
  %12 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or21.i, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 32
  %13 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tracer, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i51 = icmp eq ptr %18, null
  br i1 %tobool.not.i51, label %dev_name.exit, label %if.end6.cond.end_crit_edge

if.end6.cond.end_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end6
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %tobool10.not = icmp eq ptr %20, null
  br i1 %tobool10.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i56

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

if.end.i56:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %16, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i56, %dev_name.exit.cond.end_crit_edge, %if.end6.cond.end_crit_edge
  %cond = phi ptr [ @.str.37, %dev_name.exit.cond.end_crit_edge ], [ %22, %if.end.i56 ], [ %18, %if.end6.cond.end_crit_edge ]
  %call14 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #19
  %trace_timestamp15 = getelementptr inbounds %struct.trace_event_raw_mlx5_fw, ptr %call3, i32 0, i32 2
  %23 = ptrtoint ptr %trace_timestamp15 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %trace_timestamp, ptr %trace_timestamp15, align 8
  %lost17 = getelementptr inbounds %struct.trace_event_raw_mlx5_fw, ptr %call3, i32 0, i32 3
  %24 = ptrtoint ptr %lost17 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool, ptr %lost17, align 8
  %event_id19 = getelementptr inbounds %struct.trace_event_raw_mlx5_fw, ptr %call3, i32 0, i32 4
  %25 = ptrtoint ptr %event_id19 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %event_id, ptr %event_id19, align 1
  %26 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %__data_loc_msg, align 4
  %and21 = and i32 %27, 65535
  %add.ptr22 = getelementptr i8, ptr %call3, i32 %and21
  %call28 = call ptr @strcpy(ptr noundef %add.ptr22, ptr noundef nonnull %spec.select.i) #19
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_mlx5_fw.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlx5_fw(ptr noundef %__data, ptr nocapture noundef readonly %tracer, i64 noundef %trace_timestamp, i1 noundef zeroext %lost, i8 noundef zeroext %event_id, ptr noundef readonly %msg) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  %frombool = zext i1 %lost to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !227
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !227
  %2 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tracer, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_mlx5_fw.exit_crit_edge

entry.trace_event_get_offsets_mlx5_fw.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %trace_event_get_offsets_mlx5_fw.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %spec.select = select i1 %tobool.not.i, ptr @.str.37, ptr %9
  br label %trace_event_get_offsets_mlx5_fw.exit

trace_event_get_offsets_mlx5_fw.exit:             ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_mlx5_fw.exit_crit_edge
  %cond.i = phi ptr [ %7, %entry.trace_event_get_offsets_mlx5_fw.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call5.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #18
  %add.i = shl i32 %call5.i, 16
  %shl.i = add i32 %add.i, 65536
  %or.i = or i32 %shl.i, 32
  %tobool9.not.i = icmp eq ptr %msg, null
  %spec.select.i = select i1 %tobool9.not.i, ptr @.str.37, ptr %msg
  %call14.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #18
  %add15.i = add i32 %call14.i, 1
  %add17.i = add i32 %call5.i, 33
  %shl19.i = shl i32 %add15.i, 16
  %or21.i = or i32 %shl19.i, %add17.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %10 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %perf_events, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !215) #15
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
  br i1 %tobool.i.not, label %land.lhs.true8, label %trace_event_get_offsets_mlx5_fw.exit.if.end_crit_edge

trace_event_get_offsets_mlx5_fw.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_mlx5_fw.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true8:                                   ; preds = %trace_event_get_offsets_mlx5_fw.exit
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %19, align 4
  %tobool.not.i74.not = icmp eq ptr %23, null
  br i1 %tobool.not.i74.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %trace_event_get_offsets_mlx5_fw.exit.if.end_crit_edge
  %add22.i = add i32 %call5.i, 44
  %add13 = add i32 %add22.i, %add15.i
  %and = and i32 %add13, -8
  %sub = add i32 %and, -4
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %24 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %__regs, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #15
  %27 = ptrtoint ptr %26 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx.i, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %30 = ptrtoint ptr %29 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  %31 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx2.i, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !215) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  %33 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  %34 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_dev_name = getelementptr inbounds %struct.trace_event_raw_mlx5_fw, ptr %call14, i32 0, i32 1
  %35 = ptrtoint ptr %__data_loc_dev_name to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i, ptr %__data_loc_dev_name, align 8
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_mlx5_fw, ptr %call14, i32 0, i32 5
  %36 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or21.i, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call14, i32 32
  %37 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tracer, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i75 = icmp eq ptr %42, null
  br i1 %tobool.not.i75, label %dev_name.exit, label %if.end17.cond.end_crit_edge

if.end17.cond.end_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end17
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %40, align 4
  %tobool22.not = icmp eq ptr %44, null
  br i1 %tobool22.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i78

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

if.end.i78:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %40, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i78, %dev_name.exit.cond.end_crit_edge, %if.end17.cond.end_crit_edge
  %cond = phi ptr [ @.str.37, %dev_name.exit.cond.end_crit_edge ], [ %46, %if.end.i78 ], [ %42, %if.end17.cond.end_crit_edge ]
  %call26 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #19
  %trace_timestamp27 = getelementptr inbounds %struct.trace_event_raw_mlx5_fw, ptr %call14, i32 0, i32 2
  %47 = ptrtoint ptr %trace_timestamp27 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %trace_timestamp, ptr %trace_timestamp27, align 8
  %lost29 = getelementptr inbounds %struct.trace_event_raw_mlx5_fw, ptr %call14, i32 0, i32 3
  %48 = ptrtoint ptr %lost29 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %frombool, ptr %lost29, align 8
  %event_id31 = getelementptr inbounds %struct.trace_event_raw_mlx5_fw, ptr %call14, i32 0, i32 4
  %49 = ptrtoint ptr %event_id31 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %event_id, ptr %event_id31, align 1
  %50 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %__data_loc_msg, align 4
  %and33 = and i32 %51, 65535
  %add.ptr34 = getelementptr i8, ptr %call14, i32 %and33
  %call40 = call ptr @strcpy(ptr noundef %add.ptr34, ptr noundef nonnull %spec.select.i) #19
  %52 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rctx, align 4
  %54 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef %sub, i32 noundef %53, ptr noundef %__data, i64 noundef 1, ptr noundef %55, ptr noundef %19, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlx5_fw(ptr noundef %__data, ptr noundef %tracer, i64 noundef %trace_timestamp, i1 noundef zeroext %lost, i8 noundef zeroext %event_id, ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %tracer to i32
  %conv = zext i32 %0 to i64
  %conv8 = zext i1 %lost to i64
  %conv12 = zext i8 %event_id to i64
  %1 = ptrtoint ptr %msg to i32
  %conv16 = zext i32 %1 to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %trace_timestamp, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fw_tracer_trigger_core_dump_general(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %out.i = alloca [16 x i32], align 4
  %in = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tracer1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 29
  %0 = ptrtoint ptr %tracer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tracer1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in) #15
  %2 = call ptr @memset(ptr %in, i32 0, i32 64)
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 13
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool.not = icmp sgt i32 %6, -1
  %tobool2.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %owner = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %owner, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %if.end
  %9 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %in, align 4
  %and9 = and i32 %10, -256
  store i32 %and9, ptr %in, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out.i) #15
  %11 = call ptr @memset(ptr %out.i, i32 0, i32 64)
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %13)
  %14 = icmp ult i32 %13, 1073741824
  br i1 %14, label %mlx5_fw_tracer_set_core_dump_reg.exit.thread, label %mlx5_fw_tracer_set_core_dump_reg.exit

mlx5_fw_tracer_set_core_dump_reg.exit.thread:     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i) #15
  br label %cleanup

mlx5_fw_tracer_set_core_dump_reg.exit:            ; preds = %do.body
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 64, ptr noundef nonnull %out.i, i32 noundef 64, i16 noundef zeroext 16430, i32 noundef 0, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.end18, label %mlx5_fw_tracer_set_core_dump_reg.exit.cleanup_crit_edge

mlx5_fw_tracer_set_core_dump_reg.exit.cleanup_crit_edge: ; preds = %mlx5_fw_tracer_set_core_dump_reg.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end18:                                         ; preds = %mlx5_fw_tracer_set_core_dump_reg.exit
  call void @__sanitizer_cov_trace_pc() #17
  %work_queue = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %work_queue, align 8
  %handle_traces_work = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %1, i32 0, i32 11
  %call.i30 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %handle_traces_work) #15
  %17 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %work_queue, align 8
  call void @flush_workqueue(ptr noundef %18) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %mlx5_fw_tracer_set_core_dump_reg.exit.cleanup_crit_edge, %mlx5_fw_tracer_set_core_dump_reg.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -95, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %call.i, %mlx5_fw_tracer_set_core_dump_reg.exit.cleanup_crit_edge ], [ -95, %mlx5_fw_tracer_set_core_dump_reg.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fw_tracer_get_saved_traces_objects(ptr noundef %tracer, ptr noundef %fmsg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %st_arr = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 9
  %0 = ptrtoint ptr %st_arr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %st_arr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 9, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #15
  %saved_traces_index4 = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %saved_traces_index4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %saved_traces_index4, align 8
  %arrayidx5 = getelementptr %struct.mlx5_fw_trace_data, ptr %st_arr, i32 %3
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx5, align 8
  %sub = add i32 %3, 8191
  %and = and i32 %sub, 8191
  %call = tail call i32 @devlink_fmsg_arr_pair_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %while.cond.preheader, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool7.not = icmp eq i64 %5, 0
  %. = select i1 %tobool7.not, i32 0, i32 %3
  call void @__sanitizer_cov_trace_cmp4(i32 %., i32 %and)
  %cmp.not42 = icmp eq i32 %., %and
  br i1 %cmp.not42, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %index.043 = phi i32 [ %and18, %if.end17.while.body_crit_edge ], [ %., %while.cond.preheader.while.body_crit_edge ]
  %call.i = tail call i32 @devlink_fmsg_obj_nest_start(ptr noundef %fmsg) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.unlock_crit_edge

while.body.unlock_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

if.end.i:                                         ; preds = %while.body
  %arrayidx13 = getelementptr %struct.mlx5_fw_trace_data, ptr %st_arr, i32 %index.043
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx13, align 8
  %call1.i = tail call i32 @devlink_fmsg_u64_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.48, i64 noundef %7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.unlock_crit_edge

if.end.i.unlock_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

if.end4.i:                                        ; preds = %if.end.i
  %lost.i = getelementptr %struct.mlx5_fw_trace_data, ptr %st_arr, i32 %index.043, i32 1
  %8 = ptrtoint ptr %lost.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %lost.i, align 8, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.i = icmp ne i8 %9, 0
  %call6.i = tail call i32 @devlink_fmsg_bool_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.43, i1 noundef zeroext %tobool5.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end4.i.unlock_crit_edge

if.end4.i.unlock_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

if.end9.i:                                        ; preds = %if.end4.i
  %event_id.i = getelementptr %struct.mlx5_fw_trace_data, ptr %st_arr, i32 %index.043, i32 2
  %10 = ptrtoint ptr %event_id.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %event_id.i, align 1
  %call10.i = tail call i32 @devlink_fmsg_u8_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.45, i8 noundef zeroext %11) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end9.i.unlock_crit_edge

if.end9.i.unlock_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

if.end13.i:                                       ; preds = %if.end9.i
  %msg.i = getelementptr %struct.mlx5_fw_trace_data, ptr %st_arr, i32 %index.043, i32 3
  %call14.i = tail call i32 @devlink_fmsg_string_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.46, ptr noundef %msg.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %mlx5_devlink_fmsg_fill_trace.exit, label %if.end13.i.unlock_crit_edge

if.end13.i.unlock_crit_edge:                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

mlx5_devlink_fmsg_fill_trace.exit:                ; preds = %if.end13.i
  %call18.i = tail call i32 @devlink_fmsg_obj_nest_end(ptr noundef %fmsg) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool15.not = icmp eq i32 %call18.i, 0
  br i1 %tobool15.not, label %if.end17, label %mlx5_devlink_fmsg_fill_trace.exit.unlock_crit_edge

mlx5_devlink_fmsg_fill_trace.exit.unlock_crit_edge: ; preds = %mlx5_devlink_fmsg_fill_trace.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

if.end17:                                         ; preds = %mlx5_devlink_fmsg_fill_trace.exit
  %add = add i32 %index.043, 1
  %and18 = and i32 %add, 8191
  %cmp.not = icmp eq i32 %and18, %and
  br i1 %cmp.not, label %if.end17.while.end_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %call19 = tail call i32 @devlink_fmsg_arr_pair_nest_end(ptr noundef %fmsg) #15
  br label %unlock

unlock:                                           ; preds = %while.end, %mlx5_devlink_fmsg_fill_trace.exit.unlock_crit_edge, %if.end13.i.unlock_crit_edge, %if.end9.i.unlock_crit_edge, %if.end4.i.unlock_crit_edge, %if.end.i.unlock_crit_edge, %while.body.unlock_crit_edge, %if.end.unlock_crit_edge
  %err.0 = phi i32 [ %call, %if.end.unlock_crit_edge ], [ %call19, %while.end ], [ %call.i, %while.body.unlock_crit_edge ], [ %call1.i, %if.end.i.unlock_crit_edge ], [ %call6.i, %if.end4.i.unlock_crit_edge ], [ %call10.i, %if.end9.i.unlock_crit_edge ], [ %call14.i, %if.end13.i.unlock_crit_edge ], [ %call18.i, %mlx5_devlink_fmsg_fill_trace.exit.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #15
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %unlock ], [ -42, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_arr_pair_nest_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_arr_pair_nest_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_fw_tracer_create(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 2, i32 0, i32 3
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %and = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fw_tracer_create.__UNIQUE_ID_ddebug553, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fw_tracer_create, %if.then4)) #15
          to label %cleanup [label %if.then4], !srcloc !229

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fw_tracer_create.__UNIQUE_ID_ddebug553, ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 936, i32 noundef %9) #15
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 2228888, i32 noundef 3520, i32 noundef -1) #20
  %tobool8.not = icmp eq ptr %call.i.i, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call12 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.5, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.6) #15
  %work_queue = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %work_queue to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call12, ptr %work_queue, align 8
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.end11.free_tracer_crit_edge, label %if.end16

if.end11.free_tracer_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_tracer

if.end16:                                         ; preds = %if.end11
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %call.i.i, align 8
  %ready_strings_list = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 13
  %12 = ptrtoint ptr %ready_strings_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %ready_strings_list, ptr %ready_strings_list, align 4
  %prev.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 13, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ready_strings_list, ptr %prev.i, align 4
  %ownership_change_work = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %ownership_change_work, i32 noundef 0) #15
  %14 = ptrtoint ptr %ownership_change_work to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %ownership_change_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @mlx5_fw_tracer_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry22 = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %entry22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry22, ptr %entry22, align 4
  %prev.i168 = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 5, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i168 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry22, ptr %prev.i168, align 4
  %func = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mlx5_fw_tracer_ownership_change, ptr %func, align 4
  %read_fw_strings_work = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %read_fw_strings_work, i32 noundef 0) #15
  %18 = ptrtoint ptr %read_fw_strings_work to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %read_fw_strings_work, align 8
  %lockdep_map32 = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map32, ptr noundef nonnull @.str.9, ptr noundef nonnull @mlx5_fw_tracer_create.__key.8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry34 = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %entry34 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry34, ptr %entry34, align 4
  %prev.i169 = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 6, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i169 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry34, ptr %prev.i169, align 4
  %func36 = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 6, i32 2
  %21 = ptrtoint ptr %func36 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mlx5_tracer_read_strings_db, ptr %func36, align 4
  %handle_traces_work = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 11
  tail call void @__init_work(ptr noundef %handle_traces_work, i32 noundef 0) #15
  %22 = ptrtoint ptr %handle_traces_work to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %handle_traces_work, align 8
  %lockdep_map45 = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map45, ptr noundef nonnull @.str.11, ptr noundef nonnull @mlx5_fw_tracer_create.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry47 = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 11, i32 1
  %23 = ptrtoint ptr %entry47 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry47, ptr %entry47, align 4
  %prev.i170 = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 11, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i170 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry47, ptr %prev.i170, align 4
  %func49 = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 11, i32 2
  %25 = ptrtoint ptr %func49 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mlx5_fw_tracer_handle_traces, ptr %func49, align 4
  %call52 = tail call fastcc i32 @mlx5_query_mtrc_caps(ptr noundef nonnull %call.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end75, label %do.body55

do.body55:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fw_tracer_create.__UNIQUE_ID_ddebug554, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fw_tracer_create, %if.then67)) #15
          to label %destroy_workqueue [label %if.then67], !srcloc !229

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %28 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i171 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i171 to ptr
  %task70 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task70 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task70, align 8
  %pid71 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid71 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid71, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fw_tracer_create.__UNIQUE_ID_ddebug554, ptr noundef %27, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2, i32 noundef 960, i32 noundef %33, i32 noundef %call52) #15
  br label %destroy_workqueue

if.end75:                                         ; preds = %if.end16
  %34 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i.i, align 8
  %size.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 8, i32 3
  %36 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 262144, ptr %size.i, align 4
  %call5.i = tail call i32 @__get_free_pages(i32 noundef 3520, i32 noundef 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %35, align 8
  %39 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 68
  %43 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, i32 noundef 140, i32 noundef %44, i32 noundef -12) #21
  br label %do.end81

if.end.i:                                         ; preds = %if.end75
  %45 = inttoptr i32 %call5.i to ptr
  %log_buf.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 8, i32 1
  %46 = ptrtoint ptr %log_buf.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %log_buf.i, align 4
  %pdev.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %35, i32 0, i32 2
  %47 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev.i.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %49 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size.i, align 4
  %call.i.i172 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %45) #15
  br i1 %call.i.i172, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i54.i, !prof !225

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit.thread.i

if.then.i54.i:                                    ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev1.i.i) #15
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44, i32 3
  %51 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i53.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i53.i, label %if.end.i.i.i, label %if.then.i54.i.dev_name.exit.i.i_crit_edge

if.then.i54.i.dev_name.exit.i.i_crit_edge:        ; preds = %if.then.i54.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i54.i
  call void @__sanitizer_cov_trace_pc() #17
  %53 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev1.i.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i54.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %54, %if.end.i.i.i ], [ %52, %if.then.i54.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.77, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.78, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #15
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev1.i.i, i32 noundef -1) #15
  br label %do.end17.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end.i
  tail call void @debug_dma_map_single(ptr noundef %dev1.i.i, ptr noundef nonnull %45, i32 noundef %50) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %55 = load ptr, ptr @mem_map, align 4
  %sub.i55.i = add i32 %call5.i, 1073741824
  %shr.i56.i = lshr i32 %sub.i55.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %55, i32 %shr.i56.i
  %and.i57.i = and i32 %call5.i, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev1.i.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i57.i, i32 noundef %50, i32 noundef 2, i32 noundef 0) #15
  tail call void @debug_dma_mapping_error(ptr noundef %dev1.i.i, i32 noundef %call41.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i59.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i59.i, label %dma_map_single_attrs.exit.i.do.end17.i_crit_edge, label %if.end86

dma_map_single_attrs.exit.i.do.end17.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end17.i

do.end17.i:                                       ; preds = %dma_map_single_attrs.exit.i.do.end17.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  %56 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %35, align 8
  %58 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i60.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i60.i to ptr
  %task20.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %task20.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task20.i, align 8
  %pid21.i = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 68
  %62 = ptrtoint ptr %pid21.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pid21.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %dev1.i.i, i32 noundef -1) #15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.73, i32 noundef 149, i32 noundef %63, i32 noundef -12) #21
  %64 = ptrtoint ptr %log_buf.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %log_buf.i, align 4
  %66 = ptrtoint ptr %65 to i32
  %67 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %size.i, align 4
  %dec.i.i = add i32 %68, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %shr.i.i = lshr i32 %dec.i.i, 12
  %69 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #15, !range !230
  %sub.i.i.i = sub nuw nsw i32 32, %69
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  tail call void @free_pages(i32 noundef %66, i32 noundef %cond.i.i.i) #15
  br label %do.end81

do.end81:                                         ; preds = %do.end17.i, %if.then.i
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 8
  %72 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i174 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i174 to ptr
  %task84 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %task84 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task84, align 8
  %pid85 = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 68
  %76 = ptrtoint ptr %pid85 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pid85, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %71, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef 966, i32 noundef %77, i32 noundef -12) #21
  br label %destroy_workqueue

if.end86:                                         ; preds = %dma_map_single_attrs.exit.i
  %dma25.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 8, i32 2
  %78 = ptrtoint ptr %dma25.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call41.i.i, ptr %dma25.i, align 8
  %size_out.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 7, i32 4
  %num_string_db2.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 7, i32 2
  %79 = ptrtoint ptr %num_string_db2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_string_db2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp22.not.i = icmp eq i32 %80, 0
  br i1 %cmp22.not.i, label %if.end86.if.end97_crit_edge, label %if.end86.if.end8.i.i.i_crit_edge

if.end86.if.end8.i.i.i_crit_edge:                 ; preds = %if.end86
  br label %if.end8.i.i.i

if.end86.if.end97_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end97

if.end8.i.i.i:                                    ; preds = %for.inc.i.if.end8.i.i.i_crit_edge, %if.end86.if.end8.i.i.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.inc.i.if.end8.i.i.i_crit_edge ], [ 0, %if.end86.if.end8.i.i.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %size_out.i, i32 %i.023.i
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %82, i32 noundef 3520) #20
  %arrayidx4.i = getelementptr %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 7, i32 5, i32 %i.023.i
  %83 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call9.i.i.i, ptr %arrayidx4.i, align 4
  %tobool.not.i176 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i176, label %free_strings_db.i, label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i.i.i
  %inc.i = add nuw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %80
  br i1 %exitcond.not.i, label %for.inc.i.if.end97_crit_edge, label %for.inc.i.if.end8.i.i.i_crit_edge

for.inc.i.if.end8.i.i.i_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i.i.i

for.inc.i.if.end97_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end97

free_strings_db.i:                                ; preds = %if.end8.i.i.i
  %84 = ptrtoint ptr %num_string_db2.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %num_string_db2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp11.not.i.i = icmp eq i32 %85, 0
  br i1 %cmp11.not.i.i, label %free_strings_db.i.do.end92_crit_edge, label %free_strings_db.i.for.body.i.i_crit_edge

free_strings_db.i.for.body.i.i_crit_edge:         ; preds = %free_strings_db.i
  br label %for.body.i.i

free_strings_db.i.do.end92_crit_edge:             ; preds = %free_strings_db.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end92

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %free_strings_db.i.for.body.i.i_crit_edge
  %i.012.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %free_strings_db.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 7, i32 5, i32 %i.012.i.i
  %86 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @kfree(ptr noundef %87) #15
  %88 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw i32 %i.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %85
  br i1 %exitcond.not.i.i, label %for.body.i.i.do.end92_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.body.i.i.do.end92_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end92

do.end92:                                         ; preds = %for.body.i.i.do.end92_crit_edge, %free_strings_db.i.do.end92_crit_edge
  %89 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev, align 8
  %91 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i178 = and i32 %91, -16384
  %92 = inttoptr i32 %and.i178 to ptr
  %task95 = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %task95 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %task95, align 8
  %pid96 = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 68
  %95 = ptrtoint ptr %pid96 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pid96, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %90, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.2, i32 noundef 972, i32 noundef %96, i32 noundef -12) #21
  tail call fastcc void @mlx5_fw_tracer_destroy_log_buf(ptr noundef nonnull %call.i.i)
  br label %destroy_workqueue

if.end97:                                         ; preds = %for.inc.i.if.end97_crit_edge, %if.end86.if.end97_crit_edge
  %saved_traces_index.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 9, i32 1
  %97 = ptrtoint ptr %saved_traces_index.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %saved_traces_index.i, align 8
  %lock.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %call.i.i, i32 0, i32 9, i32 2
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.79, ptr noundef nonnull @mlx5_fw_tracer_init_saved_traces_array.__key) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fw_tracer_create.__UNIQUE_ID_ddebug555, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fw_tracer_create, %if.then110)) #15
          to label %cleanup [label %if.then110], !srcloc !229

if.then110:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  %98 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev, align 8
  %100 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i179 = and i32 %100, -16384
  %101 = inttoptr i32 %and.i179 to ptr
  %task113 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %task113 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %task113, align 8
  %pid114 = getelementptr inbounds %struct.task_struct, ptr %103, i32 0, i32 68
  %104 = ptrtoint ptr %pid114 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %pid114, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fw_tracer_create.__UNIQUE_ID_ddebug555, ptr noundef %99, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef 977, i32 noundef %105) #15
  br label %cleanup

destroy_workqueue:                                ; preds = %do.end92, %do.end81, %if.then67, %do.body55
  %err.0 = phi i32 [ %call52, %if.then67 ], [ -12, %do.end81 ], [ -12, %do.end92 ], [ %call52, %do.body55 ]
  %106 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %call.i.i, align 8
  %107 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %work_queue, align 8
  tail call void @destroy_workqueue(ptr noundef %108) #15
  br label %free_tracer

free_tracer:                                      ; preds = %destroy_workqueue, %if.end11.free_tracer_crit_edge
  %err.1 = phi i32 [ %err.0, %destroy_workqueue ], [ -12, %if.end11.free_tracer_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #15
  %109 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %free_tracer, %if.then110, %if.end97, %if.end6.cleanup_crit_edge, %if.then4, %do.body
  %retval.0 = phi ptr [ %109, %free_tracer ], [ null, %if.then4 ], [ %call.i.i, %if.then110 ], [ null, %do.body ], [ inttoptr (i32 -12 to ptr), %if.end6.cleanup_crit_edge ], [ %call.i.i, %if.end97 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_fw_tracer_ownership_change(ptr nocapture noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fw_tracer_ownership_change.__UNIQUE_ID_ddebug551, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fw_tracer_ownership_change, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  %owner = getelementptr i8, ptr %work, i32 -8
  %10 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %owner, align 4, !range !228
  %12 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fw_tracer_ownership_change.__UNIQUE_ID_ddebug551, ptr noundef %3, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef 816, i32 noundef %9, i32 noundef %12) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %owner6 = getelementptr i8, ptr %work, i32 -8
  %13 = ptrtoint ptr %owner6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %owner6, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not = icmp eq i8 %14, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %owner6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %owner6, align 4
  %consumer_index = getelementptr i8, ptr %work, i32 216
  %16 = ptrtoint ptr %consumer_index to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %consumer_index, align 4
  br label %cleanup

if.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %call11 = tail call fastcc i32 @mlx5_fw_tracer_start(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_tracer_read_strings_db(ptr nocapture noundef %work) #0 align 64 {
entry:
  %in = alloca [32 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -72
  %num_string_db1 = getelementptr i8, ptr %work, i32 48
  %0 = ptrtoint ptr %num_string_db1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_string_db1, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %in) #15
  %4 = call ptr @memset(ptr %in, i32 0, i32 128)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 264) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out139_crit_edge, label %for.cond.preheader

entry.out139_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out139

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp189.not = icmp eq i32 %1, 0
  br i1 %cmp189.not, label %for.cond.preheader.for.end137_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end137_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end137

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %size_out = getelementptr i8, ptr %work, i32 84
  %add.ptr39 = getelementptr inbounds i32, ptr %in, i32 1
  %add.ptr64 = getelementptr i8, ptr %call7.i.i, i32 8
  %buffer = getelementptr i8, ptr %work, i32 116
  br label %for.body

for.body:                                         ; preds = %for.inc135.for.body_crit_edge, %for.body.lr.ph
  %i.0190 = phi i32 [ 0, %for.body.lr.ph ], [ %inc136, %for.inc135.for.body_crit_edge ]
  %6 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in, align 4
  %and = and i32 %7, 251658240
  %shl = shl i32 %i.0190, 28
  %or = or i32 %and, %shl
  %arrayidx = getelementptr [8 x i32], ptr %size_out, i32 0, i32 %i.0190
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %rem = lshr i32 %9, 6
  %div14175 = and i32 %rem, 3
  %or25 = or i32 %or, 256
  store i32 %or25, ptr %in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %9)
  %cmp31183.not = icmp ult i32 %9, 256
  br i1 %cmp31183.not, label %for.body.do.body68_crit_edge, label %do.body33.lr.ph

for.body.do.body68_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body68

do.body33.lr.ph:                                  ; preds = %for.body
  %div174 = lshr i32 %9, 8
  %arrayidx66 = getelementptr [8 x ptr], ptr %buffer, i32 0, i32 %i.0190
  br label %do.body33

do.body33:                                        ; preds = %if.end63.do.body33_crit_edge, %do.body33.lr.ph
  %offset.0185 = phi i32 [ 0, %do.body33.lr.ph ], [ %add, %if.end63.do.body33_crit_edge ]
  %j.0184 = phi i32 [ 0, %do.body33.lr.ph ], [ %inc, %if.end63.do.body33_crit_edge ]
  %10 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %offset.0185, ptr %add.ptr39, align 4
  %call49 = call i32 @mlx5_core_access_reg(ptr noundef %3, ptr noundef nonnull %in, i32 noundef 128, ptr noundef nonnull %call7.i.i, i32 noundef 264, i16 noundef zeroext -28606, i32 noundef 0, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end63, label %do.body52

do.body52:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_tracer_read_strings_db.__UNIQUE_ID_ddebug534, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_tracer_read_strings_db, %if.then58)) #15
          to label %out_free [label %if.then58], !srcloc !229

if.then58:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %13 = call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 68
  %17 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_tracer_read_strings_db.__UNIQUE_ID_ddebug534, ptr noundef %12, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, i32 noundef 298, i32 noundef %18, i32 noundef %call49) #15
  br label %out_free

if.end63:                                         ; preds = %do.body33
  %19 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx66, align 4
  %add.ptr67 = getelementptr i8, ptr %20, i32 %offset.0185
  %21 = call ptr @memcpy(ptr %add.ptr67, ptr %add.ptr64, i32 256)
  %add = add nuw i32 %offset.0185, 256
  %inc = add nuw nsw i32 %j.0184, 1
  %exitcond.not = icmp eq i32 %inc, %div174
  br i1 %exitcond.not, label %if.end63.do.body68_crit_edge, label %if.end63.do.body33_crit_edge

if.end63.do.body33_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body33

if.end63.do.body68_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body68

do.body68:                                        ; preds = %if.end63.do.body68_crit_edge, %for.body.do.body68_crit_edge
  %offset.0.lcssa = phi i32 [ 0, %for.body.do.body68_crit_edge ], [ %add, %if.end63.do.body68_crit_edge ]
  %22 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %in, align 4
  %and75 = and i32 %23, -16777216
  %or78 = or i32 %and75, 64
  store i32 %or78, ptr %in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div14175)
  %cmp84186.not = icmp eq i32 %div14175, 0
  br i1 %cmp84186.not, label %do.body68.for.inc135_crit_edge, label %do.body86.lr.ph

do.body68.for.inc135_crit_edge:                   ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc135

do.body86.lr.ph:                                  ; preds = %do.body68
  %arrayidx129 = getelementptr [8 x ptr], ptr %buffer, i32 0, i32 %i.0190
  %24 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %offset.0.lcssa, ptr %add.ptr39, align 4
  %call102 = call i32 @mlx5_core_access_reg(ptr noundef %3, ptr noundef nonnull %in, i32 noundef 128, ptr noundef nonnull %call7.i.i, i32 noundef 264, i16 noundef zeroext -28606, i32 noundef 0, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end125, label %do.body86.lr.ph.do.body105_crit_edge

do.body86.lr.ph.do.body105_crit_edge:             ; preds = %do.body86.lr.ph
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body105

do.body105:                                       ; preds = %do.body86.2.do.body105_crit_edge, %do.body86.1.do.body105_crit_edge, %do.body86.lr.ph.do.body105_crit_edge
  %call102.lcssa = phi i32 [ %call102, %do.body86.lr.ph.do.body105_crit_edge ], [ %call102.1, %do.body86.1.do.body105_crit_edge ], [ %call102.2, %do.body86.2.do.body105_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_tracer_read_strings_db.__UNIQUE_ID_ddebug537, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_tracer_read_strings_db, %if.then117)) #15
          to label %out_free [label %if.then117], !srcloc !229

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 8
  %27 = call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i179 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i179 to ptr
  %task120 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task120 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task120, align 8
  %pid121 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 68
  %31 = ptrtoint ptr %pid121 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pid121, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_tracer_read_strings_db.__UNIQUE_ID_ddebug537, ptr noundef %26, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, i32 noundef 319, i32 noundef %32, i32 noundef %call102.lcssa) #15
  br label %out_free

if.end125:                                        ; preds = %do.body86.lr.ph
  %33 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx129, align 4
  %add.ptr130 = getelementptr i8, ptr %34, i32 %offset.0.lcssa
  %35 = call ptr @memcpy(ptr %add.ptr130, ptr %add.ptr64, i32 64)
  %add131 = add nsw i32 %offset.0.lcssa, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div14175)
  %exitcond195.not = icmp eq i32 %div14175, 1
  br i1 %exitcond195.not, label %if.end125.for.inc135_crit_edge, label %do.body86.1

if.end125.for.inc135_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc135

do.body86.1:                                      ; preds = %if.end125
  %36 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add131, ptr %add.ptr39, align 4
  %call102.1 = call i32 @mlx5_core_access_reg(ptr noundef %3, ptr noundef nonnull %in, i32 noundef 128, ptr noundef nonnull %call7.i.i, i32 noundef 264, i16 noundef zeroext -28606, i32 noundef 0, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102.1)
  %tobool103.not.1 = icmp eq i32 %call102.1, 0
  br i1 %tobool103.not.1, label %if.end125.1, label %do.body86.1.do.body105_crit_edge

do.body86.1.do.body105_crit_edge:                 ; preds = %do.body86.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body105

if.end125.1:                                      ; preds = %do.body86.1
  %37 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx129, align 4
  %add.ptr130.1 = getelementptr i8, ptr %38, i32 %add131
  %39 = call ptr @memcpy(ptr %add.ptr130.1, ptr %add.ptr64, i32 64)
  %add131.1 = add nsw i32 %offset.0.lcssa, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div14175)
  %exitcond195.not.1 = icmp eq i32 %div14175, 2
  br i1 %exitcond195.not.1, label %if.end125.1.for.inc135_crit_edge, label %do.body86.2

if.end125.1.for.inc135_crit_edge:                 ; preds = %if.end125.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc135

do.body86.2:                                      ; preds = %if.end125.1
  %40 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add131.1, ptr %add.ptr39, align 4
  %call102.2 = call i32 @mlx5_core_access_reg(ptr noundef %3, ptr noundef nonnull %in, i32 noundef 128, ptr noundef nonnull %call7.i.i, i32 noundef 264, i16 noundef zeroext -28606, i32 noundef 0, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102.2)
  %tobool103.not.2 = icmp eq i32 %call102.2, 0
  br i1 %tobool103.not.2, label %if.end125.2, label %do.body86.2.do.body105_crit_edge

do.body86.2.do.body105_crit_edge:                 ; preds = %do.body86.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body105

if.end125.2:                                      ; preds = %do.body86.2
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx129, align 4
  %add.ptr130.2 = getelementptr i8, ptr %42, i32 %add131.1
  %43 = call ptr @memcpy(ptr %add.ptr130.2, ptr %add.ptr64, i32 64)
  br label %for.inc135

for.inc135:                                       ; preds = %if.end125.2, %if.end125.1.for.inc135_crit_edge, %if.end125.for.inc135_crit_edge, %do.body68.for.inc135_crit_edge
  %inc136 = add nuw i32 %i.0190, 1
  %exitcond196.not = icmp eq i32 %inc136, %1
  br i1 %exitcond196.not, label %for.inc135.for.end137_crit_edge, label %for.inc135.for.body_crit_edge

for.inc135.for.body_crit_edge:                    ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc135.for.end137_crit_edge:                  ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end137

for.end137:                                       ; preds = %for.inc135.for.end137_crit_edge, %for.cond.preheader.for.end137_crit_edge
  %loaded = getelementptr i8, ptr %work, i32 148
  %44 = ptrtoint ptr %loaded to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %loaded, align 4
  br label %out_free

out_free:                                         ; preds = %for.end137, %if.then117, %do.body105, %if.then58, %do.body52
  call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %out139

out139:                                           ; preds = %out_free, %entry.out139_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %in) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_fw_tracer_handle_traces(ptr noundef %work) #0 align 64 {
entry:
  %out.i = alloca [16 x i32], align 4
  %in.i = alloca [16 x i32], align 4
  %tmp_trace_block = alloca [32 x i64], align 8
  %tracer_event = alloca %struct.tracer_event, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2228576
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tmp_trace_block) #15
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tracer_event) #15
  %2 = call ptr @memset(ptr %tracer_event, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fw_tracer_handle_traces.__UNIQUE_ID_ddebug542, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fw_tracer_handle_traces, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %5 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid, align 8
  %owner = getelementptr i8, ptr %work, i32 -2228556
  %11 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %owner, align 4, !range !228
  %13 = zext i8 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fw_tracer_handle_traces.__UNIQUE_ID_ddebug542, ptr noundef %4, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53, i32 noundef 674, i32 noundef %10, i32 noundef %13) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %owner7 = getelementptr i8, ptr %work, i32 -2228556
  %14 = ptrtoint ptr %owner7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %owner7, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not = icmp eq i8 %15, 0
  br i1 %tobool8.not, label %do.end.cleanup70_crit_edge, label %if.end10

do.end.cleanup70_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup70

if.end10:                                         ; preds = %do.end
  %size = getelementptr i8, ptr %work, i32 -2228340
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  %div116 = lshr i32 %17, 8
  %consumer_index = getelementptr i8, ptr %work, i32 -2228332
  %18 = ptrtoint ptr %consumer_index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %consumer_index, align 4
  %mul = shl i32 %19, 8
  %log_buf = getelementptr i8, ptr %work, i32 -2228348
  %20 = ptrtoint ptr %log_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %log_buf, align 4
  %add.ptr13 = getelementptr i8, ptr %21, i32 %mul
  %22 = call ptr @memcpy(ptr %tmp_trace_block, ptr %add.ptr13, i32 256)
  %arrayidx = getelementptr inbounds [32 x i64], ptr %tmp_trace_block, i32 0, i32 31
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 8
  %25 = and i32 %24, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 16711680, i32 %25)
  %cmp.i = icmp eq i32 %25, 16711680
  br i1 %cmp.i, label %if.then.i, label %if.end10.get_block_timestamp.exit_crit_edge

if.end10.get_block_timestamp.exit_crit_edge:      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_block_timestamp.exit

if.then.i:                                        ; preds = %if.end10
  %shr.i.i = lshr i32 %24, 16
  %conv5.i.i = and i32 %shr.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv5.i.i)
  %cond.i.i = icmp eq i32 %conv5.i.i, 255
  br i1 %cond.i.i, label %sw.bb.i.i, label %sw.default.i.i

sw.bb.i.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %shr24.i.i = lshr i32 %24, 24
  %add.ptr26.i.i = getelementptr inbounds i32, ptr %arrayidx, i32 1
  %26 = ptrtoint ptr %add.ptr26.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr26.i.i, align 4
  %and31.i.i = and i32 %24, 8191
  %conv32.i.i = zext i32 %and31.i.i to i64
  %shl.i.i = shl nuw nsw i64 %conv32.i.i, 40
  %conv33.i.i = zext i32 %27 to i64
  %shl34.i.i = shl nuw nsw i64 %conv33.i.i, 8
  %or.i.i = or i64 %shl34.i.i, %shl.i.i
  %tracer_event.sroa.86.sroa.0.0.extract.shift10.i = lshr i64 %or.i.i, 32
  %tracer_event.sroa.86.sroa.0.0.extract.trunc11.i = trunc i64 %tracer_event.sroa.86.sroa.0.0.extract.shift10.i to i32
  %28 = trunc i64 %shl34.i.i to i32
  %tracer_event.sroa.86.sroa.7.0.extract.trunc12.i = or i32 %shr24.i.i, %28
  br label %get_block_timestamp.exit

sw.default.i.i:                                   ; preds = %if.then.i
  %str_db.i.i = getelementptr i8, ptr %work, i32 -2228460
  %29 = ptrtoint ptr %str_db.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %str_db.i.i, align 4
  %conv39.i.i = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i.i, i32 %conv39.i.i)
  %cmp40.not.i.i = icmp ult i32 %conv5.i.i, %conv39.i.i
  br i1 %cmp40.not.i.i, label %lor.lhs.false.i.i, label %sw.default.i.i.if.then51.i.i_crit_edge

sw.default.i.i.if.then51.i.i_crit_edge:           ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then51.i.i

lor.lhs.false.i.i:                                ; preds = %sw.default.i.i
  %num_string_trace.i.i = getelementptr i8, ptr %work, i32 -2228459
  %31 = ptrtoint ptr %num_string_trace.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_string_trace.i.i, align 1
  %conv48.i.i = zext i8 %32 to i32
  %add.i.i = add nuw nsw i32 %conv48.i.i, %conv39.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i.i, i32 %add.i.i)
  %cmp49.not.i.i = icmp ugt i32 %conv5.i.i, %add.i.i
  br i1 %cmp49.not.i.i, label %lor.lhs.false.i.i.get_block_timestamp.exit_crit_edge, label %lor.lhs.false.i.i.if.then51.i.i_crit_edge

lor.lhs.false.i.i.if.then51.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then51.i.i

lor.lhs.false.i.i.get_block_timestamp.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_block_timestamp.exit

if.then51.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then51.i.i_crit_edge, %sw.default.i.i.if.then51.i.i_crit_edge
  %shr54.i.i = lshr i32 %24, 24
  %and55.i.i = and i32 %shr54.i.i, 127
  %shr61.i.i = lshr i32 %24, 3
  %and62.i.i = and i32 %shr61.i.i, 8191
  br label %get_block_timestamp.exit

get_block_timestamp.exit:                         ; preds = %if.then51.i.i, %lor.lhs.false.i.i.get_block_timestamp.exit_crit_edge, %sw.bb.i.i, %if.end10.get_block_timestamp.exit_crit_edge
  %tracer_event.sroa.86.sroa.7.1.i = phi i32 [ %tracer_event.sroa.86.sroa.7.0.extract.trunc12.i, %sw.bb.i.i ], [ %and62.i.i, %if.then51.i.i ], [ -1, %lor.lhs.false.i.i.get_block_timestamp.exit_crit_edge ], [ 0, %if.end10.get_block_timestamp.exit_crit_edge ]
  %tracer_event.sroa.86.sroa.0.1.i = phi i32 [ %tracer_event.sroa.86.sroa.0.0.extract.trunc11.i, %sw.bb.i.i ], [ %and55.i.i, %if.then51.i.i ], [ -1, %lor.lhs.false.i.i.get_block_timestamp.exit_crit_edge ], [ 0, %if.end10.get_block_timestamp.exit_crit_edge ]
  %tracer_event.sroa.86.sroa.7.0.insert.ext.i = zext i32 %tracer_event.sroa.86.sroa.7.1.i to i64
  %tracer_event.sroa.86.sroa.0.0.insert.ext.i = zext i32 %tracer_event.sroa.86.sroa.0.1.i to i64
  %tracer_event.sroa.86.sroa.0.0.insert.shift.i = shl nuw i64 %tracer_event.sroa.86.sroa.0.0.insert.ext.i, 32
  %tracer_event.sroa.86.sroa.0.0.insert.insert.i = or i64 %tracer_event.sroa.86.sroa.0.0.insert.shift.i, %tracer_event.sroa.86.sroa.7.0.insert.ext.i
  %last_timestamp = getelementptr i8, ptr %work, i32 -8
  %33 = ptrtoint ptr %last_timestamp to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %last_timestamp, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %tracer_event.sroa.86.sroa.0.0.insert.insert.i, i64 %34)
  %cmp201 = icmp ugt i64 %tracer_event.sroa.86.sroa.0.0.insert.insert.i, %34
  br i1 %cmp201, label %while.body.lr.ph, label %get_block_timestamp.exit.while.end_crit_edge

get_block_timestamp.exit.while.end_crit_edge:     ; preds = %get_block_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %get_block_timestamp.exit
  %sub21 = add nsw i32 %div116, -1
  %str_db.i.i134 = getelementptr i8, ptr %work, i32 -2228460
  %num_string_trace.i.i138 = getelementptr i8, ptr %work, i32 -2228459
  %event_id.i = getelementptr inbounds %struct.tracer_event, ptr %tracer_event, i32 0, i32 2
  %type52.i = getelementptr inbounds %struct.tracer_event, ptr %tracer_event, i32 0, i32 1
  %35 = getelementptr inbounds %struct.tracer_event, ptr %tracer_event, i32 0, i32 3
  %string_param.i = getelementptr inbounds %struct.tracer_string_event, ptr %35, i32 0, i32 3
  %tmsn.i = getelementptr inbounds %struct.tracer_string_event, ptr %35, i32 0, i32 1
  %tdsn.i = getelementptr inbounds %struct.tracer_event, ptr %tracer_event, i32 0, i32 3, i32 0, i32 1
  %trc_ver.i = getelementptr i8, ptr %work, i32 -2228555
  %add.ptr26.i.i163 = getelementptr inbounds i32, ptr %arrayidx, i32 1
  br label %while.body

while.body:                                       ; preds = %get_block_timestamp.exit194.while.body_crit_edge, %while.body.lr.ph
  %36 = phi i64 [ %34, %while.body.lr.ph ], [ %104, %get_block_timestamp.exit194.while.body_crit_edge ]
  %block_timestamp.0202 = phi i64 [ %tracer_event.sroa.86.sroa.0.0.insert.insert.i, %while.body.lr.ph ], [ %tracer_event.sroa.86.sroa.0.0.insert.insert.i193, %get_block_timestamp.exit194.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %tobool17.not = icmp eq i64 %36, 0
  br i1 %tobool17.not, label %if.then18, label %while.body.for.body.preheader_crit_edge

while.body.for.body.preheader_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.preheader

for.body.preheader:                               ; preds = %get_block_timestamp.exit154.for.body.preheader_crit_edge, %while.body.for.body.preheader_crit_edge
  br label %for.body

if.then18:                                        ; preds = %while.body
  %37 = ptrtoint ptr %consumer_index to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %consumer_index, align 4
  %sub = add i32 %38, 16777215
  %and = and i32 %sub, %sub21
  %mul22 = shl i32 %and, 8
  %39 = ptrtoint ptr %log_buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %log_buf, align 4
  %add.ptr25 = getelementptr i8, ptr %40, i32 248
  %add.ptr27 = getelementptr i8, ptr %add.ptr25, i32 %mul22
  %41 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr27, align 4
  %43 = and i32 %42, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 16711680, i32 %43)
  %cmp.i117 = icmp eq i32 %43, 16711680
  br i1 %cmp.i117, label %if.then.i121, label %if.then18.get_block_timestamp.exit154_crit_edge

if.then18.get_block_timestamp.exit154_crit_edge:  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_block_timestamp.exit154

if.then.i121:                                     ; preds = %if.then18
  %shr.i.i118 = lshr i32 %42, 16
  %conv5.i.i119 = and i32 %shr.i.i118, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv5.i.i119)
  %cond.i.i120 = icmp eq i32 %conv5.i.i119, 255
  br i1 %cond.i.i120, label %sw.bb.i.i133, label %sw.default.i.i137

sw.bb.i.i133:                                     ; preds = %if.then.i121
  call void @__sanitizer_cov_trace_pc() #17
  %shr24.i.i122 = lshr i32 %42, 24
  %add.ptr26.i.i123 = getelementptr i32, ptr %add.ptr27, i32 1
  %44 = ptrtoint ptr %add.ptr26.i.i123 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr26.i.i123, align 4
  %and31.i.i124 = and i32 %42, 8191
  %conv32.i.i125 = zext i32 %and31.i.i124 to i64
  %shl.i.i126 = shl nuw nsw i64 %conv32.i.i125, 40
  %conv33.i.i127 = zext i32 %45 to i64
  %shl34.i.i128 = shl nuw nsw i64 %conv33.i.i127, 8
  %or.i.i129 = or i64 %shl34.i.i128, %shl.i.i126
  %tracer_event.sroa.86.sroa.0.0.extract.shift10.i130 = lshr i64 %or.i.i129, 32
  %tracer_event.sroa.86.sroa.0.0.extract.trunc11.i131 = trunc i64 %tracer_event.sroa.86.sroa.0.0.extract.shift10.i130 to i32
  %46 = trunc i64 %shl34.i.i128 to i32
  %tracer_event.sroa.86.sroa.7.0.extract.trunc12.i132 = or i32 %shr24.i.i122, %46
  br label %get_block_timestamp.exit154

sw.default.i.i137:                                ; preds = %if.then.i121
  %47 = ptrtoint ptr %str_db.i.i134 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %str_db.i.i134, align 4
  %conv39.i.i135 = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i.i119, i32 %conv39.i.i135)
  %cmp40.not.i.i136 = icmp ult i32 %conv5.i.i119, %conv39.i.i135
  br i1 %cmp40.not.i.i136, label %lor.lhs.false.i.i142, label %sw.default.i.i137.if.then51.i.i147_crit_edge

sw.default.i.i137.if.then51.i.i147_crit_edge:     ; preds = %sw.default.i.i137
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then51.i.i147

lor.lhs.false.i.i142:                             ; preds = %sw.default.i.i137
  %49 = ptrtoint ptr %num_string_trace.i.i138 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %num_string_trace.i.i138, align 1
  %conv48.i.i139 = zext i8 %50 to i32
  %add.i.i140 = add nuw nsw i32 %conv48.i.i139, %conv39.i.i135
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i.i119, i32 %add.i.i140)
  %cmp49.not.i.i141 = icmp ugt i32 %conv5.i.i119, %add.i.i140
  br i1 %cmp49.not.i.i141, label %lor.lhs.false.i.i142.get_block_timestamp.exit154_crit_edge, label %lor.lhs.false.i.i142.if.then51.i.i147_crit_edge

lor.lhs.false.i.i142.if.then51.i.i147_crit_edge:  ; preds = %lor.lhs.false.i.i142
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then51.i.i147

lor.lhs.false.i.i142.get_block_timestamp.exit154_crit_edge: ; preds = %lor.lhs.false.i.i142
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_block_timestamp.exit154

if.then51.i.i147:                                 ; preds = %lor.lhs.false.i.i142.if.then51.i.i147_crit_edge, %sw.default.i.i137.if.then51.i.i147_crit_edge
  %shr54.i.i143 = lshr i32 %42, 24
  %and55.i.i144 = and i32 %shr54.i.i143, 127
  %shr61.i.i145 = lshr i32 %42, 3
  %and62.i.i146 = and i32 %shr61.i.i145, 8191
  br label %get_block_timestamp.exit154

get_block_timestamp.exit154:                      ; preds = %if.then51.i.i147, %lor.lhs.false.i.i142.get_block_timestamp.exit154_crit_edge, %sw.bb.i.i133, %if.then18.get_block_timestamp.exit154_crit_edge
  %tracer_event.sroa.86.sroa.7.1.i148 = phi i32 [ %tracer_event.sroa.86.sroa.7.0.extract.trunc12.i132, %sw.bb.i.i133 ], [ %and62.i.i146, %if.then51.i.i147 ], [ -1, %lor.lhs.false.i.i142.get_block_timestamp.exit154_crit_edge ], [ 0, %if.then18.get_block_timestamp.exit154_crit_edge ]
  %tracer_event.sroa.86.sroa.0.1.i149 = phi i32 [ %tracer_event.sroa.86.sroa.0.0.extract.trunc11.i131, %sw.bb.i.i133 ], [ %and55.i.i144, %if.then51.i.i147 ], [ -1, %lor.lhs.false.i.i142.get_block_timestamp.exit154_crit_edge ], [ 0, %if.then18.get_block_timestamp.exit154_crit_edge ]
  %tracer_event.sroa.86.sroa.7.0.insert.ext.i150 = zext i32 %tracer_event.sroa.86.sroa.7.1.i148 to i64
  %tracer_event.sroa.86.sroa.0.0.insert.ext.i151 = zext i32 %tracer_event.sroa.86.sroa.0.1.i149 to i64
  %tracer_event.sroa.86.sroa.0.0.insert.shift.i152 = shl nuw i64 %tracer_event.sroa.86.sroa.0.0.insert.ext.i151, 32
  %tracer_event.sroa.86.sroa.0.0.insert.insert.i153 = or i64 %tracer_event.sroa.86.sroa.0.0.insert.shift.i152, %tracer_event.sroa.86.sroa.7.0.insert.ext.i150
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %tracer_event.sroa.86.sroa.0.0.insert.insert.i153)
  %cmp30.not = icmp eq i64 %tracer_event.sroa.86.sroa.0.0.insert.insert.i153, 0
  br i1 %cmp30.not, label %get_block_timestamp.exit154.for.body.preheader_crit_edge, label %cleanup

get_block_timestamp.exit154.for.body.preheader_crit_edge: ; preds = %get_block_timestamp.exit154
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.preheader

cleanup:                                          ; preds = %get_block_timestamp.exit154
  call void @__sanitizer_cov_trace_pc() #17
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 8
  %53 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i155 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i155 to ptr
  %task38 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task38 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task38, align 8
  %pid39 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 68
  %57 = ptrtoint ptr %pid39 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pid39, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %52, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef 710, i32 noundef %58) #21
  %59 = ptrtoint ptr %last_timestamp to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %block_timestamp.0202, ptr %last_timestamp, align 8
  %60 = ptrtoint ptr %consumer_index to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %consumer_index, align 4
  %add = add i32 %61, 1
  %and44 = and i32 %add, %sub21
  store i32 %and44, ptr %consumer_index, align 4
  br label %while.end

for.body:                                         ; preds = %poll_trace.exit.for.body_crit_edge, %for.body.preheader
  %i.0200 = phi i32 [ %inc, %poll_trace.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx51 = getelementptr [32 x i64], ptr %tmp_trace_block, i32 0, i32 %i.0200
  %62 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx51, align 8
  %shr.i = lshr i32 %63, 16
  %conv.i = trunc i32 %shr.i to i8
  %64 = ptrtoint ptr %event_id.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv.i, ptr %event_id.i, align 8
  %.lobit.i = lshr i32 %63, 31
  %65 = trunc i32 %.lobit.i to i8
  %66 = ptrtoint ptr %tracer_event to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %tracer_event, align 8
  %conv5.i = and i32 %shr.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv5.i)
  %cond.i = icmp eq i32 %conv5.i, 255
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %67 = ptrtoint ptr %type52.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 255, ptr %type52.i, align 4
  %68 = ptrtoint ptr %trc_ver.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %trc_ver.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp.i156 = icmp eq i8 %69, 0
  %..i = select i1 %cmp.i156, i32 15, i32 13
  %70 = lshr i32 %63, %..i
  %.sink.in.i = trunc i32 %70 to i8
  %.sink.i = and i8 %.sink.in.i, 1
  %71 = ptrtoint ptr %tdsn.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %.sink.i, ptr %tdsn.i, align 8
  %shr24.i = lshr i32 %63, 24
  %add.ptr26.i = getelementptr i32, ptr %arrayidx51, i32 1
  %72 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr26.i, align 4
  %and31.i = and i32 %63, 8191
  %conv32.i = zext i32 %and31.i to i64
  %shl.i = shl nuw nsw i64 %conv32.i, 40
  %conv33.i = zext i32 %73 to i64
  %shl34.i = shl nuw nsw i64 %conv33.i, 8
  %or.i = or i64 %shl34.i, %shl.i
  %conv35.i = zext i32 %shr24.i to i64
  %or36.i = or i64 %or.i, %conv35.i
  %74 = ptrtoint ptr %35 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %or36.i, ptr %35, align 8
  br label %poll_trace.exit

sw.default.i:                                     ; preds = %for.body
  %75 = ptrtoint ptr %str_db.i.i134 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %str_db.i.i134, align 4
  %conv39.i = zext i8 %76 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i, i32 %conv39.i)
  %cmp40.not.i = icmp ult i32 %conv5.i, %conv39.i
  br i1 %cmp40.not.i, label %lor.lhs.false.i, label %sw.default.i.if.then51.i_crit_edge

sw.default.i.if.then51.i_crit_edge:               ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then51.i

lor.lhs.false.i:                                  ; preds = %sw.default.i
  %77 = ptrtoint ptr %num_string_trace.i.i138 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %num_string_trace.i.i138, align 1
  %conv48.i = zext i8 %78 to i32
  %add.i = add nuw nsw i32 %conv48.i, %conv39.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i, i32 %add.i)
  %cmp49.not.i = icmp ugt i32 %conv5.i, %add.i
  br i1 %cmp49.not.i, label %if.else66.i, label %lor.lhs.false.i.if.then51.i_crit_edge

lor.lhs.false.i.if.then51.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then51.i

if.then51.i:                                      ; preds = %lor.lhs.false.i.if.then51.i_crit_edge, %sw.default.i.if.then51.i_crit_edge
  %79 = ptrtoint ptr %type52.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %type52.i, align 4
  %shr54.i = lshr i32 %63, 24
  %and55.i = and i32 %shr54.i, 127
  %80 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %and55.i, ptr %35, align 8
  %add.ptr57.i = getelementptr i32, ptr %arrayidx51, i32 1
  %81 = ptrtoint ptr %add.ptr57.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr57.i, align 4
  %83 = ptrtoint ptr %string_param.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %string_param.i, align 4
  %shr61.i = lshr i32 %63, 3
  %and62.i = and i32 %shr61.i, 8191
  %84 = ptrtoint ptr %tmsn.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %and62.i, ptr %tmsn.i, align 4
  %and65.i = and i32 %63, 7
  %85 = ptrtoint ptr %tdsn.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %and65.i, ptr %tdsn.i, align 8
  br label %poll_trace.exit

if.else66.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  %86 = ptrtoint ptr %type52.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 256, ptr %type52.i, align 4
  br label %poll_trace.exit

poll_trace.exit:                                  ; preds = %if.else66.i, %if.then51.i, %sw.bb.i
  call fastcc void @mlx5_tracer_handle_trace(ptr noundef %add.ptr, ptr noundef nonnull %tracer_event)
  %inc = add nuw nsw i32 %i.0200, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %poll_trace.exit.for.body_crit_edge

poll_trace.exit.for.body_crit_edge:               ; preds = %poll_trace.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %poll_trace.exit
  %87 = ptrtoint ptr %consumer_index to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %consumer_index, align 4
  %add55 = add i32 %88, 1
  %and57 = and i32 %add55, %sub21
  store i32 %and57, ptr %consumer_index, align 4
  %89 = ptrtoint ptr %last_timestamp to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %block_timestamp.0202, ptr %last_timestamp, align 8
  %mul63 = shl i32 %and57, 8
  %90 = ptrtoint ptr %log_buf to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %log_buf, align 4
  %add.ptr67 = getelementptr i8, ptr %91, i32 %mul63
  %92 = call ptr @memcpy(ptr %tmp_trace_block, ptr %add.ptr67, i32 256)
  %93 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx, align 8
  %95 = and i32 %94, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 16711680, i32 %95)
  %cmp.i157 = icmp eq i32 %95, 16711680
  br i1 %cmp.i157, label %if.then.i161, label %for.end.get_block_timestamp.exit194_crit_edge

for.end.get_block_timestamp.exit194_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_block_timestamp.exit194

if.then.i161:                                     ; preds = %for.end
  %shr.i.i158 = lshr i32 %94, 16
  %conv5.i.i159 = and i32 %shr.i.i158, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv5.i.i159)
  %cond.i.i160 = icmp eq i32 %conv5.i.i159, 255
  br i1 %cond.i.i160, label %sw.bb.i.i173, label %sw.default.i.i177

sw.bb.i.i173:                                     ; preds = %if.then.i161
  call void @__sanitizer_cov_trace_pc() #17
  %shr24.i.i162 = lshr i32 %94, 24
  %96 = ptrtoint ptr %add.ptr26.i.i163 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr26.i.i163, align 4
  %and31.i.i164 = and i32 %94, 8191
  %conv32.i.i165 = zext i32 %and31.i.i164 to i64
  %shl.i.i166 = shl nuw nsw i64 %conv32.i.i165, 40
  %conv33.i.i167 = zext i32 %97 to i64
  %shl34.i.i168 = shl nuw nsw i64 %conv33.i.i167, 8
  %or.i.i169 = or i64 %shl34.i.i168, %shl.i.i166
  %tracer_event.sroa.86.sroa.0.0.extract.shift10.i170 = lshr i64 %or.i.i169, 32
  %tracer_event.sroa.86.sroa.0.0.extract.trunc11.i171 = trunc i64 %tracer_event.sroa.86.sroa.0.0.extract.shift10.i170 to i32
  %98 = trunc i64 %shl34.i.i168 to i32
  %tracer_event.sroa.86.sroa.7.0.extract.trunc12.i172 = or i32 %shr24.i.i162, %98
  br label %get_block_timestamp.exit194

sw.default.i.i177:                                ; preds = %if.then.i161
  %99 = ptrtoint ptr %str_db.i.i134 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %str_db.i.i134, align 4
  %conv39.i.i175 = zext i8 %100 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i.i159, i32 %conv39.i.i175)
  %cmp40.not.i.i176 = icmp ult i32 %conv5.i.i159, %conv39.i.i175
  br i1 %cmp40.not.i.i176, label %lor.lhs.false.i.i182, label %sw.default.i.i177.if.then51.i.i187_crit_edge

sw.default.i.i177.if.then51.i.i187_crit_edge:     ; preds = %sw.default.i.i177
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then51.i.i187

lor.lhs.false.i.i182:                             ; preds = %sw.default.i.i177
  %101 = ptrtoint ptr %num_string_trace.i.i138 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %num_string_trace.i.i138, align 1
  %conv48.i.i179 = zext i8 %102 to i32
  %add.i.i180 = add nuw nsw i32 %conv48.i.i179, %conv39.i.i175
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i.i159, i32 %add.i.i180)
  %cmp49.not.i.i181 = icmp ugt i32 %conv5.i.i159, %add.i.i180
  br i1 %cmp49.not.i.i181, label %lor.lhs.false.i.i182.get_block_timestamp.exit194_crit_edge, label %lor.lhs.false.i.i182.if.then51.i.i187_crit_edge

lor.lhs.false.i.i182.if.then51.i.i187_crit_edge:  ; preds = %lor.lhs.false.i.i182
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then51.i.i187

lor.lhs.false.i.i182.get_block_timestamp.exit194_crit_edge: ; preds = %lor.lhs.false.i.i182
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_block_timestamp.exit194

if.then51.i.i187:                                 ; preds = %lor.lhs.false.i.i182.if.then51.i.i187_crit_edge, %sw.default.i.i177.if.then51.i.i187_crit_edge
  %shr54.i.i183 = lshr i32 %94, 24
  %and55.i.i184 = and i32 %shr54.i.i183, 127
  %shr61.i.i185 = lshr i32 %94, 3
  %and62.i.i186 = and i32 %shr61.i.i185, 8191
  br label %get_block_timestamp.exit194

get_block_timestamp.exit194:                      ; preds = %if.then51.i.i187, %lor.lhs.false.i.i182.get_block_timestamp.exit194_crit_edge, %sw.bb.i.i173, %for.end.get_block_timestamp.exit194_crit_edge
  %tracer_event.sroa.86.sroa.7.1.i188 = phi i32 [ %tracer_event.sroa.86.sroa.7.0.extract.trunc12.i172, %sw.bb.i.i173 ], [ %and62.i.i186, %if.then51.i.i187 ], [ -1, %lor.lhs.false.i.i182.get_block_timestamp.exit194_crit_edge ], [ 0, %for.end.get_block_timestamp.exit194_crit_edge ]
  %tracer_event.sroa.86.sroa.0.1.i189 = phi i32 [ %tracer_event.sroa.86.sroa.0.0.extract.trunc11.i171, %sw.bb.i.i173 ], [ %and55.i.i184, %if.then51.i.i187 ], [ -1, %lor.lhs.false.i.i182.get_block_timestamp.exit194_crit_edge ], [ 0, %for.end.get_block_timestamp.exit194_crit_edge ]
  %tracer_event.sroa.86.sroa.7.0.insert.ext.i190 = zext i32 %tracer_event.sroa.86.sroa.7.1.i188 to i64
  %tracer_event.sroa.86.sroa.0.0.insert.ext.i191 = zext i32 %tracer_event.sroa.86.sroa.0.1.i189 to i64
  %tracer_event.sroa.86.sroa.0.0.insert.shift.i192 = shl nuw i64 %tracer_event.sroa.86.sroa.0.0.insert.ext.i191, 32
  %tracer_event.sroa.86.sroa.0.0.insert.insert.i193 = or i64 %tracer_event.sroa.86.sroa.0.0.insert.shift.i192, %tracer_event.sroa.86.sroa.7.0.insert.ext.i190
  %103 = ptrtoint ptr %last_timestamp to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %last_timestamp, align 8
  %cmp = icmp ugt i64 %tracer_event.sroa.86.sroa.0.0.insert.insert.i193, %104
  br i1 %cmp, label %get_block_timestamp.exit194.while.body_crit_edge, label %get_block_timestamp.exit194.while.end_crit_edge

get_block_timestamp.exit194.while.end_crit_edge:  ; preds = %get_block_timestamp.exit194
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

get_block_timestamp.exit194.while.body_crit_edge: ; preds = %get_block_timestamp.exit194
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %get_block_timestamp.exit194.while.end_crit_edge, %cleanup, %get_block_timestamp.exit.while.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out.i) #15
  %105 = call ptr @memset(ptr %out.i, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in.i) #15
  %106 = getelementptr inbounds i8, ptr %in.i, i32 4
  %107 = call ptr @memset(ptr %106, i32 0, i32 60)
  %108 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 134217728, ptr %in.i, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in.i, i32 noundef 64, ptr noundef nonnull %out.i, i32 noundef 64, i16 noundef zeroext -28605, i32 noundef 0, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.end.mlx5_fw_tracer_arm.exit_crit_edge, label %do.end11.i

while.end.mlx5_fw_tracer_arm.exit_crit_edge:      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5_fw_tracer_arm.exit

do.end11.i:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %1, align 8
  %111 = call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i.i = and i32 %111, -16384
  %112 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %114, i32 0, i32 68
  %115 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pid.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %110, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 349, i32 noundef %116, i32 noundef %call.i) #21
  br label %mlx5_fw_tracer_arm.exit

mlx5_fw_tracer_arm.exit:                          ; preds = %do.end11.i, %while.end.mlx5_fw_tracer_arm.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i) #15
  br label %cleanup70

cleanup70:                                        ; preds = %mlx5_fw_tracer_arm.exit, %do.end.cleanup70_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tracer_event) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tmp_trace_block) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_query_mtrc_caps(ptr nocapture noundef %tracer) unnamed_addr #0 align 64 {
entry:
  %out = alloca [32 x i32], align 4
  %in = alloca [32 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %str_db = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 7
  %base_address_out = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 7, i32 3
  %size_out = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tracer, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %out) #15
  %2 = call ptr @memset(ptr %out, i32 0, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %in) #15
  %3 = call ptr @memset(ptr %in, i32 0, i32 128)
  %call = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in, i32 noundef 128, ptr noundef nonnull %out, i32 noundef 128, i16 noundef zeroext -28608, i32 noundef 0, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef 51, i32 noundef %11, i32 noundef %call) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %out, align 4
  %14 = and i32 %13, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %do.body10, label %if.end23

do.body10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_query_mtrc_caps.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_query_mtrc_caps, %if.then15)) #15
          to label %cleanup [label %if.then15], !srcloc !229

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %17 = call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i93 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i93 to ptr
  %task18 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task18, align 8
  %pid19 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = ptrtoint ptr %pid19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid19, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_query_mtrc_caps.__UNIQUE_ID_ddebug516, ptr noundef %16, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.70, i32 noundef 56, i32 noundef %22) #15
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %shr26 = lshr i32 %13, 24
  %23 = trunc i32 %shr26 to i8
  %conv = and i8 %23, 3
  %trc_ver = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 3
  %24 = ptrtoint ptr %trc_ver to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %trc_ver, align 1
  %add.ptr29 = getelementptr inbounds i32, ptr %out, i32 1
  %25 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr29, align 4
  %shr30 = lshr i32 %26, 24
  %conv32 = trunc i32 %shr30 to i8
  %27 = ptrtoint ptr %str_db to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv32, ptr %str_db, align 4
  %shr36 = lshr i32 %26, 16
  %conv38 = trunc i32 %shr36 to i8
  %num_string_trace = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 7, i32 1
  %28 = ptrtoint ptr %num_string_trace to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv38, ptr %num_string_trace, align 1
  %and43 = and i32 %13, 15
  %num_string_db = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 7, i32 2
  %29 = ptrtoint ptr %num_string_db to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and43, ptr %num_string_db, align 4
  %owner = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 2
  %.lobit = lshr i32 %13, 31
  %30 = trunc i32 %.lobit to i8
  %31 = ptrtoint ptr %owner to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %owner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %cmp95.not = icmp eq i32 %and43, 0
  br i1 %cmp95.not, label %if.end23.cleanup_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  br label %for.body

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end23.for.body_crit_edge
  %i.096 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end23.for.body_crit_edge ]
  %32 = shl i32 %i.096, 6
  %33 = add i32 %32, 128
  %div92 = lshr exact i32 %33, 3
  %add.ptr59 = getelementptr i8, ptr %out, i32 %div92
  %34 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr59, align 4
  %arrayidx = getelementptr i32, ptr %base_address_out, i32 %i.096
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx, align 4
  %add.ptr63 = getelementptr i32, ptr %add.ptr59, i32 1
  %37 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr63, align 4
  %and65 = and i32 %38, 16777215
  %arrayidx66 = getelementptr i32, ptr %size_out, i32 %i.096
  %39 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and65, ptr %arrayidx66, align 4
  %inc = add nuw i32 %i.096, 1
  %40 = ptrtoint ptr %num_string_db to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_string_db, align 4
  %cmp = icmp ult i32 %inc, %41
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.then15, %do.body10, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -524, %if.then15 ], [ -524, %do.body10 ], [ 0, %if.end23.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %in) #15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %out) #15
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_fw_tracer_destroy_log_buf(ptr nocapture noundef readonly %tracer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %log_buf = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %log_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log_buf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tracer, align 8
  %pdev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %dma = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma, align 8
  %size = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 8, i32 3
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i, i32 noundef %7, i32 noundef %9, i32 noundef 2, i32 noundef 0) #15
  %10 = ptrtoint ptr %log_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %log_buf, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 4
  %dec.i = add i32 %14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i = lshr i32 %dec.i, 12
  %15 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #15, !range !230
  %sub.i.i = sub nuw nsw i32 32, %15
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  tail call void @free_pages(i32 noundef %12, i32 noundef %cond.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fw_tracer_init(ptr noundef %tracer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %tracer, null
  %cmp.i = icmp ugt ptr %tracer, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tracer, align 8
  %loaded = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 7, i32 6
  %2 = ptrtoint ptr %loaded to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %loaded, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %work_queue = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 4
  %4 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %work_queue, align 8
  %read_fw_strings_work = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 6
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %read_fw_strings_work) #15
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %buff = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 8
  %call5 = tail call i32 @mlx5_core_alloc_pd(ptr noundef %1, ptr noundef %buff) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %8 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 1009, i32 noundef %13, i32 noundef %call5) #21
  br label %err_cancel_work

if.end9:                                          ; preds = %if.end4
  %14 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tracer, align 8
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 784, i32 noundef 3520, i32 noundef -1) #20
  %tobool.not.i76 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i76, label %if.end9.do.end15_crit_edge, label %do.body.i

if.end9.do.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

do.body.i:                                        ; preds = %if.end9
  %add.ptr.i = getelementptr i32, ptr %call.i.i.i, i32 24
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 32, ptr %add.ptr.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %call.i.i.i, i32 272
  %dma.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 8, i32 2
  %17 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body.i
  %i.0195.i = phi i32 [ 0, %do.body.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %i.0195.i, 12
  %add.i = add i32 %mul.i, %18
  %conv.i = zext i32 %add.i to i64
  %arrayidx.i = getelementptr i64, ptr %add.ptr7.i, i32 %i.0195.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv.i, ptr %arrayidx.i, align 8
  %inc.i = add nuw nsw i32 %i.0195.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %add.ptr8.i = getelementptr i8, ptr %call.i.i.i, i32 16
  %20 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr8.i, align 4
  %and15.i = and i32 %21, -3841
  %or44.i = or i32 %and15.i, 3328
  store i32 %or44.i, ptr %add.ptr8.i, align 4
  %22 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buff, align 8
  %add.ptr54.i = getelementptr i8, ptr %call.i.i.i, i32 28
  %24 = ptrtoint ptr %add.ptr54.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr54.i, align 4
  %and55.i = and i32 %25, -16777216
  %and56.i = and i32 %23, 16777215
  %or58.i = or i32 %and55.i, %and56.i
  store i32 %or58.i, ptr %add.ptr54.i, align 4
  %add.ptr67.i = getelementptr i8, ptr %call.i.i.i, i32 48
  %26 = ptrtoint ptr %add.ptr67.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %add.ptr67.i, align 4
  %add.ptr80.i = getelementptr i8, ptr %call.i.i.i, i32 20
  %27 = ptrtoint ptr %add.ptr80.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr80.i, align 4
  %or84.i = or i32 %28, -256
  store i32 %or84.i, ptr %add.ptr80.i, align 4
  %add.ptr93.i = getelementptr i8, ptr %call.i.i.i, i32 72
  %29 = ptrtoint ptr %add.ptr93.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr93.i, align 4
  %and94.i = and i32 %30, -32
  %or97.i = or i32 %and94.i, 12
  store i32 %or97.i, ptr %add.ptr93.i, align 4
  %add.ptr106.i = getelementptr i8, ptr %call.i.i.i, i32 68
  %31 = ptrtoint ptr %add.ptr106.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 32, ptr %add.ptr106.i, align 4
  %conv124.i = zext i32 %18 to i64
  %add.ptr125.i = getelementptr i8, ptr %call.i.i.i, i32 32
  %32 = ptrtoint ptr %add.ptr125.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv124.i, ptr %add.ptr125.i, align 8
  %size.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 8, i32 3
  %33 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size.i, align 4
  %conv139.i = zext i32 %34 to i64
  %add.ptr140.i = getelementptr i8, ptr %call.i.i.i, i32 40
  %35 = ptrtoint ptr %add.ptr140.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv139.i, ptr %add.ptr140.i, align 8
  %mkey.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 8, i32 4
  %call146.i = tail call i32 @mlx5_core_create_mkey(ptr noundef %15, ptr noundef %mkey.i, ptr noundef nonnull %call.i.i.i, i32 noundef 784) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i)
  %tobool147.not.i = icmp eq i32 %call146.i, 0
  br i1 %tobool147.not.i, label %do.body21, label %mlx5_fw_tracer_create_mkey.exit

mlx5_fw_tracer_create_mkey.exit:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %15, align 8
  %38 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 68
  %42 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, i32 noundef 211, i32 noundef %43, i32 noundef %call146.i) #21
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #15
  br label %do.end15

do.end15:                                         ; preds = %mlx5_fw_tracer_create_mkey.exit, %if.end9.do.end15_crit_edge
  %retval.0.i81 = phi i32 [ %call146.i, %mlx5_fw_tracer_create_mkey.exit ], [ -12, %if.end9.do.end15_crit_edge ]
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %46 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i77 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i77 to ptr
  %task18 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task18 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task18, align 8
  %pid19 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 68
  %50 = ptrtoint ptr %pid19 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pid19, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef 1015, i32 noundef %51, i32 noundef %retval.0.i81) #21
  br label %err_dealloc_pd

do.body21:                                        ; preds = %for.end.i
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #15
  %nb = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 1
  %52 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @fw_tracer_event, ptr %nb, align 4
  %event_type = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %event_type to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 38, ptr %event_type, align 4
  %call27 = tail call i32 @mlx5_eq_notifier_register(ptr noundef %1, ptr noundef %nb) #15
  %call28 = tail call fastcc i32 @mlx5_fw_tracer_start(ptr noundef %tracer)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %do.body21.cleanup_crit_edge, label %do.end33

do.body21.cleanup_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end33:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #17
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 8
  %56 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i78 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i78 to ptr
  %task36 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task36 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task36, align 8
  %pid37 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 68
  %60 = ptrtoint ptr %pid37 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pid37, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %55, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21, i32 noundef 1024, i32 noundef %61, i32 noundef %call28) #21
  %call40 = tail call i32 @mlx5_eq_notifier_unregister(ptr noundef %1, ptr noundef %nb) #15
  %62 = ptrtoint ptr %mkey.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mkey.i, align 8
  %call42 = tail call i32 @mlx5_core_destroy_mkey(ptr noundef %1, i32 noundef %63) #15
  br label %err_dealloc_pd

err_dealloc_pd:                                   ; preds = %do.end33, %do.end15
  %err.0 = phi i32 [ %retval.0.i81, %do.end15 ], [ %call28, %do.end33 ]
  %64 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %buff, align 8
  %call45 = tail call i32 @mlx5_core_dealloc_pd(ptr noundef %1, i32 noundef %65) #15
  br label %err_cancel_work

err_cancel_work:                                  ; preds = %err_dealloc_pd, %do.end
  %err.1 = phi i32 [ %call5, %do.end ], [ %err.0, %err_dealloc_pd ]
  %read_fw_strings_work46 = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 6
  %call47 = tail call zeroext i1 @cancel_work_sync(ptr noundef %read_fw_strings_work46) #15
  br label %cleanup

cleanup:                                          ; preds = %err_cancel_work, %do.body21.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_cancel_work ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.body21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_alloc_pd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_tracer_event(ptr noundef %nb, i32 noundef %action, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %nb, i32 -4
  %0 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr3, align 8
  %sub_type = getelementptr inbounds %struct.mlx5_eqe, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %sub_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sub_type, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %do.body [
    i8 0, label %sw.bb
    i8 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %work_queue = getelementptr i8, ptr %nb, i32 20
  %5 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %work_queue, align 8
  %ownership_change_work = getelementptr i8, ptr %nb, i32 24
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %ownership_change_work) #15
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %loaded = getelementptr i8, ptr %nb, i32 216
  %7 = ptrtoint ptr %loaded to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %loaded, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %sw.bb5.sw.epilog_crit_edge, label %if.then, !prof !226

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #17
  %work_queue8 = getelementptr i8, ptr %nb, i32 20
  %9 = ptrtoint ptr %work_queue8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %work_queue8, align 8
  %handle_traces_work = getelementptr i8, ptr %nb, i32 2228572
  %call.i30 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %handle_traces_work) #15
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_tracer_event.__UNIQUE_ID_ddebug559, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_tracer_event, %if.then19)) #15
          to label %sw.epilog [label %if.then19], !srcloc !229

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %13 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 68
  %17 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pid, align 8
  %19 = ptrtoint ptr %sub_type to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sub_type, align 1
  %conv22 = zext i8 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fw_tracer_event.__UNIQUE_ID_ddebug559, ptr noundef %12, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.95, i32 noundef 1144, i32 noundef %18, i32 noundef %conv22) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then19, %do.body, %if.then, %sw.bb5.sw.epilog_crit_edge, %sw.bb
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_fw_tracer_start(ptr nocapture noundef %tracer) unnamed_addr #0 align 64 {
entry:
  %in.i.i83 = alloca [32 x i32], align 4
  %out.i84 = alloca [32 x i32], align 4
  %out.i76 = alloca [16 x i32], align 4
  %in.i77 = alloca [16 x i32], align 4
  %out.i69 = alloca [32 x i32], align 4
  %in.i = alloca [32 x i32], align 4
  %in.i.i = alloca [32 x i32], align 4
  %out.i = alloca [32 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tracer, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %out.i) #15
  %2 = call ptr @memset(ptr %out.i, i32 0, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %in.i.i) #15
  %3 = getelementptr inbounds i8, ptr %in.i.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 124)
  %5 = ptrtoint ptr %in.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -2147483648, ptr %in.i.i, align 4
  %call.i.i = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in.i.i, i32 noundef 128, ptr noundef nonnull %out.i, i32 noundef 128, i16 noundef zeroext -28608, i32 noundef 0, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %in.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %8 = call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, i32 noundef 103, i32 noundef %13, i32 noundef %call.i.i) #21
  br label %do.body

if.end.i:                                         ; preds = %entry
  %14 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %out.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.i = icmp slt i32 %15, 0
  %owner.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 2
  %.lobit.i = lshr i32 %15, 31
  %16 = trunc i32 %.lobit.i to i8
  %17 = ptrtoint ptr %owner.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %owner.i, align 4
  br i1 %tobool4.i, label %if.end8, label %if.end.i.do.body_crit_edge

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.body:                                          ; preds = %if.end.i.do.body_crit_edge, %do.end.i
  %retval.0.i68.ph = phi i32 [ -16, %if.end.i.do.body_crit_edge ], [ %call.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %out.i) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fw_tracer_start.__UNIQUE_ID_ddebug549, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fw_tracer_start, %if.then6)) #15
          to label %cleanup [label %if.then6], !srcloc !229

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %20 = call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fw_tracer_start.__UNIQUE_ID_ddebug549, ptr noundef %19, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.82, i32 noundef 785, i32 noundef %25, i32 noundef %retval.0.i68.ph) #15
  br label %cleanup

if.end8:                                          ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %out.i) #15
  %26 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tracer, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %out.i69) #15
  %28 = call ptr @memset(ptr %out.i69, i32 0, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %in.i) #15
  %29 = getelementptr inbounds i8, ptr %in.i, i32 12
  %30 = call ptr @memset(ptr %29, i32 0, i32 116)
  %31 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %in.i, align 4
  %add.ptr14.i = getelementptr inbounds i32, ptr %in.i, i32 1
  %32 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 6, ptr %add.ptr14.i, align 4
  %mkey.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 8, i32 4
  %33 = ptrtoint ptr %mkey.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mkey.i, align 8
  %add.ptr29.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %35 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %add.ptr29.i, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %27, ptr noundef nonnull %in.i, i32 noundef 128, ptr noundef nonnull %out.i69, i32 noundef 128, i16 noundef zeroext -28607, i32 noundef 0, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i70 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i70, label %if.end19, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %27, align 8
  %38 = call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i.i71 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i71 to ptr
  %task.i72 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i72 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i72, align 8
  %pid.i73 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 68
  %42 = ptrtoint ptr %pid.i73 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pid.i73, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, i32 noundef 753, i32 noundef %43, i32 noundef %call.i) #21
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %in.i) #15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %out.i69) #15
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %46 = call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i75 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i75 to ptr
  %task17 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task17 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task17, align 8
  %pid18 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 68
  %50 = ptrtoint ptr %pid18 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pid18, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.82, i32 noundef 792, i32 noundef %51, i32 noundef %call.i) #21
  br label %release_ownership

if.end19:                                         ; preds = %if.end8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %in.i) #15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %out.i69) #15
  %52 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tracer, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out.i76) #15
  %54 = call ptr @memset(ptr %out.i76, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in.i77) #15
  %55 = getelementptr inbounds i8, ptr %in.i77, i32 4
  %56 = call ptr @memset(ptr %55, i32 0, i32 60)
  %57 = ptrtoint ptr %in.i77 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1207959553, ptr %in.i77, align 4
  %call.i78 = call i32 @mlx5_core_access_reg(ptr noundef %53, ptr noundef nonnull %in.i77, i32 noundef 64, ptr noundef nonnull %out.i76, i32 noundef 64, i16 noundef zeroext -28605, i32 noundef 0, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool.not.i79 = icmp eq i32 %call.i78, 0
  br i1 %tobool.not.i79, label %do.body31, label %do.end25

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i77) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i76) #15
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 8
  %60 = call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i81 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i81 to ptr
  %task28 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task28 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task28, align 8
  %pid29 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 68
  %64 = ptrtoint ptr %pid29 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pid29, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %59, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.82, i32 noundef 799, i32 noundef %65, i32 noundef %call.i78) #21
  br label %release_ownership

do.body31:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %last_timestamp.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 10
  %66 = ptrtoint ptr %last_timestamp.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 0, ptr %last_timestamp.i, align 8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i77) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i76) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fw_tracer_start.__UNIQUE_ID_ddebug550, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fw_tracer_start, %if.then43)) #15
          to label %cleanup [label %if.then43], !srcloc !229

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #17
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 8
  %69 = call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i82 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i82 to ptr
  %task46 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %task46 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %task46, align 8
  %pid47 = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 68
  %73 = ptrtoint ptr %pid47 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pid47, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fw_tracer_start.__UNIQUE_ID_ddebug550, ptr noundef %68, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.82, i32 noundef 803, i32 noundef %74) #15
  br label %cleanup

release_ownership:                                ; preds = %do.end25, %do.end14
  %err.0 = phi i32 [ %call.i, %do.end14 ], [ %call.i78, %do.end25 ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %out.i84) #15
  %75 = call ptr @memset(ptr %out.i84, i32 0, i32 128)
  %76 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tracer, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %in.i.i83) #15
  %78 = call ptr @memset(ptr %in.i.i83, i32 0, i32 128)
  %call.i.i85 = call i32 @mlx5_core_access_reg(ptr noundef %77, ptr noundef nonnull %in.i.i83, i32 noundef 128, ptr noundef nonnull %out.i84, i32 noundef 128, i16 noundef zeroext -28608, i32 noundef 0, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %in.i.i83) #15
  %79 = ptrtoint ptr %owner.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %owner.i, align 4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %out.i84) #15
  br label %cleanup

cleanup:                                          ; preds = %release_ownership, %if.then43, %do.body31, %if.then6, %do.body
  %retval.0 = phi i32 [ %err.0, %release_ownership ], [ 0, %if.then6 ], [ 0, %if.then43 ], [ 0, %do.body ], [ 0, %do.body31 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_destroy_mkey(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_dealloc_pd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_fw_tracer_cleanup(ptr noundef %tracer) local_unnamed_addr #0 align 64 {
entry:
  %in.i.i = alloca [32 x i32], align 4
  %out.i = alloca [32 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %tracer, null
  %cmp.i = icmp ugt ptr %tracer, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fw_tracer_cleanup.__UNIQUE_ID_ddebug556, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fw_tracer_cleanup, %if.then4)) #15
          to label %do.end [label %if.then4], !srcloc !229

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tracer, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  %owner = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 2
  %10 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %owner, align 4, !range !228
  %12 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fw_tracer_cleanup.__UNIQUE_ID_ddebug556, ptr noundef %3, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef 1046, i32 noundef %9, i32 noundef %12) #15
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %13 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tracer, align 8
  %nb = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 1
  %call9 = tail call i32 @mlx5_eq_notifier_unregister(ptr noundef %14, ptr noundef %nb) #15
  %ownership_change_work = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 5
  %call10 = tail call zeroext i1 @cancel_work_sync(ptr noundef %ownership_change_work) #15
  %handle_traces_work = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 11
  %call11 = tail call zeroext i1 @cancel_work_sync(ptr noundef %handle_traces_work) #15
  %owner12 = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 2
  %15 = ptrtoint ptr %owner12 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %owner12, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool13.not = icmp eq i8 %16, 0
  br i1 %tobool13.not, label %do.end.if.end15_crit_edge, label %if.then14

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %out.i) #15
  %17 = call ptr @memset(ptr %out.i, i32 0, i32 128)
  %18 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tracer, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %in.i.i) #15
  %20 = call ptr @memset(ptr %in.i.i, i32 0, i32 128)
  %call.i.i = call i32 @mlx5_core_access_reg(ptr noundef %19, ptr noundef nonnull %in.i.i, i32 noundef 128, ptr noundef nonnull %out.i, i32 noundef 128, i16 noundef zeroext -28608, i32 noundef 0, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %in.i.i) #15
  %21 = ptrtoint ptr %owner12 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %owner12, align 4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %out.i) #15
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %do.end.if.end15_crit_edge
  %22 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tracer, align 8
  %buff = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 8
  %mkey = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 8, i32 4
  %24 = ptrtoint ptr %mkey to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mkey, align 8
  %call17 = call i32 @mlx5_core_destroy_mkey(ptr noundef %23, i32 noundef %25) #15
  %26 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tracer, align 8
  %28 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buff, align 8
  %call20 = call i32 @mlx5_core_dealloc_pd(ptr noundef %27, i32 noundef %29) #15
  br label %return

return:                                           ; preds = %if.end15, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_fw_tracer_destroy(ptr noundef %tracer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %tracer, null
  %cmp.i = icmp ugt ptr %tracer, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fw_tracer_destroy.__UNIQUE_ID_ddebug557, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fw_tracer_destroy, %if.then4)) #15
          to label %do.end [label %if.then4], !srcloc !229

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tracer, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fw_tracer_destroy.__UNIQUE_ID_ddebug557, ptr noundef %3, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef 1064, i32 noundef %9) #15
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %read_fw_strings_work = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 6
  %call7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %read_fw_strings_work) #15
  %ready_strings_list.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 13
  %10 = ptrtoint ptr %ready_strings_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ready_strings_list.i, align 4
  %cmp.not17.i = icmp eq ptr %11, %ready_strings_list.i
  br i1 %cmp.not17.i, label %do.end.for.body.i18.preheader_crit_edge, label %do.end.for.body.i_crit_edge

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

do.end.for.body.i18.preheader_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i18.preheader

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %12 = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %11, %do.end.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i = load ptr, ptr %12, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %12) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %12, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ready_strings_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.for.body.i18.preheader_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

list_del.exit.i.for.body.i18.preheader_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i18.preheader

for.body.i18.preheader:                           ; preds = %list_del.exit.i.for.body.i18.preheader_crit_edge, %do.end.for.body.i18.preheader_crit_edge
  br label %for.body.i18

for.body.i18:                                     ; preds = %for.inc17.i.for.body.i18_crit_edge, %for.body.i18.preheader
  %i.030.i = phi i32 [ %inc.i, %for.inc17.i.for.body.i18_crit_edge ], [ 0, %for.body.i18.preheader ]
  %arrayidx.i = getelementptr %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 12, i32 %i.030.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i17 = icmp eq ptr %23, null
  %add.ptr.i = getelementptr i8, ptr %23, i32 -48
  %tobool3.not2831.i = icmp eq ptr %add.ptr.i, null
  %tobool3.not28.i = or i1 %tobool.not.i17, %tobool3.not2831.i
  br i1 %tobool3.not28.i, label %for.body.i18.for.inc17.i_crit_edge, label %for.body.i18.land.rhs.i_crit_edge

for.body.i18.land.rhs.i_crit_edge:                ; preds = %for.body.i18
  br label %land.rhs.i

for.body.i18.for.inc17.i_crit_edge:               ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc17.i

for.cond2.backedge.thread.i:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %hlist.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %hlist.i, align 4
  %25 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %str_frmt.029.i) #15
  br label %for.inc17.i

for.cond2.backedge.i:                             ; preds = %land.rhs.i
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %30, i32 0, i32 1
  %26 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %32, ptr %pprev14.i.i.i.i, align 4
  %27 = ptrtoint ptr %hlist.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %hlist.i, align 4
  %28 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %str_frmt.029.i) #15
  %add.ptr13.i = getelementptr i8, ptr %30, i32 -48
  %tobool3.not.i = icmp eq ptr %add.ptr13.i, null
  br i1 %tobool3.not.i, label %for.cond2.backedge.i.for.inc17.i_crit_edge, label %for.cond2.backedge.i.land.rhs.i_crit_edge

for.cond2.backedge.i.land.rhs.i_crit_edge:        ; preds = %for.cond2.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i

for.cond2.backedge.i.for.inc17.i_crit_edge:       ; preds = %for.cond2.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc17.i

land.rhs.i:                                       ; preds = %for.cond2.backedge.i.land.rhs.i_crit_edge, %for.body.i18.land.rhs.i_crit_edge
  %str_frmt.029.i = phi ptr [ %add.ptr13.i, %for.cond2.backedge.i.land.rhs.i_crit_edge ], [ %add.ptr.i, %for.body.i18.land.rhs.i_crit_edge ]
  %hlist.i = getelementptr inbounds %struct.tracer_string_format, ptr %str_frmt.029.i, i32 0, i32 6
  %29 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hlist.i, align 4
  %pprev2.i.i.i.i = getelementptr inbounds %struct.tracer_string_format, ptr %str_frmt.029.i, i32 0, i32 6, i32 1
  %31 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %30, ptr %32, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i.i, label %for.cond2.backedge.thread.i, label %for.cond2.backedge.i

for.inc17.i:                                      ; preds = %for.cond2.backedge.i.for.inc17.i_crit_edge, %for.cond2.backedge.thread.i, %for.body.i18.for.inc17.i_crit_edge
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %mlx5_fw_tracer_clean_print_hash.exit, label %for.inc17.i.for.body.i18_crit_edge

for.inc17.i.for.body.i18_crit_edge:               ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i18

mlx5_fw_tracer_clean_print_hash.exit:             ; preds = %for.inc17.i
  %lock.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 9, i32 2
  tail call void @mutex_destroy(ptr noundef %lock.i) #15
  %num_string_db1.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 7, i32 2
  %34 = ptrtoint ptr %num_string_db1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_string_db1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp11.not.i = icmp eq i32 %35, 0
  br i1 %cmp11.not.i, label %mlx5_fw_tracer_clean_print_hash.exit.mlx5_fw_tracer_free_strings_db.exit_crit_edge, label %mlx5_fw_tracer_clean_print_hash.exit.for.body.i22_crit_edge

mlx5_fw_tracer_clean_print_hash.exit.for.body.i22_crit_edge: ; preds = %mlx5_fw_tracer_clean_print_hash.exit
  br label %for.body.i22

mlx5_fw_tracer_clean_print_hash.exit.mlx5_fw_tracer_free_strings_db.exit_crit_edge: ; preds = %mlx5_fw_tracer_clean_print_hash.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5_fw_tracer_free_strings_db.exit

for.body.i22:                                     ; preds = %for.body.i22.for.body.i22_crit_edge, %mlx5_fw_tracer_clean_print_hash.exit.for.body.i22_crit_edge
  %i.012.i = phi i32 [ %inc.i20, %for.body.i22.for.body.i22_crit_edge ], [ 0, %mlx5_fw_tracer_clean_print_hash.exit.for.body.i22_crit_edge ]
  %arrayidx.i19 = getelementptr %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 7, i32 5, i32 %i.012.i
  %36 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i19, align 4
  tail call void @kfree(ptr noundef %37) #15
  %38 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx.i19, align 4
  %inc.i20 = add nuw i32 %i.012.i, 1
  %exitcond.not.i21 = icmp eq i32 %inc.i20, %35
  br i1 %exitcond.not.i21, label %for.body.i22.mlx5_fw_tracer_free_strings_db.exit_crit_edge, label %for.body.i22.for.body.i22_crit_edge

for.body.i22.for.body.i22_crit_edge:              ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i22

for.body.i22.mlx5_fw_tracer_free_strings_db.exit_crit_edge: ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5_fw_tracer_free_strings_db.exit

mlx5_fw_tracer_free_strings_db.exit:              ; preds = %for.body.i22.mlx5_fw_tracer_free_strings_db.exit_crit_edge, %mlx5_fw_tracer_clean_print_hash.exit.mlx5_fw_tracer_free_strings_db.exit_crit_edge
  %log_buf.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 8, i32 1
  %39 = ptrtoint ptr %log_buf.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %log_buf.i, align 4
  %tobool.not.i23 = icmp eq ptr %40, null
  br i1 %tobool.not.i23, label %mlx5_fw_tracer_free_strings_db.exit.mlx5_fw_tracer_destroy_log_buf.exit_crit_edge, label %if.end.i

mlx5_fw_tracer_free_strings_db.exit.mlx5_fw_tracer_destroy_log_buf.exit_crit_edge: ; preds = %mlx5_fw_tracer_free_strings_db.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5_fw_tracer_destroy_log_buf.exit

if.end.i:                                         ; preds = %mlx5_fw_tracer_free_strings_db.exit
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tracer, align 8
  %pdev.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev.i.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %dma.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 8, i32 2
  %45 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma.i, align 8
  %size.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 8, i32 3
  %47 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i.i, i32 noundef %46, i32 noundef %48, i32 noundef 2, i32 noundef 0) #15
  %49 = ptrtoint ptr %log_buf.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %log_buf.i, align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size.i, align 4
  %dec.i.i = add i32 %53, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %shr.i.i = lshr i32 %dec.i.i, 12
  %54 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #15, !range !230
  %sub.i.i.i = sub nuw nsw i32 32, %54
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  tail call void @free_pages(i32 noundef %51, i32 noundef %cond.i.i.i) #15
  br label %mlx5_fw_tracer_destroy_log_buf.exit

mlx5_fw_tracer_destroy_log_buf.exit:              ; preds = %if.end.i, %mlx5_fw_tracer_free_strings_db.exit.mlx5_fw_tracer_destroy_log_buf.exit_crit_edge
  %work_queue = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 4
  %55 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %work_queue, align 8
  tail call void @destroy_workqueue(ptr noundef %56) #15
  tail call void @kvfree(ptr noundef %tracer) #15
  br label %return

return:                                           ; preds = %mlx5_fw_tracer_destroy_log_buf.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fw_tracer_reload(ptr noundef %tracer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %tracer, null
  %cmp.i = icmp ugt ptr %tracer, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tracer, align 8
  tail call void @mlx5_fw_tracer_cleanup(ptr noundef nonnull %tracer)
  %call2 = tail call fastcc i32 @mlx5_fw_tracer_recreate_strings_db(ptr noundef nonnull %tracer)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 1116, i32 noundef %9) #21
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @mlx5_fw_tracer_init(ptr noundef nonnull %tracer)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %do.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %12 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i26 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i26 to ptr
  %task14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task14, align 8
  %pid15 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid15, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, i32 noundef 1121, i32 noundef %17) #21
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call6, %do.end11 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_fw_tracer_recreate_strings_db(ptr noundef %tracer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %read_fw_strings_work = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 6
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %read_fw_strings_work) #15
  %ready_strings_list.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 13
  %0 = ptrtoint ptr %ready_strings_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ready_strings_list.i, align 4
  %cmp.not17.i = icmp eq ptr %1, %ready_strings_list.i
  br i1 %cmp.not17.i, label %entry.for.body.i36.preheader_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.body.i36.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i36.preheader

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %2 = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %2, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ready_strings_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.for.body.i36.preheader_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

list_del.exit.i.for.body.i36.preheader_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i36.preheader

for.body.i36.preheader:                           ; preds = %list_del.exit.i.for.body.i36.preheader_crit_edge, %entry.for.body.i36.preheader_crit_edge
  br label %for.body.i36

for.body.i36:                                     ; preds = %for.inc17.i.for.body.i36_crit_edge, %for.body.i36.preheader
  %i.030.i = phi i32 [ %inc.i, %for.inc17.i.for.body.i36_crit_edge ], [ 0, %for.body.i36.preheader ]
  %arrayidx.i = getelementptr %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 12, i32 %i.030.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  %add.ptr.i = getelementptr i8, ptr %13, i32 -48
  %tobool3.not2831.i = icmp eq ptr %add.ptr.i, null
  %tobool3.not28.i = or i1 %tobool.not.i, %tobool3.not2831.i
  br i1 %tobool3.not28.i, label %for.body.i36.for.inc17.i_crit_edge, label %for.body.i36.land.rhs.i_crit_edge

for.body.i36.land.rhs.i_crit_edge:                ; preds = %for.body.i36
  br label %land.rhs.i

for.body.i36.for.inc17.i_crit_edge:               ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc17.i

for.cond2.backedge.thread.i:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %hlist.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %hlist.i, align 4
  %15 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %str_frmt.029.i) #15
  br label %for.inc17.i

for.cond2.backedge.i:                             ; preds = %land.rhs.i
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  %16 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %22, ptr %pprev14.i.i.i.i, align 4
  %17 = ptrtoint ptr %hlist.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %hlist.i, align 4
  %18 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %str_frmt.029.i) #15
  %add.ptr13.i = getelementptr i8, ptr %20, i32 -48
  %tobool3.not.i = icmp eq ptr %add.ptr13.i, null
  br i1 %tobool3.not.i, label %for.cond2.backedge.i.for.inc17.i_crit_edge, label %for.cond2.backedge.i.land.rhs.i_crit_edge

for.cond2.backedge.i.land.rhs.i_crit_edge:        ; preds = %for.cond2.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i

for.cond2.backedge.i.for.inc17.i_crit_edge:       ; preds = %for.cond2.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc17.i

land.rhs.i:                                       ; preds = %for.cond2.backedge.i.land.rhs.i_crit_edge, %for.body.i36.land.rhs.i_crit_edge
  %str_frmt.029.i = phi ptr [ %add.ptr13.i, %for.cond2.backedge.i.land.rhs.i_crit_edge ], [ %add.ptr.i, %for.body.i36.land.rhs.i_crit_edge ]
  %hlist.i = getelementptr inbounds %struct.tracer_string_format, ptr %str_frmt.029.i, i32 0, i32 6
  %19 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hlist.i, align 4
  %pprev2.i.i.i.i = getelementptr inbounds %struct.tracer_string_format, ptr %str_frmt.029.i, i32 0, i32 6, i32 1
  %21 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %20, ptr %22, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i.i, label %for.cond2.backedge.thread.i, label %for.cond2.backedge.i

for.inc17.i:                                      ; preds = %for.cond2.backedge.i.for.inc17.i_crit_edge, %for.cond2.backedge.thread.i, %for.body.i36.for.inc17.i_crit_edge
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %mlx5_fw_tracer_clean_print_hash.exit, label %for.inc17.i.for.body.i36_crit_edge

for.inc17.i.for.body.i36_crit_edge:               ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i36

mlx5_fw_tracer_clean_print_hash.exit:             ; preds = %for.inc17.i
  %lock.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 9, i32 2
  tail call void @mutex_destroy(ptr noundef %lock.i) #15
  %num_string_db1.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 7, i32 2
  %24 = ptrtoint ptr %num_string_db1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_string_db1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp11.not.i = icmp eq i32 %25, 0
  br i1 %cmp11.not.i, label %mlx5_fw_tracer_clean_print_hash.exit.mlx5_fw_tracer_free_strings_db.exit_crit_edge, label %mlx5_fw_tracer_clean_print_hash.exit.for.body.i40_crit_edge

mlx5_fw_tracer_clean_print_hash.exit.for.body.i40_crit_edge: ; preds = %mlx5_fw_tracer_clean_print_hash.exit
  br label %for.body.i40

mlx5_fw_tracer_clean_print_hash.exit.mlx5_fw_tracer_free_strings_db.exit_crit_edge: ; preds = %mlx5_fw_tracer_clean_print_hash.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5_fw_tracer_free_strings_db.exit

for.body.i40:                                     ; preds = %for.body.i40.for.body.i40_crit_edge, %mlx5_fw_tracer_clean_print_hash.exit.for.body.i40_crit_edge
  %i.012.i = phi i32 [ %inc.i38, %for.body.i40.for.body.i40_crit_edge ], [ 0, %mlx5_fw_tracer_clean_print_hash.exit.for.body.i40_crit_edge ]
  %arrayidx.i37 = getelementptr %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 7, i32 5, i32 %i.012.i
  %26 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i37, align 4
  tail call void @kfree(ptr noundef %27) #15
  %28 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx.i37, align 4
  %inc.i38 = add nuw i32 %i.012.i, 1
  %exitcond.not.i39 = icmp eq i32 %inc.i38, %25
  br i1 %exitcond.not.i39, label %for.body.i40.mlx5_fw_tracer_free_strings_db.exit_crit_edge, label %for.body.i40.for.body.i40_crit_edge

for.body.i40.for.body.i40_crit_edge:              ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i40

for.body.i40.mlx5_fw_tracer_free_strings_db.exit_crit_edge: ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5_fw_tracer_free_strings_db.exit

mlx5_fw_tracer_free_strings_db.exit:              ; preds = %for.body.i40.mlx5_fw_tracer_free_strings_db.exit_crit_edge, %mlx5_fw_tracer_clean_print_hash.exit.mlx5_fw_tracer_free_strings_db.exit_crit_edge
  %29 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tracer, align 8
  %call2 = tail call fastcc i32 @mlx5_query_mtrc_caps(ptr noundef %tracer)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end9, label %do.body

do.body:                                          ; preds = %mlx5_fw_tracer_free_strings_db.exit
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fw_tracer_recreate_strings_db.__UNIQUE_ID_ddebug558, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fw_tracer_recreate_strings_db, %if.then7)) #15
          to label %cleanup [label %if.then7], !srcloc !229

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %33 = tail call i32 @llvm.read_register.i32(metadata !215) #15
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fw_tracer_recreate_strings_db.__UNIQUE_ID_ddebug558, ptr noundef %32, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.93, i32 noundef 1090, i32 noundef %38, i32 noundef %call2) #15
  br label %cleanup

if.end9:                                          ; preds = %mlx5_fw_tracer_free_strings_db.exit
  %size_out.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 7, i32 4
  %39 = ptrtoint ptr %num_string_db1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_string_db1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp22.not.i = icmp eq i32 %40, 0
  br i1 %cmp22.not.i, label %if.end9.if.end20_crit_edge, label %if.end9.if.end8.i.i.i_crit_edge

if.end9.if.end8.i.i.i_crit_edge:                  ; preds = %if.end9
  br label %if.end8.i.i.i

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.end8.i.i.i:                                    ; preds = %for.inc.i.if.end8.i.i.i_crit_edge, %if.end9.if.end8.i.i.i_crit_edge
  %i.023.i = phi i32 [ %inc.i46, %for.inc.i.if.end8.i.i.i_crit_edge ], [ 0, %if.end9.if.end8.i.i.i_crit_edge ]
  %arrayidx.i41 = getelementptr i32, ptr %size_out.i, i32 %i.023.i
  %41 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i41, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %42, i32 noundef 3520) #20
  %arrayidx4.i = getelementptr %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 7, i32 5, i32 %i.023.i
  %43 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call9.i.i.i, ptr %arrayidx4.i, align 4
  %tobool.not.i45 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i45, label %free_strings_db.i, label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i.i.i
  %inc.i46 = add nuw i32 %i.023.i, 1
  %exitcond.not.i47 = icmp eq i32 %inc.i46, %40
  br i1 %exitcond.not.i47, label %for.inc.i.if.end20_crit_edge, label %for.inc.i.if.end8.i.i.i_crit_edge

for.inc.i.if.end8.i.i.i_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i.i.i

for.inc.i.if.end20_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

free_strings_db.i:                                ; preds = %if.end8.i.i.i
  %44 = ptrtoint ptr %num_string_db1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_string_db1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp11.not.i.i = icmp eq i32 %45, 0
  br i1 %cmp11.not.i.i, label %free_strings_db.i.do.end15_crit_edge, label %free_strings_db.i.for.body.i.i_crit_edge

free_strings_db.i.for.body.i.i_crit_edge:         ; preds = %free_strings_db.i
  br label %for.body.i.i

free_strings_db.i.do.end15_crit_edge:             ; preds = %free_strings_db.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %free_strings_db.i.for.body.i.i_crit_edge
  %i.012.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %free_strings_db.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 7, i32 5, i32 %i.012.i.i
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @kfree(ptr noundef %47) #15
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw i32 %i.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %45
  br i1 %exitcond.not.i.i, label %for.body.i.i.do.end15_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.body.i.i.do.end15_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

do.end15:                                         ; preds = %for.body.i.i.do.end15_crit_edge, %free_strings_db.i.do.end15_crit_edge
  %49 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %30, align 8
  %51 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i49 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i49 to ptr
  %task18 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task18 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task18, align 8
  %pid19 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 68
  %55 = ptrtoint ptr %pid19 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pid19, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.93, i32 noundef 1096, i32 noundef %56, i32 noundef -12) #21
  br label %cleanup

if.end20:                                         ; preds = %for.inc.i.if.end20_crit_edge, %if.end9.if.end20_crit_edge
  %saved_traces_index.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 9, i32 1
  %57 = ptrtoint ptr %saved_traces_index.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %saved_traces_index.i, align 8
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.79, ptr noundef nonnull @mlx5_fw_tracer_init_saved_traces_array.__key) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end15, %if.then7, %do.body
  %retval.0 = phi i32 [ -12, %do.end15 ], [ 0, %if.end20 ], [ %call2, %if.then7 ], [ %call2, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mlx5_fw(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_dev_name = getelementptr inbounds %struct.trace_event_raw_mlx5_fw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_dev_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_dev_name, align 8
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %trace_timestamp = getelementptr inbounds %struct.trace_event_raw_mlx5_fw, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %trace_timestamp to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %trace_timestamp, align 8
  %lost = getelementptr inbounds %struct.trace_event_raw_mlx5_fw, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %lost to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lost, align 8, !range !228
  %8 = zext i8 %7 to i32
  %event_id = getelementptr inbounds %struct.trace_event_raw_mlx5_fw, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %event_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %event_id, align 1
  %conv1 = zext i8 %10 to i32
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_mlx5_fw, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %__data_loc_msg, align 4
  %and2 = and i32 %12, 65535
  %add.ptr3 = getelementptr i8, ptr %1, i32 %and2
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.47, ptr noundef %add.ptr, i64 noundef %5, i32 noundef %8, i32 noundef %conv1, ptr noundef %add.ptr3) #15
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_access_reg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_obj_nest_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_u64_pair_put(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_bool_pair_put(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_u8_pair_put(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_string_pair_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_obj_nest_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_tracer_handle_trace(ptr noundef %tracer, ptr nocapture noundef readonly %tracer_event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.tracer_event, ptr %tracer_event, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %1, label %do.body [
    i32 0, label %if.then
    i32 255, label %if.then3
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @mlx5_tracer_handle_string_trace(ptr noundef %tracer, ptr noundef %tracer_event)
  br label %if.end14

if.then3:                                         ; preds = %entry
  %unreliable = getelementptr inbounds %struct.tracer_event, ptr %tracer_event, i32 0, i32 3, i32 0, i32 1
  %3 = ptrtoint ptr %unreliable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %unreliable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then4, label %if.then3.if.end14_crit_edge

if.then3.if.end14_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then4:                                         ; preds = %if.then3
  %5 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tracer, align 8
  %ready_strings_list.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 13
  %7 = ptrtoint ptr %ready_strings_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ready_strings_list.i, align 4
  %cmp.not43.i = icmp eq ptr %8, %ready_strings_list.i
  br i1 %cmp.not43.i, label %if.then4.if.end14_crit_edge, label %for.body.lr.ph.i

if.then4.if.end14_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

for.body.lr.ph.i:                                 ; preds = %if.then4
  %9 = getelementptr inbounds %struct.tracer_event, ptr %tracer_event, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %timestamp_event.sroa.0.0.copyload37.i = load i64, ptr %9, align 8
  %and.i = and i64 %timestamp_event.sroa.0.0.copyload37.i, 127
  %and18.i = and i64 %timestamp_event.sroa.0.0.copyload37.i, 9007199254740864
  %sub.i = add nsw i64 %and18.i, -1
  br label %for.body.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in44.i = phi ptr [ %8, %for.body.lr.ph.i ], [ %.pn47.i, %list_del.exit.i.for.body.i_crit_edge ]
  %str_frmt.046.i = getelementptr i8, ptr %.pn.in44.i, i32 -56
  %11 = ptrtoint ptr %.pn.in44.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn47.i = load ptr, ptr %.pn.in44.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in44.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in44.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %.pn.in44.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %.pn.in44.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %18 = ptrtoint ptr %.pn.in44.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in44.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in44.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %timestamp.i = getelementptr i8, ptr %.pn.in44.i, i32 8
  %20 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %timestamp.i, align 4
  %conv.i = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %conv.i)
  %cmp10.i = icmp ugt i64 %and.i, %conv.i
  %and15.i = and i32 %21, 127
  %conv16.i = zext i32 %and15.i to i64
  %or.i = or i64 %and18.i, %conv16.i
  %trace_timestamp.0.i = select i1 %cmp10.i, i64 %or.i, i64 %sub.i
  tail call fastcc void @mlx5_tracer_print_trace(ptr noundef %str_frmt.046.i, ptr noundef %6, i64 noundef %trace_timestamp.0.i) #15
  %cmp.not.i = icmp eq ptr %.pn47.i, %ready_strings_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.if.end14_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

list_del.exit.i.if.end14_crit_edge:               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_tracer_handle_trace.__UNIQUE_ID_ddebug541, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_tracer_handle_trace, %if.then10)) #15
          to label %if.end14 [label %if.then10], !srcloc !229

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx5_tracer_handle_trace.__UNIQUE_ID_ddebug541, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56, i32 noundef %23) #15
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %do.body, %list_del.exit.i.if.end14_crit_edge, %if.then4.if.end14_crit_edge, %if.then3.if.end14_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_tracer_handle_string_trace(ptr noundef %tracer, ptr nocapture noundef readonly %tracer_event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.tracer_event, ptr %tracer_event, i32 0, i32 3
  %tdsn = getelementptr inbounds %struct.tracer_event, ptr %tracer_event, i32 0, i32 3, i32 0, i32 1
  %1 = ptrtoint ptr %tdsn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tdsn, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %string_param.i = getelementptr inbounds %struct.tracer_string_event, ptr %0, i32 0, i32 3
  %3 = ptrtoint ptr %string_param.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %string_param.i, align 4
  %num_string_db.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 7, i32 2
  %5 = ptrtoint ptr %num_string_db.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_string_db.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp38.not.i = icmp eq i32 %6, 0
  br i1 %cmp38.not.i, label %if.then.cleanup_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.039.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 7, i32 3, i32 %i.039.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %8)
  %cmp2.i = icmp ugt i32 %4, %8
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx7.i = getelementptr %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 7, i32 4, i32 %i.039.i
  %9 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx7.i, align 4
  %add.i = add i32 %10, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %add.i)
  %cmp8.i = icmp ult i32 %4, %add.i
  br i1 %cmp8.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %tmsn.i.i = getelementptr inbounds %struct.tracer_string_event, ptr %0, i32 0, i32 1
  %11 = ptrtoint ptr %tmsn.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tmsn.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 72) #22
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.cleanup_crit_edge, label %if.end.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %12, -559038733
  %xor3.i.i.i.i.i = xor i32 %add.i.i.i.i.i, -1874655147
  %sub5.i.i.i.i.i = add i32 %xor3.i.i.i.i.i, -407022722
  %xor6.i.i.i.i.i = xor i32 %sub5.i.i.i.i.i, -559038733
  %or.i1.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i.i, i32 %sub5.i.i.i.i.i, i32 25) #15
  %sub8.i.i.i.i.i = sub i32 %xor6.i.i.i.i.i, %or.i1.i.i.i.i.i
  %xor9.i.i.i.i.i = xor i32 %sub8.i.i.i.i.i, -1874655147
  %or.i2.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i.i, i32 %sub8.i.i.i.i.i, i32 16) #15
  %sub11.i.i.i.i.i = sub i32 %xor9.i.i.i.i.i, %or.i2.i.i.i.i.i
  %xor12.i.i.i.i.i = xor i32 %sub11.i.i.i.i.i, %sub5.i.i.i.i.i
  %or.i3.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i.i, i32 %sub11.i.i.i.i.i, i32 4) #15
  %sub14.i.i.i.i.i = sub i32 %xor12.i.i.i.i.i, %or.i3.i.i.i.i.i
  %xor15.i.i.i.i.i = xor i32 %sub14.i.i.i.i.i, %sub8.i.i.i.i.i
  %or.i4.i.i.i.i.i = lshr i32 %sub14.i.i.i.i.i, 18
  %sub17.i.i.i.i.i = sub i32 %xor15.i.i.i.i.i, %or.i4.i.i.i.i.i
  %xor18.i.i.i.i.i = xor i32 %sub17.i.i.i.i.i, %sub11.i.i.i.i.i
  %or.i5.i.i.i.i.i = lshr i32 %sub17.i.i.i.i.i, 8
  %sub20.i.i.i.i.i = sub i32 %xor18.i.i.i.i.i, %or.i5.i.i.i.i.i
  %and.i.i.i = and i32 %sub20.i.i.i.i.i, 63
  %arrayidx.i.i = getelementptr %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 12, i32 %and.i.i.i
  %hlist.i.i = getelementptr inbounds %struct.tracer_string_format, ptr %call7.i.i.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %16 = ptrtoint ptr %hlist.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %15, ptr %hlist.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.end_crit_edge, label %do.body12.i.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.body12.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %hlist.i.i, ptr %pprev.i.i.i, align 4
  br label %if.end

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.039.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %do.body12.i.i.i, %if.end.i.i.if.end_crit_edge
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %hlist.i.i, ptr %arrayidx.i.i, align 4
  %pprev34.i.i.i = getelementptr inbounds %struct.tracer_string_format, ptr %call7.i.i.i.i, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %pprev34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %arrayidx.i.i, ptr %pprev34.i.i.i, align 4
  %sub.i = sub i32 %4, %8
  %arrayidx14.i = getelementptr %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 7, i32 5, i32 %i.039.i
  %20 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx14.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %sub.i
  %22 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i, ptr %call7.i.i.i.i, align 8
  %call.i = tail call ptr @strstr(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.61) #15
  %tobool.not17.i = icmp eq ptr %call.i, null
  br i1 %tobool.not17.i, label %if.end.while.end.i_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.while.end.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %substr.018.i = phi ptr [ %call1.i, %while.body.i.while.body.i_crit_edge ], [ %call.i, %if.end.while.body.i_crit_edge ]
  %23 = ptrtoint ptr %substr.018.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 628630904, ptr %substr.018.i, align 1
  %call1.i = tail call ptr @strstr(ptr noundef nonnull %substr.018.i, ptr noundef nonnull @.str.61) #15
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end.while.end.i_crit_edge
  %strchr.i = tail call ptr @strchr(ptr noundef %add.ptr.i, i32 37) #15
  %tobool4.not19.i = icmp eq ptr %strchr.i, null
  br i1 %tobool4.not19.i, label %while.end.i.mlx5_tracer_get_num_of_params.exit_crit_edge, label %while.end.i.while.body5.i_crit_edge

while.end.i.while.body5.i_crit_edge:              ; preds = %while.end.i
  br label %while.body5.i

while.end.i.mlx5_tracer_get_num_of_params.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5_tracer_get_num_of_params.exit

while.body5.i:                                    ; preds = %while.body5.i.while.body5.i_crit_edge, %while.end.i.while.body5.i_crit_edge
  %num_of_params.021.i = phi i32 [ %add.i5, %while.body5.i.while.body5.i_crit_edge ], [ 0, %while.end.i.while.body5.i_crit_edge ]
  %substr.120.i = phi ptr [ %strchr16.i, %while.body5.i.while.body5.i_crit_edge ], [ %strchr.i, %while.end.i.while.body5.i_crit_edge ]
  %add.i5 = add i32 %num_of_params.021.i, 1
  %add.ptr.i6 = getelementptr i8, ptr %substr.120.i, i32 1
  %strchr16.i = tail call ptr @strchr(ptr noundef %add.ptr.i6, i32 37) #15
  %tobool4.not.i = icmp eq ptr %strchr16.i, null
  br i1 %tobool4.not.i, label %while.body5.i.mlx5_tracer_get_num_of_params.exit_crit_edge, label %while.body5.i.while.body5.i_crit_edge

while.body5.i.while.body5.i_crit_edge:            ; preds = %while.body5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body5.i

while.body5.i.mlx5_tracer_get_num_of_params.exit_crit_edge: ; preds = %while.body5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5_tracer_get_num_of_params.exit

mlx5_tracer_get_num_of_params.exit:               ; preds = %while.body5.i.mlx5_tracer_get_num_of_params.exit_crit_edge, %while.end.i.mlx5_tracer_get_num_of_params.exit_crit_edge
  %num_of_params.0.lcssa.i = phi i32 [ 0, %while.end.i.mlx5_tracer_get_num_of_params.exit_crit_edge ], [ %add.i5, %while.body5.i.mlx5_tracer_get_num_of_params.exit_crit_edge ]
  %num_of_params = getelementptr inbounds %struct.tracer_string_format, ptr %call7.i.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %num_of_params to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %num_of_params.0.lcssa.i, ptr %num_of_params, align 8
  %last_param_num = getelementptr inbounds %struct.tracer_string_format, ptr %call7.i.i.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %last_param_num to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %last_param_num, align 4
  %event_id = getelementptr inbounds %struct.tracer_event, ptr %tracer_event, i32 0, i32 2
  %26 = ptrtoint ptr %event_id to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %event_id, align 8
  %event_id3 = getelementptr inbounds %struct.tracer_string_format, ptr %call7.i.i.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %event_id3 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %event_id3, align 8
  %29 = ptrtoint ptr %tmsn.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tmsn.i.i, align 4
  %tmsn4 = getelementptr inbounds %struct.tracer_string_format, ptr %call7.i.i.i.i, i32 0, i32 5
  %31 = ptrtoint ptr %tmsn4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %tmsn4, align 4
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %0, align 8
  %timestamp5 = getelementptr inbounds %struct.tracer_string_format, ptr %call7.i.i.i.i, i32 0, i32 8
  %34 = ptrtoint ptr %timestamp5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %timestamp5, align 8
  %35 = ptrtoint ptr %tracer_event to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tracer_event, align 8, !range !228
  %lost = getelementptr inbounds %struct.tracer_string_format, ptr %call7.i.i.i.i, i32 0, i32 9
  %37 = ptrtoint ptr %lost to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %lost, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_of_params.0.lcssa.i)
  %cmp8 = icmp eq i32 %num_of_params.0.lcssa.i, 0
  br i1 %cmp8, label %if.then9, label %mlx5_tracer_get_num_of_params.exit.cleanup_crit_edge

mlx5_tracer_get_num_of_params.exit.cleanup_crit_edge: ; preds = %mlx5_tracer_get_num_of_params.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then9:                                         ; preds = %mlx5_tracer_get_num_of_params.exit
  %list = getelementptr inbounds %struct.tracer_string_format, ptr %call7.i.i.i.i, i32 0, i32 7
  %ready_strings_list = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 13, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %39, ptr noundef %ready_strings_list) #15
  br i1 %call.i.i, label %if.end.i.i7, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i.i7:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %list, ptr %prev.i, align 4
  %41 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %ready_strings_list, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.tracer_string_format, ptr %call7.i.i.i.i, i32 0, i32 7, i32 1
  %42 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %list, ptr %39, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %tmsn.i = getelementptr inbounds %struct.tracer_string_event, ptr %0, i32 0, i32 1
  %44 = ptrtoint ptr %tmsn.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tmsn.i, align 4
  %add.i.i.i.i = add i32 %45, -559038733
  %xor3.i.i.i.i = xor i32 %add.i.i.i.i, -1874655147
  %sub5.i.i.i.i = add i32 %xor3.i.i.i.i, -407022722
  %xor6.i.i.i.i = xor i32 %sub5.i.i.i.i, -559038733
  %or.i1.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i, i32 %sub5.i.i.i.i, i32 25) #15
  %sub8.i.i.i.i = sub i32 %xor6.i.i.i.i, %or.i1.i.i.i.i
  %xor9.i.i.i.i = xor i32 %sub8.i.i.i.i, -1874655147
  %or.i2.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i, i32 %sub8.i.i.i.i, i32 16) #15
  %sub11.i.i.i.i = sub i32 %xor9.i.i.i.i, %or.i2.i.i.i.i
  %xor12.i.i.i.i = xor i32 %sub11.i.i.i.i, %sub5.i.i.i.i
  %or.i3.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i, i32 %sub11.i.i.i.i, i32 4) #15
  %sub14.i.i.i.i = sub i32 %xor12.i.i.i.i, %or.i3.i.i.i.i
  %xor15.i.i.i.i = xor i32 %sub14.i.i.i.i, %sub8.i.i.i.i
  %or.i4.i.i.i.i = lshr i32 %sub14.i.i.i.i, 18
  %sub17.i.i.i.i = sub i32 %xor15.i.i.i.i, %or.i4.i.i.i.i
  %xor18.i.i.i.i = xor i32 %sub17.i.i.i.i, %sub11.i.i.i.i
  %or.i5.i.i.i.i = lshr i32 %sub17.i.i.i.i, 8
  %sub20.i.i.i.i = sub i32 %xor18.i.i.i.i, %or.i5.i.i.i.i
  %and.i.i = and i32 %sub20.i.i.i.i, 63
  %arrayidx.i8 = getelementptr %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 12, i32 %and.i.i
  %event_id.i = getelementptr inbounds %struct.tracer_event, ptr %tracer_event, i32 0, i32 2
  %46 = ptrtoint ptr %event_id.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %event_id.i, align 8
  %48 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i8, align 4
  %tobool.not.i.i9 = icmp eq ptr %49, null
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 -48
  %tobool2.not2933.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool2.not29.i.i = or i1 %tobool.not.i.i9, %tobool2.not2933.i.i
  br i1 %tobool2.not29.i.i, label %if.else.do.body_crit_edge, label %if.else.for.body.i.i_crit_edge

if.else.for.body.i.i_crit_edge:                   ; preds = %if.else
  br label %for.body.i.i

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.else.for.body.i.i_crit_edge
  %message.030.i.i = phi ptr [ %add.ptr15.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %if.else.for.body.i.i_crit_edge ]
  %event_id3.i.i = getelementptr inbounds %struct.tracer_string_format, ptr %message.030.i.i, i32 0, i32 4
  %50 = ptrtoint ptr %event_id3.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %event_id3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %47)
  %cmp.i.i = icmp eq i8 %51, %47
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %tmsn6.i.i = getelementptr inbounds %struct.tracer_string_format, ptr %message.030.i.i, i32 0, i32 5
  %52 = ptrtoint ptr %tmsn6.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tmsn6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %45)
  %cmp7.i.i = icmp eq i32 %53, %45
  br i1 %cmp7.i.i, label %if.end22, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %hlist.i.i10 = getelementptr inbounds %struct.tracer_string_format, ptr %message.030.i.i, i32 0, i32 6
  %54 = ptrtoint ptr %hlist.i.i10 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hlist.i.i10, align 4
  %tobool11.not.i.i = icmp eq ptr %55, null
  %add.ptr15.i.i = getelementptr i8, ptr %55, i32 -48
  %tobool2.not34.i.i = icmp eq ptr %add.ptr15.i.i, null
  %tobool2.not.i.i = or i1 %tobool11.not.i.i, %tobool2.not34.i.i
  br i1 %tobool2.not.i.i, label %for.inc.i.i.do.body_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.do.body_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.body:                                          ; preds = %for.inc.i.i.do.body_crit_edge, %if.else.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_tracer_handle_string_trace.__UNIQUE_ID_ddebug539, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_tracer_handle_string_trace, %if.then19)) #15
          to label %cleanup [label %if.then19], !srcloc !229

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %56 = ptrtoint ptr %tmsn.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tmsn.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx5_tracer_handle_string_trace.__UNIQUE_ID_ddebug539, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, i32 noundef %57) #15
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true.i.i
  %last_param_num23 = getelementptr inbounds %struct.tracer_string_format, ptr %message.030.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %last_param_num23 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %last_param_num23, align 4
  %add = add i32 %59, 1
  store i32 %add, ptr %last_param_num23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add)
  %cmp25 = icmp sgt i32 %add, 7
  br i1 %cmp25, label %do.body27, label %if.end45

do.body27:                                        ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_tracer_handle_string_trace.__UNIQUE_ID_ddebug540, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_tracer_handle_string_trace, %if.then39)) #15
          to label %do.end42 [label %if.then39], !srcloc !229

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx5_tracer_handle_string_trace.__UNIQUE_ID_ddebug540, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, i32 noundef 7) #15
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %do.body27
  %list43 = getelementptr inbounds %struct.tracer_string_format, ptr %message.030.i.i, i32 0, i32 7
  %ready_strings_list44 = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 13
  %prev.i11 = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 13, i32 1
  %60 = ptrtoint ptr %prev.i11 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i11, align 4
  %call.i.i12 = tail call zeroext i1 @__list_add_valid(ptr noundef %list43, ptr noundef %61, ptr noundef %ready_strings_list44) #15
  br i1 %call.i.i12, label %if.end.i.i14, label %do.end42.cleanup_crit_edge

do.end42.cleanup_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i.i14:                                     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #17
  %62 = ptrtoint ptr %prev.i11 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %list43, ptr %prev.i11, align 4
  %63 = ptrtoint ptr %list43 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %ready_strings_list44, ptr %list43, align 4
  %prev3.i.i13 = getelementptr inbounds %struct.tracer_string_format, ptr %message.030.i.i, i32 0, i32 7, i32 1
  %64 = ptrtoint ptr %prev3.i.i13 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev3.i.i13, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %list43, ptr %61, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end22
  %string_param = getelementptr inbounds %struct.tracer_string_event, ptr %0, i32 0, i32 3
  %66 = ptrtoint ptr %string_param to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %string_param, align 4
  %arrayidx = getelementptr %struct.tracer_string_format, ptr %message.030.i.i, i32 0, i32 1, i32 %59
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %arrayidx, align 4
  %69 = ptrtoint ptr %last_param_num23 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %last_param_num23, align 4
  %num_of_params48 = getelementptr inbounds %struct.tracer_string_format, ptr %message.030.i.i, i32 0, i32 2
  %71 = ptrtoint ptr %num_of_params48 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_of_params48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp49 = icmp eq i32 %70, %72
  br i1 %cmp49, label %if.then50, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then50:                                        ; preds = %if.end45
  %list51 = getelementptr inbounds %struct.tracer_string_format, ptr %message.030.i.i, i32 0, i32 7
  %ready_strings_list52 = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 13
  %prev.i16 = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %tracer, i32 0, i32 13, i32 1
  %73 = ptrtoint ptr %prev.i16 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i16, align 4
  %call.i.i17 = tail call zeroext i1 @__list_add_valid(ptr noundef %list51, ptr noundef %74, ptr noundef %ready_strings_list52) #15
  br i1 %call.i.i17, label %if.end.i.i19, label %if.then50.cleanup_crit_edge

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i.i19:                                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #17
  %75 = ptrtoint ptr %prev.i16 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %list51, ptr %prev.i16, align 4
  %76 = ptrtoint ptr %list51 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %ready_strings_list52, ptr %list51, align 4
  %prev3.i.i18 = getelementptr inbounds %struct.tracer_string_format, ptr %message.030.i.i, i32 0, i32 7, i32 1
  %77 = ptrtoint ptr %prev3.i.i18 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev3.i.i18, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %list51, ptr %74, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i19, %if.then50.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end.i.i14, %do.end42.cleanup_crit_edge, %if.then19, %do.body, %if.end.i.i7, %if.then9.cleanup_crit_edge, %mlx5_tracer_get_num_of_params.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_tracer_print_trace(ptr noundef %str_frmt, ptr nocapture noundef readonly %dev, i64 noundef %trace_timestamp) unnamed_addr #11 align 64 {
entry:
  %tmp = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %tmp) #15
  %0 = call ptr @memset(ptr %tmp, i32 255, i32 512)
  %1 = ptrtoint ptr %str_frmt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %str_frmt, align 4
  %params = getelementptr inbounds %struct.tracer_string_format, ptr %str_frmt, i32 0, i32 1
  %3 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %params, align 4
  %arrayidx2 = getelementptr %struct.tracer_string_format, ptr %str_frmt, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.tracer_string_format, ptr %str_frmt, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.tracer_string_format, ptr %str_frmt, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr %struct.tracer_string_format, ptr %str_frmt, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr %struct.tracer_string_format, ptr %str_frmt, i32 0, i32 1, i32 5
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr %struct.tracer_string_format, ptr %str_frmt, i32 0, i32 1, i32 6
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx12, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp, i32 noundef 512, ptr noundef %2, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16)
  %tracer = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 29
  %17 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tracer, align 4
  %lost = getelementptr inbounds %struct.tracer_string_format, ptr %str_frmt, i32 0, i32 9
  %19 = ptrtoint ptr %lost to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %lost, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool = icmp ne i8 %20, 0
  %event_id = getelementptr inbounds %struct.tracer_string_format, ptr %str_frmt, i32 0, i32 4
  %21 = ptrtoint ptr %event_id to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %event_id, align 4
  call fastcc void @trace_mlx5_fw(ptr noundef %18, i64 noundef %trace_timestamp, i1 noundef zeroext %tobool, i8 noundef zeroext %22, ptr noundef nonnull %tmp)
  %23 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tracer, align 4
  %25 = ptrtoint ptr %lost to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %lost, align 4, !range !228
  %27 = ptrtoint ptr %event_id to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %event_id, align 4
  %st_arr.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %24, i32 0, i32 9
  %lock.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %24, i32 0, i32 9, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #15
  %saved_traces_index.i = getelementptr inbounds %struct.mlx5_fw_tracer, ptr %24, i32 0, i32 9, i32 1
  %29 = ptrtoint ptr %saved_traces_index.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %saved_traces_index.i, align 8
  %arrayidx.i = getelementptr [8192 x %struct.mlx5_fw_trace_data], ptr %st_arr.i, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %trace_timestamp, ptr %arrayidx.i, align 8
  %lost4.i = getelementptr [8192 x %struct.mlx5_fw_trace_data], ptr %st_arr.i, i32 0, i32 %30, i32 1
  %32 = ptrtoint ptr %lost4.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %26, ptr %lost4.i, align 8
  %event_id6.i = getelementptr [8192 x %struct.mlx5_fw_trace_data], ptr %st_arr.i, i32 0, i32 %30, i32 2
  %33 = ptrtoint ptr %event_id6.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %28, ptr %event_id6.i, align 1
  %msg7.i = getelementptr [8192 x %struct.mlx5_fw_trace_data], ptr %st_arr.i, i32 0, i32 %30, i32 3
  %call.i = call i32 @strscpy_pad(ptr noundef %msg7.i, ptr noundef nonnull %tmp, i32 noundef 256) #15
  %34 = ptrtoint ptr %saved_traces_index.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %saved_traces_index.i, align 8
  %add.i = add i32 %35, 1
  %and.i = and i32 %add.i, 8191
  store i32 %and.i, ptr %saved_traces_index.i, align 8
  call void @mutex_unlock(ptr noundef %lock.i) #15
  %hlist.i = getelementptr inbounds %struct.tracer_string_format, ptr %str_frmt, i32 0, i32 6
  %36 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hlist.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.tracer_string_format, ptr %str_frmt, i32 0, i32 6, i32 1
  %38 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pprev2.i.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %37, ptr %39, align 4
  %tobool.not.i.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i.i, label %entry.mlx5_tracer_clean_message.exit_crit_edge, label %do.body13.i.i.i

entry.mlx5_tracer_clean_message.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5_tracer_clean_message.exit

do.body13.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %37, i32 0, i32 1
  %41 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %pprev14.i.i.i, align 4
  br label %mlx5_tracer_clean_message.exit

mlx5_tracer_clean_message.exit:                   ; preds = %do.body13.i.i.i, %entry.mlx5_tracer_clean_message.exit_crit_edge
  %42 = ptrtoint ptr %hlist.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %hlist.i, align 4
  %43 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  call void @kfree(ptr noundef %str_frmt) #15
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %tmp) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_fw(ptr noundef %tracer, i64 noundef %trace_timestamp, i1 noundef zeroext %lost, i8 noundef zeroext %event_id, ptr noundef %msg) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_fw, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mlx5_fw, %do.body)) #15
          to label %if.end49 [label %do.body], !srcloc !229

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !215) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !225

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %if.end31

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !231
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_fw, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end49.critedge, label %if.end31.do.body2.i_crit_edge

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
  tail call void %15(ptr noundef %17, ptr noundef %tracer, i64 noundef %trace_timestamp, i1 noundef zeroext %lost, i8 noundef zeroext %event_id, ptr noundef %msg) #15
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool10.not.i = icmp eq ptr %19, null
  br i1 %tobool10.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !232
  br label %if.end49.sink.split

if.end49.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !232
  br label %if.end49.sink.split

if.end49.sink.split:                              ; preds = %if.end49.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i.i.i74.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i74.c to ptr
  %preempt_count.i.i75.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i75.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i75.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75.c, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end49.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i77 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !225

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %27, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %29 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i84
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i85.not = icmp eq i32 %32, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %33 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !233
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_fw, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_mlx5_fw.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_mlx5_fw.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 71, ptr noundef nonnull @.str.65) #15
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !234
  %38 = tail call i32 @llvm.read_register.i32(metadata !215) #15
  %and.i.i.i.i87 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_create_mkey(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @strchr(ptr, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !97, !99, !100, !101, !103, !104, !105, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !128, !130, !132, !134, !136, !138, !139, !140, !141, !142, !144, !145, !147, !148, !149, !150, !152, !153, !154, !155, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !176, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !196, !197, !198, !199, !201, !202, !203, !204, !206, !207, !209, !210, !211, !213, !214}
!llvm.named.register.sp = !{!215}
!llvm.module.flags = !{!216, !217, !218, !219, !220, !221, !222, !223}
!llvm.ident = !{!224}

!0 = !{ptr @__tracepoint_mlx5_fw, !1, !"__tracepoint_mlx5_fw", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/./diag/fw_tracer_tracepoint.h", i32 43, i32 1}
!2 = !{ptr @__tracepoint_ptr_mlx5_fw, !1, !"__tracepoint_ptr_mlx5_fw", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_mlx5_fw, !1, !"__SCK__tp_func_mlx5_fw", i1 false, i1 false}
!4 = !{ptr @event_class_mlx5_fw, !1, !"event_class_mlx5_fw", i1 false, i1 false}
!5 = !{ptr @event_mlx5_fw, !1, !"event_mlx5_fw", i1 false, i1 false}
!6 = !{ptr @__event_mlx5_fw, !1, !"__event_mlx5_fw", i1 false, i1 false}
!7 = !{ptr @__bpf_trace_tp_map_mlx5_fw, !1, !"__bpf_trace_tp_map_mlx5_fw", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 911, i32 47}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 936, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mlx5_fw_tracer_create.__UNIQUE_ID_ddebug553, !11, !"__UNIQUE_ID_ddebug553", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 944, i32 23}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mlx5_fw_tracer_create.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 953, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mlx5_fw_tracer_create.__key.8, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 954, i32 2}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mlx5_fw_tracer_create.__key.10, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 955, i32 2}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 960, i32 3}
!30 = !{ptr @mlx5_fw_tracer_create.__UNIQUE_ID_ddebug554, !29, !"__UNIQUE_ID_ddebug554", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 966, i32 3}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mlx5_fw_tracer_create._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @mlx5_fw_tracer_create._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 972, i32 3}
!39 = !{ptr @mlx5_fw_tracer_create._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mlx5_fw_tracer_create._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 977, i32 2}
!43 = !{ptr @mlx5_fw_tracer_create.__UNIQUE_ID_ddebug555, !42, !"__UNIQUE_ID_ddebug555", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 1009, i32 3}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mlx5_fw_tracer_init._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @mlx5_fw_tracer_init._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 1015, i32 3}
!51 = !{ptr @mlx5_fw_tracer_init._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mlx5_fw_tracer_init._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 1024, i32 3}
!55 = !{ptr @mlx5_fw_tracer_init._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @mlx5_fw_tracer_init._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 1045, i32 2}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @mlx5_fw_tracer_cleanup.__UNIQUE_ID_ddebug556, !58, !"__UNIQUE_ID_ddebug556", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 1064, i32 2}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mlx5_fw_tracer_destroy.__UNIQUE_ID_ddebug557, !62, !"__UNIQUE_ID_ddebug557", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 1116, i32 3}
!67 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @mlx5_fw_tracer_reload._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @mlx5_fw_tracer_reload._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 1121, i32 3}
!72 = !{ptr @mlx5_fw_tracer_reload._entry.34, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @mlx5_fw_tracer_reload._entry_ptr.36, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @__ksymtab___tracepoint_mlx5_fw, !75, !"__ksymtab___tracepoint_mlx5_fw", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 1150, i32 1}
!76 = !{ptr @__ksymtab___traceiter_mlx5_fw, !75, !"__ksymtab___traceiter_mlx5_fw", i1 false, i1 false}
!77 = !{ptr @__ksymtab___SCK__tp_func_mlx5_fw, !75, !"__ksymtab___SCK__tp_func_mlx5_fw", i1 false, i1 false}
!78 = !{ptr @__tpstrtab_mlx5_fw, !1, !"__tpstrtab_mlx5_fw", i1 false, i1 false}
!79 = !{ptr @str__mlx5__trace_system_name, !80, !"str__mlx5__trace_system_name", i1 false, i1 false}
!80 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!81 = !{ptr @.str.37, !1, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.38, !1, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.39, !1, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.40, !1, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.41, !1, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.42, !1, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.43, !1, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.44, !1, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.45, !1, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.46, !1, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @trace_event_fields_mlx5_fw, !1, !"trace_event_fields_mlx5_fw", i1 false, i1 false}
!92 = !{ptr @trace_event_type_funcs_mlx5_fw, !1, !"trace_event_type_funcs_mlx5_fw", i1 false, i1 false}
!93 = !{ptr @.str.47, !1, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @print_fmt_mlx5_fw, !1, !"print_fmt_mlx5_fw", i1 false, i1 false}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 870, i32 40}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 816, i32 2}
!99 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @mlx5_fw_tracer_ownership_change.__UNIQUE_ID_ddebug551, !98, !"__UNIQUE_ID_ddebug551", i1 false, i1 false}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 297, i32 5}
!103 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @mlx5_tracer_read_strings_db.__UNIQUE_ID_ddebug534, !102, !"__UNIQUE_ID_ddebug534", i1 false, i1 false}
!105 = !{ptr @mlx5_tracer_read_strings_db.__UNIQUE_ID_ddebug537, !106, !"__UNIQUE_ID_ddebug537", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 318, i32 5}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 674, i32 2}
!109 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @mlx5_fw_tracer_handle_traces.__UNIQUE_ID_ddebug542, !108, !"__UNIQUE_ID_ddebug542", i1 false, i1 false}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 710, i32 5}
!113 = !{ptr @mlx5_fw_tracer_handle_traces._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @mlx5_fw_tracer_handle_traces._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 657, i32 3}
!117 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @mlx5_tracer_handle_trace.__UNIQUE_ID_ddebug541, !116, !"__UNIQUE_ID_ddebug541", i1 false, i1 false}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 605, i32 4}
!121 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @mlx5_tracer_handle_string_trace.__UNIQUE_ID_ddebug539, !120, !"__UNIQUE_ID_ddebug539", i1 false, i1 false}
!123 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 611, i32 4}
!125 = !{ptr @mlx5_tracer_handle_string_trace.__UNIQUE_ID_ddebug540, !124, !"__UNIQUE_ID_ddebug540", i1 false, i1 false}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 352, i32 32}
!128 = distinct !{null, !129, !"VAL_PARM", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 352, i32 20}
!130 = distinct !{null, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 353, i32 42}
!132 = distinct !{null, !133, !"REPLACE_64_VAL_PARM", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 353, i32 20}
!134 = distinct !{null, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 354, i32 34}
!136 = distinct !{null, !137, !"PARAM_CHAR", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 354, i32 20}
!138 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!139 = !{ptr @.str.64, !1, !"<string literal>", i1 false, i1 false}
!140 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!141 = !{ptr @.str.65, !1, !"<string literal>", i1 false, i1 false}
!142 = distinct !{null, !143, !"__already_done", i1 false, i1 false}
!143 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!144 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 349, i32 3}
!147 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @mlx5_fw_tracer_arm._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @mlx5_fw_tracer_arm._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 50, i32 3}
!152 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @mlx5_query_mtrc_caps._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @mlx5_query_mtrc_caps._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 56, i32 3}
!157 = !{ptr @mlx5_query_mtrc_caps.__UNIQUE_ID_ddebug516, !156, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 140, i32 3}
!160 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @mlx5_fw_tracer_create_log_buf._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @mlx5_fw_tracer_create_log_buf._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 148, i32 3}
!165 = !{ptr @mlx5_fw_tracer_create_log_buf._entry.74, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @mlx5_fw_tracer_create_log_buf._entry_ptr.76, !164, !"_entry_ptr", i1 false, i1 false}
!167 = distinct !{null, !168, !"__already_done", i1 false, i1 false}
!168 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!169 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.78, !168, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @mlx5_fw_tracer_init_saved_traces_array.__key, !172, !"__key", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 252, i32 2}
!173 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.80, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 211, i32 3}
!176 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @mlx5_fw_tracer_create_mkey._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @mlx5_fw_tracer_create_mkey._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.82, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 785, i32 3}
!181 = !{ptr @.str.83, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @mlx5_fw_tracer_start.__UNIQUE_ID_ddebug549, !180, !"__UNIQUE_ID_ddebug549", i1 false, i1 false}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 792, i32 3}
!185 = !{ptr @mlx5_fw_tracer_start._entry, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @mlx5_fw_tracer_start._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 799, i32 3}
!189 = !{ptr @mlx5_fw_tracer_start._entry.85, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @mlx5_fw_tracer_start._entry_ptr.87, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 803, i32 2}
!193 = !{ptr @mlx5_fw_tracer_start.__UNIQUE_ID_ddebug550, !192, !"__UNIQUE_ID_ddebug550", i1 false, i1 false}
!194 = !{ptr @.str.89, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 102, i32 3}
!196 = !{ptr @.str.90, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @mlx5_fw_tracer_ownership_acquire._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @mlx5_fw_tracer_ownership_acquire._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.91, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 753, i32 3}
!201 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @mlx5_fw_tracer_set_mtrc_conf._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @mlx5_fw_tracer_set_mtrc_conf._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.93, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 1090, i32 3}
!206 = !{ptr @mlx5_fw_tracer_recreate_strings_db.__UNIQUE_ID_ddebug558, !205, !"__UNIQUE_ID_ddebug558", i1 false, i1 false}
!207 = !{ptr @.str.94, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 1096, i32 3}
!209 = !{ptr @mlx5_fw_tracer_recreate_strings_db._entry, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @mlx5_fw_tracer_recreate_strings_db._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.95, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/fw_tracer.c", i32 1143, i32 3}
!213 = !{ptr @.str.96, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @fw_tracer_event.__UNIQUE_ID_ddebug559, !212, !"__UNIQUE_ID_ddebug559", i1 false, i1 false}
!215 = !{!"sp"}
!216 = !{i32 1, !"wchar_size", i32 2}
!217 = !{i32 1, !"min_enum_size", i32 4}
!218 = !{i32 8, !"branch-target-enforcement", i32 0}
!219 = !{i32 8, !"sign-return-address", i32 0}
!220 = !{i32 8, !"sign-return-address-all", i32 0}
!221 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!222 = !{i32 7, !"uwtable", i32 1}
!223 = !{i32 7, !"frame-pointer", i32 2}
!224 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!225 = !{!"branch_weights", i32 2000, i32 1}
!226 = !{!"branch_weights", i32 1, i32 2000}
!227 = !{!"auto-init"}
!228 = !{i8 0, i8 2}
!229 = !{i64 2148759625, i64 2148759630, i64 2148759643, i64 2148759687, i64 2148759721, i64 2148759742}
!230 = !{i32 0, i32 33}
!231 = !{i64 2158752931}
!232 = !{i64 2158753196}
!233 = !{i64 2150195081}
!234 = !{i64 2150196117}
