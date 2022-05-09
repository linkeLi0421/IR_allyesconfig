; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mlx5_fpga_conn = type { ptr, ptr, ptr, [24 x i32], i32, %struct.anon.156, %struct.anon.166 }
%struct.anon.156 = type { %struct.mlx5_cqwq, %struct.mlx5_wq_ctrl, %struct.mlx5_core_cq, %struct.tasklet_struct }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.157, i32, i32 }
%union.anon.157 = type { ptr }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.164, i32, %struct.list_head, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.164 = type { %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.165, i32 }
%union.anon.165 = type { ptr }
%struct.anon.166 = type { i8, i32, %struct.mlx5_wq_qp, %struct.mlx5_wq_ctrl, i32, %struct.anon.167, %struct.anon.168 }
%struct.mlx5_wq_qp = type { %struct.mlx5_wq_cyc, %struct.mlx5_wq_cyc }
%struct.mlx5_wq_cyc = type { %struct.mlx5_frag_buf_ctrl, ptr, i16, i16, i16 }
%struct.anon.167 = type { %struct.spinlock, i32, i32, i32, ptr, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.168 = type { i32, i32, i32, ptr }
%struct.mlx5_fpga_dma_buf = type { i32, [2 x %struct.mlx5_fpga_dma_entry], %struct.list_head, ptr }
%struct.mlx5_fpga_dma_entry = type { ptr, i32, i32 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.151, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.128 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.127 = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.mlx5_buf_list = type { ptr, i32 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.174 }
%union.anon.174 = type { i32 }
%struct.mlx5_fpga_device = type { ptr, %struct.mlx5_nb, %struct.mlx5_nb, %struct.spinlock, i32, i32, i32, %struct.anon.155, ptr, ptr }
%struct.anon.155 = type { i32, i32, ptr }
%struct.mlx5_wqe_data_seg = type { i32, i32, i64 }
%struct.mlx5_fpga_conn_attr = type { i32, i32, ptr, ptr }
%struct.mlx5_wq_param = type { i32, i32 }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.175, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.178, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.175 = type { %struct.anon.176 }
%struct.anon.176 = type { i8, i8, i16, i32 }
%union.anon.178 = type { i32 }
%struct.mlx5_uars_page = type { ptr, i8, i32, %struct.list_head, i32, ptr, ptr, i32, i32, %struct.kref, ptr }
%struct.mlx5_err_cqe = type { [32 x i8], i32, [18 x i8], i8, i8, i32, i16, i8, i8 }

@mlx5_fpga_conn_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&conn->qp.sq.lock\00", [46 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 836, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failed to query local MAC: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_fpga_conn_create\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_create._entry_ptr = internal global ptr @mlx5_fpga_conn_create._entry, section ".printk_index", align 4
@mlx5_fpga_conn_create._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 849, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failed to allocate SGID: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_create._entry_ptr.8 = internal global ptr @mlx5_fpga_conn_create._entry.6, section ".printk_index", align 4
@mlx5_fpga_conn_create._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 860, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failed to set SGID: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_create._entry_ptr.11 = internal global ptr @mlx5_fpga_conn_create._entry.9, section ".printk_index", align 4
@mlx5_fpga_conn_create.__UNIQUE_ID_ddebug589 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 -40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Reserved SGID index %u\0A\00", [34 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_create._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 872, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failed to create CQ: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_create._entry_ptr.16 = internal global ptr @mlx5_fpga_conn_create._entry.14, section ".printk_index", align 4
@mlx5_fpga_conn_create._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 881, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failed to create QP: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_create._entry_ptr.19 = internal global ptr @mlx5_fpga_conn_create._entry.17, section ".printk_index", align 4
@mlx5_fpga_conn_create._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 901, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failed to create FPGA RC QP: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_create._entry_ptr.22 = internal global ptr @mlx5_fpga_conn_create._entry.20, section ".printk_index", align 4
@mlx5_fpga_conn_create.__UNIQUE_ID_ddebug601 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.2, ptr @.str.3, ptr @.str.23, i8 0, i8 -28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): FPGA QPN is %u\0A\00", [42 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 955, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failed to enable RoCE: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mlx5_fpga_conn_device_init\00", [37 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_device_init._entry_ptr = internal global ptr @mlx5_fpga_conn_device_init._entry, section ".printk_index", align 4
@mlx5_fpga_conn_device_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 962, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): get_uars_page failed, %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_device_init._entry_ptr.28 = internal global ptr @mlx5_fpga_conn_device_init._entry.26, section ".printk_index", align 4
@mlx5_fpga_conn_device_init.__UNIQUE_ID_ddebug602 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.25, ptr @.str.3, ptr @.str.29, i8 0, i8 -15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Allocated UAR index %u\0A\00", [34 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_device_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.25, ptr @.str.3, i32 970, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): alloc pd failed, %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_device_init._entry_ptr.32 = internal global ptr @mlx5_fpga_conn_device_init._entry.30, section ".printk_index", align 4
@mlx5_fpga_conn_device_init.__UNIQUE_ID_ddebug603 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.25, ptr @.str.3, ptr @.str.33, i8 0, i8 -13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Allocated PD %u\0A\00", [41 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_device_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.25, ptr @.str.3, i32 978, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): create mkey failed, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_device_init._entry_ptr.36 = internal global ptr @mlx5_fpga_conn_device_init._entry.34, section ".printk_index", align 4
@mlx5_fpga_conn_device_init.__UNIQUE_ID_ddebug604 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.25, ptr @.str.3, ptr @.str.37, i8 0, i8 -11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Created mkey 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_map_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 62, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): DMA error on sg 0: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5_fpga_conn_map_buf\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_map_buf._entry_ptr = internal global ptr @mlx5_fpga_conn_map_buf._entry, section ".printk_index", align 4
@mlx5_fpga_conn_map_buf._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.39, ptr @.str.3, i32 74, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): DMA error on sg 1: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_map_buf._entry_ptr.43 = internal global ptr @mlx5_fpga_conn_map_buf._entry.41, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5_fpga_conn_create_cq.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.46, ptr @.str.3, ptr @.str.47, i8 0, i8 120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx5_fpga_conn_create_cq\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Created CQ #0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_cqes.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 0, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mlx5_fpga_conn_cqes\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Re-arming CQ with cc# %u\0A\00", [32 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_handle_cqe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 355, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Unexpected cqe opcode %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlx5_fpga_conn_handle_cqe\00", [38 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_handle_cqe._entry_ptr = internal global ptr @mlx5_fpga_conn_handle_cqe._entry, section ".printk_index", align 4
@mlx5_fpga_conn_sq_cqe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 318, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): SQ buf %p on FPGA QP %u completion status %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_fpga_conn_sq_cqe\00", [42 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_sq_cqe._entry_ptr = internal global ptr @mlx5_fpga_conn_sq_cqe._entry, section ".printk_index", align 4
@mlx5_fpga_conn_sq_cqe.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.53, ptr @.str.3, ptr @.str.52, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mlx5_fpga_conn_rq_cqe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 263, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): RQ buf %p on FPGA QP %u completion status %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_fpga_conn_rq_cqe\00", [42 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_rq_cqe._entry_ptr = internal global ptr @mlx5_fpga_conn_rq_cqe._entry, section ".printk_index", align 4
@mlx5_fpga_conn_rq_cqe.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.55, ptr @.str.3, ptr @.str.54, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mlx5_fpga_conn_rq_cqe.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 0, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Message with %u bytes received successfully\0A\00", [45 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_rq_cqe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.55, ptr @.str.3, i32 285, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failed to re-post recv buf: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_rq_cqe._entry_ptr.59 = internal global ptr @mlx5_fpga_conn_rq_cqe._entry.57, section ".printk_index", align 4
@mlx5_fpga_conn_create_qp.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.60, ptr @.str.3, ptr @.str.61, i8 0, i8 -109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx5_fpga_conn_create_qp\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Created QP #0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 766, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failed to activate FPGA RC QP: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5_fpga_conn_connect\00", [41 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_connect._entry_ptr = internal global ptr @mlx5_fpga_conn_connect._entry, section ".printk_index", align 4
@mlx5_fpga_conn_connect._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.3, i32 772, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failed to change QP state to reset\0A\00", [54 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_connect._entry_ptr.66 = internal global ptr @mlx5_fpga_conn_connect._entry.64, section ".printk_index", align 4
@mlx5_fpga_conn_connect._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.3, i32 778, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failed to modify QP from RESET to INIT\0A\00", [50 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_connect._entry_ptr.69 = internal global ptr @mlx5_fpga_conn_connect._entry.67, section ".printk_index", align 4
@mlx5_fpga_conn_connect._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.63, ptr @.str.3, i32 788, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failed to change QP state from INIT to RTR\0A\00", [46 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_connect._entry_ptr.72 = internal global ptr @mlx5_fpga_conn_connect._entry.70, section ".printk_index", align 4
@mlx5_fpga_conn_connect._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.63, ptr @.str.3, i32 794, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failed to change QP state from RTR to RTS\0A\00", [47 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_connect._entry_ptr.75 = internal global ptr @mlx5_fpga_conn_connect._entry.73, section ".printk_index", align 4
@mlx5_fpga_conn_connect._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.63, ptr @.str.3, i32 805, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failed to revert FPGA QP to INIT\0A\00", [56 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_connect._entry_ptr.78 = internal global ptr @mlx5_fpga_conn_connect._entry.76, section ".printk_index", align 4
@mlx5_fpga_conn_reset_qp.__UNIQUE_ID_ddebug550 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.79, ptr @.str.3, ptr @.str.80, i8 0, i8 -91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlx5_fpga_conn_reset_qp\00", [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Modifying QP %u to RST\0A\00", [34 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_init_qp.__UNIQUE_ID_ddebug553 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.81, ptr @.str.3, ptr @.str.82, i8 0, i8 -87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5_fpga_conn_init_qp\00", [41 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Modifying QP %u to INIT\0A\00", [33 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_rtr_qp.__UNIQUE_ID_ddebug565 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.83, ptr @.str.3, ptr @.str.84, i8 0, i8 -81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_fpga_conn_rtr_qp\00", [42 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): QP RTR\0A\00", [50 x i8] zeroinitializer }, align 32
@mlx5_fpga_conn_rts_qp.__UNIQUE_ID_ddebug577 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.85, ptr @.str.3, ptr @.str.86, i8 0, i8 -72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_fpga_conn_rts_qp\00", [42 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): QP RTS\0A\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 4, i64 0, i64 2, i64 13, i64 14]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 828, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 836, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 849, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 860, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 864, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 872, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 881, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 901, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 912, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 955, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 962, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 965, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 970, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 973, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 978, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 981, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 62, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 74, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 326, i32 6 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 481, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 385, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 354, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 317, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 262, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 277, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 284, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 590, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 766, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 772, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 778, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 788, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 794, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 805, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 662, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 677, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 703, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.327 = private constant [55 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 738, i32 2 }
@llvm.compiler.used = appending global [102 x ptr] [ptr @mlx5_fpga_conn_connect._entry, ptr @mlx5_fpga_conn_connect._entry.64, ptr @mlx5_fpga_conn_connect._entry.67, ptr @mlx5_fpga_conn_connect._entry.70, ptr @mlx5_fpga_conn_connect._entry.73, ptr @mlx5_fpga_conn_connect._entry.76, ptr @mlx5_fpga_conn_connect._entry_ptr, ptr @mlx5_fpga_conn_connect._entry_ptr.66, ptr @mlx5_fpga_conn_connect._entry_ptr.69, ptr @mlx5_fpga_conn_connect._entry_ptr.72, ptr @mlx5_fpga_conn_connect._entry_ptr.75, ptr @mlx5_fpga_conn_connect._entry_ptr.78, ptr @mlx5_fpga_conn_create._entry, ptr @mlx5_fpga_conn_create._entry.14, ptr @mlx5_fpga_conn_create._entry.17, ptr @mlx5_fpga_conn_create._entry.20, ptr @mlx5_fpga_conn_create._entry.6, ptr @mlx5_fpga_conn_create._entry.9, ptr @mlx5_fpga_conn_create._entry_ptr, ptr @mlx5_fpga_conn_create._entry_ptr.11, ptr @mlx5_fpga_conn_create._entry_ptr.16, ptr @mlx5_fpga_conn_create._entry_ptr.19, ptr @mlx5_fpga_conn_create._entry_ptr.22, ptr @mlx5_fpga_conn_create._entry_ptr.8, ptr @mlx5_fpga_conn_device_init._entry, ptr @mlx5_fpga_conn_device_init._entry.26, ptr @mlx5_fpga_conn_device_init._entry.30, ptr @mlx5_fpga_conn_device_init._entry.34, ptr @mlx5_fpga_conn_device_init._entry_ptr, ptr @mlx5_fpga_conn_device_init._entry_ptr.28, ptr @mlx5_fpga_conn_device_init._entry_ptr.32, ptr @mlx5_fpga_conn_device_init._entry_ptr.36, ptr @mlx5_fpga_conn_handle_cqe._entry, ptr @mlx5_fpga_conn_handle_cqe._entry_ptr, ptr @mlx5_fpga_conn_map_buf._entry, ptr @mlx5_fpga_conn_map_buf._entry.41, ptr @mlx5_fpga_conn_map_buf._entry_ptr, ptr @mlx5_fpga_conn_map_buf._entry_ptr.43, ptr @mlx5_fpga_conn_rq_cqe._entry, ptr @mlx5_fpga_conn_rq_cqe._entry.57, ptr @mlx5_fpga_conn_rq_cqe._entry_ptr, ptr @mlx5_fpga_conn_rq_cqe._entry_ptr.59, ptr @mlx5_fpga_conn_sq_cqe._entry, ptr @mlx5_fpga_conn_sq_cqe._entry_ptr, ptr @mlx5_fpga_conn_create.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_conn_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_conn_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_conn_create._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_conn_create._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_conn_create._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_conn_create._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_conn_create._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_conn_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_conn_device_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_conn_device_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_conn_device_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_conn_map_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_conn_map_buf._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_conn_handle_cqe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_conn_sq_cqe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_conn_rq_cqe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_conn_rq_cqe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_conn_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_conn_connect._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_conn_connect._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_conn_connect._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_conn_connect._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_conn_connect._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fpga_conn_send(ptr noundef %conn, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %qp, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %buf, align 4
  %call = tail call fastcc i32 @mlx5_fpga_conn_map_buf(ptr noundef %conn, ptr noundef %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.body4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body4:                                         ; preds = %if.end
  %sq = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 5
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sq) #10
  %pc = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 5, i32 1
  %3 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pc, align 4
  %cc = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 5, i32 2
  %5 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cc, align 4
  %sub = sub i32 %4, %6
  %size = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 5, i32 3
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %8)
  %cmp16.not = icmp ult i32 %sub, %8
  br i1 %cmp16.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %do.body4
  %list = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 2
  %backlog = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 5, i32 5
  %prev.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 5, i32 5, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %10, ptr noundef %backlog) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then18.out_unlock_crit_edge

if.then18.out_unlock_crit_edge:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end.i.i:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %backlog, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %list, ptr %10, align 4
  br label %out_unlock

if.end21:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mlx5_fpga_conn_post_send(ptr noundef %conn, ptr noundef %buf)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end21, %if.end.i.i, %if.then18.out_unlock_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sq, i32 noundef %call7) #10
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out_unlock ], [ -107, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_fpga_conn_map_buf(ptr nocapture noundef readonly %conn, ptr nocapture noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sg = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end, !prof !168

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %pdev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %size = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %1) #10
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !169

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev1.i) #10
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %dma_addr127 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %dma_addr127 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %dma_addr127, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev1.i, i32 noundef -1) #10
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %dev1.i, ptr noundef nonnull %1, i32 noundef %9) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %17 = load ptr, ptr @mem_map, align 4
  %18 = ptrtoint ptr %1 to i32
  %sub.i = add i32 %18, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %17, i32 %shr.i
  %and.i = and i32 %18, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev1.i, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %9, i32 noundef %11, i32 noundef 0) #10
  %dma_addr = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call41.i, ptr %dma_addr, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev1.i, i32 noundef %call41.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end30

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  %20 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %conn, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %26 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i104 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i104 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef 62, i32 noundef %31, ptr noundef nonnull @.str.39, i32 noundef 62, i32 noundef %31, i32 noundef -12) #13
  br label %out

if.end30:                                         ; preds = %dma_map_single_attrs.exit
  %arrayidx32 = getelementptr %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx32, align 4
  %tobool34.not = icmp eq ptr %33, null
  br i1 %tobool34.not, label %if.end30.out_crit_edge, label %if.end36

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end36:                                         ; preds = %if.end30
  %size42 = getelementptr %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 1, i32 1, i32 1
  %34 = ptrtoint ptr %size42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size42, align 4
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf, align 4
  %call.i105 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %33) #10
  br i1 %call.i105, label %land.rhs.i107, label %dma_map_single_attrs.exit122

land.rhs.i107:                                    ; preds = %if.end36
  %.b1.i106 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i106, label %land.rhs.i107.dma_map_single_attrs.exit122.thread_crit_edge, label %if.then.i111, !prof !169

land.rhs.i107.dma_map_single_attrs.exit122.thread_crit_edge: ; preds = %land.rhs.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit122.thread

if.then.i111:                                     ; preds = %land.rhs.i107
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i108 = tail call ptr @dev_driver_string(ptr noundef %dev1.i) #10
  %init_name.i.i109 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 3
  %38 = ptrtoint ptr %init_name.i.i109 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i.i109, align 8
  %tobool.not.i.i110 = icmp eq ptr %39, null
  br i1 %tobool.not.i.i110, label %if.end.i.i112, label %if.then.i111.dev_name.exit.i114_crit_edge

if.then.i111.dev_name.exit.i114_crit_edge:        ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i114

if.end.i.i112:                                    ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1.i, align 4
  br label %dev_name.exit.i114

dev_name.exit.i114:                               ; preds = %if.end.i.i112, %if.then.i111.dev_name.exit.i114_crit_edge
  %retval.0.i.i113 = phi ptr [ %41, %if.end.i.i112 ], [ %39, %if.then.i111.dev_name.exit.i114_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef %call16.i108, ptr noundef %retval.0.i.i113) #10
  br label %dma_map_single_attrs.exit122.thread

dma_map_single_attrs.exit122.thread:              ; preds = %dev_name.exit.i114, %land.rhs.i107.dma_map_single_attrs.exit122.thread_crit_edge
  %dma_addr47135 = getelementptr %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 1, i32 1, i32 2
  %42 = ptrtoint ptr %dma_addr47135 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %dma_addr47135, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev1.i, i32 noundef -1) #10
  br label %do.end62

dma_map_single_attrs.exit122:                     ; preds = %if.end36
  tail call void @debug_dma_map_single(ptr noundef %dev1.i, ptr noundef nonnull %33, i32 noundef %35) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %43 = load ptr, ptr @mem_map, align 4
  %44 = ptrtoint ptr %33 to i32
  %sub.i115 = add i32 %44, 1073741824
  %shr.i116 = lshr i32 %sub.i115, 12
  %add.ptr.i117 = getelementptr %struct.page, ptr %43, i32 %shr.i116
  %and.i118 = and i32 %44, 4095
  %call41.i119 = tail call i32 @dma_map_page_attrs(ptr noundef %dev1.i, ptr noundef %add.ptr.i117, i32 noundef %and.i118, i32 noundef %35, i32 noundef %37, i32 noundef 0) #10
  %dma_addr47 = getelementptr %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 1, i32 1, i32 2
  %45 = ptrtoint ptr %dma_addr47 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call41.i119, ptr %dma_addr47, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev1.i, i32 noundef %call41.i119) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i119)
  %cmp.i123 = icmp eq i32 %call41.i119, -1
  br i1 %cmp.i123, label %dma_map_single_attrs.exit122.do.end62_crit_edge, label %dma_map_single_attrs.exit122.out_crit_edge

dma_map_single_attrs.exit122.out_crit_edge:       ; preds = %dma_map_single_attrs.exit122
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

dma_map_single_attrs.exit122.do.end62_crit_edge:  ; preds = %dma_map_single_attrs.exit122
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end62

do.end62:                                         ; preds = %dma_map_single_attrs.exit122.do.end62_crit_edge, %dma_map_single_attrs.exit122.thread
  %46 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %conn, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %52 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i125 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i125 to ptr
  %task67 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task67 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task67, align 8
  %pid68 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 68
  %56 = ptrtoint ptr %pid68 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pid68, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.39, i32 noundef 74, i32 noundef %57, ptr noundef nonnull @.str.39, i32 noundef 74, i32 noundef %57, i32 noundef -12) #13
  %58 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dma_addr, align 4
  %60 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size, align 4
  %62 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %buf, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i, i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef 0) #10
  br label %out

out:                                              ; preds = %do.end62, %dma_map_single_attrs.exit122.out_crit_edge, %if.end30.out_crit_edge, %do.end, %entry.out_crit_edge
  %err.0 = phi i32 [ 0, %entry.out_crit_edge ], [ -12, %do.end ], [ -12, %do.end62 ], [ 0, %if.end30.out_crit_edge ], [ 0, %dma_map_single_attrs.exit122.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_fpga_conn_post_send(ptr nocapture noundef %conn, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pc = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 5, i32 1
  %0 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pc, align 4
  %size3 = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 5, i32 3
  %2 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size3, align 4
  %sub = add i32 %3, -1
  %and = and i32 %sub, %1
  %sq5 = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 2, i32 1
  %conv.i = and i32 %and, 65535
  %strides_offset.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 2, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.i.i = add nuw nsw i32 %conv.i, %conv.i.i
  %log_frag_strides.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 2, i32 1, i32 0, i32 6
  %6 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i.i = zext i8 %7 to i32
  %shr.i.i = lshr i32 %add.i.i, %conv1.i.i
  %8 = ptrtoint ptr %sq5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sq5, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5_buf_list, ptr %9, i32 %shr.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %frag_sz_m1.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 2, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv2.i.i = zext i16 %13 to i32
  %and.i.i = and i32 %add.i.i, %conv2.i.i
  %log_stride.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 2, i32 1, i32 0, i32 5
  %14 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i = zext i8 %15 to i32
  %shl.i.i = shl i32 %and.i.i, %conv3.i.i
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %shl.i.i
  %arrayidx = getelementptr %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 1, i32 0
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %if.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i, i32 1
  %size10 = getelementptr %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %size10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size10, align 4
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %add.ptr, align 8
  %21 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %conn, align 4
  %mkey = getelementptr inbounds %struct.mlx5_fpga_device, ptr %22, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %mkey to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mkey, align 4
  %lkey = getelementptr inbounds %struct.mlx5_wqe_data_seg, ptr %add.ptr, i32 0, i32 1
  %25 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %lkey, align 4
  %dma_addr = getelementptr %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_addr, align 4
  %conv13 = zext i32 %27 to i64
  %addr = getelementptr inbounds %struct.mlx5_wqe_data_seg, ptr %add.ptr, i32 0, i32 2
  %28 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv13, ptr %addr, align 8
  %arrayidx.1 = getelementptr %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %30, null
  br i1 %tobool.not.1, label %if.end.for.end_crit_edge, label %if.end.1

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr = getelementptr %struct.mlx5_wqe_data_seg, ptr %add.ptr, i32 1
  %size10.1 = getelementptr %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 1, i32 1, i32 1
  %31 = ptrtoint ptr %size10.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size10.1, align 4
  %33 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %incdec.ptr, align 8
  %34 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %conn, align 4
  %mkey.1 = getelementptr inbounds %struct.mlx5_fpga_device, ptr %35, i32 0, i32 7, i32 1
  %36 = ptrtoint ptr %mkey.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mkey.1, align 4
  %lkey.1 = getelementptr inbounds %struct.mlx5_wqe_data_seg, ptr %incdec.ptr, i32 0, i32 1
  %38 = ptrtoint ptr %lkey.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %lkey.1, align 4
  %dma_addr.1 = getelementptr %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 1, i32 1, i32 2
  %39 = ptrtoint ptr %dma_addr.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_addr.1, align 4
  %conv13.1 = zext i32 %40 to i64
  %addr.1 = getelementptr inbounds %struct.mlx5_wqe_data_seg, ptr %incdec.ptr, i32 0, i32 2
  %41 = ptrtoint ptr %addr.1 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv13.1, ptr %addr.1, align 8
  br label %for.end

for.end:                                          ; preds = %if.end.1, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %size.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ 2, %if.end.for.end_crit_edge ], [ 3, %if.end.1 ]
  %42 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i, i32 0, i32 5
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %42, align 4
  %fm_ce_se = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %fm_ce_se to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 8, ptr %fm_ce_se, align 1
  %45 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pc, align 4
  %and18 = shl i32 %46, 8
  %shl = and i32 %and18, 16776960
  %or = or i32 %shl, 10
  %47 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or, ptr %add.ptr.i.i, align 4
  %qpn = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 4
  %48 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %qpn, align 4
  %shl20 = shl i32 %49, 8
  %or21 = or i32 %shl20, %size.0.lcssa
  %qpn_ds = getelementptr %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %qpn_ds to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or21, ptr %qpn_ds, align 4
  %51 = load i32, ptr %pc, align 4
  %inc25 = add i32 %51, 1
  store i32 %inc25, ptr %pc, align 4
  %bufs = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 5, i32 4
  %52 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bufs, align 4
  %arrayidx28 = getelementptr ptr, ptr %53, i32 %and
  %54 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %buf, ptr %arrayidx28, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !170
  %55 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pc, align 4
  %db.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 2, i32 1, i32 1
  %57 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %db.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %56, ptr %58, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !171
  tail call void @arm_heavy_mb() #10
  %60 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %conn, align 4
  %uar.i = getelementptr inbounds %struct.mlx5_fpga_device, ptr %61, i32 0, i32 7, i32 2
  %62 = ptrtoint ptr %uar.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %uar.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %add.ptr.i = getelementptr i8, ptr %65, i32 2048
  %66 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %67) #10, !srcloc !172
  %68 = ptrtoint ptr %qpn_ds to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %qpn_ds, align 4
  %add.ptr.i.i54 = getelementptr i8, ptr %65, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i54, i32 %69) #10, !srcloc !172
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_fpga_conn_create(ptr noundef %fdev, ptr nocapture noundef readonly %attr, i32 noundef %qp_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_cb = getelementptr inbounds %struct.mlx5_fpga_conn_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %recv_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recv_cb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 532) #14
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fdev, ptr %call7.i.i, align 8
  %sq = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 6, i32 5
  %backlog = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 6, i32 5, i32 5
  %4 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %backlog, ptr %backlog, align 4
  %prev.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 6, i32 5, i32 5, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %backlog, ptr %prev.i, align 8
  tail call void @__raw_spin_lock_init(ptr noundef %sq, ptr noundef nonnull @.str, ptr noundef nonnull @mlx5_fpga_conn_create.__key, i16 noundef signext 3) #10
  %6 = ptrtoint ptr %recv_cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %recv_cb, align 4
  %recv_cb11 = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %recv_cb11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %recv_cb11, align 4
  %cb_arg = getelementptr inbounds %struct.mlx5_fpga_conn_attr, ptr %attr, i32 0, i32 3
  %9 = ptrtoint ptr %cb_arg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cb_arg, align 4
  %cb_arg12 = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %cb_arg12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %cb_arg12, align 8
  %fpga_qpc = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 3
  %add.ptr = getelementptr i8, ptr %fpga_qpc, i32 42
  %12 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fdev, align 4
  %call13 = tail call i32 @mlx5_query_mac_address(ptr noundef %13, ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end25, label %do.end18

do.end18:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fdev, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %18 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 836, i32 noundef %23, ptr noundef nonnull @.str.2, i32 noundef 836, i32 noundef %23, i32 noundef %call13) #13
  br label %err364

if.end25:                                         ; preds = %if.end5
  %add.ptr28 = getelementptr %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 3, i32 12
  %24 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -2, ptr %add.ptr28, align 4
  %arrayidx29 = getelementptr i8, ptr %add.ptr28, i32 1
  %25 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -128, ptr %arrayidx29, align 1
  %arrayidx30 = getelementptr %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 3, i32 14
  %26 = call ptr @memcpy(ptr %arrayidx30, ptr %add.ptr, i32 3)
  %arrayidx.i.i = getelementptr i8, ptr %arrayidx30, i32 3
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %arrayidx.i.i, align 1
  %arrayidx1.i.i = getelementptr %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 3, i32 15
  %28 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -2, ptr %arrayidx1.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx30, i32 5
  %add.ptr2.i.i = getelementptr i8, ptr %fpga_qpc, i32 45
  %29 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr2.i.i, i32 3)
  %30 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx30, align 4
  %32 = xor i8 %31, 2
  store i8 %32, ptr %arrayidx30, align 4
  %33 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fdev, align 4
  %sgid_index = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 6, i32 1
  %call33 = tail call i32 @mlx5_core_reserved_gid_alloc(ptr noundef %34, ptr noundef %sgid_index) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  %35 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fdev, align 4
  br i1 %tobool34.not, label %if.end48, label %do.end38

do.end38:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %39 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i464 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i464 to ptr
  %task42 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task42, align 8
  %pid43 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 68
  %43 = ptrtoint ptr %pid43 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pid43, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 849, i32 noundef %44, ptr noundef nonnull @.str.2, i32 noundef 849, i32 noundef %44, i32 noundef %call33) #13
  br label %err364

if.end48:                                         ; preds = %if.end25
  %45 = ptrtoint ptr %sgid_index to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sgid_index, align 4
  %call52 = tail call i32 @mlx5_core_roce_gid_set(ptr noundef %36, i32 noundef %46, i8 noundef zeroext 2, i8 noundef zeroext 1, ptr noundef %add.ptr28, ptr noundef %add.ptr, i1 noundef zeroext true, i16 noundef zeroext 0, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %do.body68, label %do.end57

do.end57:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fdev, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %51 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i465 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i465 to ptr
  %task61 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task61 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task61, align 8
  %pid62 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 68
  %55 = ptrtoint ptr %pid62 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pid62, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef 860, i32 noundef %56, ptr noundef nonnull @.str.2, i32 noundef 860, i32 noundef %56, i32 noundef %call52) #13
  br label %err_rsvd_gid

do.body68:                                        ; preds = %if.end48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fpga_conn_create.__UNIQUE_ID_ddebug589, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fpga_conn_create, %if.then73)) #10
          to label %do.end86 [label %if.then73], !srcloc !173

if.then73:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fdev, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %61 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i466 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i466 to ptr
  %task77 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %task77 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task77, align 8
  %pid78 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 68
  %65 = ptrtoint ptr %pid78 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pid78, align 8
  %67 = ptrtoint ptr %sgid_index to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sgid_index, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fpga_conn_create.__UNIQUE_ID_ddebug589, ptr noundef %60, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef 864, i32 noundef %66, ptr noundef nonnull @.str.2, i32 noundef 864, i32 noundef %66, i32 noundef %68) #10
  br label %do.end86

do.end86:                                         ; preds = %if.then73, %do.body68
  %69 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %attr, align 4
  %rx_size = getelementptr inbounds %struct.mlx5_fpga_conn_attr, ptr %attr, i32 0, i32 1
  %71 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_size, align 4
  %add = add i32 %72, %70
  %mul = shl i32 %add, 1
  %call87 = tail call fastcc i32 @mlx5_fpga_conn_create_cq(ptr noundef nonnull %call7.i.i, i32 noundef %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end102, label %do.end92

do.end92:                                         ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fdev, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 8
  %77 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i467 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i467 to ptr
  %task96 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task96 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task96, align 8
  %pid97 = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 68
  %81 = ptrtoint ptr %pid97 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pid97, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 872, i32 noundef %82, ptr noundef nonnull @.str.2, i32 noundef 872, i32 noundef %82, i32 noundef %call87) #13
  br label %err_gid

if.end102:                                        ; preds = %do.end86
  %mcq.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 5, i32 2
  %83 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %call7.i.i, align 8
  %uar.i = getelementptr inbounds %struct.mlx5_fpga_device, ptr %84, i32 0, i32 7, i32 2
  %85 = ptrtoint ptr %uar.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %uar.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %cc.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 2
  %89 = ptrtoint ptr %cc.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cc.i, align 4
  %arm_sn.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 5, i32 2, i32 12
  %91 = ptrtoint ptr %arm_sn.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arm_sn.i.i, align 8
  %and1.i.i = and i32 %90, 16777215
  %and.i.i = shl i32 %92, 28
  %shl.i.i = and i32 %and.i.i, 805306368
  %or2.i.i = or i32 %shl.i.i, %and1.i.i
  %arm_db.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 5, i32 2, i32 3
  %93 = ptrtoint ptr %arm_db.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arm_db.i.i, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or2.i.i, ptr %94, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !174
  tail call void @arm_heavy_mb() #10
  %96 = ptrtoint ptr %mcq.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mcq.i, align 4
  %add.ptr.i.i468 = getelementptr i8, ptr %88, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i468, i32 %or2.i.i) #10, !srcloc !172
  %add.ptr.i.i.i = getelementptr i8, ptr %88, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %97) #10, !srcloc !172
  %98 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %attr, align 4
  %100 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rx_size, align 4
  %call105 = tail call fastcc i32 @mlx5_fpga_conn_create_qp(ptr noundef nonnull %call7.i.i, i32 noundef %99, i32 noundef %101)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %do.body121, label %do.end110

do.end110:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %fdev, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 8
  %106 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i469 = and i32 %106, -16384
  %107 = inttoptr i32 %and.i469 to ptr
  %task114 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %task114 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %task114, align 8
  %pid115 = getelementptr inbounds %struct.task_struct, ptr %109, i32 0, i32 68
  %110 = ptrtoint ptr %pid115 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pid115, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 881, i32 noundef %111, ptr noundef nonnull @.str.2, i32 noundef 881, i32 noundef %111, i32 noundef %call105) #13
  br label %err_cq

do.body121:                                       ; preds = %if.end102
  %112 = ptrtoint ptr %fpga_qpc to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %fpga_qpc, align 4
  %and142 = and i32 %113, 268435454
  %and143 = and i32 %qp_type, 1
  %or145 = or i32 %and142, %and143
  store i32 %or145, ptr %fpga_qpc, align 4
  %add.ptr158 = getelementptr %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 3, i32 1
  %114 = ptrtoint ptr %add.ptr158 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %add.ptr158, align 8
  %and159 = and i32 %115, -251658241
  store i32 %and159, ptr %add.ptr158, align 8
  %add.ptr175 = getelementptr %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 3, i32 2
  %116 = ptrtoint ptr %add.ptr175 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %add.ptr175, align 4
  %and176 = and i32 %117, 61440
  %or179 = or i32 %and176, -2130706432
  store i32 %or179, ptr %add.ptr175, align 4
  %add.ptr209 = getelementptr %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 3, i32 4
  %118 = ptrtoint ptr %add.ptr209 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %add.ptr209, align 4
  %and210 = and i32 %119, -16777216
  %or213 = or i32 %and210, 1
  store i32 %or213, ptr %add.ptr209, align 4
  %add.ptr226 = getelementptr %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 3, i32 5
  %120 = ptrtoint ptr %add.ptr226 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %add.ptr226, align 8
  %and227 = and i32 %121, -16777216
  store i32 %and227, ptr %add.ptr226, align 8
  %add.ptr243 = getelementptr %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 3, i32 6
  %122 = ptrtoint ptr %add.ptr243 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %add.ptr243, align 4
  %or247 = or i32 %123, 65535
  store i32 %or247, ptr %add.ptr243, align 4
  %qpn = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 6, i32 4
  %124 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %qpn, align 4
  %add.ptr261 = getelementptr %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 3, i32 7
  %126 = ptrtoint ptr %add.ptr261 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %add.ptr261, align 8
  %and262 = and i32 %127, -16777216
  %and263 = and i32 %125, 16777215
  %or265 = or i32 %and262, %and263
  store i32 %or265, ptr %add.ptr261, align 8
  %add.ptr278 = getelementptr %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 3, i32 8
  %128 = ptrtoint ptr %add.ptr278 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %add.ptr278, align 4
  %or299 = or i32 %129, 1799
  store i32 %or299, ptr %add.ptr278, align 4
  %130 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %fdev, align 4
  %fpga_qpn = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 4
  %call307 = tail call i32 @mlx5_fpga_create_qp(ptr noundef %131, ptr noundef %fpga_qpc, ptr noundef %fpga_qpn) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call307)
  %tobool308.not = icmp eq i32 %call307, 0
  br i1 %tobool308.not, label %if.end322, label %do.end312

do.end312:                                        ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %fdev, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 8
  %136 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i470 = and i32 %136, -16384
  %137 = inttoptr i32 %and.i470 to ptr
  %task316 = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %task316 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %task316, align 8
  %pid317 = getelementptr inbounds %struct.task_struct, ptr %139, i32 0, i32 68
  %140 = ptrtoint ptr %pid317 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %pid317, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef 901, i32 noundef %141, ptr noundef nonnull @.str.2, i32 noundef 901, i32 noundef %141, i32 noundef %call307) #13
  br label %err_qp

if.end322:                                        ; preds = %do.body121
  %142 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %call7.i.i, align 8
  %144 = ptrtoint ptr %fpga_qpc to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %fpga_qpc, align 4
  %and.i471 = and i32 %145, 268435455
  %or.i = or i32 %and.i471, 268435456
  store i32 %or.i, ptr %fpga_qpc, align 4
  %146 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %143, align 4
  %148 = ptrtoint ptr %fpga_qpn to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %fpga_qpn, align 4
  %call.i = tail call i32 @mlx5_fpga_modify_qp(ptr noundef %147, i32 noundef %149, i32 noundef 1, ptr noundef %fpga_qpc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end13.i

do.end13.i:                                       ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #12
  %150 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %143, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %151, align 8
  %154 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i.i472 = and i32 %154, -16384
  %155 = inttoptr i32 %and.i.i472 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %157, i32 0, i32 68
  %158 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, i32 noundef 766, i32 noundef %159, ptr noundef nonnull @.str.63, i32 noundef 766, i32 noundef %159, i32 noundef %call.i) #13
  br label %if.then325

if.end.i:                                         ; preds = %if.end322
  %call19.i = tail call fastcc i32 @mlx5_fpga_conn_reset_qp(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end33.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %160 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %143, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %161, align 8
  %164 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i145.i = and i32 %164, -16384
  %165 = inttoptr i32 %and.i145.i to ptr
  %task28.i = getelementptr inbounds %struct.thread_info, ptr %165, i32 0, i32 2
  %166 = ptrtoint ptr %task28.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %task28.i, align 8
  %pid29.i = getelementptr inbounds %struct.task_struct, ptr %167, i32 0, i32 68
  %168 = ptrtoint ptr %pid29.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %pid29.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %163, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63, i32 noundef 772, i32 noundef %169, ptr noundef nonnull @.str.63, i32 noundef 772, i32 noundef %169) #13
  br label %do.body81.i

if.end33.i:                                       ; preds = %if.end.i
  %call34.i = tail call fastcc i32 @mlx5_fpga_conn_init_qp(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end48.i, label %do.end39.i

do.end39.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  %170 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %143, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 8
  %174 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i146.i = and i32 %174, -16384
  %175 = inttoptr i32 %and.i146.i to ptr
  %task43.i = getelementptr inbounds %struct.thread_info, ptr %175, i32 0, i32 2
  %176 = ptrtoint ptr %task43.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %task43.i, align 8
  %pid44.i = getelementptr inbounds %struct.task_struct, ptr %177, i32 0, i32 68
  %178 = ptrtoint ptr %pid44.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %pid44.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %173, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.63, i32 noundef 778, i32 noundef %179, ptr noundef nonnull @.str.63, i32 noundef 778, i32 noundef %179) #13
  br label %do.body81.i

if.end48.i:                                       ; preds = %if.end33.i
  %qp.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 6
  %180 = ptrtoint ptr %qp.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 1, ptr %qp.i, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i.i.while.cond.i_crit_edge, %if.end48.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %181 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %181, i32 noundef 256, i32 noundef 2088) #14
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %while.cond.i.while.end.i_crit_edge, label %if.end.i.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end.i.i:                                       ; preds = %while.cond.i
  %add.ptr.i.i473 = getelementptr %struct.mlx5_fpga_dma_buf, ptr %call7.i.i.i.i, i32 1
  %sg.i.i = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %call7.i.i.i.i, i32 0, i32 1
  %182 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %add.ptr.i.i473, ptr %sg.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %call7.i.i.i.i, i32 0, i32 1, i32 0, i32 1
  %183 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 2048, ptr %size.i.i, align 8
  %184 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 2, ptr %call7.i.i.i.i, align 8
  %call3.i.i = tail call fastcc i32 @mlx5_fpga_conn_post_recv(ptr noundef %call7.i.i, ptr noundef nonnull %call7.i.i.i.i) #10
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.while.cond.i_crit_edge, label %if.then5.i.i

if.end.i.i.while.cond.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  br label %while.end.i

while.end.i:                                      ; preds = %if.then5.i.i, %while.cond.i.while.end.i_crit_edge
  %call51.i = tail call fastcc i32 @mlx5_fpga_conn_rtr_qp(ptr noundef %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.end65.i, label %do.end56.i

do.end56.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %185 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %143, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %186, align 8
  %189 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i147.i = and i32 %189, -16384
  %190 = inttoptr i32 %and.i147.i to ptr
  %task60.i = getelementptr inbounds %struct.thread_info, ptr %190, i32 0, i32 2
  %191 = ptrtoint ptr %task60.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %task60.i, align 8
  %pid61.i = getelementptr inbounds %struct.task_struct, ptr %192, i32 0, i32 68
  %193 = ptrtoint ptr %pid61.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %pid61.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %188, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.63, i32 noundef 788, i32 noundef %194, ptr noundef nonnull @.str.63, i32 noundef 788, i32 noundef %194) #13
  br label %err_recv_bufs.i

if.end65.i:                                       ; preds = %while.end.i
  %call66.i = tail call fastcc i32 @mlx5_fpga_conn_rts_qp(ptr noundef %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %do.body328, label %do.end71.i

do.end71.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  %195 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %143, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %196, align 8
  %199 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i148.i = and i32 %199, -16384
  %200 = inttoptr i32 %and.i148.i to ptr
  %task75.i = getelementptr inbounds %struct.thread_info, ptr %200, i32 0, i32 2
  %201 = ptrtoint ptr %task75.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %task75.i, align 8
  %pid76.i = getelementptr inbounds %struct.task_struct, ptr %202, i32 0, i32 68
  %203 = ptrtoint ptr %pid76.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %pid76.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %198, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.63, i32 noundef 794, i32 noundef %204, ptr noundef nonnull @.str.63, i32 noundef 794, i32 noundef %204) #13
  br label %err_recv_bufs.i

err_recv_bufs.i:                                  ; preds = %do.end71.i, %do.end56.i
  %err.0.i = phi i32 [ %call51.i, %do.end56.i ], [ %call66.i, %do.end71.i ]
  tail call fastcc void @mlx5_fpga_conn_free_recv_bufs(ptr noundef %call7.i.i) #10
  br label %do.body81.i

do.body81.i:                                      ; preds = %err_recv_bufs.i, %do.end39.i, %do.end24.i
  %err.1.i = phi i32 [ %call19.i, %do.end24.i ], [ %call34.i, %do.end39.i ], [ %err.0.i, %err_recv_bufs.i ]
  %205 = ptrtoint ptr %fpga_qpc to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %fpga_qpc, align 4
  %and89.i = and i32 %206, 268435455
  store i32 %and89.i, ptr %fpga_qpc, align 4
  %207 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %call7.i.i, align 8
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %208, align 4
  %211 = ptrtoint ptr %fpga_qpn to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %fpga_qpn, align 4
  %call102.i = tail call i32 @mlx5_fpga_modify_qp(ptr noundef %210, i32 noundef %212, i32 noundef 1, ptr noundef %fpga_qpc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102.i)
  %tobool103.not.i = icmp eq i32 %call102.i, 0
  br i1 %tobool103.not.i, label %do.body81.i.if.then325_crit_edge, label %do.end107.i

do.body81.i.if.then325_crit_edge:                 ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then325

do.end107.i:                                      ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #12
  %213 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %143, align 4
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %214, align 8
  %217 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i149.i = and i32 %217, -16384
  %218 = inttoptr i32 %and.i149.i to ptr
  %task111.i = getelementptr inbounds %struct.thread_info, ptr %218, i32 0, i32 2
  %219 = ptrtoint ptr %task111.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %task111.i, align 8
  %pid112.i = getelementptr inbounds %struct.task_struct, ptr %220, i32 0, i32 68
  %221 = ptrtoint ptr %pid112.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %pid112.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %216, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.63, i32 noundef 805, i32 noundef %222, ptr noundef nonnull @.str.63, i32 noundef 805, i32 noundef %222) #13
  br label %if.then325

if.then325:                                       ; preds = %do.end107.i, %do.body81.i.if.then325_crit_edge, %do.end13.i
  %err.2.i.ph = phi i32 [ %err.1.i, %do.body81.i.if.then325_crit_edge ], [ %err.1.i, %do.end107.i ], [ %call.i, %do.end13.i ]
  %223 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %call7.i.i, align 8
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %224, align 4
  %227 = ptrtoint ptr %fpga_qpn to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %fpga_qpn, align 4
  %call356 = tail call i32 @mlx5_fpga_destroy_qp(ptr noundef %226, i32 noundef %228) #10
  br label %err_qp

do.body328:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fpga_conn_create.__UNIQUE_ID_ddebug601, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fpga_conn_create, %if.then340)) #10
          to label %cleanup [label %if.then340], !srcloc !173

if.then340:                                       ; preds = %do.body328
  call void @__sanitizer_cov_trace_pc() #12
  %229 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %fdev, align 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %230, align 8
  %233 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i474 = and i32 %233, -16384
  %234 = inttoptr i32 %and.i474 to ptr
  %task344 = getelementptr inbounds %struct.thread_info, ptr %234, i32 0, i32 2
  %235 = ptrtoint ptr %task344 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %task344, align 8
  %pid345 = getelementptr inbounds %struct.task_struct, ptr %236, i32 0, i32 68
  %237 = ptrtoint ptr %pid345 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %pid345, align 8
  %239 = ptrtoint ptr %fpga_qpn to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %fpga_qpn, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fpga_conn_create.__UNIQUE_ID_ddebug601, ptr noundef %232, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.2, i32 noundef 912, i32 noundef %238, ptr noundef nonnull @.str.2, i32 noundef 912, i32 noundef %238, i32 noundef %240) #10
  br label %cleanup

err_qp:                                           ; preds = %if.then325, %do.end312
  %ret.0.in = phi i32 [ %call307, %do.end312 ], [ %err.2.i.ph, %if.then325 ]
  tail call fastcc void @mlx5_fpga_conn_destroy_qp(ptr noundef %call7.i.i)
  br label %err_cq

err_cq:                                           ; preds = %err_qp, %do.end110
  %ret.1.in = phi i32 [ %call105, %do.end110 ], [ %ret.0.in, %err_qp ]
  %tasklet.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 5, i32 3
  %count.i.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 5, i32 3, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #10
  %241 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #10, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !176
  tail call void @tasklet_unlock_wait(ptr noundef %tasklet.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !177
  tail call void @tasklet_kill(ptr noundef %tasklet.i) #10
  %242 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %call7.i.i, align 8
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %243, align 4
  %call.i476 = tail call i32 @mlx5_core_destroy_cq(ptr noundef %245, ptr noundef %mcq.i) #10
  %wq_ctrl.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %call7.i.i, i32 0, i32 5, i32 1
  tail call void @mlx5_wq_destroy(ptr noundef %wq_ctrl.i) #10
  br label %err_gid

err_gid:                                          ; preds = %err_cq, %do.end92
  %ret.2.in = phi i32 [ %call87, %do.end92 ], [ %ret.1.in, %err_cq ]
  %246 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %fdev, align 4
  %248 = ptrtoint ptr %sgid_index to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %sgid_index, align 4
  %call360 = tail call i32 @mlx5_core_roce_gid_set(ptr noundef %247, i32 noundef %249, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null, ptr noundef null, i1 noundef zeroext false, i16 noundef zeroext 0, i8 noundef zeroext 1) #10
  br label %err_rsvd_gid

err_rsvd_gid:                                     ; preds = %err_gid, %do.end57
  %ret.3.in = phi i32 [ %call52, %do.end57 ], [ %ret.2.in, %err_gid ]
  %250 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %fdev, align 4
  %252 = ptrtoint ptr %sgid_index to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %sgid_index, align 4
  tail call void @mlx5_core_reserved_gid_free(ptr noundef %251, i32 noundef %253) #10
  br label %err364

err364:                                           ; preds = %err_rsvd_gid, %do.end38, %do.end18
  %ret.4.in = phi i32 [ %call13, %do.end18 ], [ %call33, %do.end38 ], [ %ret.3.in, %err_rsvd_gid ]
  %ret.4 = inttoptr i32 %ret.4.in to ptr
  tail call void @kfree(ptr noundef %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err364, %if.then340, %do.body328, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ret.4, %err364 ], [ %call7.i.i, %if.then340 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ %call7.i.i, %do.body328 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_reserved_gid_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_roce_gid_set(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_fpga_conn_create_cq(ptr noundef %conn, i32 noundef %cq_size) unnamed_addr #0 align 64 {
entry:
  %temp_cqc = alloca [16 x i32], align 4
  %out = alloca [4 x i32], align 4
  %wqp = alloca %struct.mlx5_wq_param, align 4
  %eqn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %temp_cqc) #10
  %4 = call ptr @memset(ptr %temp_cqc, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #10
  %5 = call ptr @memset(ptr %out, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wqp) #10
  %6 = getelementptr inbounds %struct.mlx5_wq_param, ptr %wqp, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eqn) #10
  %7 = ptrtoint ptr %eqn to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %eqn, align 4, !annotation !178
  %sub.i290 = add i32 %cq_size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i290)
  %tobool.not.i.i.i = icmp eq i32 %sub.i290, 0
  %8 = tail call i32 @llvm.ctlz.i32(i32 %sub.i290, i1 true) #10, !range !179
  %sub.i.i.i = sub nuw nsw i32 32, %8
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  %9 = tail call i32 @llvm.ctlz.i32(i32 %shl.i, i1 true) #10, !range !179
  %add.ptr = getelementptr inbounds i32, ptr %temp_cqc, i32 3
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 4
  %and = and i32 %11, -520093697
  %sub.i.op.i291 = shl nuw nsw i32 %9, 24
  %12 = or i32 %sub.i.op.i291, %and
  %or = xor i32 %12, 520093696
  store i32 %or, ptr %add.ptr, align 4
  %numa_node = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 17, i32 17
  %13 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %numa_node, align 8
  %15 = ptrtoint ptr %wqp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %wqp, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %6, align 4
  %cq = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5
  %wq_ctrl = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 1
  %call46 = call i32 @mlx5_cqwq_create(ptr noundef %3, ptr noundef nonnull %wqp, ptr noundef nonnull %temp_cqc, ptr noundef %cq, ptr noundef %wq_ctrl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool.not = icmp eq i32 %call46, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %sz_m1.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sz_m1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp50298.not = icmp eq i32 %18, -1
  br i1 %cmp50298.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %strides_offset.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 0, i32 0, i32 3
  %log_frag_strides.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 0, i32 0, i32 6
  %frag_sz_m1.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 0, i32 0, i32 2
  %log_stride.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 0, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0299 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %19 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i = zext i16 %20 to i32
  %add.i.i = add i32 %i.0299, %conv.i.i
  %21 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i.i = zext i8 %22 to i32
  %shr.i.i = lshr i32 %add.i.i, %conv1.i.i
  %23 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cq, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5_buf_list, ptr %24, i32 %shr.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i, align 4
  %27 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv2.i.i = zext i16 %28 to i32
  %and.i.i = and i32 %add.i.i, %conv2.i.i
  %29 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i = zext i8 %30 to i32
  %shl.i.i = shl i32 %and.i.i, %conv3.i.i
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %30)
  %cmp.i = icmp eq i8 %30, 7
  %conv2.i = zext i1 %cmp.i to i32
  %add.ptr.i = getelementptr %struct.mlx5_cqe64, ptr %add.ptr.i.i, i32 %conv2.i
  %op_own = getelementptr inbounds %struct.mlx5_cqe64, ptr %add.ptr.i, i32 0, i32 23
  %31 = ptrtoint ptr %op_own to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -15, ptr %op_own, align 1
  %inc = add nuw i32 %i.0299, 1
  %32 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sz_m1.i, align 4
  %add.i = add i32 %33, 1
  %cmp50 = icmp ult i32 %inc, %add.i
  br i1 %cmp50, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %buf = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 1, i32 1
  %npages = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 1, i32 1, i32 1
  %34 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %npages, align 4
  %mul = shl i32 %35, 3
  %add57 = add i32 %mul, 272
  %call.i.i = call noalias ptr @kvmalloc_node(i32 noundef %add57, i32 noundef 3520, i32 noundef -1) #15
  %tobool59.not = icmp eq ptr %call.i.i, null
  br i1 %tobool59.not, label %for.end.err_cqwq_crit_edge, label %if.end61

for.end.err_cqwq_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_cqwq

if.end61:                                         ; preds = %for.end
  %36 = call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu, align 4
  %call63 = call i32 @mlx5_vector2eqn(ptr noundef %3, i32 noundef %39, ptr noundef nonnull %eqn) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %cond.end82, label %if.then65

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  call void @kvfree(ptr noundef nonnull %call.i.i) #10
  br label %err_cqwq

cond.end82:                                       ; preds = %if.end61
  %40 = call i32 @llvm.ctlz.i32(i32 %shl.i, i1 true) #10, !range !179
  %add.ptr87 = getelementptr i8, ptr %call.i.i, i32 28
  %41 = ptrtoint ptr %add.ptr87 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr87, align 4
  %and88 = and i32 %42, -520093697
  %sub.i.op.i292 = shl nuw nsw i32 %40, 24
  %43 = or i32 %sub.i.op.i292, %and88
  %or91 = xor i32 %43, 520093696
  store i32 %or91, ptr %add.ptr87, align 4
  %44 = ptrtoint ptr %eqn to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %eqn, align 4
  %add.ptr100 = getelementptr i8, ptr %call.i.i, i32 36
  %46 = ptrtoint ptr %add.ptr100 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %add.ptr100, align 4
  %uar = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 7, i32 2
  %47 = ptrtoint ptr %uar to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %uar, align 4
  %index = getelementptr inbounds %struct.mlx5_uars_page, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %index, align 4
  %and114 = and i32 %or91, -16777216
  %and115 = and i32 %50, 16777215
  %or117 = or i32 %and115, %and114
  store i32 %or117, ptr %add.ptr87, align 4
  %page_shift = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 1, i32 1, i32 3
  %51 = ptrtoint ptr %page_shift to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %page_shift, align 4
  %add.ptr131 = getelementptr i8, ptr %call.i.i, i32 40
  %53 = ptrtoint ptr %add.ptr131 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr131, align 4
  %and132 = and i32 %54, -520093697
  %55 = add i8 %52, 20
  %56 = and i8 %55, 31
  %and133 = zext i8 %56 to i32
  %shl134 = shl nuw nsw i32 %and133, 24
  %or135 = or i32 %shl134, %and132
  store i32 %or135, ptr %add.ptr131, align 4
  %dma = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 1, i32 2, i32 2
  %57 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dma, align 4
  %conv149 = zext i32 %58 to i64
  %add.ptr150 = getelementptr i8, ptr %call.i.i, i32 72
  %59 = ptrtoint ptr %add.ptr150 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %conv149, ptr %add.ptr150, align 8
  %add.ptr155 = getelementptr i8, ptr %call.i.i, i32 272
  call void @mlx5_fill_page_frag_array(ptr noundef %buf, ptr noundef %add.ptr155) #10
  %mcq = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 2
  %call161 = call i32 @mlx5_core_create_cq(ptr noundef %3, ptr noundef %mcq, ptr noundef nonnull %call.i.i, i32 noundef %add57, ptr noundef nonnull %out, i32 noundef 16) #10
  call void @kvfree(ptr noundef nonnull %call.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.end164, label %cond.end82.err_cqwq_crit_edge

cond.end82.err_cqwq_crit_edge:                    ; preds = %cond.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_cqwq

if.end164:                                        ; preds = %cond.end82
  call void @__sanitizer_cov_trace_pc() #12
  %db = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 1, i32 2
  %cqe_sz = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 2, i32 1
  %60 = ptrtoint ptr %cqe_sz to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 64, ptr %cqe_sz, align 4
  %61 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %db, align 4
  %set_ci_db = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 2, i32 2
  %63 = ptrtoint ptr %set_ci_db to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %set_ci_db, align 4
  %add.ptr177 = getelementptr i32, ptr %62, i32 1
  %arm_db = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 2, i32 3
  %64 = ptrtoint ptr %arm_db to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr177, ptr %arm_db, align 4
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %62, align 4
  %66 = load ptr, ptr %arm_db, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %66, align 4
  %vector = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 2, i32 7
  %68 = ptrtoint ptr %vector to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %vector, align 4
  %comp = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 2, i32 9
  %69 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @mlx5_fpga_conn_cq_complete, ptr %comp, align 4
  %70 = ptrtoint ptr %uar to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %uar, align 4
  %uar194 = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 2, i32 4
  %72 = ptrtoint ptr %uar194 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %uar194, align 4
  %tasklet = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 3
  call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @mlx5_fpga_conn_cq_tasklet) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fpga_conn_create_cq.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fpga_conn_create_cq, %if.then201)) #10
          to label %cleanup [label %if.then201], !srcloc !173

if.then201:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 8
  %task = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %77 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 68
  %79 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pid, align 8
  %81 = ptrtoint ptr %mcq to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %mcq, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fpga_conn_create_cq.__UNIQUE_ID_ddebug525, ptr noundef %76, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef 481, i32 noundef %80, ptr noundef nonnull @.str.46, i32 noundef 481, i32 noundef %80, i32 noundef %82) #10
  br label %cleanup

err_cqwq:                                         ; preds = %cond.end82.err_cqwq_crit_edge, %if.then65, %for.end.err_cqwq_crit_edge
  %err.0 = phi i32 [ %call63, %if.then65 ], [ %call161, %cond.end82.err_cqwq_crit_edge ], [ -12, %for.end.err_cqwq_crit_edge ]
  call void @mlx5_wq_destroy(ptr noundef %wq_ctrl) #10
  br label %cleanup

cleanup:                                          ; preds = %err_cqwq, %if.then201, %if.end164, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call46, %entry.cleanup_crit_edge ], [ %err.0, %err_cqwq ], [ 0, %if.then201 ], [ 0, %if.end164 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eqn) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wqp) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %temp_cqc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_fpga_conn_create_qp(ptr noundef %conn, i32 noundef %tx_size, i32 noundef %rx_size) unnamed_addr #0 align 64 {
entry:
  %wqp.i = alloca %struct.mlx5_wq_param, align 4
  %out = alloca [4 x i32], align 4
  %temp_qpc = alloca [58 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #10
  %2 = call ptr @memset(ptr %out, i32 0, i32 16)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %temp_qpc) #10
  %5 = call ptr @memset(ptr %temp_qpc, i32 0, i32 232)
  %rq = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 6
  %6 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rq, align 4
  %cc = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 6, i32 1
  %7 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %cc, align 4
  %sub.i618 = add i32 %rx_size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i618)
  %tobool.not.i.i.i = icmp eq i32 %sub.i618, 0
  %8 = tail call i32 @llvm.ctlz.i32(i32 %sub.i618, i1 true) #10, !range !179
  %sub.i.i.i = sub nuw nsw i32 32, %8
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  %size = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 6, i32 2
  %9 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shl.i, ptr %size, align 4
  %pc26 = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 5, i32 1
  %10 = ptrtoint ptr %pc26 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %pc26, align 4
  %cc29 = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 5, i32 2
  %11 = ptrtoint ptr %cc29 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cc29, align 4
  %sub.i622 = add i32 %tx_size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i622)
  %tobool.not.i.i.i623 = icmp eq i32 %sub.i622, 0
  %12 = tail call i32 @llvm.ctlz.i32(i32 %sub.i622, i1 true) #10, !range !179
  %sub.i.i.i624 = sub nuw nsw i32 32, %12
  %sub.i.i.op.i625 = shl nuw i32 1, %sub.i.i.i624
  %shl.i626 = select i1 %tobool.not.i.i.i623, i32 1, i32 %sub.i.i.op.i625
  %size63 = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 5, i32 3
  %13 = ptrtoint ptr %size63 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shl.i626, ptr %size63, align 4
  %add.ptr = getelementptr inbounds i32, ptr %temp_qpc, i32 2
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr, align 4
  %16 = tail call i32 @llvm.ctlz.i32(i32 %shl.i, i1 true) #10, !range !179
  %and104 = and i32 %15, -8353793
  %sub.i.op.i628 = shl nuw nsw i32 %16, 19
  %and105 = and i32 %sub.i.op.i628, 7864320
  %17 = or i32 %and105, %and104
  %18 = tail call i32 @llvm.ctlz.i32(i32 %shl.i626, i1 true) #10, !range !179
  %sub.i.op.i631 = shl nuw nsw i32 %18, 11
  %and146 = and i32 %sub.i.op.i631, 30720
  %19 = or i32 %17, %and146
  %or148 = xor i32 %19, 7895040
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or148, ptr %add.ptr, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wqp.i) #10
  %23 = getelementptr inbounds %struct.mlx5_wq_param, ptr %wqp.i, i32 0, i32 1
  %numa_node.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %22, i32 0, i32 17, i32 17
  %24 = ptrtoint ptr %numa_node.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %numa_node.i, align 8
  %26 = ptrtoint ptr %wqp.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %wqp.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %23, align 4
  %wq.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 2
  %wq_ctrl.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 3
  %call.i = call i32 @mlx5_wq_qp_create(ptr noundef %22, ptr noundef nonnull %wqp.i, ptr noundef nonnull %temp_qpc, ptr noundef %wq.i, ptr noundef %wq_ctrl.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wqp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out518_crit_edge

entry.out518_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out518

if.end:                                           ; preds = %entry
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size, align 4
  %30 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %29, i32 4) #10
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %kvcalloc.exit.thread, label %kvcalloc.exit, !prof !168

kvcalloc.exit.thread:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bufs645 = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 6, i32 3
  %32 = ptrtoint ptr %bufs645 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %bufs645, align 4
  br label %err_wq

kvcalloc.exit:                                    ; preds = %if.end
  %33 = extractvalue { i32, i1 } %30, 0
  %call.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %33, i32 noundef 3520, i32 noundef -1) #15
  %bufs = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 6, i32 3
  %34 = ptrtoint ptr %bufs to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i.i.i, ptr %bufs, align 4
  %tobool164.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool164.not, label %kvcalloc.exit.err_wq_crit_edge, label %if.end166

kvcalloc.exit.err_wq_crit_edge:                   ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_wq

if.end166:                                        ; preds = %kvcalloc.exit
  %35 = ptrtoint ptr %size63 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size63, align 4
  %37 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %36, i32 4) #10
  %38 = extractvalue { i32, i1 } %37, 1
  br i1 %38, label %kvcalloc.exit636.thread, label %kvcalloc.exit636, !prof !168

kvcalloc.exit636.thread:                          ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  %bufs173648 = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 5, i32 4
  %39 = ptrtoint ptr %bufs173648 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %bufs173648, align 4
  br label %err_rq_bufs

kvcalloc.exit636:                                 ; preds = %if.end166
  %40 = extractvalue { i32, i1 } %37, 0
  %call.i.i.i633 = call noalias ptr @kvmalloc_node(i32 noundef %40, i32 noundef 3520, i32 noundef -1) #15
  %bufs173 = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 5, i32 4
  %41 = ptrtoint ptr %bufs173 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i.i.i633, ptr %bufs173, align 4
  %tobool177.not = icmp eq ptr %call.i.i.i633, null
  br i1 %tobool177.not, label %kvcalloc.exit636.err_rq_bufs_crit_edge, label %if.end179

kvcalloc.exit636.err_rq_bufs_crit_edge:           ; preds = %kvcalloc.exit636
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_rq_bufs

if.end179:                                        ; preds = %kvcalloc.exit636
  %buf = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 3, i32 1
  %npages = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 3, i32 1, i32 1
  %42 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %npages, align 4
  %mul = shl i32 %43, 3
  %add181 = add i32 %mul, 272
  %call.i.i = call noalias ptr @kvmalloc_node(i32 noundef %add181, i32 noundef 3520, i32 noundef -1) #15
  %tobool183.not = icmp eq ptr %call.i.i, null
  br i1 %tobool183.not, label %if.end179.err_sq_bufs_crit_edge, label %if.end185

if.end179.err_sq_bufs_crit_edge:                  ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_sq_bufs

if.end185:                                        ; preds = %if.end179
  %add.ptr186 = getelementptr i8, ptr %call.i.i, i32 24
  %conn_res = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 7
  %uar = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 7, i32 2
  %44 = ptrtoint ptr %uar to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %uar, align 4
  %index = getelementptr inbounds %struct.mlx5_uars_page, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index, align 4
  %add.ptr192 = getelementptr i8, ptr %call.i.i, i32 36
  %48 = ptrtoint ptr %add.ptr192 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr192, align 4
  %and193 = and i32 %49, -16777216
  %and194 = and i32 %47, 16777215
  %or196 = or i32 %and193, %and194
  store i32 %or196, ptr %add.ptr192, align 4
  %page_shift = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 3, i32 1, i32 3
  %50 = ptrtoint ptr %page_shift to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %page_shift, align 4
  %add.ptr210 = getelementptr i8, ptr %call.i.i, i32 44
  %52 = ptrtoint ptr %add.ptr210 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr210, align 4
  %and211 = and i32 %53, -520093697
  %54 = add i8 %51, 20
  %55 = and i8 %54, 31
  %and212 = zext i8 %55 to i32
  %shl213 = shl nuw nsw i32 %and212, 24
  %or214 = or i32 %shl213, %and211
  store i32 %or214, ptr %add.ptr210, align 4
  %add.ptr223 = getelementptr i8, ptr %call.i.i, i32 136
  %56 = ptrtoint ptr %add.ptr223 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr223, align 4
  %or227 = or i32 %57, 2048
  store i32 %or227, ptr %add.ptr223, align 4
  %add.ptr236 = getelementptr i8, ptr %call.i.i, i32 32
  %58 = ptrtoint ptr %add.ptr236 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr236, align 4
  %or240 = or i32 %59, 16
  %60 = ptrtoint ptr %add.ptr186 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr186, align 4
  %and263 = and i32 %61, -16717825
  %or266 = or i32 %and263, 6144
  store i32 %or266, ptr %add.ptr186, align 4
  %62 = ptrtoint ptr %conn_res to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %conn_res, align 4
  %add.ptr276 = getelementptr i8, ptr %call.i.i, i32 28
  %64 = ptrtoint ptr %add.ptr276 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr276, align 4
  %and277 = and i32 %65, -16777216
  %and278 = and i32 %63, 16777215
  %or280 = or i32 %and277, %and278
  store i32 %or280, ptr %add.ptr276, align 4
  %and290 = and i32 %or240, -458753
  store i32 %and290, ptr %add.ptr236, align 4
  %66 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i.i637 = icmp eq i32 %67, 0
  %68 = call i32 @llvm.ctlz.i32(i32 %67, i1 true) #10, !range !179
  %and329 = and i32 %or240, -8323073
  %sub.i.op.i638 = shl nuw nsw i32 %68, 19
  %sub.i.op.i638.op = and i32 %sub.i.op.i638, 7864320
  %sub.i.op.i638.op.op = xor i32 %sub.i.op.i638.op, 7864320
  %shl331 = select i1 %tobool.not.i.i637, i32 7864320, i32 %sub.i.op.i638.op.op
  %or332 = or i32 %shl331, %and329
  %69 = ptrtoint ptr %add.ptr236 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or332, ptr %add.ptr236, align 4
  %add.ptr341 = getelementptr i8, ptr %call.i.i, i32 196
  %70 = ptrtoint ptr %add.ptr341 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr341, align 4
  %and342 = and i32 %71, -117440513
  store i32 %and342, ptr %add.ptr341, align 4
  %72 = ptrtoint ptr %size63 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %size63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i.i640 = icmp eq i32 %73, 0
  %74 = call i32 @llvm.ctlz.i32(i32 %73, i1 true) #10, !range !179
  %and381 = and i32 %or332, -489473
  %sub.i.op.i641 = shl nuw nsw i32 %74, 11
  %sub.i.op.i641.op = and i32 %sub.i.op.i641, 30720
  %sub.i.op.i641.op.op = xor i32 %sub.i.op.i641.op, 30720
  %shl383 = select i1 %tobool.not.i.i640, i32 30720, i32 %sub.i.op.i641.op.op
  %or384 = or i32 %shl383, %and381
  %75 = ptrtoint ptr %add.ptr236 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or384, ptr %add.ptr236, align 4
  %mcq = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 2
  %76 = ptrtoint ptr %mcq to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mcq, align 4
  %add.ptr393 = getelementptr i8, ptr %call.i.i, i32 148
  %78 = ptrtoint ptr %add.ptr393 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr393, align 4
  %and394 = and i32 %79, -16777216
  %and395 = and i32 %77, 16777215
  %or397 = or i32 %and394, %and395
  store i32 %or397, ptr %add.ptr393, align 4
  %add.ptr409 = getelementptr i8, ptr %call.i.i, i32 180
  %80 = ptrtoint ptr %add.ptr409 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr409, align 4
  %and410 = and i32 %81, -16777216
  %or413 = or i32 %and410, %and395
  store i32 %or413, ptr %add.ptr409, align 4
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %4, i32 0, i32 8, i32 0, i32 4
  %82 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %and.i = and i32 %85, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  %and424 = and i32 %or384, -458945
  %and425 = select i1 %tobool.not.i.not, i32 0, i32 64
  %or427 = or i32 %and425, %and424
  %86 = ptrtoint ptr %add.ptr236 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %or427, ptr %add.ptr236, align 4
  %dma = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 3, i32 2, i32 2
  %87 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dma, align 4
  %conv441 = zext i32 %88 to i64
  %add.ptr442 = getelementptr i8, ptr %call.i.i, i32 184
  %89 = ptrtoint ptr %add.ptr442 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %conv441, ptr %add.ptr442, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %4, i32 0, i32 8
  %90 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %caps, align 8
  %add.ptr448 = getelementptr i32, ptr %91, i32 15
  %92 = ptrtoint ptr %add.ptr448 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr448, align 4
  %and449 = and i32 %93, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and449)
  %cmp450 = icmp eq i32 %and449, 1
  br i1 %cmp450, label %do.body453, label %if.end185.if.end466_crit_edge

if.end185.if.end466_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end466

do.body453:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr458 = getelementptr i8, ptr %call.i.i, i32 40
  %94 = ptrtoint ptr %add.ptr458 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %add.ptr458, align 4
  %or462 = or i32 %95, 16777215
  store i32 %or462, ptr %add.ptr458, align 4
  br label %if.end466

if.end466:                                        ; preds = %do.body453, %if.end185.if.end466_crit_edge
  %add.ptr470 = getelementptr i8, ptr %call.i.i, i32 272
  call void @mlx5_fill_page_frag_array(ptr noundef %buf, ptr noundef %add.ptr470) #10
  %96 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %call.i.i, align 4
  %and477 = and i32 %97, 65535
  %or480 = or i32 %and477, 83886080
  store i32 %or480, ptr %call.i.i, align 4
  %call485 = call i32 @mlx5_cmd_exec(ptr noundef %4, ptr noundef nonnull %call.i.i, i32 noundef %add181, ptr noundef nonnull %out, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call485)
  %tobool486.not = icmp eq i32 %call485, 0
  br i1 %tobool486.not, label %if.end488, label %if.end466.err_sq_bufs_crit_edge

if.end466.err_sq_bufs_crit_edge:                  ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_sq_bufs

if.end488:                                        ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr490 = getelementptr inbounds i32, ptr %out, i32 2
  %98 = ptrtoint ptr %add.ptr490 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %add.ptr490, align 4
  %and492 = and i32 %99, 16777215
  %qpn = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 4
  %100 = ptrtoint ptr %qpn to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %and492, ptr %qpn, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fpga_conn_create_qp.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fpga_conn_create_qp, %if.then499)) #10
          to label %out518 [label %if.then499], !srcloc !173

if.then499:                                       ; preds = %if.end488
  call void @__sanitizer_cov_trace_pc() #12
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %1, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 8
  %105 = call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i643 = and i32 %105, -16384
  %106 = inttoptr i32 %and.i643 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 68
  %109 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pid, align 8
  %111 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %qpn, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fpga_conn_create_qp.__UNIQUE_ID_ddebug547, ptr noundef %104, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.60, i32 noundef 590, i32 noundef %110, ptr noundef nonnull @.str.60, i32 noundef 590, i32 noundef %110, i32 noundef %112) #10
  br label %out518

err_sq_bufs:                                      ; preds = %if.end466.err_sq_bufs_crit_edge, %if.end179.err_sq_bufs_crit_edge
  %err.0 = phi i32 [ %call485, %if.end466.err_sq_bufs_crit_edge ], [ -12, %if.end179.err_sq_bufs_crit_edge ]
  %113 = ptrtoint ptr %bufs173 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bufs173, align 4
  call void @kvfree(ptr noundef %114) #10
  br label %err_rq_bufs

err_rq_bufs:                                      ; preds = %err_sq_bufs, %kvcalloc.exit636.err_rq_bufs_crit_edge, %kvcalloc.exit636.thread
  %err.1 = phi i32 [ %err.0, %err_sq_bufs ], [ -12, %kvcalloc.exit636.err_rq_bufs_crit_edge ], [ -12, %kvcalloc.exit636.thread ]
  %in.0 = phi ptr [ %call.i.i, %err_sq_bufs ], [ null, %kvcalloc.exit636.err_rq_bufs_crit_edge ], [ null, %kvcalloc.exit636.thread ]
  %115 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %bufs, align 4
  call void @kvfree(ptr noundef %116) #10
  br label %err_wq

err_wq:                                           ; preds = %err_rq_bufs, %kvcalloc.exit.err_wq_crit_edge, %kvcalloc.exit.thread
  %err.2 = phi i32 [ %err.1, %err_rq_bufs ], [ -12, %kvcalloc.exit.err_wq_crit_edge ], [ -12, %kvcalloc.exit.thread ]
  %in.1 = phi ptr [ %in.0, %err_rq_bufs ], [ null, %kvcalloc.exit.err_wq_crit_edge ], [ null, %kvcalloc.exit.thread ]
  call void @mlx5_wq_destroy(ptr noundef %wq_ctrl.i) #10
  br label %out518

out518:                                           ; preds = %err_wq, %if.then499, %if.end488, %entry.out518_crit_edge
  %err.3 = phi i32 [ %call.i, %entry.out518_crit_edge ], [ %err.2, %err_wq ], [ 0, %if.then499 ], [ 0, %if.end488 ]
  %in.2 = phi ptr [ null, %entry.out518_crit_edge ], [ %in.1, %err_wq ], [ %call.i.i, %if.then499 ], [ %call.i.i, %if.end488 ]
  call void @kvfree(ptr noundef %in.2) #10
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %temp_qpc) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #10
  ret i32 %err.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fpga_create_qp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fpga_destroy_qp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_fpga_conn_destroy_qp(ptr noundef %conn) unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #10
  %4 = getelementptr inbounds i8, ptr %in, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 12)
  %6 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 83951616, ptr %in, align 4
  %qpn = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 4
  %7 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qpn, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %and15 = and i32 %8, 16777215
  %9 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and15, ptr %add.ptr13, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #10
  %10 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %3, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #10
  call fastcc void @mlx5_fpga_conn_free_recv_bufs(ptr noundef %conn)
  %size.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 5, i32 3
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp78.not.i = icmp eq i32 %12, 0
  br i1 %cmp78.not.i, label %entry.for.end.i_crit_edge, label %for.body.lr.ph.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %bufs.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 5, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ix.079.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %bufs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bufs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %14, i32 %ix.079.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx.i, align 4
  %18 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %conn, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %pdev.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i.i.i, align 8
  %dev1.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %sg.i.i = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %16, i32 0, i32 1
  %arrayidx.i.i = getelementptr %struct.mlx5_fpga_dma_buf, ptr %16, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dma_addr.i.i = getelementptr %struct.mlx5_fpga_dma_buf, ptr %16, i32 0, i32 1, i32 1, i32 2
  %26 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_addr.i.i, align 4
  %size.i.i = getelementptr %struct.mlx5_fpga_dma_buf, ptr %16, i32 0, i32 1, i32 1, i32 1
  %28 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size.i.i, align 4
  %30 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %16, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev1.i.i.i, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef 0) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i.if.end.i.i_crit_edge
  %32 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sg.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %33, null
  br i1 %tobool8.not.i.i, label %if.end.i.i.mlx5_fpga_conn_unmap_buf.exit.i_crit_edge, label %if.then11.i.i, !prof !168

if.end.i.i.mlx5_fpga_conn_unmap_buf.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_fpga_conn_unmap_buf.exit.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dma_addr14.i.i = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %16, i32 0, i32 1, i32 0, i32 2
  %34 = ptrtoint ptr %dma_addr14.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_addr14.i.i, align 4
  %size17.i.i = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %16, i32 0, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %size17.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size17.i.i, align 4
  %38 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %16, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev1.i.i.i, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef 0) #10
  br label %mlx5_fpga_conn_unmap_buf.exit.i

mlx5_fpga_conn_unmap_buf.exit.i:                  ; preds = %if.then11.i.i, %if.end.i.i.mlx5_fpga_conn_unmap_buf.exit.i_crit_edge
  %complete.i = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %16, i32 0, i32 3
  %40 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %complete.i, align 4
  %tobool7.not.i = icmp eq ptr %41, null
  br i1 %tobool7.not.i, label %mlx5_fpga_conn_unmap_buf.exit.i.for.inc.i_crit_edge, label %if.end9.i

mlx5_fpga_conn_unmap_buf.exit.i.for.inc.i_crit_edge: ; preds = %mlx5_fpga_conn_unmap_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end9.i:                                        ; preds = %mlx5_fpga_conn_unmap_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %conn, align 4
  call void %41(ptr noundef %conn, ptr noundef %43, ptr noundef nonnull %16, i8 noundef zeroext 5) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end9.i, %mlx5_fpga_conn_unmap_buf.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %ix.079.i, 1
  %44 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %45
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %backlog.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 5, i32 5
  %46 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %backlog.i, align 4
  %cmp22.not82.i = icmp eq ptr %47, %backlog.i
  br i1 %cmp22.not82.i, label %for.end.i.mlx5_fpga_conn_flush_send_bufs.exit_crit_edge, label %for.end.i.for.body23.i_crit_edge

for.end.i.for.body23.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body23.i

for.end.i.mlx5_fpga_conn_flush_send_bufs.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_fpga_conn_flush_send_bufs.exit

for.body23.i:                                     ; preds = %for.inc30.i.for.body23.i_crit_edge, %for.end.i.for.body23.i_crit_edge
  %.pn.in83.i = phi ptr [ %.pn87.i, %for.inc30.i.for.body23.i_crit_edge ], [ %47, %for.end.i.for.body23.i_crit_edge ]
  %buf.085.i = getelementptr i8, ptr %.pn.in83.i, i32 -28
  %48 = ptrtoint ptr %.pn.in83.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn87.i = load ptr, ptr %.pn.in83.i, align 4
  %49 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %conn, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %pdev.i.i64.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %pdev.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev.i.i64.i, align 8
  %dev1.i.i65.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %sg.i66.i = getelementptr i8, ptr %.pn.in83.i, i32 -24
  %arrayidx.i67.i = getelementptr i8, ptr %.pn.in83.i, i32 -12
  %55 = ptrtoint ptr %arrayidx.i67.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i67.i, align 4
  %tobool.not.i68.i = icmp eq ptr %56, null
  br i1 %tobool.not.i68.i, label %for.body23.i.if.end.i73.i_crit_edge, label %if.then.i71.i

for.body23.i.if.end.i73.i_crit_edge:              ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i73.i

if.then.i71.i:                                    ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #12
  %dma_addr.i69.i = getelementptr i8, ptr %.pn.in83.i, i32 -4
  %57 = ptrtoint ptr %dma_addr.i69.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dma_addr.i69.i, align 4
  %size.i70.i = getelementptr i8, ptr %.pn.in83.i, i32 -8
  %59 = ptrtoint ptr %size.i70.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %size.i70.i, align 4
  %61 = ptrtoint ptr %buf.085.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %buf.085.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev1.i.i65.i, i32 noundef %58, i32 noundef %60, i32 noundef %62, i32 noundef 0) #10
  br label %if.end.i73.i

if.end.i73.i:                                     ; preds = %if.then.i71.i, %for.body23.i.if.end.i73.i_crit_edge
  %63 = ptrtoint ptr %sg.i66.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sg.i66.i, align 4
  %tobool8.not.i72.i = icmp eq ptr %64, null
  br i1 %tobool8.not.i72.i, label %if.end.i73.i.mlx5_fpga_conn_unmap_buf.exit77.i_crit_edge, label %if.then11.i76.i, !prof !168

if.end.i73.i.mlx5_fpga_conn_unmap_buf.exit77.i_crit_edge: ; preds = %if.end.i73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_fpga_conn_unmap_buf.exit77.i

if.then11.i76.i:                                  ; preds = %if.end.i73.i
  call void @__sanitizer_cov_trace_pc() #12
  %dma_addr14.i74.i = getelementptr i8, ptr %.pn.in83.i, i32 -16
  %65 = ptrtoint ptr %dma_addr14.i74.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dma_addr14.i74.i, align 4
  %size17.i75.i = getelementptr i8, ptr %.pn.in83.i, i32 -20
  %67 = ptrtoint ptr %size17.i75.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %size17.i75.i, align 4
  %69 = ptrtoint ptr %buf.085.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %buf.085.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev1.i.i65.i, i32 noundef %66, i32 noundef %68, i32 noundef %70, i32 noundef 0) #10
  br label %mlx5_fpga_conn_unmap_buf.exit77.i

mlx5_fpga_conn_unmap_buf.exit77.i:                ; preds = %if.then11.i76.i, %if.end.i73.i.mlx5_fpga_conn_unmap_buf.exit77.i_crit_edge
  %complete24.i = getelementptr i8, ptr %.pn.in83.i, i32 8
  %71 = ptrtoint ptr %complete24.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %complete24.i, align 4
  %tobool25.not.i = icmp eq ptr %72, null
  br i1 %tobool25.not.i, label %mlx5_fpga_conn_unmap_buf.exit77.i.for.inc30.i_crit_edge, label %if.end27.i

mlx5_fpga_conn_unmap_buf.exit77.i.for.inc30.i_crit_edge: ; preds = %mlx5_fpga_conn_unmap_buf.exit77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

if.end27.i:                                       ; preds = %mlx5_fpga_conn_unmap_buf.exit77.i
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %conn, align 4
  call void %72(ptr noundef %conn, ptr noundef %74, ptr noundef %buf.085.i, i8 noundef zeroext 5) #10
  br label %for.inc30.i

for.inc30.i:                                      ; preds = %if.end27.i, %mlx5_fpga_conn_unmap_buf.exit77.i.for.inc30.i_crit_edge
  %cmp22.not.i = icmp eq ptr %.pn87.i, %backlog.i
  br i1 %cmp22.not.i, label %for.inc30.i.mlx5_fpga_conn_flush_send_bufs.exit_crit_edge, label %for.inc30.i.for.body23.i_crit_edge

for.inc30.i.for.body23.i_crit_edge:               ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body23.i

for.inc30.i.mlx5_fpga_conn_flush_send_bufs.exit_crit_edge: ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_fpga_conn_flush_send_bufs.exit

mlx5_fpga_conn_flush_send_bufs.exit:              ; preds = %for.inc30.i.mlx5_fpga_conn_flush_send_bufs.exit_crit_edge, %for.end.i.mlx5_fpga_conn_flush_send_bufs.exit_crit_edge
  %bufs = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 5, i32 4
  %75 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bufs, align 4
  call void @kvfree(ptr noundef %76) #10
  %bufs27 = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 6, i32 3
  %77 = ptrtoint ptr %bufs27 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bufs27, align 4
  call void @kvfree(ptr noundef %78) #10
  %wq_ctrl = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 3
  call void @mlx5_wq_destroy(ptr noundef %wq_ctrl) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_core_reserved_gid_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_fpga_conn_destroy(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %qp, align 4
  %tasklet = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 3
  %count.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 3, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #10
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #10, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !176
  tail call void @tasklet_unlock_wait(ptr noundef %tasklet) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !177
  %irqn = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 2, i32 8
  %2 = ptrtoint ptr %irqn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irqn, align 4
  tail call void @synchronize_irq(i32 noundef %3) #10
  %4 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conn, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %fpga_qpn = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 4
  %8 = ptrtoint ptr %fpga_qpn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fpga_qpn, align 4
  %call = tail call i32 @mlx5_fpga_destroy_qp(ptr noundef %7, i32 noundef %9) #10
  tail call fastcc void @mlx5_fpga_conn_destroy_qp(ptr noundef %conn)
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #10, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !176
  tail call void @tasklet_unlock_wait(ptr noundef %tasklet) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !177
  tail call void @tasklet_kill(ptr noundef %tasklet) #10
  %11 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conn, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %mcq.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 2
  %call.i = tail call i32 @mlx5_core_destroy_cq(ptr noundef %14, ptr noundef %mcq.i) #10
  %wq_ctrl.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 1
  tail call void @mlx5_wq_destroy(ptr noundef %wq_ctrl.i) #10
  %15 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %conn, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %sgid_index = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %sgid_index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sgid_index, align 4
  %call5 = tail call i32 @mlx5_core_roce_gid_set(ptr noundef %18, i32 noundef %20, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null, ptr noundef null, i1 noundef zeroext false, i16 noundef zeroext 0, i8 noundef zeroext 1) #10
  %21 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %conn, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %25 = ptrtoint ptr %sgid_index to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sgid_index, align 4
  tail call void @mlx5_core_reserved_gid_free(ptr noundef %24, i32 noundef %26) #10
  tail call void @kfree(ptr noundef %conn) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fpga_conn_device_init(ptr noundef %fdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdev, align 4
  %call = tail call i32 @mlx5_nic_vport_enable_roce(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %2 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fdev, align 4
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !157) #10
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 955, i32 noundef %11, ptr noundef nonnull @.str.25, i32 noundef 955, i32 noundef %11, i32 noundef %call) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call ptr @mlx5_get_uars_page(ptr noundef %3) #10
  %conn_res = getelementptr inbounds %struct.mlx5_fpga_device, ptr %fdev, i32 0, i32 7
  %uar = getelementptr inbounds %struct.mlx5_fpga_device, ptr %fdev, i32 0, i32 7, i32 2
  %12 = ptrtoint ptr %uar to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7, ptr %uar, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %do.body27

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call7 to i32
  %14 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fdev, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %18 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i180 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i180 to ptr
  %task21 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task21, align 8
  %pid22 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid22, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef 962, i32 noundef %23, ptr noundef nonnull @.str.25, i32 noundef 962, i32 noundef %23, i32 noundef %13) #13
  br label %err_roce

do.body27:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fpga_conn_device_init.__UNIQUE_ID_ddebug602, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fpga_conn_device_init, %if.then32)) #10
          to label %do.end45 [label %if.then32], !srcloc !173

if.then32:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fdev, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %28 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i181 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i181 to ptr
  %task36 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task36, align 8
  %pid37 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid37, align 8
  %34 = ptrtoint ptr %uar to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %uar, align 4
  %index = getelementptr inbounds %struct.mlx5_uars_page, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fpga_conn_device_init.__UNIQUE_ID_ddebug602, ptr noundef %27, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.25, i32 noundef 966, i32 noundef %33, ptr noundef nonnull @.str.25, i32 noundef 966, i32 noundef %33, i32 noundef %37) #10
  br label %do.end45

do.end45:                                         ; preds = %if.then32, %do.body27
  %38 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fdev, align 4
  %call48 = tail call i32 @mlx5_core_alloc_pd(ptr noundef %39, ptr noundef %conn_res) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %do.body63, label %do.end53

do.end53:                                         ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fdev, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %44 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i182 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i182 to ptr
  %task57 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task57 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task57, align 8
  %pid58 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 68
  %48 = ptrtoint ptr %pid58 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pid58, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.25, i32 noundef 970, i32 noundef %49, ptr noundef nonnull @.str.25, i32 noundef 970, i32 noundef %49, i32 noundef %call48) #13
  br label %err_uar

do.body63:                                        ; preds = %do.end45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fpga_conn_device_init.__UNIQUE_ID_ddebug603, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fpga_conn_device_init, %if.then75)) #10
          to label %do.end88 [label %if.then75], !srcloc !173

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fdev, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  %54 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i183 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i183 to ptr
  %task79 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %task79 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task79, align 8
  %pid80 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 68
  %58 = ptrtoint ptr %pid80 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pid80, align 8
  %60 = ptrtoint ptr %conn_res to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %conn_res, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fpga_conn_device_init.__UNIQUE_ID_ddebug603, ptr noundef %53, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.25, i32 noundef 973, i32 noundef %59, ptr noundef nonnull @.str.25, i32 noundef 973, i32 noundef %59, i32 noundef %61) #10
  br label %do.end88

do.end88:                                         ; preds = %if.then75, %do.body63
  %62 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fdev, align 4
  %64 = ptrtoint ptr %conn_res to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %conn_res, align 4
  %mkey = getelementptr inbounds %struct.mlx5_fpga_device, ptr %fdev, i32 0, i32 7, i32 1
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 272, i32 noundef 3520, i32 noundef -1) #15
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %do.end88.do.end98_crit_edge, label %mlx5_fpga_conn_create_mkey.exit

do.end88.do.end98_crit_edge:                      ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end98

mlx5_fpga_conn_create_mkey.exit:                  ; preds = %do.end88
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 16
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i, align 4
  %and13.i = and i32 %67, -3841
  %or29.i = or i32 %and13.i, 3072
  store i32 %or29.i, ptr %add.ptr.i, align 4
  %add.ptr38.i = getelementptr i8, ptr %call.i.i.i, i32 28
  %68 = ptrtoint ptr %add.ptr38.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr38.i, align 4
  %and39.i = and i32 %69, 2130706432
  %and40.i = and i32 %65, 16777215
  %or42.i = or i32 %and40.i, %and39.i
  %or55.i = or i32 %or42.i, -2147483648
  store i32 %or55.i, ptr %add.ptr38.i, align 4
  %add.ptr64.i = getelementptr i8, ptr %call.i.i.i, i32 20
  %70 = ptrtoint ptr %add.ptr64.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr64.i, align 4
  %or68.i = or i32 %71, -256
  store i32 %or68.i, ptr %add.ptr64.i, align 4
  %call72.i = tail call i32 @mlx5_core_create_mkey(ptr noundef %63, ptr noundef %mkey, ptr noundef nonnull %call.i.i.i, i32 noundef 272) #10
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool94.not = icmp eq i32 %call72.i, 0
  br i1 %tobool94.not, label %do.body108, label %mlx5_fpga_conn_create_mkey.exit.do.end98_crit_edge

mlx5_fpga_conn_create_mkey.exit.do.end98_crit_edge: ; preds = %mlx5_fpga_conn_create_mkey.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end98

do.end98:                                         ; preds = %mlx5_fpga_conn_create_mkey.exit.do.end98_crit_edge, %do.end88.do.end98_crit_edge
  %retval.0.i184191 = phi i32 [ %call72.i, %mlx5_fpga_conn_create_mkey.exit.do.end98_crit_edge ], [ -12, %do.end88.do.end98_crit_edge ]
  %72 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fdev, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 8
  %76 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i185 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i185 to ptr
  %task102 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %task102 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %task102, align 8
  %pid103 = getelementptr inbounds %struct.task_struct, ptr %79, i32 0, i32 68
  %80 = ptrtoint ptr %pid103 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pid103, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.25, i32 noundef 978, i32 noundef %81, ptr noundef nonnull @.str.25, i32 noundef 978, i32 noundef %81, i32 noundef %retval.0.i184191) #13
  %82 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fdev, align 4
  %84 = ptrtoint ptr %conn_res to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %conn_res, align 4
  %call137 = tail call i32 @mlx5_core_dealloc_pd(ptr noundef %83, i32 noundef %85) #10
  br label %err_uar

do.body108:                                       ; preds = %mlx5_fpga_conn_create_mkey.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fpga_conn_device_init.__UNIQUE_ID_ddebug604, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fpga_conn_device_init, %if.then120)) #10
          to label %cleanup [label %if.then120], !srcloc !173

if.then120:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %fdev, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 8
  %90 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i186 = and i32 %90, -16384
  %91 = inttoptr i32 %and.i186 to ptr
  %task124 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %task124 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task124, align 8
  %pid125 = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 68
  %94 = ptrtoint ptr %pid125 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pid125, align 8
  %96 = ptrtoint ptr %mkey to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mkey, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fpga_conn_device_init.__UNIQUE_ID_ddebug604, ptr noundef %89, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.25, i32 noundef 981, i32 noundef %95, ptr noundef nonnull @.str.25, i32 noundef 981, i32 noundef %95, i32 noundef %97) #10
  br label %cleanup

err_uar:                                          ; preds = %do.end98, %do.end53
  %err.0 = phi i32 [ %call48, %do.end53 ], [ %retval.0.i184191, %do.end98 ]
  %98 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %fdev, align 4
  %100 = ptrtoint ptr %uar to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %uar, align 4
  tail call void @mlx5_put_uars_page(ptr noundef %99, ptr noundef %101) #10
  br label %err_roce

err_roce:                                         ; preds = %err_uar, %if.then11
  %err.1 = phi i32 [ %13, %if.then11 ], [ %err.0, %err_uar ]
  %102 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %fdev, align 4
  %call142 = tail call i32 @mlx5_nic_vport_disable_roce(ptr noundef %103) #10
  br label %cleanup

cleanup:                                          ; preds = %err_roce, %if.then120, %do.body108, %do.end
  %retval.0 = phi i32 [ 0, %if.then120 ], [ %call, %do.end ], [ %err.1, %err_roce ], [ 0, %do.body108 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_nic_vport_enable_roce(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_uars_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_alloc_pd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_dealloc_pd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_put_uars_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_nic_vport_disable_roce(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_fpga_conn_device_cleanup(ptr nocapture noundef readonly %fdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdev, align 4
  %conn_res = getelementptr inbounds %struct.mlx5_fpga_device, ptr %fdev, i32 0, i32 7
  %mkey = getelementptr inbounds %struct.mlx5_fpga_device, ptr %fdev, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %mkey to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mkey, align 4
  %call = tail call i32 @mlx5_core_destroy_mkey(ptr noundef %1, i32 noundef %3) #10
  %4 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fdev, align 4
  %6 = ptrtoint ptr %conn_res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %conn_res, align 4
  %call3 = tail call i32 @mlx5_core_dealloc_pd(ptr noundef %5, i32 noundef %7) #10
  %8 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fdev, align 4
  %uar = getelementptr inbounds %struct.mlx5_fpga_device, ptr %fdev, i32 0, i32 7, i32 2
  %10 = ptrtoint ptr %uar to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %uar, align 4
  tail call void @mlx5_put_uars_page(ptr noundef %9, ptr noundef %11) #10
  %12 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fdev, align 4
  %call7 = tail call i32 @mlx5_nic_vport_disable_roce(ptr noundef %13) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_destroy_mkey(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cqwq_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vector2eqn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fill_page_frag_array(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_create_cq(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_fpga_conn_cq_complete(ptr noundef %mcq, ptr nocapture noundef readnone %eqe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr i8, ptr %mcq, i32 172
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %qp, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !168

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %mcq, i32 -172
  tail call fastcc void @mlx5_fpga_conn_cqes(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_fpga_conn_cq_tasklet(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr i8, ptr %t, i32 24
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %qp, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !168

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %t, i32 -320
  tail call fastcc void @mlx5_fpga_conn_cqes(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_wq_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_fpga_conn_cqes(ptr noundef %conn) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %cq = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5
  %cc.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 0, i32 2
  %sz_m1.i.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 0, i32 0, i32 1
  %strides_offset.i.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 0, i32 0, i32 3
  %log_frag_strides.i.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 0, i32 0, i32 6
  %frag_sz_m1.i.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 0, i32 0, i32 2
  %log_stride.i.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 0, i32 0, i32 5
  %log_sz.i.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 0, i32 0, i32 4
  %db.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %mlx5_fpga_conn_handle_cqe.exit.while.body_crit_edge, %entry
  %budget.addr.012 = phi i32 [ 64, %entry ], [ %dec, %mlx5_fpga_conn_handle_cqe.exit.while.body_crit_edge ]
  %0 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cc.i.i, align 4
  %2 = ptrtoint ptr %sz_m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sz_m1.i.i.i, align 4
  %and.i.i.i = and i32 %3, %1
  %4 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %5 to i32
  %add.i.i.i = add i32 %and.i.i.i, %conv.i.i.i
  %6 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i.i = zext i8 %7 to i32
  %shr.i.i.i = lshr i32 %add.i.i.i, %conv1.i.i.i
  %8 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cq, align 4
  %arrayidx.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %9, i32 %shr.i.i.i
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i.i, align 4
  %12 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i = zext i16 %13 to i32
  %and.i.i15.i = and i32 %add.i.i.i, %conv2.i.i.i
  %14 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i = zext i8 %15 to i32
  %shl.i.i.i = shl i32 %and.i.i15.i, %conv3.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %15)
  %cmp.i.i = icmp eq i8 %15, 7
  %conv2.i.i = zext i1 %cmp.i.i to i32
  %add.ptr.i.i = getelementptr %struct.mlx5_cqe64, ptr %add.ptr.i.i.i, i32 %conv2.i.i
  %op_own.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %add.ptr.i.i, i32 0, i32 23
  %16 = ptrtoint ptr %op_own.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %op_own.i, align 1
  %18 = and i8 %17, 1
  %19 = ptrtoint ptr %log_sz.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %log_sz.i.i.i, align 4
  %conv.i.i17.i = zext i8 %20 to i32
  %shr.i.i18.i = lshr i32 %1, %conv.i.i17.i
  %conv5.i = and i32 %shr.i.i18.i, 1
  %conv6.i = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i, i32 %conv6.i)
  %cmp.not.i = icmp eq i32 %conv5.i, %conv6.i
  br i1 %cmp.not.i, label %mlx5_cqwq_get_cqe.exit, label %while.body.do.body_crit_edge

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

mlx5_cqwq_get_cqe.exit:                           ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !180
  %tobool1.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool1.not, label %mlx5_cqwq_get_cqe.exit.do.body_crit_edge, label %if.end

mlx5_cqwq_get_cqe.exit.do.body_crit_edge:         ; preds = %mlx5_cqwq_get_cqe.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end:                                           ; preds = %mlx5_cqwq_get_cqe.exit
  %dec = add nsw i32 %budget.addr.012, -1
  %21 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cc.i.i, align 4
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr %cc.i.i, align 4
  %23 = ptrtoint ptr %op_own.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %op_own.i, align 1
  %25 = lshr i8 %24, 4
  %trunc.i = trunc i8 %25 to i4
  %26 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i4 %trunc.i, label %do.end.i [
    i4 -3, label %sw.bb.i
    i4 0, label %if.end.sw.bb1.i_crit_edge
    i4 -2, label %sw.bb2.i
    i4 2, label %if.end.sw.bb4.i_crit_edge
  ]

if.end.sw.bb4.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.end.sw.bb1.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %syndrome.i = getelementptr inbounds %struct.mlx5_err_cqe, ptr %add.ptr.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %syndrome.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %syndrome.i, align 1
  br label %sw.bb1.i

sw.bb1.i:                                         ; preds = %sw.bb.i, %if.end.sw.bb1.i_crit_edge
  %status.0.i = phi i8 [ 0, %if.end.sw.bb1.i_crit_edge ], [ %28, %sw.bb.i ]
  tail call fastcc void @mlx5_fpga_conn_sq_cqe(ptr noundef %conn, ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext %status.0.i) #10
  br label %mlx5_fpga_conn_handle_cqe.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %syndrome3.i = getelementptr inbounds %struct.mlx5_err_cqe, ptr %add.ptr.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %syndrome3.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %syndrome3.i, align 1
  br label %sw.bb4.i

sw.bb4.i:                                         ; preds = %sw.bb2.i, %if.end.sw.bb4.i_crit_edge
  %status.1.i = phi i8 [ 0, %if.end.sw.bb4.i_crit_edge ], [ %30, %sw.bb2.i ]
  tail call fastcc void @mlx5_fpga_conn_rq_cqe(ptr noundef %conn, ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext %status.1.i) #10
  br label %mlx5_fpga_conn_handle_cqe.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %25 to i32
  %31 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %conn, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %37 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 68
  %41 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef 355, i32 noundef %42, ptr noundef nonnull @.str.51, i32 noundef 355, i32 noundef %42, i32 noundef %conv.i) #13
  br label %mlx5_fpga_conn_handle_cqe.exit

mlx5_fpga_conn_handle_cqe.exit:                   ; preds = %do.end.i, %sw.bb4.i, %sw.bb1.i
  %43 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cc.i.i, align 4
  %and.i = and i32 %44, 16777215
  %45 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %db.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and.i, ptr %46, align 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then7.critedge, label %mlx5_fpga_conn_handle_cqe.exit.while.body_crit_edge

mlx5_fpga_conn_handle_cqe.exit.while.body_crit_edge: ; preds = %mlx5_fpga_conn_handle_cqe.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.then7.critedge:                                ; preds = %mlx5_fpga_conn_handle_cqe.exit
  %state.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 3, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then7.critedge.cleanup_crit_edge

if.then7.critedge.cleanup_crit_edge:              ; preds = %if.then7.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then7.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %tasklet = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 3
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #10
  br label %cleanup

do.body:                                          ; preds = %mlx5_cqwq_get_cqe.exit.do.body_crit_edge, %while.body.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fpga_conn_cqes.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fpga_conn_cqes, %if.then14)) #10
          to label %do.body22 [label %if.then14], !srcloc !173

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %conn, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  %54 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i4 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i4 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 68
  %58 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pid, align 8
  %60 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cc.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fpga_conn_cqes.__UNIQUE_ID_ddebug517, ptr noundef %53, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef 385, i32 noundef %59, ptr noundef nonnull @.str.48, i32 noundef 385, i32 noundef %59, i32 noundef %61) #10
  br label %do.body22

do.body22:                                        ; preds = %if.then14, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %mcq.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 2
  %62 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %conn, align 4
  %uar.i = getelementptr inbounds %struct.mlx5_fpga_device, ptr %63, i32 0, i32 7, i32 2
  %64 = ptrtoint ptr %uar.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %uar.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %68 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cc.i.i, align 4
  %arm_sn.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 2, i32 12
  %70 = ptrtoint ptr %arm_sn.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arm_sn.i.i, align 4
  %and1.i.i = and i32 %69, 16777215
  %and.i.i6 = shl i32 %71, 28
  %shl.i.i = and i32 %and.i.i6, 805306368
  %or2.i.i = or i32 %shl.i.i, %and1.i.i
  %arm_db.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 2, i32 3
  %72 = ptrtoint ptr %arm_db.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arm_db.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or2.i.i, ptr %73, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !174
  tail call void @arm_heavy_mb() #10
  %75 = ptrtoint ptr %mcq.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mcq.i, align 4
  %add.ptr.i.i7 = getelementptr i8, ptr %67, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7, i32 %or2.i.i) #10, !srcloc !172
  %add.ptr.i.i.i8 = getelementptr i8, ptr %67, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i8, i32 %76) #10, !srcloc !172
  br label %cleanup

cleanup:                                          ; preds = %do.body22, %if.then.i, %if.then7.critedge.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_fpga_conn_sq_cqe(ptr noundef %conn, ptr nocapture noundef readonly %cqe, i8 noundef zeroext %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6
  %sq = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sq) #10
  %wqe_counter = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 21
  %0 = ptrtoint ptr %wqe_counter to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %wqe_counter, align 4
  %conv5 = zext i16 %1 to i32
  %size = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 5, i32 3
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %sub = add i32 %3, 65535
  %and = and i32 %sub, %conv5
  %bufs = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 5, i32 4
  %4 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bufs, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %and
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  store ptr null, ptr %arrayidx, align 4
  %cc = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 5, i32 2
  %8 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cc, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %cc, align 4
  %backlog = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 5, i32 5
  %10 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %backlog, align 4
  %cmp.i.not = icmp eq ptr %11, %backlog
  br i1 %cmp.i.not, label %entry.if.end35_crit_edge, label %if.then, !prof !169

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then:                                          ; preds = %entry
  %12 = ptrtoint ptr %qp to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %qp, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool23.not = icmp eq i8 %13, 0
  br i1 %tobool23.not, label %if.then.if.end35_crit_edge, label %if.then30, !prof !168

if.then.if.end35_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then30:                                        ; preds = %if.then
  %add.ptr = getelementptr i8, ptr %11, i32 -28
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then30.list_del.exit_crit_edge

if.then30.list_del.exit_crit_edge:                ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then30.list_del.exit_crit_edge
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @mlx5_fpga_conn_post_send(ptr noundef %conn, ptr noundef %add.ptr)
  br label %if.end35

if.end35:                                         ; preds = %list_del.exit, %if.then.if.end35_crit_edge, %entry.if.end35_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sq, i32 noundef %call2) #10
  %conv39 = zext i8 %status to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status)
  %tobool40.not.not = icmp eq i8 %status, 0
  %22 = zext i8 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %status, label %do.end53 [
    i8 5, label %if.end35.do.body59_crit_edge
    i8 0, label %if.end35.do.body59_crit_edge138
  ]

if.end35.do.body59_crit_edge138:                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body59

if.end35.do.body59_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body59

do.end53:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %conn, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %29 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 68
  %33 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pid, align 8
  %fpga_qpn = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 4
  %35 = ptrtoint ptr %fpga_qpn to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fpga_qpn, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef 318, i32 noundef %34, ptr noundef nonnull @.str.53, i32 noundef 318, i32 noundef %34, ptr noundef %7, i32 noundef %36, i32 noundef %conv39) #13
  br label %if.end84

do.body59:                                        ; preds = %if.end35.do.body59_crit_edge, %if.end35.do.body59_crit_edge138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fpga_conn_sq_cqe.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fpga_conn_sq_cqe, %if.then69)) #10
          to label %if.end84 [label %if.then69], !srcloc !173

if.then69:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %conn, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %43 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i136 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i136 to ptr
  %task74 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task74 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task74, align 8
  %pid75 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 68
  %47 = ptrtoint ptr %pid75 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pid75, align 8
  %fpga_qpn79 = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 4
  %49 = ptrtoint ptr %fpga_qpn79 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fpga_qpn79, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fpga_conn_sq_cqe.__UNIQUE_ID_ddebug516, ptr noundef %42, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef 321, i32 noundef %48, ptr noundef nonnull @.str.53, i32 noundef 321, i32 noundef %48, ptr noundef %7, i32 noundef %50, i32 noundef %conv39) #10
  br label %if.end84

if.end84:                                         ; preds = %if.then69, %do.body59, %do.end53
  %51 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %conn, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %pdev.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev.i.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %sg.i = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %7, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.mlx5_fpga_dma_buf, ptr %7, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %58, null
  br i1 %tobool.not.i, label %if.end84.if.end.i_crit_edge, label %if.then.i

if.end84.if.end.i_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %dma_addr.i = getelementptr %struct.mlx5_fpga_dma_buf, ptr %7, i32 0, i32 1, i32 1, i32 2
  %59 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dma_addr.i, align 4
  %size.i = getelementptr %struct.mlx5_fpga_dma_buf, ptr %7, i32 0, i32 1, i32 1, i32 1
  %61 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %size.i, align 4
  %63 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %7, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i.i, i32 noundef %60, i32 noundef %62, i32 noundef %64, i32 noundef 0) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end84.if.end.i_crit_edge
  %65 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sg.i, align 4
  %tobool8.not.i = icmp eq ptr %66, null
  br i1 %tobool8.not.i, label %if.end.i.mlx5_fpga_conn_unmap_buf.exit_crit_edge, label %if.then11.i, !prof !168

if.end.i.mlx5_fpga_conn_unmap_buf.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_fpga_conn_unmap_buf.exit

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dma_addr14.i = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %7, i32 0, i32 1, i32 0, i32 2
  %67 = ptrtoint ptr %dma_addr14.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dma_addr14.i, align 4
  %size17.i = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %7, i32 0, i32 1, i32 0, i32 1
  %69 = ptrtoint ptr %size17.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %size17.i, align 4
  %71 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %7, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i.i, i32 noundef %68, i32 noundef %70, i32 noundef %72, i32 noundef 0) #10
  br label %mlx5_fpga_conn_unmap_buf.exit

mlx5_fpga_conn_unmap_buf.exit:                    ; preds = %if.then11.i, %if.end.i.mlx5_fpga_conn_unmap_buf.exit_crit_edge
  %complete = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %7, i32 0, i32 3
  %73 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %complete, align 4
  %tobool85.not = icmp eq ptr %74, null
  br i1 %tobool85.not, label %mlx5_fpga_conn_unmap_buf.exit.if.end95_crit_edge, label %if.then92, !prof !168

mlx5_fpga_conn_unmap_buf.exit.if.end95_crit_edge: ; preds = %mlx5_fpga_conn_unmap_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.then92:                                        ; preds = %mlx5_fpga_conn_unmap_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %conn, align 4
  tail call void %74(ptr noundef %conn, ptr noundef %76, ptr noundef %7, i8 noundef zeroext %status) #10
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %mlx5_fpga_conn_unmap_buf.exit.if.end95_crit_edge
  br i1 %tobool40.not.not, label %if.end95.if.end106_crit_edge, label %if.then103, !prof !169

if.end95.if.end106_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then103:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %qp to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %qp, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then103, %if.end95.if.end106_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_fpga_conn_rq_cqe(ptr nocapture noundef %conn, ptr nocapture noundef readonly %cqe, i8 noundef zeroext %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wqe_counter = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 21
  %0 = ptrtoint ptr %wqe_counter to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %wqe_counter, align 4
  %conv = zext i16 %1 to i32
  %qp = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6
  %size = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 6, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %sub = add i32 %3, 65535
  %and = and i32 %sub, %conv
  %bufs = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 6, i32 3
  %4 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bufs, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %and
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  store ptr null, ptr %arrayidx, align 4
  %cc = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 6, i32 1
  %8 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cc, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %cc, align 4
  %conv9 = zext i8 %status to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status)
  %tobool.not.not = icmp eq i8 %status, 0
  %10 = zext i8 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %status, label %do.end [
    i8 5, label %entry.do.body18_crit_edge
    i8 0, label %entry.do.body18_crit_edge154
  ]

entry.do.body18_crit_edge154:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

entry.do.body18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conn, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %17 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid, align 8
  %fpga_qpn = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 4
  %23 = ptrtoint ptr %fpga_qpn to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fpga_qpn, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef 263, i32 noundef %22, ptr noundef nonnull @.str.55, i32 noundef 263, i32 noundef %22, ptr noundef %7, i32 noundef %24, i32 noundef %conv9) #13
  br label %if.end41

do.body18:                                        ; preds = %entry.do.body18_crit_edge, %entry.do.body18_crit_edge154
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fpga_conn_rq_cqe.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fpga_conn_rq_cqe, %if.then27)) #10
          to label %if.end41 [label %if.then27], !srcloc !173

if.then27:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %conn, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %31 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i149 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i149 to ptr
  %task32 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task32, align 8
  %pid33 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 68
  %35 = ptrtoint ptr %pid33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pid33, align 8
  %fpga_qpn37 = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 4
  %37 = ptrtoint ptr %fpga_qpn37 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fpga_qpn37, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fpga_conn_rq_cqe.__UNIQUE_ID_ddebug514, ptr noundef %30, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef 266, i32 noundef %36, ptr noundef nonnull @.str.55, i32 noundef 266, i32 noundef %36, ptr noundef %7, i32 noundef %38, i32 noundef %conv9) #10
  br label %if.end41

if.end41:                                         ; preds = %if.then27, %do.body18, %do.end
  %39 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %conn, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %pdev.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev.i.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %sg.i = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %7, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.mlx5_fpga_dma_buf, ptr %7, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i, label %if.end41.if.end.i_crit_edge, label %if.then.i

if.end41.if.end.i_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %dma_addr.i = getelementptr %struct.mlx5_fpga_dma_buf, ptr %7, i32 0, i32 1, i32 1, i32 2
  %47 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dma_addr.i, align 4
  %size.i = getelementptr %struct.mlx5_fpga_dma_buf, ptr %7, i32 0, i32 1, i32 1, i32 1
  %49 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size.i, align 4
  %51 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %7, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i.i, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef 0) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end41.if.end.i_crit_edge
  %53 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sg.i, align 4
  %tobool8.not.i = icmp eq ptr %54, null
  br i1 %tobool8.not.i, label %if.end.i.mlx5_fpga_conn_unmap_buf.exit_crit_edge, label %if.then11.i, !prof !168

if.end.i.mlx5_fpga_conn_unmap_buf.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_fpga_conn_unmap_buf.exit

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dma_addr14.i = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %7, i32 0, i32 1, i32 0, i32 2
  %55 = ptrtoint ptr %dma_addr14.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma_addr14.i, align 4
  %size17.i = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %7, i32 0, i32 1, i32 0, i32 1
  %57 = ptrtoint ptr %size17.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size17.i, align 4
  %59 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %7, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i.i, i32 noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef 0) #10
  br label %mlx5_fpga_conn_unmap_buf.exit

mlx5_fpga_conn_unmap_buf.exit:                    ; preds = %if.then11.i, %if.end.i.mlx5_fpga_conn_unmap_buf.exit_crit_edge
  br i1 %tobool.not.not, label %lor.rhs, label %mlx5_fpga_conn_unmap_buf.exit.if.then54_crit_edge, !prof !169

mlx5_fpga_conn_unmap_buf.exit.if.then54_crit_edge: ; preds = %mlx5_fpga_conn_unmap_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54

lor.rhs:                                          ; preds = %mlx5_fpga_conn_unmap_buf.exit
  %61 = ptrtoint ptr %qp to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %qp, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool45.not = icmp eq i8 %62, 0
  br i1 %tobool45.not, label %lor.rhs.if.then54_crit_edge, label %if.end57, !prof !168

lor.rhs.if.then54_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54

if.then54:                                        ; preds = %lor.rhs.if.then54_crit_edge, %mlx5_fpga_conn_unmap_buf.exit.if.then54_crit_edge
  %63 = ptrtoint ptr %qp to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %qp, align 4
  br label %cleanup.sink.split

if.end57:                                         ; preds = %lor.rhs
  %byte_cnt = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 17
  %64 = ptrtoint ptr %byte_cnt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %byte_cnt, align 4
  %size59 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %7, i32 0, i32 1, i32 0, i32 1
  %66 = ptrtoint ptr %size59 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %size59, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fpga_conn_rq_cqe.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fpga_conn_rq_cqe, %if.then72)) #10
          to label %do.end87 [label %if.then72], !srcloc !173

if.then72:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %conn, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 8
  %73 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i150 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i150 to ptr
  %task77 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %task77 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task77, align 8
  %pid78 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 68
  %77 = ptrtoint ptr %pid78 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pid78, align 8
  %79 = ptrtoint ptr %size59 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %size59, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fpga_conn_rq_cqe.__UNIQUE_ID_ddebug515, ptr noundef %72, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.55, i32 noundef 278, i32 noundef %78, ptr noundef nonnull @.str.55, i32 noundef 278, i32 noundef %78, i32 noundef %80) #10
  br label %do.end87

do.end87:                                         ; preds = %if.then72, %if.end57
  %recv_cb = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 1
  %81 = ptrtoint ptr %recv_cb to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %recv_cb, align 4
  %cb_arg = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 2
  %83 = ptrtoint ptr %cb_arg to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cb_arg, align 4
  tail call void %82(ptr noundef %84, ptr noundef %7) #10
  %85 = ptrtoint ptr %size59 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 2048, ptr %size59, align 4
  %call91 = tail call fastcc i32 @mlx5_fpga_conn_post_recv(ptr noundef %conn, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %do.end87.cleanup_crit_edge, label %do.end102, !prof !169

do.end87.cleanup_crit_edge:                       ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end102:                                        ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %conn, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 8
  %92 = tail call i32 @llvm.read_register.i32(metadata !157) #10
  %and.i151 = and i32 %92, -16384
  %93 = inttoptr i32 %and.i151 to ptr
  %task107 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %task107 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %task107, align 8
  %pid108 = getelementptr inbounds %struct.task_struct, ptr %95, i32 0, i32 68
  %96 = ptrtoint ptr %pid108 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pid108, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %91, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.55, i32 noundef 285, i32 noundef %97, ptr noundef nonnull @.str.55, i32 noundef 285, i32 noundef %97, i32 noundef %call91) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end102, %if.then54
  tail call void @kfree(ptr noundef %7) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end87.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_fpga_conn_unmap_buf(ptr nocapture noundef readonly %conn, ptr nocapture noundef readonly %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pdev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %sg = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 1
  %arrayidx = getelementptr %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dma_addr = getelementptr %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 1, i32 1, i32 2
  %8 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_addr, align 4
  %size = getelementptr %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sg, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %if.end.if.end19_crit_edge, label %if.then11, !prof !168

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dma_addr14 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %dma_addr14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_addr14, align 4
  %size17 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %size17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size17, align 4
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buf, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef 0) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then11, %if.end.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_fpga_conn_post_recv(ptr nocapture noundef %conn, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mlx5_fpga_conn_map_buf(ptr noundef %conn, ptr noundef %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !169

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rq = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 6
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq, align 4
  %cc = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 6, i32 1
  %2 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cc, align 4
  %sub = sub i32 %1, %3
  %size = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 6, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %5)
  %cmp.not = icmp ult i32 %sub, %5
  br i1 %cmp.not, label %if.end14, label %if.then13, !prof !169

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mlx5_fpga_conn_unmap_buf(ptr noundef %conn, ptr noundef %buf)
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub21 = add i32 %5, -1
  %and = and i32 %sub21, %1
  %wq = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 2
  %conv.i = and i32 %and, 65535
  %strides_offset.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 2, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %add.i.i = add nuw nsw i32 %conv.i, %conv.i.i
  %log_frag_strides.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 2, i32 0, i32 0, i32 6
  %8 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i.i = zext i8 %9 to i32
  %shr.i.i = lshr i32 %add.i.i, %conv1.i.i
  %10 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wq, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5_buf_list, ptr %11, i32 %shr.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  %frag_sz_m1.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 2, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv2.i.i = zext i16 %15 to i32
  %and.i.i = and i32 %add.i.i, %conv2.i.i
  %log_stride.i.i = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 2, i32 0, i32 0, i32 5
  %16 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i = zext i8 %17 to i32
  %shl.i.i = shl i32 %and.i.i, %conv3.i.i
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %shl.i.i
  %size25 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %size25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size25, align 4
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %add.ptr.i.i, align 8
  %21 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %conn, align 4
  %mkey = getelementptr inbounds %struct.mlx5_fpga_device, ptr %22, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %mkey to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mkey, align 4
  %lkey = getelementptr inbounds %struct.mlx5_wqe_data_seg, ptr %add.ptr.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %lkey, align 4
  %dma_addr = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_addr, align 4
  %conv28 = zext i32 %27 to i64
  %addr = getelementptr inbounds %struct.mlx5_wqe_data_seg, ptr %add.ptr.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv28, ptr %addr, align 8
  %29 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rq, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %rq, align 4
  %bufs = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 6, i32 3
  %31 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bufs, align 4
  %arrayidx34 = getelementptr ptr, ptr %32, i32 %and
  %33 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %buf, ptr %arrayidx34, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !182
  %34 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rq, align 4
  %and38 = and i32 %35, 65535
  %db = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 2, i32 0, i32 1
  %36 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %db, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and38, ptr %37, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then13 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_wq_qp_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fpga_modify_qp(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_fpga_conn_reset_qp(ptr nocapture noundef readonly %conn) unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #10
  %4 = call ptr @memset(ptr %in, i32 0, i32 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fpga_conn_reset_qp.__UNIQUE_ID_ddebug550, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fpga_conn_reset_qp, %if.then)) #10
          to label %do.body10 [label %if.then], !srcloc !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %conn, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !157) #10
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
  %qpn = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 4
  %17 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qpn, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fpga_conn_reset_qp.__UNIQUE_ID_ddebug550, ptr noundef %10, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.79, i32 noundef 662, i32 noundef %16, ptr noundef nonnull @.str.79, i32 noundef 662, i32 noundef %16, i32 noundef %18) #10
  br label %do.body10

do.body10:                                        ; preds = %if.then, %entry
  %19 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %in, align 4
  %and = and i32 %20, 65535
  %or = or i32 %and, 84541440
  store i32 %or, ptr %in, align 4
  %qpn22 = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 4
  %21 = ptrtoint ptr %qpn22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qpn22, align 4
  %add.ptr27 = getelementptr inbounds i32, ptr %in, i32 2
  %23 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr27, align 4
  %and28 = and i32 %24, -16777216
  %and29 = and i32 %22, 16777215
  %or31 = or i32 %and28, %and29
  store i32 %or31, ptr %add.ptr27, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #10
  %25 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call40 = call i32 @mlx5_cmd_exec(ptr noundef %3, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #10
  ret i32 %call40
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_fpga_conn_init_qp(ptr nocapture noundef readonly %conn) unnamed_addr #0 align 64 {
entry:
  %in = alloca [68 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %in) #10
  %0 = call ptr @memset(ptr %in, i32 0, i32 272)
  %1 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %conn, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fpga_conn_init_qp.__UNIQUE_ID_ddebug553, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fpga_conn_init_qp, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %conn, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !157) #10
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
  %qpn = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 4
  %17 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qpn, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fpga_conn_init_qp.__UNIQUE_ID_ddebug553, ptr noundef %10, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.81, i32 noundef 677, i32 noundef %16, ptr noundef nonnull @.str.81, i32 noundef 677, i32 noundef %16, i32 noundef %18) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 24
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr, align 4
  %and26 = and i32 %20, -16717825
  %or29 = or i32 %and26, 6144
  store i32 %or29, ptr %add.ptr, align 4
  %add.ptr38 = getelementptr inbounds i8, ptr %in, i32 48
  %21 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr38, align 4
  %and39 = and i32 %22, -65536
  store i32 %and39, ptr %add.ptr38, align 4
  %add.ptr51 = getelementptr inbounds i8, ptr %in, i32 84
  %23 = ptrtoint ptr %add.ptr51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr51, align 4
  %and52 = and i32 %24, -16711681
  %or55 = or i32 %and52, 65536
  store i32 %or55, ptr %add.ptr51, align 4
  %25 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %conn, align 4
  %conn_res = getelementptr inbounds %struct.mlx5_fpga_device, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %conn_res to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %conn_res, align 4
  %add.ptr65 = getelementptr inbounds i8, ptr %in, i32 28
  %29 = ptrtoint ptr %add.ptr65 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr65, align 4
  %and66 = and i32 %30, -16777216
  %and67 = and i32 %28, 16777215
  %or69 = or i32 %and66, %and67
  store i32 %or69, ptr %add.ptr65, align 4
  %mcq = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 5, i32 2
  %31 = ptrtoint ptr %mcq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mcq, align 4
  %add.ptr78 = getelementptr inbounds i8, ptr %in, i32 148
  %33 = ptrtoint ptr %add.ptr78 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr78, align 4
  %and79 = and i32 %34, -16777216
  %and80 = and i32 %32, 16777215
  %or82 = or i32 %and79, %and80
  store i32 %or82, ptr %add.ptr78, align 4
  %add.ptr94 = getelementptr inbounds i8, ptr %in, i32 180
  %35 = ptrtoint ptr %add.ptr94 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr94, align 4
  %and95 = and i32 %36, -16777216
  %or98 = or i32 %and95, %and80
  store i32 %or98, ptr %add.ptr94, align 4
  %dma = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 3, i32 2, i32 2
  %37 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma, align 4
  %conv = zext i32 %38 to i64
  %add.ptr111 = getelementptr inbounds i8, ptr %in, i32 184
  %39 = ptrtoint ptr %add.ptr111 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv, ptr %add.ptr111, align 8
  %40 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %in, align 4
  %and123 = and i32 %41, 65535
  %or126 = or i32 %and123, 84017152
  store i32 %or126, ptr %in, align 4
  %qpn134 = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 4
  %42 = ptrtoint ptr %qpn134 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %qpn134, align 4
  %add.ptr139 = getelementptr inbounds i32, ptr %in, i32 2
  %44 = ptrtoint ptr %add.ptr139 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr139, align 4
  %and140 = and i32 %45, -16777216
  %and141 = and i32 %43, 16777215
  %or143 = or i32 %and140, %and141
  store i32 %or143, ptr %add.ptr139, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #10
  %46 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call152 = call i32 @mlx5_cmd_exec(ptr noundef %4, ptr noundef nonnull %in, i32 noundef 272, ptr noundef nonnull %_out, i32 noundef 16) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #10
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %in) #10
  ret i32 %call152
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_fpga_conn_rtr_qp(ptr nocapture noundef readonly %conn) unnamed_addr #0 align 64 {
entry:
  %in = alloca [68 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %in) #10
  %0 = call ptr @memset(ptr %in, i32 0, i32 272)
  %1 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %conn, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fpga_conn_rtr_qp.__UNIQUE_ID_ddebug565, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fpga_conn_rtr_qp, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %conn, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !157) #10
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fpga_conn_rtr_qp.__UNIQUE_ID_ddebug565, ptr noundef %10, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83, i32 noundef 703, i32 noundef %16, ptr noundef nonnull @.str.83, i32 noundef 703, i32 noundef %16) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr15 = getelementptr inbounds i8, ptr %in, i32 32
  %17 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr15, align 4
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %4, i32 0, i32 8
  %19 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %caps, align 8
  %add.ptr23 = getelementptr i32, ptr %20, i32 14
  %21 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr23, align 4
  %conv = and i32 %22, 520093696
  %or = and i32 %18, 16777215
  %and30 = or i32 %or, 1610612736
  %or33 = or i32 %conv, %and30
  store i32 %or33, ptr %add.ptr15, align 4
  %fpga_qpn = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 4
  %23 = ptrtoint ptr %fpga_qpn to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fpga_qpn, align 4
  %add.ptr42 = getelementptr inbounds i8, ptr %in, i32 44
  %25 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr42, align 4
  %and43 = and i32 %26, -16777216
  %and44 = and i32 %24, 16777215
  %or46 = or i32 %and43, %and44
  store i32 %or46, ptr %add.ptr42, align 4
  %fpga_qpc = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 3
  %add.ptr53 = getelementptr %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 3, i32 5
  %27 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr53, align 4
  %and55 = and i32 %28, 16777215
  %add.ptr59 = getelementptr inbounds i8, ptr %in, i32 172
  %29 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr59, align 4
  %and60 = and i32 %30, -16777216
  %or63 = or i32 %and60, %and55
  store i32 %or63, ptr %add.ptr59, align 4
  %add.ptr72 = getelementptr inbounds i8, ptr %in, i32 48
  %31 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr72, align 4
  %and73 = and i32 %32, -65536
  store i32 %and73, ptr %add.ptr72, align 4
  %add.ptr85 = getelementptr inbounds i8, ptr %in, i32 84
  %33 = ptrtoint ptr %add.ptr85 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr85, align 4
  %and86 = and i32 %34, -16711681
  %or89 = or i32 %and86, 65536
  store i32 %or89, ptr %add.ptr85, align 4
  %add.ptr93 = getelementptr inbounds i8, ptr %in, i32 86
  %add.ptr96 = getelementptr i8, ptr %fpga_qpc, i32 74
  %35 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr96, align 4
  %37 = ptrtoint ptr %add.ptr93 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %add.ptr93, align 4
  %add.ptr.i = getelementptr i8, ptr %fpga_qpc, i32 78
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr inbounds i8, ptr %in, i32 90
  %40 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %add.ptr1.i, align 2
  %arrayidx101 = getelementptr %struct.mlx5_core_dev, ptr %4, i32 0, i32 8, i32 0, i32 4
  %41 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx101, align 8
  %add.ptr104 = getelementptr i32, ptr %42, i32 6
  %43 = ptrtoint ptr %add.ptr104 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr104, align 4
  %and106 = and i32 %44, 65535
  %add.ptr110 = getelementptr inbounds i8, ptr %in, i32 80
  %45 = ptrtoint ptr %add.ptr110 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr110, align 4
  %and111 = and i32 %46, -65536
  %or114 = or i32 %and111, %and106
  store i32 %or114, ptr %add.ptr110, align 4
  %sgid_index = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 1
  %47 = ptrtoint ptr %sgid_index to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sgid_index, align 4
  %add.ptr123 = getelementptr inbounds i8, ptr %in, i32 56
  %49 = ptrtoint ptr %add.ptr123 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr123, align 4
  %and124 = and i32 %50, -16711936
  %and125 = shl i32 %48, 16
  %shl126 = and i32 %and125, 16711680
  %or127 = or i32 %and124, %shl126
  store i32 %or127, ptr %add.ptr123, align 4
  %add.ptr144 = getelementptr inbounds i8, ptr %in, i32 64
  %add.ptr147 = getelementptr %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 3, i32 20
  %51 = call ptr @memcpy(ptr %add.ptr144, ptr %add.ptr147, i32 16)
  %52 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %in, align 4
  %and155 = and i32 %53, 65535
  %or158 = or i32 %and155, 84082688
  store i32 %or158, ptr %in, align 4
  %qpn = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 4
  %54 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %qpn, align 4
  %add.ptr170 = getelementptr inbounds i32, ptr %in, i32 2
  %56 = ptrtoint ptr %add.ptr170 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr170, align 4
  %and171 = and i32 %57, -16777216
  %and172 = and i32 %55, 16777215
  %or174 = or i32 %and171, %and172
  store i32 %or174, ptr %add.ptr170, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #10
  %58 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call183 = call i32 @mlx5_cmd_exec(ptr noundef %4, ptr noundef nonnull %in, i32 noundef 272, ptr noundef nonnull %_out, i32 noundef 16) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #10
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %in) #10
  ret i32 %call183
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_fpga_conn_rts_qp(ptr nocapture noundef readonly %conn) unnamed_addr #0 align 64 {
entry:
  %in = alloca [68 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 4
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %in) #10
  %2 = call ptr @memset(ptr %in, i32 0, i32 272)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fpga_conn_rts_qp.__UNIQUE_ID_ddebug577, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fpga_conn_rts_qp, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %conn, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !157) #10
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fpga_conn_rts_qp.__UNIQUE_ID_ddebug577, ptr noundef %10, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.85, i32 noundef 738, i32 noundef %16, ptr noundef nonnull @.str.85, i32 noundef 738, i32 noundef %16) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr15 = getelementptr inbounds i8, ptr %in, i32 136
  %17 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr15, align 4
  %and = and i32 %18, 267919359
  %add.ptr25 = getelementptr inbounds i8, ptr %in, i32 172
  %19 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr25, align 4
  %and26 = and i32 %20, -520093697
  %or29 = or i32 %and26, 301989888
  store i32 %or29, ptr %add.ptr25, align 4
  %add.ptr38 = getelementptr inbounds i8, ptr %in, i32 56
  %21 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr38, align 4
  %and39 = and i32 %22, 134217727
  %or42 = or i32 %and39, -1879048192
  store i32 %or42, ptr %add.ptr38, align 4
  %add.ptr49 = getelementptr %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 3, i32 4
  %23 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr49, align 4
  %and50 = and i32 %24, 16777215
  %add.ptr54 = getelementptr inbounds i8, ptr %in, i32 144
  %25 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr54, align 4
  %and55 = and i32 %26, -16777216
  %or58 = or i32 %and55, %and50
  store i32 %or58, ptr %add.ptr54, align 4
  %or84 = or i32 %and, -2146967552
  store i32 %or84, ptr %add.ptr15, align 4
  %27 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %in, align 4
  %and95 = and i32 %28, 65535
  %or98 = or i32 %and95, 84148224
  store i32 %or98, ptr %in, align 4
  %qpn = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 4
  %29 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qpn, align 4
  %add.ptr109 = getelementptr inbounds i32, ptr %in, i32 2
  %31 = ptrtoint ptr %add.ptr109 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr109, align 4
  %and110 = and i32 %32, -16777216
  %and111 = and i32 %30, 16777215
  %or113 = or i32 %and110, %and111
  store i32 %or113, ptr %add.ptr109, align 4
  %add.ptr124 = getelementptr inbounds i32, ptr %in, i32 4
  %33 = ptrtoint ptr %add.ptr124 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 64, ptr %add.ptr124, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #10
  %34 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call137 = call i32 @mlx5_cmd_exec(ptr noundef %4, ptr noundef nonnull %in, i32 noundef 272, ptr noundef nonnull %_out, i32 noundef 16) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #10
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %in) #10
  ret i32 %call137
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_fpga_conn_free_recv_bufs(ptr nocapture noundef readonly %conn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 6, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp25.not = icmp eq i32 %1, 0
  br i1 %cmp25.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bufs = getelementptr inbounds %struct.mlx5_fpga_conn, ptr %conn, i32 0, i32 6, i32 6, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ix.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bufs, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %ix.026
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conn, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %pdev.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %sg.i = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %5, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.mlx5_fpga_dma_buf, ptr %5, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dma_addr.i = getelementptr %struct.mlx5_fpga_dma_buf, ptr %5, i32 0, i32 1, i32 1, i32 2
  %14 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_addr.i, align 4
  %size.i = getelementptr %struct.mlx5_fpga_dma_buf, ptr %5, i32 0, i32 1, i32 1, i32 1
  %16 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %5, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i.i, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef 0) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %20 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sg.i, align 4
  %tobool8.not.i = icmp eq ptr %21, null
  br i1 %tobool8.not.i, label %if.end.i.mlx5_fpga_conn_unmap_buf.exit_crit_edge, label %if.then11.i, !prof !168

if.end.i.mlx5_fpga_conn_unmap_buf.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_fpga_conn_unmap_buf.exit

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dma_addr14.i = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %5, i32 0, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %dma_addr14.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_addr14.i, align 4
  %size17.i = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %5, i32 0, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %size17.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size17.i, align 4
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %5, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i.i, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef 0) #10
  br label %mlx5_fpga_conn_unmap_buf.exit

mlx5_fpga_conn_unmap_buf.exit:                    ; preds = %if.then11.i, %if.end.i.mlx5_fpga_conn_unmap_buf.exit_crit_edge
  %28 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bufs, align 4
  %arrayidx10 = getelementptr ptr, ptr %29, i32 %ix.026
  %30 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx10, align 4
  tail call void @kfree(ptr noundef %31) #10
  %32 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bufs, align 4
  %arrayidx14 = getelementptr ptr, ptr %33, i32 %ix.026
  %34 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %mlx5_fpga_conn_unmap_buf.exit, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %ix.026, 1
  %35 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %36
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_destroy_cq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_create_mkey(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !66, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !100, !101, !102, !103, !105, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156}
!llvm.named.register.sp = !{!157}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @mlx5_fpga_conn_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 828, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 836, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mlx5_fpga_conn_create._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @mlx5_fpga_conn_create._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 849, i32 3}
!13 = !{ptr @mlx5_fpga_conn_create._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @mlx5_fpga_conn_create._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 860, i32 3}
!17 = !{ptr @mlx5_fpga_conn_create._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @mlx5_fpga_conn_create._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 864, i32 2}
!21 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mlx5_fpga_conn_create.__UNIQUE_ID_ddebug589, !20, !"__UNIQUE_ID_ddebug589", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 872, i32 3}
!25 = !{ptr @mlx5_fpga_conn_create._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @mlx5_fpga_conn_create._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 881, i32 3}
!29 = !{ptr @mlx5_fpga_conn_create._entry.17, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @mlx5_fpga_conn_create._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 901, i32 3}
!33 = !{ptr @mlx5_fpga_conn_create._entry.20, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @mlx5_fpga_conn_create._entry_ptr.22, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 912, i32 2}
!37 = !{ptr @mlx5_fpga_conn_create.__UNIQUE_ID_ddebug601, !36, !"__UNIQUE_ID_ddebug601", i1 false, i1 false}
!38 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 955, i32 3}
!40 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mlx5_fpga_conn_device_init._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @mlx5_fpga_conn_device_init._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 962, i32 3}
!45 = !{ptr @mlx5_fpga_conn_device_init._entry.26, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mlx5_fpga_conn_device_init._entry_ptr.28, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 965, i32 2}
!49 = !{ptr @mlx5_fpga_conn_device_init.__UNIQUE_ID_ddebug602, !48, !"__UNIQUE_ID_ddebug602", i1 false, i1 false}
!50 = !{ptr @.str.31, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 970, i32 3}
!52 = !{ptr @mlx5_fpga_conn_device_init._entry.30, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @mlx5_fpga_conn_device_init._entry_ptr.32, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 973, i32 2}
!56 = !{ptr @mlx5_fpga_conn_device_init.__UNIQUE_ID_ddebug603, !55, !"__UNIQUE_ID_ddebug603", i1 false, i1 false}
!57 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 978, i32 3}
!59 = !{ptr @mlx5_fpga_conn_device_init._entry.34, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @mlx5_fpga_conn_device_init._entry_ptr.36, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.37, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 981, i32 2}
!63 = !{ptr @mlx5_fpga_conn_device_init.__UNIQUE_ID_ddebug604, !62, !"__UNIQUE_ID_ddebug604", i1 false, i1 false}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 62, i32 3}
!66 = !{ptr @.str.39, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.40, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @mlx5_fpga_conn_map_buf._entry, !65, !"_entry", i1 false, i1 false}
!69 = !{ptr @mlx5_fpga_conn_map_buf._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.42, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 74, i32 3}
!72 = !{ptr @mlx5_fpga_conn_map_buf._entry.41, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @mlx5_fpga_conn_map_buf._entry_ptr.43, !71, !"_entry_ptr", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!76 = !{ptr @.str.44, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.45, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.46, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 481, i32 2}
!80 = !{ptr @.str.47, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @mlx5_fpga_conn_create_cq.__UNIQUE_ID_ddebug525, !79, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!82 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 385, i32 2}
!84 = !{ptr @.str.49, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @mlx5_fpga_conn_cqes.__UNIQUE_ID_ddebug517, !83, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!86 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 354, i32 3}
!88 = !{ptr @.str.51, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @mlx5_fpga_conn_handle_cqe._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @mlx5_fpga_conn_handle_cqe._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.52, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 317, i32 3}
!93 = !{ptr @.str.53, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @mlx5_fpga_conn_sq_cqe._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @mlx5_fpga_conn_sq_cqe._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @mlx5_fpga_conn_sq_cqe.__UNIQUE_ID_ddebug516, !97, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 320, i32 3}
!98 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 262, i32 3}
!100 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @mlx5_fpga_conn_rq_cqe._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @mlx5_fpga_conn_rq_cqe._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @mlx5_fpga_conn_rq_cqe.__UNIQUE_ID_ddebug514, !104, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 265, i32 3}
!105 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 277, i32 2}
!107 = !{ptr @mlx5_fpga_conn_rq_cqe.__UNIQUE_ID_ddebug515, !106, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!108 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 284, i32 3}
!110 = !{ptr @mlx5_fpga_conn_rq_cqe._entry.57, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @mlx5_fpga_conn_rq_cqe._entry_ptr.59, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 590, i32 2}
!114 = !{ptr @.str.61, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @mlx5_fpga_conn_create_qp.__UNIQUE_ID_ddebug547, !113, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!116 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 766, i32 3}
!118 = !{ptr @.str.63, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @mlx5_fpga_conn_connect._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @mlx5_fpga_conn_connect._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.65, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 772, i32 3}
!123 = !{ptr @mlx5_fpga_conn_connect._entry.64, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @mlx5_fpga_conn_connect._entry_ptr.66, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.68, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 778, i32 3}
!127 = !{ptr @mlx5_fpga_conn_connect._entry.67, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @mlx5_fpga_conn_connect._entry_ptr.69, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.71, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 788, i32 3}
!131 = !{ptr @mlx5_fpga_conn_connect._entry.70, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @mlx5_fpga_conn_connect._entry_ptr.72, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.74, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 794, i32 3}
!135 = !{ptr @mlx5_fpga_conn_connect._entry.73, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @mlx5_fpga_conn_connect._entry_ptr.75, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.77, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 805, i32 3}
!139 = !{ptr @mlx5_fpga_conn_connect._entry.76, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @mlx5_fpga_conn_connect._entry_ptr.78, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.79, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 662, i32 2}
!143 = !{ptr @.str.80, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @mlx5_fpga_conn_reset_qp.__UNIQUE_ID_ddebug550, !142, !"__UNIQUE_ID_ddebug550", i1 false, i1 false}
!145 = !{ptr @.str.81, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 677, i32 2}
!147 = !{ptr @.str.82, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @mlx5_fpga_conn_init_qp.__UNIQUE_ID_ddebug553, !146, !"__UNIQUE_ID_ddebug553", i1 false, i1 false}
!149 = !{ptr @.str.83, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 703, i32 2}
!151 = !{ptr @.str.84, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @mlx5_fpga_conn_rtr_qp.__UNIQUE_ID_ddebug565, !150, !"__UNIQUE_ID_ddebug565", i1 false, i1 false}
!153 = !{ptr @.str.85, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/conn.c", i32 738, i32 2}
!155 = !{ptr @.str.86, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @mlx5_fpga_conn_rts_qp.__UNIQUE_ID_ddebug577, !154, !"__UNIQUE_ID_ddebug577", i1 false, i1 false}
!157 = !{!"sp"}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{i8 0, i8 2}
!168 = !{!"branch_weights", i32 1, i32 2000}
!169 = !{!"branch_weights", i32 2000, i32 1}
!170 = !{i64 2158824208}
!171 = !{i64 2158824414}
!172 = !{i64 6175128}
!173 = !{i64 2148791140, i64 2148791145, i64 2148791158, i64 2148791202, i64 2148791236, i64 2148791257}
!174 = !{i64 2158742900}
!175 = !{i64 2148309325, i64 2148309351, i64 2148309380, i64 2148309414, i64 2148309445, i64 2148309468}
!176 = !{i64 2155393863}
!177 = !{i64 2155394505}
!178 = !{!"auto-init"}
!179 = !{i32 0, i32 33}
!180 = !{i64 2158815597}
!181 = !{i64 2158885083}
!182 = !{i64 2158824045}
