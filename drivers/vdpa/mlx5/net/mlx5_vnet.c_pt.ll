; ModuleID = '/llk/IR_all_yes/drivers/vdpa/mlx5/net/mlx5_vnet.c_pt.bc'
source_filename = "../drivers/vdpa/mlx5/net/mlx5_vnet.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.auxiliary_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.auxiliary_device_id = type { [32 x i8], i32 }
%struct.vdpa_mgmtdev_ops = type { ptr, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vdpa_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx5_adev = type { %struct.auxiliary_device, ptr, i32 }
%struct.auxiliary_device = type { %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.vdpa_mgmt_dev = type { ptr, ptr, ptr, i64, %struct.list_head, i64, i32 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.153, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.155, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.153 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_vdpa_mgmtdev = type { %struct.vdpa_mgmt_dev, ptr, ptr }
%struct.vdpa_dev_set_config = type { %struct.anon.159, i64 }
%struct.anon.159 = type { [6 x i8], i16, i16 }
%struct.mlx5_vdpa_dev = type { %struct.vdpa_device, ptr, %struct.mlx5_vdpa_resources, i64, i64, i8, i32, i16, i32, %struct.mlx5_vdpa_mr, %struct.mlx5_control_vq, ptr }
%struct.vdpa_device = type { %struct.device, ptr, ptr, ptr, %struct.mutex, i32, i8, i8, i32, ptr }
%struct.mlx5_vdpa_resources = type { i32, ptr, ptr, i64, i16, i32, i8 }
%struct.mlx5_vdpa_mr = type { i32, %struct.list_head, i32, i32, i8, %struct.mutex, i8 }
%struct.mlx5_control_vq = type { ptr, %struct.spinlock, %struct.vringh, i8, i64, i64, i64, %struct.vdpa_callback, %struct.vringh_kiov, %struct.vringh_kiov, i16 }
%struct.vringh = type { i8, i8, i8, i16, i16, i32, %struct.vring, ptr, ptr, ptr }
%struct.vring = type { i32, ptr, ptr, ptr }
%struct.vdpa_callback = type { ptr, ptr }
%struct.vringh_kiov = type { ptr, i32, i32, i32, i32 }
%struct.mlx5_vdpa_net = type { %struct.mlx5_vdpa_dev, %struct.mlx5_vdpa_net_resources, %struct.virtio_net_config, ptr, ptr, %struct.mutex, ptr, ptr, ptr, ptr, i8, i32, %struct.notifier_block, %struct.vdpa_callback }
%struct.mlx5_vdpa_net_resources = type { i32, i32, i32, i32, i8 }
%struct.virtio_net_config = type { [6 x i8], i16, i16, i16, i32, i8, i8, i16, i32 }
%struct.mlx5_vdpa_virtqueue = type { i8, i64, i64, i64, i32, %struct.mlx5_vdpa_cq, %struct.mlx5_vdpa_qp, %struct.mlx5_vdpa_qp, %struct.mlx5_vdpa_umem, %struct.mlx5_vdpa_umem, %struct.mlx5_vdpa_umem, i8, i32, i32, ptr, i16, i16, i32, %struct.mlx5_vq_restore_info }
%struct.mlx5_vdpa_cq = type { %struct.mlx5_core_cq, %struct.mlx5_vdpa_cq_buf, %struct.mlx5_db, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.167, i32, %struct.list_head, ptr, i16 }
%struct.anon.167 = type { %struct.list_head, ptr, ptr }
%struct.mlx5_vdpa_cq_buf = type { %struct.mlx5_frag_buf_ctrl, %struct.mlx5_frag_buf, i32, i32 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.168, i32, i32 }
%union.anon.168 = type { ptr }
%struct.mlx5_vdpa_qp = type { %struct.mlx5_core_qp, %struct.mlx5_frag_buf, %struct.mlx5_db, i16, i8 }
%struct.mlx5_core_qp = type { %struct.mlx5_core_rsc_common, ptr, i32, ptr, i32, i16 }
%struct.mlx5_core_rsc_common = type { i32, %struct.refcount_struct, %struct.completion }
%struct.mlx5_vdpa_umem = type { %struct.mlx5_frag_buf_ctrl, %struct.mlx5_frag_buf, i32, i32 }
%struct.mlx5_vq_restore_info = type { i32, i64, i64, i64, i16, i16, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.152, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.152 = type { ptr }
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
%struct.mlx5_eqe = type { i8, i8, i8, i8, [7 x i32], %union.ev_data, i16, i8, i8 }
%union.ev_data = type <{ %struct.mlx5_eqe_gpio, [12 x i8] }>
%struct.mlx5_eqe_gpio = type { [2 x i32], i64 }
%struct.mlx5_vdpa_wq_ent = type { %struct.work_struct, ptr }
%struct.vdpa_notification_area = type { i32, i32 }
%struct.virtio_net_ctrl_mq = type { i16 }
%struct.virtio_net_ctrl_hdr = type { i8, i8 }
%struct.mlx5_buf_list = type { ptr, i32 }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.169, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.172, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.169 = type { %struct.anon.170 }
%struct.anon.170 = type { i8, i8, i16, i32 }
%union.anon.172 = type { i32 }
%struct.mlx5_uars_page = type { ptr, i8, i32, %struct.list_head, i32, ptr, ptr, i32, i32, %struct.kref, ptr }
%struct.mlx5_flow_destination = type { i32, %union.anon.173 }
%union.anon.173 = type { %struct.anon.174 }
%struct.anon.174 = type { i16, i16, ptr, i8 }
%struct.mlx5_flow_table_attr = type { i32, i32, i32, i32, ptr, %struct.anon.175 }
%struct.anon.175 = type { i32, i32 }
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.176, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.176 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }

@__UNIQUE_ID_author522 = internal constant [46 x i8] c"mlx5_vdpa.author=Eli Cohen <eli@mellanox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description523 = internal constant [43 x i8] c"mlx5_vdpa.description=Mellanox VDPA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file524 = internal constant [43 x i8] c"mlx5_vdpa.file=drivers/vdpa/mlx5/mlx5_vdpa\00", section ".modinfo", align 1
@__UNIQUE_ID_license525 = internal constant [31 x i8] c"mlx5_vdpa.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__initcall__kmod_mlx5_vdpa__656_2786_mlx5v_driver_init6 = internal global ptr @mlx5v_driver_init, section ".initcall6.init", align 4
@mlx5v_driver = internal global { %struct.auxiliary_driver, [56 x i8] } { %struct.auxiliary_driver { ptr @mlx5v_probe, ptr @mlx5v_remove, ptr null, ptr null, ptr null, ptr @.str.1, %struct.device_driver zeroinitializer, ptr @mlx5v_id_table }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mlx5v_driver_exit = internal global ptr @mlx5v_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_vdpa\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vnet\00", [27 x i8] zeroinitializer }, align 32
@mlx5v_id_table = internal constant { [2 x %struct.auxiliary_device_id], [56 x i8] } { [2 x %struct.auxiliary_device_id] [%struct.auxiliary_device_id { [32 x i8] c"mlx5_core.vnet\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.auxiliary_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@mdev_ops = internal constant { %struct.vdpa_mgmtdev_ops, [24 x i8] } { %struct.vdpa_mgmtdev_ops { ptr @mlx5_vdpa_dev_add, ptr @mlx5_vdpa_dev_del }, [24 x i8] zeroinitializer }, align 32
@id_table = internal global { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 1, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5_vdpa_dev_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2587, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"missing support for split virtqueues\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlx5_vdpa_dev_add\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/vdpa/mlx5/net/mlx5_vnet.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_vdpa_dev_add._entry_ptr = internal global ptr @mlx5_vdpa_dev_add._entry, section ".printk_index", align 4
@mlx5_vdpa_dev_add._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 2595, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%d virtqueues are supported. At least 2 are required\0A\00", [42 x i8] zeroinitializer }, align 32
@mlx5_vdpa_dev_add._entry_ptr.9 = internal global ptr @mlx5_vdpa_dev_add._entry.7, section ".printk_index", align 4
@mlx5_vdpa_ops = internal constant { %struct.vdpa_config_ops, [36 x i8] } { %struct.vdpa_config_ops { ptr @mlx5_vdpa_set_vq_address, ptr @mlx5_vdpa_set_vq_num, ptr @mlx5_vdpa_kick_vq, ptr @mlx5_vdpa_set_vq_cb, ptr @mlx5_vdpa_set_vq_ready, ptr @mlx5_vdpa_get_vq_ready, ptr @mlx5_vdpa_set_vq_state, ptr @mlx5_vdpa_get_vq_state, ptr @mlx5_get_vq_notification, ptr @mlx5_get_vq_irq, ptr @mlx5_vdpa_get_vq_align, ptr @mlx5_vdpa_get_device_features, ptr @mlx5_vdpa_set_driver_features, ptr @mlx5_vdpa_get_driver_features, ptr @mlx5_vdpa_set_config_cb, ptr @mlx5_vdpa_get_vq_num_max, ptr null, ptr @mlx5_vdpa_get_device_id, ptr @mlx5_vdpa_get_vendor_id, ptr @mlx5_vdpa_get_status, ptr @mlx5_vdpa_set_status, ptr @mlx5_vdpa_reset, ptr @mlx5_vdpa_get_config_size, ptr @mlx5_vdpa_get_config, ptr @mlx5_vdpa_set_config, ptr @mlx5_vdpa_get_generation, ptr null, ptr @mlx5_vdpa_set_map, ptr null, ptr null, ptr @mlx5_vdpa_free }, [36 x i8] zeroinitializer }, align 32
@mlx5_vdpa_dev_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ndev->reslock\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mlx5_vdpa_wq\00", [19 x i8] zeroinitializer }, align 32
@mlx5_vdpa_kick_vq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&wqent->work)\00", [32 x i8] zeroinitializer }, align 32
@handle_ctrl_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 1495, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s:%d:(pid %d) warning: failed to delete old MAC %pM from MPFS table\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"handle_ctrl_mac\00", [16 x i8] zeroinitializer }, align 32
@handle_ctrl_mac._entry_ptr = internal global ptr @handle_ctrl_mac._entry, section ".printk_index", align 4
@handle_ctrl_mac._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.4, i32 1502, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s:%d:(pid %d) warning: failed to insert new MAC %pM into MPFS table\0A\00", [58 x i8] zeroinitializer }, align 32
@handle_ctrl_mac._entry_ptr.18 = internal global ptr @handle_ctrl_mac._entry.16, section ".printk_index", align 4
@suspend_vq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 1204, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d:(pid %d) warning: modify to suspend failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"suspend_vq\00", [21 x i8] zeroinitializer }, align 32
@suspend_vq._entry_ptr = internal global ptr @suspend_vq._entry, section ".printk_index", align 4
@suspend_vq._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 1207, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d:(pid %d) warning: failed to query virtqueue\0A\00", [45 x i8] zeroinitializer }, align 32
@suspend_vq._entry_ptr.23 = internal global ptr @suspend_vq._entry.21, section ".printk_index", align 4
@destroy_virtqueue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 907, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%d:(pid %d) warning: destroy virtqueue 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"destroy_virtqueue\00", [46 x i8] zeroinitializer }, align 32
@destroy_virtqueue._entry_ptr = internal global ptr @destroy_virtqueue._entry, section ".printk_index", align 4
@qp_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 502, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d) warning: destroy qp 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qp_destroy\00", [21 x i8] zeroinitializer }, align 32
@qp_destroy._entry_ptr = internal global ptr @qp_destroy._entry, section ".printk_index", align 4
@cq_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 654, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d) warning: destroy CQ 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cq_destroy\00", [21 x i8] zeroinitializer }, align 32
@cq_destroy._entry_ptr = internal global ptr @cq_destroy._entry, section ".printk_index", align 4
@setup_vq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 1176, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s:%d:(pid %d) warning: failed to modify to ready vq idx %d(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"setup_vq\00", [23 x i8] zeroinitializer }, align 32
@setup_vq._entry_ptr = internal global ptr @setup_vq._entry, section ".printk_index", align 4
@create_umem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 727, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d) warning: create umem(%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"create_umem\00", [20 x i8] zeroinitializer }, align 32
@create_umem._entry_ptr = internal global ptr @create_umem._entry, section ".printk_index", align 4
@mlx5_vdpa_set_vq_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 1813, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%d:(pid %d) warning: can't modify available index\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5_vdpa_set_vq_state\00", [41 x i8] zeroinitializer }, align 32
@mlx5_vdpa_set_vq_state._entry_ptr = internal global ptr @mlx5_vdpa_set_vq_state._entry, section ".printk_index", align 4
@mlx5_vdpa_get_vq_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.36, ptr @.str.4, i32 1854, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5_vdpa_get_vq_state\00", [41 x i8] zeroinitializer }, align 32
@mlx5_vdpa_get_vq_state._entry_ptr = internal global ptr @mlx5_vdpa_get_vq_state._entry, section ".printk_index", align 4
@print_features._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 251, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s:%d:(pid %d) warning: There are invalid feature bits 0x%llx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"print_features\00", [17 x i8] zeroinitializer }, align 32
@print_features._entry_ptr = internal global ptr @print_features._entry, section ".printk_index", align 4
@print_features._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.4, i32 256, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d): driver %s feature bits:\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.42 = internal global ptr @print_features._entry.39, section ".printk_index", align 4
@print_features._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.4, i32 258, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:(pid %d): all feature bits are cleared\0A\00", [50 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.47 = internal global ptr @print_features._entry.45, section ".printk_index", align 4
@print_features._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 260, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s:%d:(pid %d): %s\0A\00", [44 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.50 = internal global ptr @print_features._entry.48, section ".printk_index", align 4
@print_features._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 261, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.53 = internal global ptr @print_features._entry.52, section ".printk_index", align 4
@print_features._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 262, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.56 = internal global ptr @print_features._entry.55, section ".printk_index", align 4
@print_features._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 263, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.59 = internal global ptr @print_features._entry.58, section ".printk_index", align 4
@print_features._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 264, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.62 = internal global ptr @print_features._entry.61, section ".printk_index", align 4
@print_features._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 265, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.65 = internal global ptr @print_features._entry.64, section ".printk_index", align 4
@print_features._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 266, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.68 = internal global ptr @print_features._entry.67, section ".printk_index", align 4
@print_features._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 267, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.71 = internal global ptr @print_features._entry.70, section ".printk_index", align 4
@print_features._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 268, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.74 = internal global ptr @print_features._entry.73, section ".printk_index", align 4
@print_features._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 269, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.77 = internal global ptr @print_features._entry.76, section ".printk_index", align 4
@print_features._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 270, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.80 = internal global ptr @print_features._entry.79, section ".printk_index", align 4
@print_features._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 271, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.83 = internal global ptr @print_features._entry.82, section ".printk_index", align 4
@print_features._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 272, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.86 = internal global ptr @print_features._entry.85, section ".printk_index", align 4
@print_features._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 273, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.89 = internal global ptr @print_features._entry.88, section ".printk_index", align 4
@print_features._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 274, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.92 = internal global ptr @print_features._entry.91, section ".printk_index", align 4
@print_features._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 275, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.95 = internal global ptr @print_features._entry.94, section ".printk_index", align 4
@print_features._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 276, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.98 = internal global ptr @print_features._entry.97, section ".printk_index", align 4
@print_features._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 277, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.101 = internal global ptr @print_features._entry.100, section ".printk_index", align 4
@print_features._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 278, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.104 = internal global ptr @print_features._entry.103, section ".printk_index", align 4
@print_features._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 279, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.107 = internal global ptr @print_features._entry.106, section ".printk_index", align 4
@print_features._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 280, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.110 = internal global ptr @print_features._entry.109, section ".printk_index", align 4
@print_features._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 281, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.113 = internal global ptr @print_features._entry.112, section ".printk_index", align 4
@print_features._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 282, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.116 = internal global ptr @print_features._entry.115, section ".printk_index", align 4
@print_features._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 283, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.119 = internal global ptr @print_features._entry.118, section ".printk_index", align 4
@print_features._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 284, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.122 = internal global ptr @print_features._entry.121, section ".printk_index", align 4
@print_features._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 285, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.125 = internal global ptr @print_features._entry.124, section ".printk_index", align 4
@print_features._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 286, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.128 = internal global ptr @print_features._entry.127, section ".printk_index", align 4
@print_features._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 287, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.131 = internal global ptr @print_features._entry.130, section ".printk_index", align 4
@print_features._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 288, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.134 = internal global ptr @print_features._entry.133, section ".printk_index", align 4
@print_features._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 289, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.137 = internal global ptr @print_features._entry.136, section ".printk_index", align 4
@print_features._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 290, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.140 = internal global ptr @print_features._entry.139, section ".printk_index", align 4
@print_features._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 291, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.143 = internal global ptr @print_features._entry.142, section ".printk_index", align 4
@print_features._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 292, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.146 = internal global ptr @print_features._entry.145, section ".printk_index", align 4
@print_features._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.4, i32 293, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_features._entry_ptr.149 = internal global ptr @print_features._entry.148, section ".printk_index", align 4
@print_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.4, i32 228, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s:%d:(pid %d) warning: Warning: there are invalid status bits 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"print_status\00", [19 x i8] zeroinitializer }, align 32
@print_status._entry_ptr = internal global ptr @print_status._entry, section ".printk_index", align 4
@print_status._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.152, ptr @.str.4, i32 233, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s:%d:(pid %d): driver status %s\00", [63 x i8] zeroinitializer }, align 32
@print_status._entry_ptr.155 = internal global ptr @print_status._entry.153, section ".printk_index", align 4
@print_status._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.152, ptr @.str.4, i32 235, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s:%d:(pid %d): driver resets the device\0A\00", [54 x i8] zeroinitializer }, align 32
@print_status._entry_ptr.160 = internal global ptr @print_status._entry.158, section ".printk_index", align 4
@print_status._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.152, ptr @.str.4, i32 239, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_status._entry_ptr.162 = internal global ptr @print_status._entry.161, section ".printk_index", align 4
@print_status._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.152, ptr @.str.4, i32 240, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_status._entry_ptr.165 = internal global ptr @print_status._entry.164, section ".printk_index", align 4
@print_status._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.152, ptr @.str.4, i32 241, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_status._entry_ptr.168 = internal global ptr @print_status._entry.167, section ".printk_index", align 4
@print_status._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.152, ptr @.str.4, i32 242, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_status._entry_ptr.171 = internal global ptr @print_status._entry.170, section ".printk_index", align 4
@print_status._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.152, ptr @.str.4, i32 243, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_status._entry_ptr.174 = internal global ptr @print_status._entry.173, section ".printk_index", align 4
@print_status._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.152, ptr @.str.4, i32 244, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@print_status._entry_ptr.177 = internal global ptr @print_status._entry.176, section ".printk_index", align 4
@mlx5_vdpa_set_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str.4, i32 2242, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%d:(pid %d) warning: failed to setup driver\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5_vdpa_set_status\00", [43 x i8] zeroinitializer }, align 32
@mlx5_vdpa_set_status._entry_ptr = internal global ptr @mlx5_vdpa_set_status._entry, section ".printk_index", align 4
@mlx5_vdpa_set_status._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.180, ptr @.str.4, i32 2246, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:(pid %d) warning: did not expect DRIVER_OK to be cleared\0A\00", [32 x i8] zeroinitializer }, align 32
@mlx5_vdpa_set_status._entry_ptr.183 = internal global ptr @mlx5_vdpa_set_status._entry.181, section ".printk_index", align 4
@setup_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.185, ptr @.str.4, i32 2162, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s:%d:(pid %d) warning: setup driver called for already setup driver\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"setup_driver\00", [19 x i8] zeroinitializer }, align 32
@setup_driver._entry_ptr = internal global ptr @setup_driver._entry, section ".printk_index", align 4
@setup_driver._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.185, ptr @.str.4, i32 2168, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s:%d:(pid %d) warning: setup_virtqueues\0A\00", [54 x i8] zeroinitializer }, align 32
@setup_driver._entry_ptr.188 = internal global ptr @setup_driver._entry.186, section ".printk_index", align 4
@setup_driver._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.185, ptr @.str.4, i32 2174, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%d:(pid %d) warning: create_rqt\0A\00", [60 x i8] zeroinitializer }, align 32
@setup_driver._entry_ptr.191 = internal global ptr @setup_driver._entry.189, section ".printk_index", align 4
@setup_driver._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.185, ptr @.str.4, i32 2180, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%d:(pid %d) warning: create_tir\0A\00", [60 x i8] zeroinitializer }, align 32
@setup_driver._entry_ptr.194 = internal global ptr @setup_driver._entry.192, section ".printk_index", align 4
@setup_driver._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.185, ptr @.str.4, i32 2186, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s:%d:(pid %d) warning: add_fwd_to_tir\0A\00", [56 x i8] zeroinitializer }, align 32
@setup_driver._entry_ptr.197 = internal global ptr @setup_driver._entry.195, section ".printk_index", align 4
@create_tir.rx_hash_toeplitz_key = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c",\C6\81\D1[\DB\F4\F7\FC\A2\83\19\DB\1A>\94k\9E8\D9,\9C\03\D1\AD\99D\A7\D9V=Y\06<%\F3\FC\1F\DC*", [56 x i8] zeroinitializer }, align 32
@add_fwd_to_tir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.199, ptr @.str.4, i32 1394, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%d:(pid %d) warning: failed to get flow namespace\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"add_fwd_to_tir\00", [17 x i8] zeroinitializer }, align 32
@add_fwd_to_tir._entry_ptr = internal global ptr @add_fwd_to_tir._entry, section ".printk_index", align 4
@mlx5_vdpa_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.201, ptr @.str.4, i32 2265, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d): performing device reset\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlx5_vdpa_reset\00", [16 x i8] zeroinitializer }, align 32
@mlx5_vdpa_reset._entry_ptr = internal global ptr @mlx5_vdpa_reset._entry, section ".printk_index", align 4
@mlx5_vdpa_reset._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.201, ptr @.str.4, i32 2276, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s:%d:(pid %d) warning: create MR failed\0A\00", [54 x i8] zeroinitializer }, align 32
@mlx5_vdpa_reset._entry_ptr.204 = internal global ptr @mlx5_vdpa_reset._entry.202, section ".printk_index", align 4
@mlx5_vdpa_set_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.206, ptr @.str.4, i32 2318, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%d:(pid %d) warning: set map failed(%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlx5_vdpa_set_map\00", [46 x i8] zeroinitializer }, align 32
@mlx5_vdpa_set_map._entry_ptr = internal global ptr @mlx5_vdpa_set_map._entry, section ".printk_index", align 4
@alloc_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.208, ptr @.str.4, i32 2433, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d:(pid %d) warning: resources already allocated\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"alloc_resources\00", [16 x i8] zeroinitializer }, align 32
@alloc_resources._entry_ptr = internal global ptr @alloc_resources._entry, section ".printk_index", align 4
@create_tis._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.210, ptr @.str.4, i32 307, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d) warning: create TIS (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"create_tis\00", [21 x i8] zeroinitializer }, align 32
@create_tis._entry_ptr = internal global ptr @create_tis._entry, section ".printk_index", align 4
@event_handler.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.211 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.212 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.213 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.214 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.215 = internal global [6 x i64] [i64 4, i64 32, i64 1282, i64 1283, i64 1284, i64 1290]
@___asan_gen_.216 = private unnamed_addr constant [13 x i8] c"mlx5v_driver\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 2779, i32 32 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 2786, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 2780, i32 10 }
@___asan_gen_.225 = private unnamed_addr constant [15 x i8] c"mlx5v_id_table\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 2772, i32 41 }
@___asan_gen_.228 = private unnamed_addr constant [9 x i8] c"mdev_ops\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 2717, i32 38 }
@___asan_gen_.231 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 2722, i32 32 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 2587, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 2593, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant [14 x i8] c"mlx5_vdpa_ops\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 2384, i32 37 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 2625, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 2671, i32 14 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 1680, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 1494, i32 5 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 1501, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 1204, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 1207, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 907, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 502, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 654, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 1175, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 727, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 1813, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 1854, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 250, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 256, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 258, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 260, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 261, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 262, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 263, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 264, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 265, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 266, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 267, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 268, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 269, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 270, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 271, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 272, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 273, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 274, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 275, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 276, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 277, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 278, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 279, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 280, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 281, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 282, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 283, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 284, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 285, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 286, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 287, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 288, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 289, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 290, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 291, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 292, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 293, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 227, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 233, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 235, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 239, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 240, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 241, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 242, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 243, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 244, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 2242, i32 5 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 2246, i32 4 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 2162, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 2168, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 2174, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 2180, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 2186, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant [21 x i8] c"rx_hash_toeplitz_key\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 1329, i32 18 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 1394, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 2265, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 2276, i32 4 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 2318, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 2433, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.636 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 307, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.640 = private constant [37 x i8] c"../drivers/vdpa/mlx5/net/mlx5_vnet.c\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 2556, i32 4 }
@llvm.compiler.used = appending global [221 x ptr] [ptr @__UNIQUE_ID_author522, ptr @__UNIQUE_ID_description523, ptr @__UNIQUE_ID_file524, ptr @__UNIQUE_ID_license525, ptr @__exitcall_mlx5v_driver_exit, ptr @__initcall__kmod_mlx5_vdpa__656_2786_mlx5v_driver_init6, ptr @add_fwd_to_tir._entry, ptr @add_fwd_to_tir._entry_ptr, ptr @alloc_resources._entry, ptr @alloc_resources._entry_ptr, ptr @cq_destroy._entry, ptr @cq_destroy._entry_ptr, ptr @create_tis._entry, ptr @create_tis._entry_ptr, ptr @create_umem._entry, ptr @create_umem._entry_ptr, ptr @destroy_virtqueue._entry, ptr @destroy_virtqueue._entry_ptr, ptr @handle_ctrl_mac._entry, ptr @handle_ctrl_mac._entry.16, ptr @handle_ctrl_mac._entry_ptr, ptr @handle_ctrl_mac._entry_ptr.18, ptr @mlx5_vdpa_dev_add._entry, ptr @mlx5_vdpa_dev_add._entry.7, ptr @mlx5_vdpa_dev_add._entry_ptr, ptr @mlx5_vdpa_dev_add._entry_ptr.9, ptr @mlx5_vdpa_get_vq_state._entry, ptr @mlx5_vdpa_get_vq_state._entry_ptr, ptr @mlx5_vdpa_reset._entry, ptr @mlx5_vdpa_reset._entry.202, ptr @mlx5_vdpa_reset._entry_ptr, ptr @mlx5_vdpa_reset._entry_ptr.204, ptr @mlx5_vdpa_set_map._entry, ptr @mlx5_vdpa_set_map._entry_ptr, ptr @mlx5_vdpa_set_status._entry, ptr @mlx5_vdpa_set_status._entry.181, ptr @mlx5_vdpa_set_status._entry_ptr, ptr @mlx5_vdpa_set_status._entry_ptr.183, ptr @mlx5_vdpa_set_vq_state._entry, ptr @mlx5_vdpa_set_vq_state._entry_ptr, ptr @mlx5v_driver_exit, ptr @print_features._entry, ptr @print_features._entry.100, ptr @print_features._entry.103, ptr @print_features._entry.106, ptr @print_features._entry.109, ptr @print_features._entry.112, ptr @print_features._entry.115, ptr @print_features._entry.118, ptr @print_features._entry.121, ptr @print_features._entry.124, ptr @print_features._entry.127, ptr @print_features._entry.130, ptr @print_features._entry.133, ptr @print_features._entry.136, ptr @print_features._entry.139, ptr @print_features._entry.142, ptr @print_features._entry.145, ptr @print_features._entry.148, ptr @print_features._entry.39, ptr @print_features._entry.45, ptr @print_features._entry.48, ptr @print_features._entry.52, ptr @print_features._entry.55, ptr @print_features._entry.58, ptr @print_features._entry.61, ptr @print_features._entry.64, ptr @print_features._entry.67, ptr @print_features._entry.70, ptr @print_features._entry.73, ptr @print_features._entry.76, ptr @print_features._entry.79, ptr @print_features._entry.82, ptr @print_features._entry.85, ptr @print_features._entry.88, ptr @print_features._entry.91, ptr @print_features._entry.94, ptr @print_features._entry.97, ptr @print_features._entry_ptr, ptr @print_features._entry_ptr.101, ptr @print_features._entry_ptr.104, ptr @print_features._entry_ptr.107, ptr @print_features._entry_ptr.110, ptr @print_features._entry_ptr.113, ptr @print_features._entry_ptr.116, ptr @print_features._entry_ptr.119, ptr @print_features._entry_ptr.122, ptr @print_features._entry_ptr.125, ptr @print_features._entry_ptr.128, ptr @print_features._entry_ptr.131, ptr @print_features._entry_ptr.134, ptr @print_features._entry_ptr.137, ptr @print_features._entry_ptr.140, ptr @print_features._entry_ptr.143, ptr @print_features._entry_ptr.146, ptr @print_features._entry_ptr.149, ptr @print_features._entry_ptr.42, ptr @print_features._entry_ptr.47, ptr @print_features._entry_ptr.50, ptr @print_features._entry_ptr.53, ptr @print_features._entry_ptr.56, ptr @print_features._entry_ptr.59, ptr @print_features._entry_ptr.62, ptr @print_features._entry_ptr.65, ptr @print_features._entry_ptr.68, ptr @print_features._entry_ptr.71, ptr @print_features._entry_ptr.74, ptr @print_features._entry_ptr.77, ptr @print_features._entry_ptr.80, ptr @print_features._entry_ptr.83, ptr @print_features._entry_ptr.86, ptr @print_features._entry_ptr.89, ptr @print_features._entry_ptr.92, ptr @print_features._entry_ptr.95, ptr @print_features._entry_ptr.98, ptr @print_status._entry, ptr @print_status._entry.153, ptr @print_status._entry.158, ptr @print_status._entry.161, ptr @print_status._entry.164, ptr @print_status._entry.167, ptr @print_status._entry.170, ptr @print_status._entry.173, ptr @print_status._entry.176, ptr @print_status._entry_ptr, ptr @print_status._entry_ptr.155, ptr @print_status._entry_ptr.160, ptr @print_status._entry_ptr.162, ptr @print_status._entry_ptr.165, ptr @print_status._entry_ptr.168, ptr @print_status._entry_ptr.171, ptr @print_status._entry_ptr.174, ptr @print_status._entry_ptr.177, ptr @qp_destroy._entry, ptr @qp_destroy._entry_ptr, ptr @setup_driver._entry, ptr @setup_driver._entry.186, ptr @setup_driver._entry.189, ptr @setup_driver._entry.192, ptr @setup_driver._entry.195, ptr @setup_driver._entry_ptr, ptr @setup_driver._entry_ptr.188, ptr @setup_driver._entry_ptr.191, ptr @setup_driver._entry_ptr.194, ptr @setup_driver._entry_ptr.197, ptr @setup_vq._entry, ptr @setup_vq._entry_ptr, ptr @suspend_vq._entry, ptr @suspend_vq._entry.21, ptr @suspend_vq._entry_ptr, ptr @suspend_vq._entry_ptr.23, ptr @mlx5v_driver, ptr @.str, ptr @.str.1, ptr @mlx5v_id_table, ptr @mdev_ops, ptr @id_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @mlx5_vdpa_ops, ptr @mlx5_vdpa_dev_add.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @mlx5_vdpa_kick_vq.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.46, ptr @.str.49, ptr @.str.151, ptr @.str.152, ptr @.str.154, ptr @.str.159, ptr @.str.179, ptr @.str.180, ptr @.str.182, ptr @.str.184, ptr @.str.185, ptr @.str.187, ptr @.str.190, ptr @.str.193, ptr @.str.196, ptr @create_tir.rx_hash_toeplitz_key, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.203, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @event_handler.__key], section "llvm.metadata"
@0 = internal global [142 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5v_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5v_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_vdpa_dev_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_vdpa_dev_add._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_vdpa_ops to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_vdpa_dev_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_vdpa_kick_vq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_ctrl_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_ctrl_mac._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_vq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_vq._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @destroy_virtqueue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qp_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cq_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_vq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_umem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_vdpa_set_vq_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_vdpa_get_vq_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_features._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_status._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_status._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_status._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_status._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_status._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_status._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_status._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_status._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_vdpa_set_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_vdpa_set_status._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_driver._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_driver._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_driver._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_driver._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_tir.rx_hash_toeplitz_key to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_fwd_to_tir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_vdpa_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_vdpa_reset._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_vdpa_set_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_tis._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_handler.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5v_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__auxiliary_driver_register(ptr noundef nonnull @mlx5v_driver, ptr noundef null, ptr noundef nonnull @.str) #17
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mlx5v_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @auxiliary_driver_unregister(ptr noundef nonnull @mlx5v_driver) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @auxiliary_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__auxiliary_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5v_probe(ptr noundef %adev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5_adev, ptr %adev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 56) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.vdpa_mgmt_dev, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mdev_ops, ptr %ops, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %call7.i.i, align 8
  %id_table = getelementptr inbounds %struct.vdpa_mgmt_dev, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %id_table to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @id_table, ptr %id_table, align 8
  %config_attr_mask = getelementptr inbounds %struct.vdpa_mgmt_dev, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %config_attr_mask to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 5120, ptr %config_attr_mask, align 8
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 0, i32 19
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %add.ptr7 = getelementptr i32, ptr %10, i32 4
  %11 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr7, align 4
  %and = and i32 %12, 16777215
  %add = add nuw nsw i32 %and, 1
  %max_supported_vqs = getelementptr inbounds %struct.vdpa_mgmt_dev, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %max_supported_vqs to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %max_supported_vqs, align 8
  %14 = load ptr, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %and.i.i = lshr i32 %16, 24
  %17 = and i32 %and.i.i, 2
  %and2.i.i = lshr i32 %16, 26
  %18 = and i32 %and2.i.i, 1
  %19 = or i32 %18, %17
  %20 = lshr i32 %16, 15
  %21 = and i32 %20, 4096
  %22 = or i32 %19, %21
  %conv.i = lshr i32 %16, 17
  %23 = and i32 %conv.i, 2048
  %24 = or i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = and i32 %16, 536870912
  %27 = zext i32 %26 to i64
  %28 = shl nuw nsw i64 %27, 3
  %29 = or i64 %28, %25
  %or15.i = or i64 %29, 8602714120
  %supported_features = getelementptr inbounds %struct.vdpa_mgmt_dev, ptr %call7.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %supported_features to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %or15.i, ptr %supported_features, align 8
  %madev11 = getelementptr inbounds %struct.mlx5_vdpa_mgmtdev, ptr %call7.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %madev11 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %adev, ptr %madev11, align 8
  %call13 = tail call i32 @vdpa_mgmtdev_register(ptr noundef nonnull %call7.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %reg_err

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

reg_err:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %reg_err, %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %reg_err ], [ 0, %if.end16 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5v_remove(ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @vdpa_mgmtdev_unregister(ptr noundef %1) #17
  tail call void @kfree(ptr noundef %1) #17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vdpa_mgmtdev_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_vdpa_dev_add(ptr noundef %v_mdev, ptr noundef %name, ptr nocapture noundef readonly %add_config) #2 align 64 {
entry:
  %out.i.i = alloca [4 x i32], align 4
  %in.i.i = alloca [4 x i32], align 4
  %hw_mtu.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev1 = getelementptr inbounds %struct.mlx5_vdpa_mgmtdev, ptr %v_mdev, i32 0, i32 2
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %madev = getelementptr inbounds %struct.mlx5_vdpa_mgmtdev, ptr %v_mdev, i32 0, i32 1
  %2 = ptrtoint ptr %madev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %madev, align 8
  %mdev2 = getelementptr inbounds %struct.mlx5_adev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev2, align 8
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %5, i32 0, i32 8, i32 0, i32 19
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and4 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.2) #21
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %add.ptr13 = getelementptr i32, ptr %7, i32 4
  %12 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr13, align 4
  %and15 = and i32 %13, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and15)
  %cmp = icmp ult i32 %and15, 2
  br i1 %cmp, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.8, i32 noundef %and15) #21
  br label %cleanup

if.end21:                                         ; preds = %if.end7
  %mask = getelementptr inbounds %struct.vdpa_dev_set_config, ptr %add_config, i32 0, i32 1
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %mask, align 8
  %and22 = and i64 %17, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and22)
  %tobool23.not = icmp eq i64 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end35_crit_edge, label %if.then24

if.end21.if.end35_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

if.then24:                                        ; preds = %if.end21
  %max_vq_pairs = getelementptr inbounds %struct.anon.159, ptr %add_config, i32 0, i32 2
  %18 = ptrtoint ptr %max_vq_pairs to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %max_vq_pairs, align 8
  %conv = zext i16 %19 to i32
  %div269 = lshr i32 %and15, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div269, i32 %conv)
  %cmp25 = icmp ult i32 %div269, %conv
  br i1 %cmp25, label %if.then24.cleanup_crit_edge, label %if.end28

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end28:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #19
  %mul = shl nuw nsw i32 %conv, 1
  %20 = tail call i32 @llvm.umin.i32(i32 %and15, i32 %mul)
  br label %if.end35

if.end35:                                         ; preds = %if.end28, %if.end21.if.end35_crit_edge
  %max_vqs.0 = phi i32 [ %20, %if.end28 ], [ 2, %if.end21.if.end35_crit_edge ]
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 8
  %call = tail call ptr @__vdpa_alloc_device(ptr noundef %22, ptr noundef nonnull @mlx5_vdpa_ops, i32 noundef 1624, ptr noundef %name, i1 noundef zeroext false) #17
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %call to i32
  br label %cleanup

if.end43:                                         ; preds = %if.end35
  %supported_features = getelementptr inbounds %struct.vdpa_mgmt_dev, ptr %v_mdev, i32 0, i32 5
  %24 = ptrtoint ptr %supported_features to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %supported_features, align 8
  %mlx_features = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %call, i32 0, i32 3
  %26 = ptrtoint ptr %mlx_features to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %mlx_features, align 8
  %max_vqs47 = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %call, i32 0, i32 6
  %27 = ptrtoint ptr %max_vqs47 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %max_vqs.0, ptr %max_vqs47, align 4
  %mdev49 = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %call, i32 0, i32 1
  %28 = ptrtoint ptr %mdev49 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %5, ptr %mdev49, align 8
  %29 = mul nuw nsw i32 %max_vqs.0, 672
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #22
  %vqs = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %call, i32 0, i32 3
  %30 = ptrtoint ptr %vqs to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call8.i.i, ptr %vqs, align 4
  %add = shl nsw i32 %max_vqs.0, 3
  %31 = add nsw i32 %add, 8
  %call8.i.i302 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %31, i32 noundef 3520) #22
  %event_cbs = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %call, i32 0, i32 4
  %32 = ptrtoint ptr %event_cbs to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call8.i.i302, ptr %event_cbs, align 8
  %33 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vqs, align 4
  %tobool53.not = icmp eq ptr %34, null
  %tobool55.not = icmp eq ptr %call8.i.i302, null
  %or.cond = select i1 %tobool53.not, i1 true, i1 %tobool55.not
  br i1 %or.cond, label %if.end43.err_alloc_crit_edge, label %if.end57

if.end43.err_alloc_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_alloc

if.end57:                                         ; preds = %if.end43
  %35 = ptrtoint ptr %max_vqs47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_vqs47, align 4
  %.off.i = add i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %37 = icmp ult i32 %.off.i, 3
  br i1 %37, label %if.end57.for.cond2.preheader.i_crit_edge, label %if.end57.for.body.i_crit_edge

if.end57.for.body.i_crit_edge:                    ; preds = %if.end57
  br label %for.body.i

if.end57.for.cond2.preheader.i_crit_edge:         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.body.i.for.cond2.preheader.i_crit_edge, %if.end57.for.cond2.preheader.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end57.for.cond2.preheader.i_crit_edge ], [ %inc.i, %for.body.i.for.cond2.preheader.i_crit_edge ]
  %38 = ptrtoint ptr %max_vqs47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_vqs47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %39)
  %cmp536.i = icmp ult i32 %i.0.lcssa.i, %39
  br i1 %cmp536.i, label %for.cond2.preheader.i.for.body6.i_crit_edge, label %for.cond2.preheader.i.init_mvqs.exit_crit_edge

for.cond2.preheader.i.init_mvqs.exit_crit_edge:   ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %init_mvqs.exit

for.cond2.preheader.i.for.body6.i_crit_edge:      ; preds = %for.cond2.preheader.i
  br label %for.body6.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end57.for.body.i_crit_edge
  %i.035.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end57.for.body.i_crit_edge ]
  %40 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vqs, align 4
  %arrayidx.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %41, i32 %i.035.i
  %42 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 632)
  %index.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %41, i32 %i.035.i, i32 12
  %43 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %i.035.i, ptr %index.i, align 8
  %ndev1.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %41, i32 %i.035.i, i32 14
  %44 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call, ptr %ndev1.i, align 8
  %fw.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %41, i32 %i.035.i, i32 6, i32 4
  %45 = ptrtoint ptr %fw.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %fw.i, align 2
  %inc.i = add nuw i32 %i.035.i, 1
  %46 = ptrtoint ptr %max_vqs47 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_vqs47, align 4
  %div.i.i = sdiv i32 %47, 2
  %mul.i = shl nsw i32 %div.i.i, 1
  %cmp.i306 = icmp ult i32 %inc.i, %mul.i
  br i1 %cmp.i306, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond2.preheader.i_crit_edge

for.body.i.for.cond2.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond2.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %for.cond2.preheader.i.for.body6.i_crit_edge
  %i.137.i = phi i32 [ %inc12.i, %for.body6.i.for.body6.i_crit_edge ], [ %i.0.lcssa.i, %for.cond2.preheader.i.for.body6.i_crit_edge ]
  %48 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vqs, align 4
  %arrayidx8.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %49, i32 %i.137.i
  %50 = call ptr @memset(ptr %arrayidx8.i, i32 0, i32 632)
  %index9.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %49, i32 %i.137.i, i32 12
  %51 = ptrtoint ptr %index9.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %i.137.i, ptr %index9.i, align 8
  %ndev10.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %49, i32 %i.137.i, i32 14
  %52 = ptrtoint ptr %ndev10.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call, ptr %ndev10.i, align 8
  %inc12.i = add nuw i32 %i.137.i, 1
  %53 = ptrtoint ptr %max_vqs47 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_vqs47, align 4
  %cmp5.i = icmp ult i32 %inc12.i, %54
  br i1 %cmp5.i, label %for.body6.i.for.body6.i_crit_edge, label %for.body6.i.init_mvqs.exit_crit_edge

for.body6.i.init_mvqs.exit_crit_edge:             ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %init_mvqs.exit

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body6.i

init_mvqs.exit:                                   ; preds = %for.body6.i.init_mvqs.exit_crit_edge, %for.cond2.preheader.i.init_mvqs.exit_crit_edge
  %reslock = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %call, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %reslock, ptr noundef nonnull @.str.10, ptr noundef nonnull @mlx5_vdpa_dev_add.__key) #17
  %config61 = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %call, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hw_mtu.i) #17
  %55 = ptrtoint ptr %hw_mtu.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 -1, ptr %hw_mtu.i, align 2, !annotation !363
  %call.i = call i32 @mlx5_query_nic_vport_mtu(ptr noundef %5, ptr noundef nonnull %hw_mtu.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end65, label %query_mtu.exit

query_mtu.exit:                                   ; preds = %init_mvqs.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hw_mtu.i) #17
  br label %err_mtu

if.end65:                                         ; preds = %init_mvqs.exit
  %56 = ptrtoint ptr %hw_mtu.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %hw_mtu.i, align 2
  %sub.i = add i16 %57, -22
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hw_mtu.i) #17
  %actual_features.i.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %call, i32 0, i32 4
  %58 = ptrtoint ptr %actual_features.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %actual_features.i.i, align 8
  %and.i.i = and i64 %59, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %60 = call i16 @llvm.bswap.i16(i16 %sub.i) #17
  %retval.0.i.i307 = select i1 %tobool.i.not.i, i16 %sub.i, i16 %60
  %mtu68 = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %call, i32 0, i32 2, i32 3
  %61 = ptrtoint ptr %mtu68 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %retval.0.i.i307, ptr %mtu68, align 2
  %62 = ptrtoint ptr %mdev49 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mdev49, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i.i) #17
  %64 = call ptr @memset(ptr %out.i.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i.i) #17
  %65 = getelementptr inbounds i8, ptr %in.i.i, i32 12
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %65, align 4
  %67 = ptrtoint ptr %in.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 122683392, ptr %in.i.i, align 4
  %add.ptr13.i.i = getelementptr inbounds i32, ptr %in.i.i, i32 1
  %68 = ptrtoint ptr %add.ptr13.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %add.ptr13.i.i, align 4
  %add.ptr29.i.i = getelementptr inbounds i32, ptr %in.i.i, i32 2
  %69 = ptrtoint ptr %add.ptr29.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %add.ptr29.i.i, align 4
  %call.i.i = call i32 @mlx5_cmd_exec(ptr noundef %63, ptr noundef nonnull %in.i.i, i32 noundef 16, ptr noundef nonnull %out.i.i, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool55.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool55.not.i.i, label %get_link_state.exit, label %get_link_state.exit.thread

get_link_state.exit.thread:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i.i) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i.i) #17
  br label %if.else76

get_link_state.exit:                              ; preds = %if.end65
  %add.ptr59.i.i = getelementptr inbounds i32, ptr %out.i.i, i32 3
  %70 = ptrtoint ptr %add.ptr59.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr59.i.i, align 4
  %conv61.i2.i = and i32 %71, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv61.i2.i)
  %phi.cmp.i = icmp eq i32 %conv61.i2.i, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i.i) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i.i) #17
  br i1 %phi.cmp.i, label %if.then70, label %get_link_state.exit.if.else76_crit_edge

get_link_state.exit.if.else76_crit_edge:          ; preds = %get_link_state.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else76

if.then70:                                        ; preds = %get_link_state.exit
  call void @__sanitizer_cov_trace_pc() #19
  %72 = ptrtoint ptr %actual_features.i.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %actual_features.i.i, align 8
  %and.i.i310 = and i64 %73, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i310)
  %tobool.i.not.i311 = icmp eq i64 %and.i.i310, 0
  %retval.0.i.i312 = select i1 %tobool.i.not.i311, i16 1, i16 256
  %status = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %call, i32 0, i32 2, i32 1
  %74 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %status, align 2
  %or268 = or i16 %retval.0.i.i312, %75
  store i16 %or268, ptr %status, align 2
  br label %if.end84

if.else76:                                        ; preds = %get_link_state.exit.if.else76_crit_edge, %get_link_state.exit.thread
  %76 = ptrtoint ptr %actual_features.i.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %actual_features.i.i, align 8
  %and.i.i314 = and i64 %77, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i314)
  %tobool.i.not.i315 = icmp eq i64 %and.i.i314, 0
  %retval.0.i.i316 = select i1 %tobool.i.not.i315, i16 -2, i16 -257
  %status80 = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %call, i32 0, i32 2, i32 1
  %78 = ptrtoint ptr %status80 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %status80, align 2
  %and82267 = and i16 %retval.0.i.i316, %79
  store i16 %and82267, ptr %status80, align 2
  br label %if.end84

if.end84:                                         ; preds = %if.else76, %if.then70
  %80 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %mask, align 8
  %and86 = and i64 %81, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and86)
  %tobool87.not = icmp eq i64 %and86, 0
  br i1 %tobool87.not, label %if.else94, label %if.then88

if.then88:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #19
  %82 = call ptr @memcpy(ptr %config61, ptr %add_config, i32 6)
  br label %if.end101

if.else94:                                        ; preds = %if.end84
  %call97 = call i32 @mlx5_query_nic_vport_mac_address(ptr noundef %5, i16 noundef zeroext 0, i1 noundef zeroext false, ptr noundef %config61) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.else94.if.end101_crit_edge, label %if.else94.err_mtu_crit_edge

if.else94.err_mtu_crit_edge:                      ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_mtu

if.else94.if.end101_crit_edge:                    ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end101

if.end101:                                        ; preds = %if.else94.if.end101_crit_edge, %if.then88
  %83 = ptrtoint ptr %config61 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %config61, align 4
  %add.ptr.i = getelementptr %struct.mlx5_vdpa_net, ptr %call, i32 0, i32 2, i32 0, i32 4
  %85 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %86 to i32
  %or.i = or i32 %84, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i317 = icmp eq i32 %or.i, 0
  br i1 %cmp.i317, label %if.end101.if.end117_crit_edge, label %if.then105

if.end101.if.end117_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end117

if.then105:                                       ; preds = %if.end101
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %5, i32 0, i32 2
  %87 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdev, align 8
  %is_virtfn.i = getelementptr inbounds %struct.pci_dev, ptr %88, i32 0, i32 49
  %89 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 5)
  %bf.load.i = load i40, ptr %is_virtfn.i, align 1
  %90 = and i40 %bf.load.i, 65536
  %tobool.not.i318 = icmp eq i40 %90, 0
  br i1 %tobool.not.i318, label %if.then105.pci_physfn.exit_crit_edge, label %if.then.i

if.then105.pci_physfn.exit_crit_edge:             ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #19
  br label %pci_physfn.exit

if.then.i:                                        ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #19
  %91 = getelementptr inbounds %struct.pci_dev, ptr %88, i32 0, i32 66
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 8
  br label %pci_physfn.exit

pci_physfn.exit:                                  ; preds = %if.then.i, %if.then105.pci_physfn.exit_crit_edge
  %dev.addr.0.i = phi ptr [ %93, %if.then.i ], [ %88, %if.then105.pci_physfn.exit_crit_edge ]
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i, i32 0, i32 44, i32 8
  %94 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %driver_data.i.i, align 4
  %call110 = call i32 @mlx5_mpfs_add_mac(ptr noundef %95, ptr noundef %config61) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %pci_physfn.exit.err_mtu_crit_edge

pci_physfn.exit.err_mtu_crit_edge:                ; preds = %pci_physfn.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_mtu

if.end113:                                        ; preds = %pci_physfn.exit
  call void @__sanitizer_cov_trace_pc() #19
  %96 = ptrtoint ptr %mlx_features to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %mlx_features, align 8
  %or116 = or i64 %97, 32
  store i64 %or116, ptr %mlx_features, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.end113, %if.end101.if.end117_crit_edge
  %pfmdev.0 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end101.if.end117_crit_edge ], [ %95, %if.end113 ]
  %div.i = sdiv i32 %max_vqs.0, 2
  %conv119 = trunc i32 %div.i to i16
  %98 = ptrtoint ptr %actual_features.i.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %actual_features.i.i, align 8
  %and.i.i321 = and i64 %99, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i321)
  %tobool.i.not.i322 = icmp eq i64 %and.i.i321, 0
  %100 = call i16 @llvm.bswap.i16(i16 %conv119) #17
  %retval.0.i.i323 = select i1 %tobool.i.not.i322, i16 %conv119, i16 %100
  %max_virtqueue_pairs = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %call, i32 0, i32 2, i32 2
  %101 = ptrtoint ptr %max_virtqueue_pairs to i32
  call void @__asan_storeN_noabort(i32 %101, i32 2)
  store i16 %retval.0.i.i323, ptr %max_virtqueue_pairs, align 1
  %pdev121 = getelementptr inbounds %struct.mlx5_core_dev, ptr %5, i32 0, i32 2
  %102 = ptrtoint ptr %pdev121 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pdev121, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 44
  %dma_dev = getelementptr inbounds %struct.vdpa_device, ptr %call, i32 0, i32 1
  %104 = ptrtoint ptr %dma_dev to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %dev, ptr %dma_dev, align 8
  %call123 = call i32 @mlx5_vdpa_alloc_resources(ptr noundef %call) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end126, label %if.end117.err_mpfs_crit_edge

if.end117.err_mpfs_crit_edge:                     ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_mpfs

if.end126:                                        ; preds = %if.end117
  %105 = ptrtoint ptr %mdev49 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mdev49, align 8
  %caps128 = getelementptr inbounds %struct.mlx5_core_dev, ptr %106, i32 0, i32 8
  %107 = ptrtoint ptr %caps128 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %caps128, align 8
  %add.ptr133 = getelementptr i32, ptr %108, i32 18
  %109 = ptrtoint ptr %add.ptr133 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %add.ptr133, align 4
  %111 = and i32 %110, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool136.not = icmp eq i32 %111, 0
  br i1 %tobool136.not, label %if.end126.if.end142_crit_edge, label %if.then137

if.end126.if.end142_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end142

if.then137:                                       ; preds = %if.end126
  %call138 = call i32 @mlx5_vdpa_create_mr(ptr noundef %call, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.then137.if.end142_crit_edge, label %if.then137.err_res_crit_edge

if.then137.err_res_crit_edge:                     ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_res

if.then137.if.end142_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end142

if.end142:                                        ; preds = %if.then137.if.end142_crit_edge, %if.end126.if.end142_crit_edge
  %call143 = call fastcc i32 @alloc_resources(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end146, label %if.end142.err_mr_crit_edge

if.end142.err_mr_crit_edge:                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_mr

if.end146:                                        ; preds = %if.end142
  %call147 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.11, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.12) #17
  %wq = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %call, i32 0, i32 11
  %112 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call147, ptr %wq, align 8
  %tobool149.not = icmp eq ptr %call147, null
  br i1 %tobool149.not, label %if.end146.err_res2_crit_edge, label %if.end151

if.end146.err_res2_crit_edge:                     ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_res2

if.end151:                                        ; preds = %if.end146
  %nb = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %call, i32 0, i32 12
  %113 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @event_handler, ptr %nb, align 8
  %call153 = call i32 @mlx5_notifier_register(ptr noundef %5, ptr noundef %nb) #17
  %mdev156 = getelementptr inbounds %struct.vdpa_device, ptr %call, i32 0, i32 9
  %114 = ptrtoint ptr %mdev156 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %v_mdev, ptr %mdev156, align 4
  %mul159 = shl nsw i32 %div.i, 1
  %add160 = or i32 %mul159, 1
  %call161 = call i32 @_vdpa_register_device(ptr noundef %call, i32 noundef %add160) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.end164, label %err_reg

if.end164:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #19
  %115 = ptrtoint ptr %ndev1 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call, ptr %ndev1, align 4
  br label %cleanup

err_reg:                                          ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #19
  %116 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %wq, align 8
  call void @destroy_workqueue(ptr noundef %117) #17
  br label %err_res2

err_res2:                                         ; preds = %err_reg, %if.end146.err_res2_crit_edge
  %err.0 = phi i32 [ %call161, %err_reg ], [ -12, %if.end146.err_res2_crit_edge ]
  call fastcc void @free_resources(ptr noundef %call)
  br label %err_mr

err_mr:                                           ; preds = %err_res2, %if.end142.err_mr_crit_edge
  %err.1 = phi i32 [ %call143, %if.end142.err_mr_crit_edge ], [ %err.0, %err_res2 ]
  call void @mlx5_vdpa_destroy_mr(ptr noundef %call) #17
  br label %err_res

err_res:                                          ; preds = %err_mr, %if.then137.err_res_crit_edge
  %err.2 = phi i32 [ %call138, %if.then137.err_res_crit_edge ], [ %err.1, %err_mr ]
  call void @mlx5_vdpa_free_resources(ptr noundef %call) #17
  br label %err_mpfs

err_mpfs:                                         ; preds = %err_res, %if.end117.err_mpfs_crit_edge
  %err.3 = phi i32 [ %call123, %if.end117.err_mpfs_crit_edge ], [ %err.2, %err_res ]
  %118 = ptrtoint ptr %config61 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %config61, align 4
  %120 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %add.ptr.i, align 2
  %conv.i326 = zext i16 %121 to i32
  %or.i327 = or i32 %119, %conv.i326
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i327)
  %cmp.i328 = icmp eq i32 %or.i327, 0
  br i1 %cmp.i328, label %err_mpfs.err_mtu_crit_edge, label %if.then171

err_mpfs.err_mtu_crit_edge:                       ; preds = %err_mpfs
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_mtu

if.then171:                                       ; preds = %err_mpfs
  call void @__sanitizer_cov_trace_pc() #19
  %call174 = call i32 @mlx5_mpfs_del_mac(ptr noundef %pfmdev.0, ptr noundef %config61) #17
  br label %err_mtu

err_mtu:                                          ; preds = %if.then171, %err_mpfs.err_mtu_crit_edge, %pci_physfn.exit.err_mtu_crit_edge, %if.else94.err_mtu_crit_edge, %query_mtu.exit
  %err.4 = phi i32 [ %call.i, %query_mtu.exit ], [ %err.3, %err_mpfs.err_mtu_crit_edge ], [ %err.3, %if.then171 ], [ %call110, %pci_physfn.exit.err_mtu_crit_edge ], [ %call97, %if.else94.err_mtu_crit_edge ]
  call void @mutex_destroy(ptr noundef %reslock) #17
  br label %err_alloc

err_alloc:                                        ; preds = %err_mtu, %if.end43.err_alloc_crit_edge
  %err.5 = phi i32 [ %err.4, %err_mtu ], [ -12, %if.end43.err_alloc_crit_edge ]
  call void @put_device(ptr noundef %call) #17
  br label %cleanup

cleanup:                                          ; preds = %err_alloc, %if.end164, %if.then41, %if.then24.cleanup_crit_edge, %do.end19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %do.end19 ], [ %23, %if.then41 ], [ %err.5, %err_alloc ], [ 0, %if.end164 ], [ -95, %do.end ], [ -28, %entry.cleanup_crit_edge ], [ -22, %if.then24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_vdpa_dev_del(ptr nocapture noundef writeonly %v_mdev, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %nb = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %dev, i32 0, i32 12
  %call = tail call i32 @mlx5_notifier_unregister(ptr noundef %1, ptr noundef %nb) #17
  %wq = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %dev, i32 0, i32 11
  %2 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq, align 8
  tail call void @destroy_workqueue(ptr noundef %3) #17
  tail call void @_vdpa_unregister_device(ptr noundef %dev) #17
  %ndev7 = getelementptr inbounds %struct.mlx5_vdpa_mgmtdev, ptr %v_mdev, i32 0, i32 2
  %4 = ptrtoint ptr %ndev7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ndev7, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__vdpa_alloc_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_nic_vport_mac_address(ptr noundef, i16 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_mpfs_add_mac(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vdpa_alloc_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vdpa_create_mr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_resources(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  %in.i = alloca [48 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %valid = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %ndev, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %valid, align 4, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !353) #17
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.208, i32 noundef 2433, i32 noundef %11) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %tdn = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %ndev, i32 0, i32 1, i32 1
  %call3 = tail call i32 @mlx5_vdpa_alloc_transport_domain(ptr noundef %ndev, ptr noundef %tdn) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %in.i) #17
  %12 = call ptr @memset(ptr %in.i, i32 0, i32 192)
  %res.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %ndev, i32 0, i32 1
  %13 = ptrtoint ptr %tdn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tdn, align 4
  %add.ptr3.i = getelementptr inbounds i8, ptr %in.i, i32 68
  %and4.i = and i32 %14, 16777215
  %15 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and4.i, ptr %add.ptr3.i, align 4
  %call.i = call i32 @mlx5_vdpa_create_tis(ptr noundef %ndev, ptr noundef nonnull %in.i, ptr noundef %res.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end10, label %err_tis

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %in.i) #17
  %16 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %valid, align 4
  br label %cleanup

err_tis:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  %mdev.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 1
  %17 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mdev.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %21 = call i32 @llvm.read_register.i32(metadata !353) #17
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 68
  %25 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pid.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210, i32 noundef 307, i32 noundef %26, i32 noundef %call.i) #21
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %in.i) #17
  %27 = ptrtoint ptr %tdn to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tdn, align 4
  call void @mlx5_vdpa_dealloc_transport_domain(ptr noundef %ndev, i32 noundef %28) #17
  br label %cleanup

cleanup:                                          ; preds = %err_tis, %if.end10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -17, %do.end ], [ %call.i, %err_tis ], [ 0, %if.end10 ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_handler(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readonly %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -1600
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %event)
  %cmp = icmp eq i32 %event, 9
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %entry
  %sub_type = getelementptr inbounds %struct.mlx5_eqe, ptr %param, i32 0, i32 3
  %0 = ptrtoint ptr %sub_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sub_type, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %if.then.cleanup_crit_edge [
    i8 1, label %if.then.sw.bb_crit_edge
    i8 4, label %if.then.sw.bb_crit_edge24
  ]

if.then.sw.bb_crit_edge24:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2848, i32 noundef 48) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %mvdev2 = getelementptr inbounds %struct.mlx5_vdpa_wq_ent, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %mvdev2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %mvdev2, align 4
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #17
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @event_handler.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry6 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %entry6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry6, ptr %entry6, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry6, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @update_carrier, ptr %func, align 4
  %wq = getelementptr i8, ptr %nb, i32 -176
  %9 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wq, align 8
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vdpa_register_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_resources(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %valid = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %ndev, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %valid, align 4, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %res.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %ndev, i32 0, i32 1
  %2 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %res.i, align 8
  tail call void @mlx5_vdpa_destroy_tis(ptr noundef %ndev, i32 noundef %3) #17
  %tdn = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %ndev, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %tdn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tdn, align 4
  tail call void @mlx5_vdpa_dealloc_transport_domain(ptr noundef %ndev, i32 noundef %5) #17
  %6 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %valid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_vdpa_destroy_mr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_vdpa_free_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_mpfs_del_mac(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_vdpa_set_vq_address(ptr nocapture noundef %vdev, i16 noundef zeroext %idx, i64 noundef %desc_area, i64 noundef %driver_area, i64 noundef %device_area) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %actual_features.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 4
  %0 = ptrtoint ptr %actual_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %actual_features.i, align 8
  %and.i = and i64 %1, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %and2.i = and i64 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i)
  %tobool3.not.i = icmp eq i64 %and2.i, 0
  br i1 %tobool3.not.i, label %is_index_valid.exit, label %if.else.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %idx)
  %cmp7.i = icmp ult i16 %idx, 3
  br i1 %cmp7.i, label %if.else.i.is_ctrl_vq_idx.exit_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else.i.is_ctrl_vq_idx.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %is_ctrl_vq_idx.exit

if.end.i:                                         ; preds = %entry
  %max_idx.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 7
  %2 = ptrtoint ptr %max_idx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_idx.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %idx)
  %cmp11.i.not = icmp ult i16 %3, %idx
  br i1 %cmp11.i.not, label %if.end.i.cleanup_crit_edge, label %if.end.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

is_index_valid.exit:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %idx)
  %cmp.i = icmp ult i16 %idx, 2
  br i1 %cmp.i, label %is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge, label %is_index_valid.exit.cleanup_crit_edge

is_index_valid.exit.cleanup_crit_edge:            ; preds = %is_index_valid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge: ; preds = %is_index_valid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %is_ctrl_vq_idx.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %max_vqs.i.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 6
  %4 = ptrtoint ptr %max_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_vqs.i.i, align 4
  %div.i.i.i = sdiv i32 %5, 2
  %call.tr.i.i = trunc i32 %div.i.i.i to i16
  %conv.i.i = shl i16 %call.tr.i.i, 1
  br label %is_ctrl_vq_idx.exit

is_ctrl_vq_idx.exit:                              ; preds = %if.end.i.i, %is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge, %if.else.i.is_ctrl_vq_idx.exit_crit_edge
  %retval.0.i.i = phi i16 [ %conv.i.i, %if.end.i.i ], [ 2, %if.else.i.is_ctrl_vq_idx.exit_crit_edge ], [ 2, %is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i.i, i16 %idx)
  %cmp.i26 = icmp eq i16 %retval.0.i.i, %idx
  br i1 %cmp.i26, label %if.then5, label %if.end8

if.then5:                                         ; preds = %is_ctrl_vq_idx.exit
  call void @__sanitizer_cov_trace_pc() #19
  %desc_addr = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 10, i32 4
  %6 = ptrtoint ptr %desc_addr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %desc_area, ptr %desc_addr, align 8
  %device_addr = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 10, i32 5
  %7 = ptrtoint ptr %device_addr to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %device_area, ptr %device_addr, align 8
  %driver_addr = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 10, i32 6
  br label %cleanup.sink.split

if.end8:                                          ; preds = %is_ctrl_vq_idx.exit
  call void @__sanitizer_cov_trace_pc() #19
  %vqs = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 3
  %8 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vqs, align 4
  %idxprom = zext i16 %idx to i32
  %desc_addr9 = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %9, i32 %idxprom, i32 1
  %10 = ptrtoint ptr %desc_addr9 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %desc_area, ptr %desc_addr9, align 8
  %device_addr10 = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %9, i32 %idxprom, i32 2
  %11 = ptrtoint ptr %device_addr10 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %device_area, ptr %device_addr10, align 8
  %driver_addr11 = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %9, i32 %idxprom, i32 3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end8, %if.then5
  %driver_addr11.sink = phi ptr [ %driver_addr11, %if.end8 ], [ %driver_addr, %if.then5 ]
  %12 = ptrtoint ptr %driver_addr11.sink to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %driver_area, ptr %driver_addr11.sink, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %is_index_valid.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %is_index_valid.exit.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.else.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlx5_vdpa_set_vq_num(ptr nocapture noundef readonly %vdev, i16 noundef zeroext %idx, i32 noundef %num) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %actual_features.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 4
  %0 = ptrtoint ptr %actual_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %actual_features.i, align 8
  %and.i = and i64 %1, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %and2.i = and i64 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i)
  %tobool3.not.i = icmp eq i64 %and2.i, 0
  br i1 %tobool3.not.i, label %is_index_valid.exit, label %if.else.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %idx)
  %cmp7.i = icmp ult i16 %idx, 3
  br i1 %cmp7.i, label %if.else.i.is_ctrl_vq_idx.exit_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else.i.is_ctrl_vq_idx.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %is_ctrl_vq_idx.exit

if.end.i:                                         ; preds = %entry
  %max_idx.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 7
  %2 = ptrtoint ptr %max_idx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_idx.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %idx)
  %cmp11.i.not = icmp ult i16 %3, %idx
  br i1 %cmp11.i.not, label %if.end.i.cleanup_crit_edge, label %if.end.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

is_index_valid.exit:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %idx)
  %cmp.i = icmp ult i16 %idx, 2
  br i1 %cmp.i, label %is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge, label %is_index_valid.exit.cleanup_crit_edge

is_index_valid.exit.cleanup_crit_edge:            ; preds = %is_index_valid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge: ; preds = %is_index_valid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %is_ctrl_vq_idx.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %max_vqs.i.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 6
  %4 = ptrtoint ptr %max_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_vqs.i.i, align 4
  %div.i.i.i = sdiv i32 %5, 2
  %call.tr.i.i = trunc i32 %div.i.i.i to i16
  %conv.i.i = shl i16 %call.tr.i.i, 1
  br label %is_ctrl_vq_idx.exit

is_ctrl_vq_idx.exit:                              ; preds = %if.end.i.i, %is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge, %if.else.i.is_ctrl_vq_idx.exit_crit_edge
  %retval.0.i.i = phi i16 [ %conv.i.i, %if.end.i.i ], [ 2, %if.else.i.is_ctrl_vq_idx.exit_crit_edge ], [ 2, %is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i.i, i16 %idx)
  %cmp.i11 = icmp eq i16 %retval.0.i.i, %idx
  br i1 %cmp.i11, label %is_ctrl_vq_idx.exit.cleanup_crit_edge, label %if.end

is_ctrl_vq_idx.exit.cleanup_crit_edge:            ; preds = %is_ctrl_vq_idx.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %is_ctrl_vq_idx.exit
  call void @__sanitizer_cov_trace_pc() #19
  %vqs = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 3
  %6 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vqs, align 4
  %idxprom = zext i16 %idx to i32
  %num_ent = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %7, i32 %idxprom, i32 4
  %8 = ptrtoint ptr %num_ent to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %num, ptr %num_ent, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_ctrl_vq_idx.exit.cleanup_crit_edge, %is_index_valid.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_vdpa_kick_vq(ptr noundef %vdev, i16 noundef zeroext %idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %actual_features.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 4
  %0 = ptrtoint ptr %actual_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %actual_features.i, align 8
  %and.i = and i64 %1, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %and2.i = and i64 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i)
  %tobool3.not.i = icmp eq i64 %and2.i, 0
  br i1 %tobool3.not.i, label %is_index_valid.exit, label %if.else.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %idx)
  %cmp7.i = icmp ult i16 %idx, 3
  br i1 %cmp7.i, label %if.else.i.is_ctrl_vq_idx.exit_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else.i.is_ctrl_vq_idx.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %is_ctrl_vq_idx.exit

if.end.i:                                         ; preds = %entry
  %max_idx.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 7
  %2 = ptrtoint ptr %max_idx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_idx.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %idx)
  %cmp11.i.not = icmp ult i16 %3, %idx
  br i1 %cmp11.i.not, label %if.end.i.cleanup_crit_edge, label %if.end.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

is_index_valid.exit:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %idx)
  %cmp.i = icmp ult i16 %idx, 2
  br i1 %cmp.i, label %is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge, label %is_index_valid.exit.cleanup_crit_edge

is_index_valid.exit.cleanup_crit_edge:            ; preds = %is_index_valid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge: ; preds = %is_index_valid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %is_ctrl_vq_idx.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %max_vqs.i.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 6
  %4 = ptrtoint ptr %max_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_vqs.i.i, align 4
  %div.i.i.i = sdiv i32 %5, 2
  %call.tr.i.i = trunc i32 %div.i.i.i to i16
  %conv.i.i = shl i16 %call.tr.i.i, 1
  br label %is_ctrl_vq_idx.exit

is_ctrl_vq_idx.exit:                              ; preds = %if.end.i.i, %is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge, %if.else.i.is_ctrl_vq_idx.exit_crit_edge
  %retval.0.i.i = phi i16 [ %conv.i.i, %if.end.i.i ], [ 2, %if.else.i.is_ctrl_vq_idx.exit_crit_edge ], [ 2, %is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i.i, i16 %idx)
  %cmp.i55 = icmp eq i16 %retval.0.i.i, %idx
  br i1 %cmp.i55, label %if.then6, label %if.end22, !prof !365

if.then6:                                         ; preds = %is_ctrl_vq_idx.exit
  %ready = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 10, i32 3
  %6 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ready, align 8, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  br i1 %tobool7.not, label %if.then6.cleanup_crit_edge, label %if.end9

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end9:                                          ; preds = %if.then6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2848, i32 noundef 48) #20
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  %mvdev14 = getelementptr inbounds %struct.mlx5_vdpa_wq_ent, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %mvdev14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %vdev, ptr %mvdev14, align 4
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #17
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @mlx5_vdpa_kick_vq.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry18 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %entry18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry18, ptr %entry18, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry18, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mlx5_cvq_kick_handler, ptr %func, align 4
  %wq = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 11
  %14 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wq, align 8
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

if.end22:                                         ; preds = %is_ctrl_vq_idx.exit
  %vqs = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 3
  %16 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vqs, align 4
  %idxprom = zext i16 %idx to i32
  %arrayidx = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %17, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 8, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool24.not = icmp eq i8 %19, 0
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end34, !prof !365

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end34:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  %kick_addr = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %kick_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %kick_addr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !366
  tail call void @arm_heavy_mb() #17
  %22 = tail call i16 @llvm.bswap.i16(i16 %idx) #17
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 %22) #17, !srcloc !367
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end22.cleanup_crit_edge, %if.end13, %if.end9.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %is_index_valid.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlx5_vdpa_set_vq_cb(ptr nocapture noundef readonly %vdev, i16 noundef zeroext %idx, ptr nocapture noundef readonly %cb) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %event_cbs = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 4
  %0 = ptrtoint ptr %event_cbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %event_cbs, align 8
  %idxprom = zext i16 %idx to i32
  %arrayidx = getelementptr %struct.vdpa_callback, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %cb, align 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %3, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_vdpa_set_vq_ready(ptr nocapture noundef %vdev, i16 noundef zeroext %idx, i1 noundef zeroext %ready) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %ready to i8
  %actual_features = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 4
  %0 = ptrtoint ptr %actual_features to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %actual_features, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i = and i64 %1, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  %and2.i = and i64 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i)
  %tobool3.not.i = icmp eq i64 %and2.i, 0
  br i1 %tobool3.not.i, label %is_index_valid.exit, label %if.else.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %idx)
  %cmp7.i = icmp ult i16 %idx, 3
  br i1 %cmp7.i, label %if.else.i.is_ctrl_vq_idx.exit_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else.i.is_ctrl_vq_idx.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %is_ctrl_vq_idx.exit

if.end.i:                                         ; preds = %if.end
  %max_idx.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 7
  %2 = ptrtoint ptr %max_idx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_idx.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %idx)
  %cmp11.i.not = icmp ult i16 %3, %idx
  br i1 %cmp11.i.not, label %if.end.i.cleanup_crit_edge, label %if.end.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

is_index_valid.exit:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %idx)
  %cmp.i = icmp ult i16 %idx, 2
  br i1 %cmp.i, label %is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge, label %is_index_valid.exit.cleanup_crit_edge

is_index_valid.exit.cleanup_crit_edge:            ; preds = %is_index_valid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge: ; preds = %is_index_valid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %is_ctrl_vq_idx.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %max_vqs.i.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 6
  %4 = ptrtoint ptr %max_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_vqs.i.i, align 4
  %div.i.i.i = sdiv i32 %5, 2
  %call.tr.i.i = trunc i32 %div.i.i.i to i16
  %conv.i.i = shl i16 %call.tr.i.i, 1
  br label %is_ctrl_vq_idx.exit

is_ctrl_vq_idx.exit:                              ; preds = %if.end.i.i, %is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge, %if.else.i.is_ctrl_vq_idx.exit_crit_edge
  %retval.0.i.i = phi i16 [ %conv.i.i, %if.end.i.i ], [ 2, %if.else.i.is_ctrl_vq_idx.exit_crit_edge ], [ 2, %is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i.i, i16 %idx)
  %cmp.i28 = icmp eq i16 %retval.0.i.i, %idx
  br i1 %cmp.i28, label %if.then7, label %if.end9

if.then7:                                         ; preds = %is_ctrl_vq_idx.exit
  %ready2.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 10, i32 3
  %6 = ptrtoint ptr %ready2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %ready2.i, align 8
  br i1 %ready, label %if.end.i29, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i29:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  %notify.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 10, i32 2, i32 9
  %7 = ptrtoint ptr %notify.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mlx5_cvq_notify, ptr %notify.i, align 4
  br label %cleanup

if.end9:                                          ; preds = %is_ctrl_vq_idx.exit
  %vqs = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 3
  %8 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vqs, align 4
  %idxprom = zext i16 %idx to i32
  %arrayidx = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %9, i32 %idxprom
  br i1 %ready, label %if.end9.if.end12_crit_edge, label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @suspend_vq(ptr noundef %vdev, ptr noundef %arrayidx)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.i29, %if.then7.cleanup_crit_edge, %is_index_valid.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlx5_vdpa_get_vq_ready(ptr nocapture noundef readonly %vdev, i16 noundef zeroext %idx) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %actual_features.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 4
  %0 = ptrtoint ptr %actual_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %actual_features.i, align 8
  %and.i = and i64 %1, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %and2.i = and i64 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i)
  %tobool3.not.i = icmp eq i64 %and2.i, 0
  br i1 %tobool3.not.i, label %is_index_valid.exit, label %if.else.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %idx)
  %cmp7.i = icmp ult i16 %idx, 3
  br i1 %cmp7.i, label %if.else.i.is_ctrl_vq_idx.exit_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else.i.is_ctrl_vq_idx.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %is_ctrl_vq_idx.exit

if.end.i:                                         ; preds = %entry
  %max_idx.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 7
  %2 = ptrtoint ptr %max_idx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_idx.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %idx)
  %cmp11.i.not = icmp ult i16 %3, %idx
  br i1 %cmp11.i.not, label %if.end.i.cleanup_crit_edge, label %if.end.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

is_index_valid.exit:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %idx)
  %cmp.i = icmp ult i16 %idx, 2
  br i1 %cmp.i, label %is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge, label %is_index_valid.exit.cleanup_crit_edge

is_index_valid.exit.cleanup_crit_edge:            ; preds = %is_index_valid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge: ; preds = %is_index_valid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %is_ctrl_vq_idx.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %max_vqs.i.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 6
  %4 = ptrtoint ptr %max_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_vqs.i.i, align 4
  %div.i.i.i = sdiv i32 %5, 2
  %call.tr.i.i = trunc i32 %div.i.i.i to i16
  %conv.i.i = shl i16 %call.tr.i.i, 1
  br label %is_ctrl_vq_idx.exit

is_ctrl_vq_idx.exit:                              ; preds = %if.end.i.i, %is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge, %if.else.i.is_ctrl_vq_idx.exit_crit_edge
  %retval.0.i.i = phi i16 [ %conv.i.i, %if.end.i.i ], [ 2, %if.else.i.is_ctrl_vq_idx.exit_crit_edge ], [ 2, %is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i.i, i16 %idx)
  %cmp.i15 = icmp eq i16 %retval.0.i.i, %idx
  br i1 %cmp.i15, label %if.then5, label %if.end6

if.then5:                                         ; preds = %is_ctrl_vq_idx.exit
  call void @__sanitizer_cov_trace_pc() #19
  %ready = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 10, i32 3
  br label %cleanup.sink.split

if.end6:                                          ; preds = %is_ctrl_vq_idx.exit
  call void @__sanitizer_cov_trace_pc() #19
  %vqs = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 3
  %6 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vqs, align 4
  %idxprom = zext i16 %idx to i32
  %arrayidx = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %7, i32 %idxprom
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end6, %if.then5
  %arrayidx.sink = phi ptr [ %arrayidx, %if.end6 ], [ %ready, %if.then5 ]
  %8 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.sink, align 8, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8 = icmp ne i8 %9, 0
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %is_index_valid.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %is_index_valid.exit.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.else.i.cleanup_crit_edge ], [ %tobool8, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_vdpa_set_vq_state(ptr nocapture noundef %vdev, i16 noundef zeroext %idx, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %actual_features.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 4
  %0 = ptrtoint ptr %actual_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %actual_features.i, align 8
  %and.i = and i64 %1, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %and2.i = and i64 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i)
  %tobool3.not.i = icmp eq i64 %and2.i, 0
  br i1 %tobool3.not.i, label %is_index_valid.exit, label %if.else.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %idx)
  %cmp7.i = icmp ult i16 %idx, 3
  br i1 %cmp7.i, label %if.else.i.is_ctrl_vq_idx.exit_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else.i.is_ctrl_vq_idx.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %is_ctrl_vq_idx.exit

if.end.i:                                         ; preds = %entry
  %max_idx.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 7
  %2 = ptrtoint ptr %max_idx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_idx.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %idx)
  %cmp11.i.not = icmp ult i16 %3, %idx
  br i1 %cmp11.i.not, label %if.end.i.cleanup_crit_edge, label %if.end.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

is_index_valid.exit:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %idx)
  %cmp.i = icmp ult i16 %idx, 2
  br i1 %cmp.i, label %is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge, label %is_index_valid.exit.cleanup_crit_edge

is_index_valid.exit.cleanup_crit_edge:            ; preds = %is_index_valid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge: ; preds = %is_index_valid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %is_ctrl_vq_idx.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %max_vqs.i.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 6
  %4 = ptrtoint ptr %max_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_vqs.i.i, align 4
  %div.i.i.i = sdiv i32 %5, 2
  %call.tr.i.i = trunc i32 %div.i.i.i to i16
  %conv.i.i = shl i16 %call.tr.i.i, 1
  br label %is_ctrl_vq_idx.exit

is_ctrl_vq_idx.exit:                              ; preds = %if.end.i.i, %is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge, %if.else.i.is_ctrl_vq_idx.exit_crit_edge
  %retval.0.i.i = phi i16 [ %conv.i.i, %if.end.i.i ], [ 2, %if.else.i.is_ctrl_vq_idx.exit_crit_edge ], [ 2, %is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i.i, i16 %idx)
  %cmp.i24 = icmp eq i16 %retval.0.i.i, %idx
  br i1 %cmp.i24, label %if.then5, label %if.end6

if.then5:                                         ; preds = %is_ctrl_vq_idx.exit
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %state, align 2
  %last_avail_idx = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 10, i32 2, i32 3
  %8 = ptrtoint ptr %last_avail_idx to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %last_avail_idx, align 4
  br label %cleanup

if.end6:                                          ; preds = %is_ctrl_vq_idx.exit
  %vqs = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 3
  %9 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vqs, align 4
  %idxprom = zext i16 %idx to i32
  %fw_state = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %10, i32 %idxprom, i32 17
  %11 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fw_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 1
  %13 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdev, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %17 = tail call i32 @llvm.read_register.i32(metadata !353) #17
  %and.i25 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i25 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 1813, i32 noundef %22) #21
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %state, align 2
  %used_idx = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %10, i32 %idxprom, i32 16
  %25 = ptrtoint ptr %used_idx to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %used_idx, align 2
  %26 = load i16, ptr %state, align 2
  %avail_idx = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %10, i32 %idxprom, i32 15
  %27 = ptrtoint ptr %avail_idx to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %avail_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %if.then5, %is_index_valid.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then5 ], [ -22, %do.end ], [ 0, %if.end9 ], [ -22, %is_index_valid.exit.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.else.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_vdpa_get_vq_state(ptr nocapture noundef readonly %vdev, i16 noundef zeroext %idx, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %actual_features.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 4
  %0 = ptrtoint ptr %actual_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %actual_features.i, align 8
  %and.i = and i64 %1, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %and2.i = and i64 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i)
  %tobool3.not.i = icmp eq i64 %and2.i, 0
  br i1 %tobool3.not.i, label %is_index_valid.exit, label %if.else.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %idx)
  %cmp7.i = icmp ult i16 %idx, 3
  br i1 %cmp7.i, label %if.else.i.is_ctrl_vq_idx.exit_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else.i.is_ctrl_vq_idx.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %is_ctrl_vq_idx.exit

if.end.i:                                         ; preds = %entry
  %max_idx.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 7
  %2 = ptrtoint ptr %max_idx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_idx.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %idx)
  %cmp11.i.not = icmp ult i16 %3, %idx
  br i1 %cmp11.i.not, label %if.end.i.cleanup_crit_edge, label %if.end.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

is_index_valid.exit:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %idx)
  %cmp.i = icmp ult i16 %idx, 2
  br i1 %cmp.i, label %is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge, label %is_index_valid.exit.cleanup_crit_edge

is_index_valid.exit.cleanup_crit_edge:            ; preds = %is_index_valid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge: ; preds = %is_index_valid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %is_ctrl_vq_idx.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %max_vqs.i.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 6
  %4 = ptrtoint ptr %max_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_vqs.i.i, align 4
  %div.i.i.i = sdiv i32 %5, 2
  %call.tr.i.i = trunc i32 %div.i.i.i to i16
  %conv.i.i = shl i16 %call.tr.i.i, 1
  br label %is_ctrl_vq_idx.exit

is_ctrl_vq_idx.exit:                              ; preds = %if.end.i.i, %is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge, %if.else.i.is_ctrl_vq_idx.exit_crit_edge
  %retval.0.i.i = phi i16 [ %conv.i.i, %if.end.i.i ], [ 2, %if.else.i.is_ctrl_vq_idx.exit_crit_edge ], [ 2, %is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i.i, i16 %idx)
  %cmp.i32 = icmp eq i16 %retval.0.i.i, %idx
  br i1 %cmp.i32, label %if.then5, label %if.end6

if.then5:                                         ; preds = %is_ctrl_vq_idx.exit
  call void @__sanitizer_cov_trace_pc() #19
  %last_avail_idx = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 10, i32 2, i32 3
  %6 = ptrtoint ptr %last_avail_idx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %last_avail_idx, align 4
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %state, align 2
  br label %cleanup

if.end6:                                          ; preds = %is_ctrl_vq_idx.exit
  %vqs = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 3
  %9 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vqs, align 4
  %idxprom = zext i16 %idx to i32
  %initialized = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %10, i32 %idxprom, i32 11
  %11 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %initialized, align 4, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  %used_idx = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %10, i32 %idxprom, i32 16
  %13 = ptrtoint ptr %used_idx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %used_idx, align 2
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %state, align 2
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #17
  %16 = call ptr @memset(ptr %in.i, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 208) #20
  %tobool.not.i33 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i33, label %query_virtqueue.exit.thread, label %if.end.i34

query_virtqueue.exit.thread:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #17
  br label %do.end

if.end.i34:                                       ; preds = %if.end9
  %add.ptr12.i = getelementptr inbounds i32, ptr %in.i, i32 1
  %18 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr12.i, align 4
  %and13.i = and i32 %19, -65536
  %or16.i = or i32 %and13.i, 13
  store i32 %or16.i, ptr %add.ptr12.i, align 4
  %virtq_id.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %10, i32 %idxprom, i32 13
  %20 = ptrtoint ptr %virtq_id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %virtq_id.i, align 4
  %add.ptr25.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %22 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %add.ptr25.i, align 4
  %uid.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %uid.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %uid.i, align 8
  %conv.i = zext i16 %24 to i32
  %or42.i = or i32 %conv.i, 167903232
  %25 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or42.i, ptr %in.i, align 4
  %mdev.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 1
  %26 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdev.i, align 8
  %call48.i = call i32 @mlx5_cmd_exec(ptr noundef %27, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %call7.i.i.i, i32 noundef 208) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end14, label %query_virtqueue.exit

query_virtqueue.exit:                             ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #19
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #17
  br label %do.end

do.end:                                           ; preds = %query_virtqueue.exit, %query_virtqueue.exit.thread
  %retval.0.i3540 = phi i32 [ -12, %query_virtqueue.exit.thread ], [ %call48.i, %query_virtqueue.exit ]
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 1
  %28 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mdev, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %32 = call i32 @llvm.read_register.i32(metadata !353) #17
  %and.i36 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i36 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 68
  %36 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.36, i32 noundef 1854, i32 noundef %37) #21
  br label %cleanup

if.end14:                                         ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr56.i = getelementptr i8, ptr %call7.i.i.i, i32 56
  %38 = ptrtoint ptr %add.ptr56.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr56.i, align 8
  %conv63.i = trunc i32 %39 to i16
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #17
  %40 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv63.i, ptr %state, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end, %if.then7, %if.then5, %is_index_valid.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then5 ], [ %retval.0.i3540, %do.end ], [ 0, %if.end14 ], [ 0, %if.then7 ], [ -22, %is_index_valid.exit.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.else.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlx5_get_vq_notification(ptr noalias nocapture writeonly sret(%struct.vdpa_notification_area) align 4 %agg.result, ptr nocapture noundef readonly %vdev, i16 noundef zeroext %idx) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %agg.result, align 4
  %actual_features.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 4
  %1 = ptrtoint ptr %actual_features.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %actual_features.i, align 8
  %and.i = and i64 %2, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %and2.i = and i64 %2, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i)
  %tobool3.not.i = icmp eq i64 %and2.i, 0
  br i1 %tobool3.not.i, label %is_index_valid.exit, label %if.else.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %idx)
  %cmp7.i = icmp ult i16 %idx, 3
  br i1 %cmp7.i, label %if.else.i.is_ctrl_vq_idx.exit_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else.i.is_ctrl_vq_idx.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %is_ctrl_vq_idx.exit

if.end.i:                                         ; preds = %entry
  %max_idx.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 7
  %3 = ptrtoint ptr %max_idx.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %max_idx.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %idx)
  %cmp11.i.not = icmp ult i16 %4, %idx
  br i1 %cmp11.i.not, label %if.end.i.cleanup_crit_edge, label %if.end.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

is_index_valid.exit:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %idx)
  %cmp.i = icmp ult i16 %idx, 2
  br i1 %cmp.i, label %is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge, label %is_index_valid.exit.cleanup_crit_edge

is_index_valid.exit.cleanup_crit_edge:            ; preds = %is_index_valid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge: ; preds = %is_index_valid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %is_ctrl_vq_idx.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %max_vqs.i.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 6
  %5 = ptrtoint ptr %max_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_vqs.i.i, align 4
  %div.i.i.i = sdiv i32 %6, 2
  %call.tr.i.i = trunc i32 %div.i.i.i to i16
  %conv.i.i = shl i16 %call.tr.i.i, 1
  br label %is_ctrl_vq_idx.exit

is_ctrl_vq_idx.exit:                              ; preds = %if.end.i.i, %is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge, %if.else.i.is_ctrl_vq_idx.exit_crit_edge
  %retval.0.i.i = phi i16 [ %conv.i.i, %if.end.i.i ], [ 2, %if.else.i.is_ctrl_vq_idx.exit_crit_edge ], [ 2, %is_index_valid.exit.is_ctrl_vq_idx.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i.i, i16 %idx)
  %cmp.i16 = icmp eq i16 %retval.0.i.i, %idx
  br i1 %cmp.i16, label %is_ctrl_vq_idx.exit.cleanup_crit_edge, label %if.end4

is_ctrl_vq_idx.exit.cleanup_crit_edge:            ; preds = %is_ctrl_vq_idx.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %is_ctrl_vq_idx.exit
  call void @__sanitizer_cov_trace_pc() #19
  %phys_kick_addr = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %phys_kick_addr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %phys_kick_addr, align 8
  %conv = trunc i64 %8 to i32
  %9 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %agg.result, align 4
  %size = getelementptr inbounds %struct.vdpa_notification_area, ptr %agg.result, i32 0, i32 1
  %10 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4096, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %is_ctrl_vq_idx.exit.cleanup_crit_edge, %is_index_valid.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_get_vq_irq(ptr nocapture noundef readnone %vdv, i16 noundef zeroext %idx) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_vdpa_get_vq_align(ptr nocapture noundef readnone %vdev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4096
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlx5_vdpa_get_device_features(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx_features = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 3
  %0 = ptrtoint ptr %mlx_features to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %mlx_features, align 8
  %and.i = and i64 %1, 1008806080140017744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %entry.print_features.exit_crit_edge, label %do.end.i

entry.print_features.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %print_features.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %mdev.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 1
  %2 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !353) #17
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 251, i32 noundef %11, i64 noundef %and.i) #21
  br label %print_features.exit

print_features.exit:                              ; preds = %do.end.i, %entry.print_features.exit_crit_edge
  %12 = ptrtoint ptr %mlx_features to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %mlx_features, align 8
  ret i64 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_vdpa_set_driver_features(ptr nocapture noundef %vdev, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i64 %features, 1008806080140017744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %entry.print_features.exit_crit_edge, label %do.end.i

entry.print_features.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %print_features.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %mdev.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !353) #17
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 251, i32 noundef %9, i64 noundef %and.i) #21
  br label %print_features.exit

print_features.exit:                              ; preds = %do.end.i, %entry.print_features.exit_crit_edge
  %and.i29 = and i64 %features, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i29)
  %tobool.not.i30 = icmp eq i64 %and.i29, 0
  %and1.i = and i64 %features, 4325376
  call void @__sanitizer_cov_trace_const_cmp8(i64 4194304, i64 %and1.i)
  %cmp.i = icmp eq i64 %and1.i, 4194304
  %..i = select i1 %cmp.i, i32 -22, i32 0
  %retval.0.i = select i1 %tobool.not.i30, i32 -95, i32 %..i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.end, label %print_features.exit.cleanup_crit_edge

print_features.exit.cleanup_crit_edge:            ; preds = %print_features.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %print_features.exit
  %mlx_features = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 3
  %10 = ptrtoint ptr %mlx_features to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %mlx_features, align 8
  %and = and i64 %11, %features
  %actual_features = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 4
  %12 = ptrtoint ptr %actual_features to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %and, ptr %actual_features, align 8
  %and8 = and i64 %and, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8)
  %tobool9.not = icmp eq i64 %and8, 0
  br i1 %tobool9.not, label %if.end13, label %if.end13.thread

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %cur_num_vqs12 = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 11
  %13 = ptrtoint ptr %cur_num_vqs12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %cur_num_vqs12, align 4
  %and.i32 = and i64 %and, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i32)
  %tobool.not.i33 = icmp eq i64 %and.i32, 0
  %spec.select = select i1 %tobool.not.i33, i16 1, i16 2
  br label %update_cvq_info.exit

if.end13.thread:                                  ; preds = %if.end
  %max_virtqueue_pairs = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %max_virtqueue_pairs to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %max_virtqueue_pairs, align 4
  %and.i.i31 = and i64 %and, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i31)
  %tobool.i.not.i = icmp eq i64 %and.i.i31, 0
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #17
  %retval.0.i.i = select i1 %tobool.i.not.i, i16 %15, i16 %16
  %conv = zext i16 %retval.0.i.i to i32
  %mul = shl nuw nsw i32 %conv, 1
  %cur_num_vqs = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 11
  %17 = ptrtoint ptr %cur_num_vqs to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul, ptr %cur_num_vqs, align 4
  %and.i3234 = and i64 %and, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i3234)
  %tobool.not.i3335 = icmp eq i64 %and.i3234, 0
  br i1 %tobool.not.i3335, label %if.end13.thread.update_cvq_info.exit_crit_edge, label %if.then4.i

if.end13.thread.update_cvq_info.exit_crit_edge:   ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_cvq_info.exit

if.then4.i:                                       ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #19
  %max_vqs.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 6
  %18 = ptrtoint ptr %max_vqs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_vqs.i, align 4
  %conv.i = trunc i32 %19 to i16
  br label %update_cvq_info.exit

update_cvq_info.exit:                             ; preds = %if.then4.i, %if.end13.thread.update_cvq_info.exit_crit_edge, %if.end13
  %conv.sink.i = phi i16 [ %conv.i, %if.then4.i ], [ 1, %if.end13.thread.update_cvq_info.exit_crit_edge ], [ %spec.select, %if.end13 ]
  %max_idx.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 7
  %20 = ptrtoint ptr %max_idx.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.sink.i, ptr %max_idx.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %update_cvq_info.exit, %print_features.exit.cleanup_crit_edge
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @mlx5_vdpa_get_driver_features(ptr nocapture noundef readonly %vdev) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %actual_features = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 4
  %0 = ptrtoint ptr %actual_features to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %actual_features, align 8
  ret i64 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlx5_vdpa_set_config_cb(ptr nocapture noundef writeonly %vdev, ptr nocapture noundef readonly %cb) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %config_cb = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 13
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %cb, align 4
  %2 = ptrtoint ptr %config_cb to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %config_cb, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @mlx5_vdpa_get_vq_num_max(ptr nocapture noundef readnone %vdev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i16 256
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_vdpa_get_device_id(ptr nocapture noundef readnone %vdev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_vdpa_get_vendor_id(ptr nocapture noundef readnone %vdev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 5555
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mlx5_vdpa_get_status(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 5
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %status, align 8
  %2 = and i8 %1, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %entry.print_status.exit_crit_edge, label %do.end.i

entry.print_status.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %print_status.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %and.i = zext i8 %2 to i32
  %mdev.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 1
  %3 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !353) #17
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152, i32 noundef 228, i32 noundef %12, i32 noundef %and.i) #21
  br label %print_status.exit

print_status.exit:                                ; preds = %do.end.i, %entry.print_status.exit_crit_edge
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %status, align 8
  ret i8 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_vdpa_set_status(ptr noundef %vdev, i8 noundef zeroext %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %status, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %entry.print_status.exit_crit_edge, label %do.end.i

entry.print_status.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %print_status.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %and.i = zext i8 %0 to i32
  %mdev.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 1
  %1 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %5 = tail call i32 @llvm.read_register.i32(metadata !353) #17
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152, i32 noundef 228, i32 noundef %10, i32 noundef %and.i) #21
  br label %print_status.exit

print_status.exit:                                ; preds = %do.end.i, %entry.print_status.exit_crit_edge
  %status5 = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 5
  %11 = ptrtoint ptr %status5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %status5, align 8
  %xor43 = xor i8 %12, %status
  %13 = and i8 %xor43, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %print_status.exit.if.end23_crit_edge, label %if.then

print_status.exit.if.end23_crit_edge:             ; preds = %print_status.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

if.then:                                          ; preds = %print_status.exit
  %14 = and i8 %status, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool9.not = icmp eq i8 %14, 0
  br i1 %tobool9.not, label %do.end16, label %if.then10

if.then10:                                        ; preds = %if.then
  %call = tail call fastcc i32 @setup_driver(ptr noundef %vdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.then10.if.end23_crit_edge, label %do.end

if.then10.if.end23_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 1
  %15 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdev, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %19 = tail call i32 @llvm.read_register.i32(metadata !353) #17
  %and.i44 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i44 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 68
  %23 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.180, i32 noundef 2242, i32 noundef %24) #21
  tail call void @mlx5_vdpa_destroy_mr(ptr noundef %vdev) #17
  %25 = ptrtoint ptr %status5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %status5, align 8
  %27 = or i8 %26, -128
  store i8 %27, ptr %status5, align 8
  br label %cleanup

do.end16:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %mdev17 = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 1
  %28 = ptrtoint ptr %mdev17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mdev17, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %32 = tail call i32 @llvm.read_register.i32(metadata !353) #17
  %and.i45 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i45 to ptr
  %task20 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task20, align 8
  %pid21 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 68
  %36 = ptrtoint ptr %pid21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pid21, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.180, i32 noundef 2246, i32 noundef %37) #21
  br label %cleanup

if.end23:                                         ; preds = %if.then10.if.end23_crit_edge, %print_status.exit.if.end23_crit_edge
  %38 = ptrtoint ptr %status5 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %status, ptr %status5, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end16, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_vdpa_reset(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !353) #17
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
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.201, i32 noundef 2265, i32 noundef %9) #21
  tail call fastcc void @teardown_driver(ptr noundef %vdev)
  %max_vqs.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 6
  %10 = ptrtoint ptr %max_vqs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_vqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7.not.i = icmp eq i32 %11, 0
  br i1 %cmp7.not.i, label %entry.clear_vqs_ready.exit_crit_edge, label %for.body.lr.ph.i

entry.clear_vqs_ready.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %clear_vqs_ready.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %vqs.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %vqs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vqs.i, align 4
  %arrayidx.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %13, i32 %i.08.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx.i, align 8
  %inc.i = add nuw i32 %i.08.i, 1
  %15 = ptrtoint ptr %max_vqs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_vqs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %16
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.clear_vqs_ready.exit_crit_edge

for.body.i.clear_vqs_ready.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %clear_vqs_ready.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

clear_vqs_ready.exit:                             ; preds = %for.body.i.clear_vqs_ready.exit_crit_edge, %entry.clear_vqs_ready.exit_crit_edge
  %ready2.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 10, i32 3
  %17 = ptrtoint ptr %ready2.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %ready2.i, align 8
  tail call void @mlx5_vdpa_destroy_mr(ptr noundef %vdev) #17
  %status = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 5
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %status, align 8
  %cur_num_vqs = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 11
  %19 = ptrtoint ptr %cur_num_vqs to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %cur_num_vqs, align 4
  %event_cbs = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 4
  %20 = ptrtoint ptr %event_cbs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %event_cbs, align 8
  %22 = ptrtoint ptr %max_vqs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_vqs.i, align 4
  %add = shl i32 %23, 3
  %mul = add i32 %add, 8
  %24 = call ptr @memset(ptr %21, i32 0, i32 %mul)
  %actual_features = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 4
  %25 = ptrtoint ptr %actual_features to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %actual_features, align 8
  %generation = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 8
  %26 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %generation, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %generation, align 4
  %28 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mdev, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %caps, align 8
  %add.ptr8 = getelementptr i32, ptr %31, i32 18
  %32 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr8, align 4
  %34 = and i32 %33, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not = icmp eq i32 %34, 0
  br i1 %tobool.not, label %clear_vqs_ready.exit.if.end20_crit_edge, label %if.then

clear_vqs_ready.exit.if.end20_crit_edge:          ; preds = %clear_vqs_ready.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

if.then:                                          ; preds = %clear_vqs_ready.exit
  %call9 = tail call i32 @mlx5_vdpa_create_mr(ptr noundef %vdev, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then.if.end20_crit_edge, label %do.end14

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

do.end14:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %35 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mdev, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  %pid19 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 68
  %41 = ptrtoint ptr %pid19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pid19, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.201, i32 noundef 2276, i32 noundef %42) #21
  br label %if.end20

if.end20:                                         ; preds = %do.end14, %if.then.if.end20_crit_edge, %clear_vqs_ready.exit.if.end20_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_vdpa_get_config_size(ptr nocapture noundef readnone %vdev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 24
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlx5_vdpa_get_config(ptr nocapture noundef readonly %vdev, i32 noundef %offset, ptr nocapture noundef writeonly %buf, i32 noundef %len) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %add)
  %cmp = icmp ult i32 %add, 25
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %config = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 2
  %add.ptr4 = getelementptr i8, ptr %config, i32 %offset
  %0 = call ptr @memcpy(ptr %buf, ptr %add.ptr4, i32 %len)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlx5_vdpa_set_config(ptr nocapture noundef %vdev, i32 noundef %offset, ptr nocapture noundef %buf, i32 noundef %len) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_vdpa_get_generation(ptr nocapture noundef readonly %vdev) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %generation = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 8
  %0 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %generation, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_vdpa_set_map(ptr noundef %vdev, ptr noundef %iotlb) #2 align 64 {
entry:
  %in.i.i.i.i = alloca [4 x i32], align 4
  %change_map = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %change_map) #17
  %0 = ptrtoint ptr %change_map to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %change_map, align 1, !annotation !363
  %call = call i32 @mlx5_vdpa_handle_set_map(ptr noundef %vdev, ptr noundef %iotlb, ptr noundef nonnull %change_map) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 1
  %1 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %5 = call i32 @llvm.read_register.i32(metadata !353) #17
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
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.206, i32 noundef 2318, i32 noundef %10, i32 noundef %call) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %change_map to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %change_map, align 1, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp eq i8 %12, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %max_vqs.i.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 6
  %13 = ptrtoint ptr %max_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_vqs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp5.not.i.i = icmp eq i32 %14, 0
  br i1 %cmp5.not.i.i, label %if.then3.save_channels_info.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then3.save_channels_info.exit.i_crit_edge:     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  br label %save_channels_info.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then3
  %vqs.i.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.06.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %15 = ptrtoint ptr %vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vqs.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %16, i32 %i.06.i.i
  call fastcc void @suspend_vq(ptr noundef %vdev, ptr noundef %arrayidx.i.i) #17
  %inc.i.i = add nuw i32 %i.06.i.i, 1
  %17 = ptrtoint ptr %max_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_vqs.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %18
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %suspend_vqs.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

suspend_vqs.exit.i:                               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp1.not.i.i = icmp eq i32 %18, 0
  br i1 %cmp1.not.i.i, label %suspend_vqs.exit.i.save_channels_info.exit.i_crit_edge, label %for.body.lr.ph.i26.i

suspend_vqs.exit.i.save_channels_info.exit.i_crit_edge: ; preds = %suspend_vqs.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %save_channels_info.exit.i

for.body.lr.ph.i26.i:                             ; preds = %suspend_vqs.exit.i
  %add.ptr12.i.i.i.i = getelementptr inbounds i32, ptr %in.i.i.i.i, i32 1
  %add.ptr25.i.i.i.i = getelementptr inbounds i32, ptr %in.i.i.i.i, i32 2
  %uid.i.i.i.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 2, i32 4
  %mdev.i.i.i.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 1
  br label %for.body.i27.i

for.body.i27.i:                                   ; preds = %save_channel_info.exit.i.i.for.body.i27.i_crit_edge, %for.body.lr.ph.i26.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i26.i ], [ %inc.i28.i, %save_channel_info.exit.i.i.for.body.i27.i_crit_edge ]
  %19 = ptrtoint ptr %vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vqs.i.i, align 4
  %ri.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %20, i32 %i.02.i.i, i32 18
  %21 = call ptr @memset(ptr %ri.i.i, i32 0, i32 40)
  %22 = load ptr, ptr %vqs.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %22, i32 %i.02.i.i
  %ri1.i.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %22, i32 %i.02.i.i, i32 18
  %initialized.i.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %22, i32 %i.02.i.i, i32 11
  %23 = ptrtoint ptr %initialized.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %initialized.i.i.i, align 4, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i.i.i, label %for.body.i27.i.if.end4.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i27.i.if.end4.i.i.i_crit_edge:           ; preds = %for.body.i27.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i27.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i.i.i.i) #17
  %25 = call ptr @memset(ptr %in.i.i.i.i, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 208) #20
  %tobool.not.i.i.i.i = icmp eq ptr %call7.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %query_virtqueue.exit.thread.i.i.i, label %if.end.i.i.i.i

query_virtqueue.exit.thread.i.i.i:                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i.i.i.i) #17
  br label %save_channel_info.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  %27 = ptrtoint ptr %add.ptr12.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr12.i.i.i.i, align 4
  %and13.i.i.i.i = and i32 %28, -65536
  %or16.i.i.i.i = or i32 %and13.i.i.i.i, 13
  store i32 %or16.i.i.i.i, ptr %add.ptr12.i.i.i.i, align 4
  %virtq_id.i.i.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %22, i32 %i.02.i.i, i32 13
  %29 = ptrtoint ptr %virtq_id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %virtq_id.i.i.i.i, align 4
  %31 = ptrtoint ptr %add.ptr25.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %add.ptr25.i.i.i.i, align 4
  %32 = ptrtoint ptr %uid.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %uid.i.i.i.i, align 8
  %conv.i.i.i.i = zext i16 %33 to i32
  %or42.i.i.i.i = or i32 %conv.i.i.i.i, 167903232
  %34 = ptrtoint ptr %in.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or42.i.i.i.i, ptr %in.i.i.i.i, align 4
  %35 = ptrtoint ptr %mdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mdev.i.i.i.i, align 8
  %call48.i.i.i.i = call i32 @mlx5_cmd_exec(ptr noundef %36, ptr noundef nonnull %in.i.i.i.i, i32 noundef 16, ptr noundef nonnull %call7.i.i.i.i.i.i, i32 noundef 208) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.i.i.i)
  %tobool49.not.i.i.i.i = icmp eq i32 %call48.i.i.i.i, 0
  br i1 %tobool49.not.i.i.i.i, label %query_virtqueue.exit.thread5.i.i.i, label %query_virtqueue.exit.i.i.i

query_virtqueue.exit.thread5.i.i.i:               ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr56.i.i.i.i = getelementptr i8, ptr %call7.i.i.i.i.i.i, i32 56
  %37 = ptrtoint ptr %add.ptr56.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr56.i.i.i.i, align 8
  %shr57.i.i.i.i = lshr i32 %38, 16
  %conv59.i.i.i.i = trunc i32 %shr57.i.i.i.i to i16
  %conv63.i.i.i.i = trunc i32 %38 to i16
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i.i) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i.i.i.i) #17
  br label %if.end4.i.i.i

query_virtqueue.exit.i.i.i:                       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i.i) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i.i.i.i) #17
  br label %save_channel_info.exit.i.i

if.end4.i.i.i:                                    ; preds = %query_virtqueue.exit.thread5.i.i.i, %for.body.i27.i.if.end4.i.i.i_crit_edge
  %attr.sroa.5.2.i.i.i = phi i16 [ 0, %for.body.i27.i.if.end4.i.i.i_crit_edge ], [ %conv59.i.i.i.i, %query_virtqueue.exit.thread5.i.i.i ]
  %attr.sroa.7.2.i.i.i = phi i16 [ 0, %for.body.i27.i.if.end4.i.i.i_crit_edge ], [ %conv63.i.i.i.i, %query_virtqueue.exit.thread5.i.i.i ]
  %avail_index.i.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %22, i32 %i.02.i.i, i32 18, i32 4
  %39 = ptrtoint ptr %avail_index.i.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %attr.sroa.5.2.i.i.i, ptr %avail_index.i.i.i, align 8
  %used_index5.i.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %22, i32 %i.02.i.i, i32 18, i32 5
  %40 = ptrtoint ptr %used_index5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %attr.sroa.7.2.i.i.i, ptr %used_index5.i.i.i, align 2
  %41 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx2.i.i, align 8, !range !364
  %ready7.i.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %22, i32 %i.02.i.i, i32 18, i32 6
  %43 = ptrtoint ptr %ready7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %ready7.i.i.i, align 4
  %num_ent.i.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %22, i32 %i.02.i.i, i32 4
  %44 = ptrtoint ptr %num_ent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_ent.i.i.i, align 8
  %46 = ptrtoint ptr %ri1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %ri1.i.i.i, align 8
  %desc_addr.i.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %22, i32 %i.02.i.i, i32 1
  %47 = ptrtoint ptr %desc_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %desc_addr.i.i.i, align 8
  %desc_addr9.i.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %22, i32 %i.02.i.i, i32 18, i32 1
  %49 = ptrtoint ptr %desc_addr9.i.i.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %desc_addr9.i.i.i, align 8
  %device_addr.i.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %22, i32 %i.02.i.i, i32 2
  %50 = ptrtoint ptr %device_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %device_addr.i.i.i, align 8
  %device_addr10.i.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %22, i32 %i.02.i.i, i32 18, i32 2
  %52 = ptrtoint ptr %device_addr10.i.i.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %device_addr10.i.i.i, align 8
  %driver_addr.i.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %22, i32 %i.02.i.i, i32 3
  %53 = ptrtoint ptr %driver_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %driver_addr.i.i.i, align 8
  %driver_addr11.i.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %22, i32 %i.02.i.i, i32 18, i32 3
  %55 = ptrtoint ptr %driver_addr11.i.i.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %driver_addr11.i.i.i, align 8
  %restore.i.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %22, i32 %i.02.i.i, i32 18, i32 7
  %56 = ptrtoint ptr %restore.i.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %restore.i.i.i, align 1
  br label %save_channel_info.exit.i.i

save_channel_info.exit.i.i:                       ; preds = %if.end4.i.i.i, %query_virtqueue.exit.i.i.i, %query_virtqueue.exit.thread.i.i.i
  %inc.i28.i = add nuw i32 %i.02.i.i, 1
  %57 = ptrtoint ptr %max_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_vqs.i.i, align 4
  %cmp.i29.i = icmp ult i32 %inc.i28.i, %58
  br i1 %cmp.i29.i, label %save_channel_info.exit.i.i.for.body.i27.i_crit_edge, label %save_channel_info.exit.i.i.save_channels_info.exit.i_crit_edge

save_channel_info.exit.i.i.save_channels_info.exit.i_crit_edge: ; preds = %save_channel_info.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %save_channels_info.exit.i

save_channel_info.exit.i.i.for.body.i27.i_crit_edge: ; preds = %save_channel_info.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i27.i

save_channels_info.exit.i:                        ; preds = %save_channel_info.exit.i.i.save_channels_info.exit.i_crit_edge, %suspend_vqs.exit.i.save_channels_info.exit.i_crit_edge, %if.then3.save_channels_info.exit.i_crit_edge
  call fastcc void @teardown_driver(ptr noundef %vdev) #17
  call void @mlx5_vdpa_destroy_mr(ptr noundef %vdev) #17
  %call1.i = call i32 @mlx5_vdpa_create_mr(ptr noundef %vdev, ptr noundef %iotlb) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %save_channels_info.exit.i.cleanup_crit_edge

save_channels_info.exit.i.cleanup_crit_edge:      ; preds = %save_channels_info.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4.i:                                        ; preds = %save_channels_info.exit.i
  %status.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 5
  %59 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %status.i, align 8
  %61 = and i8 %60, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool5.not.i = icmp eq i8 %61, 0
  br i1 %tobool5.not.i, label %if.end4.i.cleanup_crit_edge, label %if.end7.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7.i:                                        ; preds = %if.end4.i
  %62 = ptrtoint ptr %max_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_vqs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp4.not.i.i.i = icmp eq i32 %63, 0
  br i1 %cmp4.not.i.i.i, label %if.end7.i.mlx5_clear_vqs.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end7.i.mlx5_clear_vqs.exit.i.i_crit_edge:      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlx5_clear_vqs.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end7.i
  %vqs.i.i.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 3
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.05.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %64 = ptrtoint ptr %vqs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vqs.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %65, i32 %i.05.i.i.i
  %66 = call ptr @memset(ptr %arrayidx.i.i.i, i32 0, i32 632)
  %inc.i.i.i = add nuw i32 %i.05.i.i.i, 1
  %67 = ptrtoint ptr %max_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %max_vqs.i.i, align 4
  %cmp.i.i.i = icmp ult i32 %inc.i.i.i, %68
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.mlx5_clear_vqs.exit.i.i_crit_edge

for.body.i.i.i.mlx5_clear_vqs.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlx5_clear_vqs.exit.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i.i

mlx5_clear_vqs.exit.i.i:                          ; preds = %for.body.i.i.i.mlx5_clear_vqs.exit.i.i_crit_edge, %if.end7.i.mlx5_clear_vqs.exit.i.i_crit_edge
  %69 = ptrtoint ptr %max_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %max_vqs.i.i, align 4
  %.off.i.i.i = add i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i.i.i)
  %71 = icmp ult i32 %.off.i.i.i, 3
  br i1 %71, label %mlx5_clear_vqs.exit.i.i.for.cond2.preheader.i.i.i_crit_edge, label %for.body.lr.ph.i29.i.i

mlx5_clear_vqs.exit.i.i.for.cond2.preheader.i.i.i_crit_edge: ; preds = %mlx5_clear_vqs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond2.preheader.i.i.i

for.body.lr.ph.i29.i.i:                           ; preds = %mlx5_clear_vqs.exit.i.i
  %vqs.i28.i.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 3
  br label %for.body.i33.i.i

for.cond2.preheader.i.i.i:                        ; preds = %for.body.i33.i.i.for.cond2.preheader.i.i.i_crit_edge, %mlx5_clear_vqs.exit.i.i.for.cond2.preheader.i.i.i_crit_edge
  %i.0.lcssa.i.i.i = phi i32 [ 0, %mlx5_clear_vqs.exit.i.i.for.cond2.preheader.i.i.i_crit_edge ], [ %inc.i31.i.i, %for.body.i33.i.i.for.cond2.preheader.i.i.i_crit_edge ]
  %72 = ptrtoint ptr %max_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %max_vqs.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i.i, i32 %73)
  %cmp536.i.i.i = icmp ult i32 %i.0.lcssa.i.i.i, %73
  br i1 %cmp536.i.i.i, label %for.body6.lr.ph.i.i.i, label %for.cond2.preheader.i.i.i.init_mvqs.exit.i.i_crit_edge

for.cond2.preheader.i.i.i.init_mvqs.exit.i.i_crit_edge: ; preds = %for.cond2.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %init_mvqs.exit.i.i

for.body6.lr.ph.i.i.i:                            ; preds = %for.cond2.preheader.i.i.i
  %vqs7.i.i.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 3
  br label %for.body6.i.i.i

for.body.i33.i.i:                                 ; preds = %for.body.i33.i.i.for.body.i33.i.i_crit_edge, %for.body.lr.ph.i29.i.i
  %i.035.i.i.i = phi i32 [ 0, %for.body.lr.ph.i29.i.i ], [ %inc.i31.i.i, %for.body.i33.i.i.for.body.i33.i.i_crit_edge ]
  %74 = ptrtoint ptr %vqs.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vqs.i28.i.i, align 4
  %arrayidx.i30.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %75, i32 %i.035.i.i.i
  %76 = call ptr @memset(ptr %arrayidx.i30.i.i, i32 0, i32 632)
  %index.i.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %75, i32 %i.035.i.i.i, i32 12
  %77 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %i.035.i.i.i, ptr %index.i.i.i, align 8
  %ndev1.i.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %75, i32 %i.035.i.i.i, i32 14
  %78 = ptrtoint ptr %ndev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %vdev, ptr %ndev1.i.i.i, align 8
  %fw.i.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %75, i32 %i.035.i.i.i, i32 6, i32 4
  %79 = ptrtoint ptr %fw.i.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %fw.i.i.i, align 2
  %inc.i31.i.i = add nuw i32 %i.035.i.i.i, 1
  %80 = ptrtoint ptr %max_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %max_vqs.i.i, align 4
  %div.i.i.i.i = sdiv i32 %81, 2
  %mul.i.i.i = shl nsw i32 %div.i.i.i.i, 1
  %cmp.i32.i.i = icmp ult i32 %inc.i31.i.i, %mul.i.i.i
  br i1 %cmp.i32.i.i, label %for.body.i33.i.i.for.body.i33.i.i_crit_edge, label %for.body.i33.i.i.for.cond2.preheader.i.i.i_crit_edge

for.body.i33.i.i.for.cond2.preheader.i.i.i_crit_edge: ; preds = %for.body.i33.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond2.preheader.i.i.i

for.body.i33.i.i.for.body.i33.i.i_crit_edge:      ; preds = %for.body.i33.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i33.i.i

for.body6.i.i.i:                                  ; preds = %for.body6.i.i.i.for.body6.i.i.i_crit_edge, %for.body6.lr.ph.i.i.i
  %i.137.i.i.i = phi i32 [ %i.0.lcssa.i.i.i, %for.body6.lr.ph.i.i.i ], [ %inc12.i.i.i, %for.body6.i.i.i.for.body6.i.i.i_crit_edge ]
  %82 = ptrtoint ptr %vqs7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %vqs7.i.i.i, align 4
  %arrayidx8.i.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %83, i32 %i.137.i.i.i
  %84 = call ptr @memset(ptr %arrayidx8.i.i.i, i32 0, i32 632)
  %index9.i.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %83, i32 %i.137.i.i.i, i32 12
  %85 = ptrtoint ptr %index9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %i.137.i.i.i, ptr %index9.i.i.i, align 8
  %ndev10.i.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %83, i32 %i.137.i.i.i, i32 14
  %86 = ptrtoint ptr %ndev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %vdev, ptr %ndev10.i.i.i, align 8
  %inc12.i.i.i = add nuw i32 %i.137.i.i.i, 1
  %87 = ptrtoint ptr %max_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max_vqs.i.i, align 4
  %cmp5.i.i.i = icmp ult i32 %inc12.i.i.i, %88
  br i1 %cmp5.i.i.i, label %for.body6.i.i.i.for.body6.i.i.i_crit_edge, label %for.body6.i.i.i.init_mvqs.exit.i.i_crit_edge

for.body6.i.i.i.init_mvqs.exit.i.i_crit_edge:     ; preds = %for.body6.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %init_mvqs.exit.i.i

for.body6.i.i.i.for.body6.i.i.i_crit_edge:        ; preds = %for.body6.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body6.i.i.i

init_mvqs.exit.i.i:                               ; preds = %for.body6.i.i.i.init_mvqs.exit.i.i_crit_edge, %for.cond2.preheader.i.i.i.init_mvqs.exit.i.i_crit_edge
  %89 = phi i32 [ %73, %for.cond2.preheader.i.i.i.init_mvqs.exit.i.i_crit_edge ], [ %88, %for.body6.i.i.i.init_mvqs.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp34.not.i.i = icmp eq i32 %89, 0
  br i1 %cmp34.not.i.i, label %init_mvqs.exit.i.i.restore_channels_info.exit.i_crit_edge, label %for.body.lr.ph.i31.i

init_mvqs.exit.i.i.restore_channels_info.exit.i_crit_edge: ; preds = %init_mvqs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %restore_channels_info.exit.i

for.body.lr.ph.i31.i:                             ; preds = %init_mvqs.exit.i.i
  %vqs.i30.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 3
  br label %for.body.i32.i

for.body.i32.i:                                   ; preds = %for.inc.i.i.for.body.i32.i_crit_edge, %for.body.lr.ph.i31.i
  %i.035.i.i = phi i32 [ 0, %for.body.lr.ph.i31.i ], [ %inc.i34.i, %for.inc.i.i.for.body.i32.i_crit_edge ]
  %90 = ptrtoint ptr %vqs.i30.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %vqs.i30.i, align 4
  %restore.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %91, i32 %i.035.i.i, i32 18, i32 7
  %92 = ptrtoint ptr %restore.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %restore.i.i, align 1, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i.i = icmp eq i8 %93, 0
  br i1 %tobool.not.i.i, label %for.body.i32.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i32.i.for.inc.i.i_crit_edge:             ; preds = %for.body.i32.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i32.i
  call void @__sanitizer_cov_trace_pc() #19
  %ri1.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %91, i32 %i.035.i.i, i32 18
  %arrayidx.i33.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %91, i32 %i.035.i.i
  %avail_index.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %91, i32 %i.035.i.i, i32 18, i32 4
  %94 = ptrtoint ptr %avail_index.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %avail_index.i.i, align 8
  %avail_idx.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %91, i32 %i.035.i.i, i32 15
  %96 = ptrtoint ptr %avail_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %avail_idx.i.i, align 4
  %used_index.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %91, i32 %i.035.i.i, i32 18, i32 5
  %97 = ptrtoint ptr %used_index.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %used_index.i.i, align 2
  %used_idx.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %91, i32 %i.035.i.i, i32 16
  %99 = ptrtoint ptr %used_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %used_idx.i.i, align 2
  %ready.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %91, i32 %i.035.i.i, i32 18, i32 6
  %100 = ptrtoint ptr %ready.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %ready.i.i, align 4, !range !364
  %102 = ptrtoint ptr %arrayidx.i33.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %arrayidx.i33.i, align 8
  %103 = ptrtoint ptr %ri1.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ri1.i.i, align 8
  %num_ent4.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %91, i32 %i.035.i.i, i32 4
  %105 = ptrtoint ptr %num_ent4.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %num_ent4.i.i, align 8
  %desc_addr.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %91, i32 %i.035.i.i, i32 18, i32 1
  %106 = ptrtoint ptr %desc_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %desc_addr.i.i, align 8
  %desc_addr5.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %91, i32 %i.035.i.i, i32 1
  %108 = ptrtoint ptr %desc_addr5.i.i to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %107, ptr %desc_addr5.i.i, align 8
  %device_addr.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %91, i32 %i.035.i.i, i32 18, i32 2
  %109 = ptrtoint ptr %device_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %device_addr.i.i, align 8
  %device_addr6.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %91, i32 %i.035.i.i, i32 2
  %111 = ptrtoint ptr %device_addr6.i.i to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %110, ptr %device_addr6.i.i, align 8
  %driver_addr.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %91, i32 %i.035.i.i, i32 18, i32 3
  %112 = ptrtoint ptr %driver_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %driver_addr.i.i, align 8
  %driver_addr7.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %91, i32 %i.035.i.i, i32 3
  %114 = ptrtoint ptr %driver_addr7.i.i to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %113, ptr %driver_addr7.i.i, align 8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i32.i.for.inc.i.i_crit_edge
  %inc.i34.i = add nuw i32 %i.035.i.i, 1
  %115 = ptrtoint ptr %max_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %max_vqs.i.i, align 4
  %cmp.i35.i = icmp ult i32 %inc.i34.i, %116
  br i1 %cmp.i35.i, label %for.inc.i.i.for.body.i32.i_crit_edge, label %for.inc.i.i.restore_channels_info.exit.i_crit_edge

for.inc.i.i.restore_channels_info.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %restore_channels_info.exit.i

for.inc.i.i.for.body.i32.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i32.i

restore_channels_info.exit.i:                     ; preds = %for.inc.i.i.restore_channels_info.exit.i_crit_edge, %init_mvqs.exit.i.i.restore_channels_info.exit.i_crit_edge
  %call8.i = call fastcc i32 @setup_driver(ptr noundef %vdev) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %restore_channels_info.exit.i.cleanup_crit_edge, label %err_setup.i

restore_channels_info.exit.i.cleanup_crit_edge:   ; preds = %restore_channels_info.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

err_setup.i:                                      ; preds = %restore_channels_info.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @mlx5_vdpa_destroy_mr(ptr noundef %vdev) #17
  br label %cleanup

cleanup:                                          ; preds = %err_setup.i, %restore_channels_info.exit.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %save_channels_info.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end4.i.cleanup_crit_edge ], [ 0, %restore_channels_info.exit.i.cleanup_crit_edge ], [ %call1.i, %save_channels_info.exit.i.cleanup_crit_edge ], [ %call8.i, %err_setup.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %change_map) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_vdpa_free(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %valid.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %valid.i, align 4, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.free_resources.exit_crit_edge, label %if.end.i

entry.free_resources.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_resources.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %res.i.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 1
  %2 = ptrtoint ptr %res.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %res.i.i, align 8
  tail call void @mlx5_vdpa_destroy_tis(ptr noundef %vdev, i32 noundef %3) #17
  %tdn.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %tdn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tdn.i, align 4
  tail call void @mlx5_vdpa_dealloc_transport_domain(ptr noundef %vdev, i32 noundef %5) #17
  %6 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %valid.i, align 4
  br label %free_resources.exit

free_resources.exit:                              ; preds = %if.end.i, %entry.free_resources.exit_crit_edge
  tail call void @mlx5_vdpa_destroy_mr(ptr noundef %vdev) #17
  %config = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 2
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %config, align 4
  %add.ptr.i = getelementptr %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 2, i32 0, i32 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %10 to i32
  %or.i = or i32 %8, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %free_resources.exit.if.end_crit_edge, label %if.then

free_resources.exit.if.end_crit_edge:             ; preds = %free_resources.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %free_resources.exit
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %vdev, i32 0, i32 1
  %11 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev, align 8
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %is_virtfn.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 49
  %15 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 5)
  %bf.load.i = load i40, ptr %is_virtfn.i, align 1
  %16 = and i40 %bf.load.i, 65536
  %tobool.not.i19 = icmp eq i40 %16, 0
  br i1 %tobool.not.i19, label %if.then.pci_physfn.exit_crit_edge, label %if.then.i

if.then.pci_physfn.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %pci_physfn.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %17 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 66
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  br label %pci_physfn.exit

pci_physfn.exit:                                  ; preds = %if.then.i, %if.then.pci_physfn.exit_crit_edge
  %dev.addr.0.i = phi ptr [ %19, %if.then.i ], [ %14, %if.then.pci_physfn.exit_crit_edge ]
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i, i32 0, i32 44, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i, align 4
  %call9 = tail call i32 @mlx5_mpfs_del_mac(ptr noundef %21, ptr noundef %config) #17
  br label %if.end

if.end:                                           ; preds = %pci_physfn.exit, %free_resources.exit.if.end_crit_edge
  tail call void @mlx5_vdpa_free_resources(ptr noundef %vdev) #17
  %reslock = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 5
  tail call void @mutex_destroy(ptr noundef %reslock) #17
  %event_cbs = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 4
  %22 = ptrtoint ptr %event_cbs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %event_cbs, align 8
  tail call void @kfree(ptr noundef %23) #17
  %vqs = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %vdev, i32 0, i32 3
  %24 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vqs, align 4
  tail call void @kfree(ptr noundef %25) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_cvq_kick_handler(ptr noundef %work) #2 align 64 {
entry:
  %mq.i = alloca %struct.virtio_net_ctrl_mq, align 2
  %mac.i = alloca [6 x i8], align 1
  %status = alloca i8, align 1
  %ctrl = alloca %struct.virtio_net_ctrl_hdr, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #17
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %status, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctrl) #17
  %1 = ptrtoint ptr %ctrl to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %ctrl, align 1, !annotation !363
  %2 = getelementptr inbounds %struct.virtio_net_ctrl_hdr, ptr %ctrl, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !363
  %mvdev1 = getelementptr inbounds %struct.mlx5_vdpa_wq_ent, ptr %work, i32 0, i32 1
  %4 = ptrtoint ptr %mvdev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mvdev1, align 4
  %actual_features = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %actual_features to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %actual_features, align 8
  %and = and i64 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %entry
  %ready = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %5, i32 0, i32 10, i32 3
  %8 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ready, align 8, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %if.end.out_crit_edge, label %while.cond.preheader

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

while.cond.preheader:                             ; preds = %if.end
  %vring = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %5, i32 0, i32 10, i32 2
  %riov = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %5, i32 0, i32 10, i32 8
  %wiov = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %5, i32 0, i32 10, i32 9
  %head = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %5, i32 0, i32 10, i32 10
  %call86 = call i32 @vringh_getdesc_iotlb(ptr noundef %vring, ptr noundef %riov, ptr noundef %wiov, ptr noundef %head, i32 noundef 2592) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 1
  br i1 %cmp87, label %while.cond.preheader.out_crit_edge, label %if.end11.lr.ph

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end11.lr.ph:                                   ; preds = %while.cond.preheader
  %max_vqs.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %5, i32 0, i32 6
  %cur_num_vqs.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %5, i32 0, i32 11
  %vqs14.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %5, i32 0, i32 3
  %mdev.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %5, i32 0, i32 1
  %config.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %5, i32 0, i32 2
  %add.ptr.i.i = getelementptr %struct.mlx5_vdpa_net, ptr %5, i32 0, i32 2, i32 0, i32 4
  %max_num.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %5, i32 0, i32 10, i32 8, i32 4
  %max_num.i68 = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %5, i32 0, i32 10, i32 9, i32 4
  %notify.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %5, i32 0, i32 10, i32 2, i32 9
  br label %if.end11

if.end11:                                         ; preds = %if.end38.if.end11_crit_edge, %if.end11.lr.ph
  %call14 = call i32 @vringh_iov_pull_iotlb(ptr noundef %vring, ptr noundef %riov, ptr noundef nonnull %ctrl, i32 noundef 2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 2
  br i1 %cmp15.not, label %if.end17, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end17:                                         ; preds = %if.end11
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctrl, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.211)
  switch i8 %11, label %if.end17.do.end_crit_edge [
    i8 1, label %sw.bb
    i8 4, label %sw.bb19
  ]

if.end17.do.end_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

sw.bb:                                            ; preds = %if.end17
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac.i) #17
  %15 = call ptr @memset(ptr %mac.i, i32 255, i32 6)
  %16 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdev.i, align 8
  %pdev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i, align 8
  %is_virtfn.i.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 49
  %20 = ptrtoint ptr %is_virtfn.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 5)
  %bf.load.i.i = load i40, ptr %is_virtfn.i.i, align 1
  %21 = and i40 %bf.load.i.i, 65536
  %tobool.not.i.i = icmp eq i40 %21, 0
  br i1 %tobool.not.i.i, label %sw.bb.pci_physfn.exit.i_crit_edge, label %if.then.i.i

sw.bb.pci_physfn.exit.i_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %pci_physfn.exit.i

if.then.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %22 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 66
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  br label %pci_physfn.exit.i

pci_physfn.exit.i:                                ; preds = %if.then.i.i, %sw.bb.pci_physfn.exit.i_crit_edge
  %dev.addr.0.i.i = phi ptr [ %24, %if.then.i.i ], [ %19, %sw.bb.pci_physfn.exit.i_crit_edge ]
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i, i32 0, i32 44, i32 8
  %25 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cond.i = icmp eq i8 %14, 1
  br i1 %cond.i, label %sw.bb.i, label %pci_physfn.exit.i.handle_ctrl_mac.exit_crit_edge

pci_physfn.exit.i.handle_ctrl_mac.exit_crit_edge: ; preds = %pci_physfn.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %handle_ctrl_mac.exit

sw.bb.i:                                          ; preds = %pci_physfn.exit.i
  %call3.i = call i32 @vringh_iov_pull_iotlb(ptr noundef %vring, ptr noundef %riov, ptr noundef nonnull %mac.i, i32 noundef 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call3.i)
  %cmp.not.i = icmp eq i32 %call3.i, 6
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.i.handle_ctrl_mac.exit_crit_edge

sw.bb.i.handle_ctrl_mac.exit_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %handle_ctrl_mac.exit

if.end.i:                                         ; preds = %sw.bb.i
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(6) %config.i, ptr noundef nonnull dereferenceable(6) %mac.i, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.end.i.handle_ctrl_mac.exit_crit_edge, label %if.end10.i

if.end.i.handle_ctrl_mac.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %handle_ctrl_mac.exit

if.end10.i:                                       ; preds = %if.end.i
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %config.i, align 4
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %30 to i32
  %or.i.i = or i32 %28, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.end10.i.if.end28.i_crit_edge, label %if.then15.i

if.end10.i.if.end28.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28.i

if.then15.i:                                      ; preds = %if.end10.i
  %call19.i = call i32 @mlx5_mpfs_del_mac(ptr noundef %26, ptr noundef %config.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.then15.i.if.end28.i_crit_edge, label %do.end.i

if.then15.i.if.end28.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28.i

do.end.i:                                         ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #19
  %31 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mdev.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %35 = call i32 @llvm.read_register.i32(metadata !353) #17
  %and.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 68
  %39 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pid.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 1495, i32 noundef %40, ptr noundef %config.i) #21
  br label %handle_ctrl_mac.exit

if.end28.i:                                       ; preds = %if.then15.i.if.end28.i_crit_edge, %if.end10.i.if.end28.i_crit_edge
  %call30.i = call i32 @mlx5_mpfs_add_mac(ptr noundef %26, ptr noundef nonnull %mac.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end42.i, label %do.end35.i

do.end35.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #19
  %41 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mdev.i, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %45 = call i32 @llvm.read_register.i32(metadata !353) #17
  %and.i57.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i57.i to ptr
  %task39.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task39.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task39.i, align 8
  %pid40.i = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 68
  %49 = ptrtoint ptr %pid40.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pid40.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef 1502, i32 noundef %50, ptr noundef nonnull %mac.i) #21
  br label %handle_ctrl_mac.exit

if.end42.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #19
  %51 = call ptr @memcpy(ptr %config.i, ptr %mac.i, i32 6)
  br label %handle_ctrl_mac.exit

handle_ctrl_mac.exit:                             ; preds = %if.end42.i, %do.end35.i, %do.end.i, %if.end.i.handle_ctrl_mac.exit_crit_edge, %sw.bb.i.handle_ctrl_mac.exit_crit_edge, %pci_physfn.exit.i.handle_ctrl_mac.exit_crit_edge
  %status.0.i = phi i8 [ 1, %sw.bb.i.handle_ctrl_mac.exit_crit_edge ], [ 1, %do.end35.i ], [ 0, %if.end42.i ], [ 1, %do.end.i ], [ 1, %pci_physfn.exit.i.handle_ctrl_mac.exit_crit_edge ], [ 0, %if.end.i.handle_ctrl_mac.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i) #17
  %52 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %status.0.i, ptr %status, align 1
  br label %do.end

sw.bb19:                                          ; preds = %if.end17
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mq.i) #17
  %55 = ptrtoint ptr %mq.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 -1, ptr %mq.i, align 2, !annotation !363
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cond.i57 = icmp eq i8 %54, 0
  br i1 %cond.i57, label %sw.bb.i59, label %sw.bb19.handle_ctrl_mq.exit_crit_edge

sw.bb19.handle_ctrl_mq.exit_crit_edge:            ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #19
  br label %handle_ctrl_mq.exit

sw.bb.i59:                                        ; preds = %sw.bb19
  %56 = ptrtoint ptr %actual_features to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %actual_features, align 8
  %and.i = and i64 %57, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i58 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i58, label %sw.bb.i59.handle_ctrl_mq.exit_crit_edge, label %if.end.i63

sw.bb.i59.handle_ctrl_mq.exit_crit_edge:          ; preds = %sw.bb.i59
  call void @__sanitizer_cov_trace_pc() #19
  br label %handle_ctrl_mq.exit

if.end.i63:                                       ; preds = %sw.bb.i59
  %call.i = call i32 @vringh_iov_pull_iotlb(ptr noundef %vring, ptr noundef %riov, ptr noundef nonnull %mq.i, i32 noundef 2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i62 = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i62, label %if.end4.i, label %if.end.i63.handle_ctrl_mq.exit_crit_edge

if.end.i63.handle_ctrl_mq.exit_crit_edge:         ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #19
  br label %handle_ctrl_mq.exit

if.end4.i:                                        ; preds = %if.end.i63
  %58 = ptrtoint ptr %mq.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %mq.i, align 2
  %60 = ptrtoint ptr %actual_features to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %actual_features, align 8
  %and.i.i.i = and i64 %61, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  %62 = call i16 @llvm.bswap.i16(i16 %59) #17
  %retval.0.i.i.i = select i1 %tobool.i.not.i.i, i16 %59, i16 %62
  %conv6.i = zext i16 %retval.0.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i.i.i)
  %cmp7.i = icmp eq i16 %retval.0.i.i.i, 0
  br i1 %cmp7.i, label %if.end4.i.handle_ctrl_mq.exit_crit_edge, label %lor.lhs.false.i

if.end4.i.handle_ctrl_mq.exit_crit_edge:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %handle_ctrl_mq.exit

lor.lhs.false.i:                                  ; preds = %if.end4.i
  %63 = ptrtoint ptr %max_vqs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max_vqs.i, align 4
  %div.i.i = sdiv i32 %64, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %conv6.i)
  %cmp11.i = icmp ult i32 %div.i.i, %conv6.i
  br i1 %cmp11.i, label %lor.lhs.false.i.handle_ctrl_mq.exit_crit_edge, label %if.end14.i

lor.lhs.false.i.handle_ctrl_mq.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %handle_ctrl_mq.exit

if.end14.i:                                       ; preds = %lor.lhs.false.i
  %65 = ptrtoint ptr %cur_num_vqs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cur_num_vqs.i, align 4
  %mul.i = shl nuw nsw i32 %conv6.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %mul.i)
  %cmp16.i = icmp eq i32 %66, %mul.i
  br i1 %cmp16.i, label %if.end14.i.handle_ctrl_mq.exit_crit_edge, label %if.end19.i

if.end14.i.handle_ctrl_mq.exit_crit_edge:         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %handle_ctrl_mq.exit

if.end19.i:                                       ; preds = %if.end14.i
  %div77.i = lshr i32 %66, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div77.i, i32 %conv6.i)
  %cmp.i = icmp ugt i32 %div77.i, %conv6.i
  br i1 %cmp.i, label %if.then.i81, label %if.else.i

if.then.i81:                                      ; preds = %if.end19.i
  %call.i79 = call fastcc i32 @modify_rqt(ptr noundef %5, i32 noundef %mul.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool.not.i80 = icmp eq i32 %call.i79, 0
  br i1 %tobool.not.i80, label %if.end.i82, label %if.then.i81.change_num_qps.exit_crit_edge

if.then.i81.change_num_qps.exit_crit_edge:        ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #19
  br label %change_num_qps.exit

if.end.i82:                                       ; preds = %if.then.i81
  %67 = ptrtoint ptr %cur_num_vqs.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cur_num_vqs.i, align 4
  %i.085.i = add i32 %68, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.085.i, i32 %mul.i)
  %cmp4.not86.i = icmp slt i32 %i.085.i, %mul.i
  br i1 %cmp4.not86.i, label %if.end.i82.cleanup.sink.split.i_crit_edge, label %if.end.i82.for.body.i_crit_edge

if.end.i82.for.body.i_crit_edge:                  ; preds = %if.end.i82
  br label %for.body.i

if.end.i82.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i82.for.body.i_crit_edge
  %i.087.i = phi i32 [ %i.0.i, %for.body.i.for.body.i_crit_edge ], [ %i.085.i, %if.end.i82.for.body.i_crit_edge ]
  %69 = ptrtoint ptr %vqs14.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %vqs14.i, align 4
  %arrayidx.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %70, i32 %i.087.i
  call fastcc void @teardown_vq(ptr noundef %5, ptr noundef %arrayidx.i) #17
  %i.0.i = add i32 %i.087.i, -1
  %cmp4.not.i = icmp slt i32 %i.0.i, %mul.i
  br i1 %cmp4.not.i, label %for.body.i.cleanup.sink.split.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body.i.cleanup.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end19.i
  %71 = ptrtoint ptr %cur_num_vqs.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %mul.i, ptr %cur_num_vqs.i, align 4
  %mul9.i = and i32 %66, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul9.i, i32 %mul.i)
  %cmp1280.i = icmp slt i32 %mul9.i, %mul.i
  br i1 %cmp1280.i, label %if.else.i.for.body13.i_crit_edge, label %if.else.i.for.end21.i_crit_edge

if.else.i.for.end21.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end21.i

if.else.i.for.body13.i_crit_edge:                 ; preds = %if.else.i
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.inc20.i.for.body13.i_crit_edge, %if.else.i.for.body13.i_crit_edge
  %i.181.i = phi i32 [ %inc.i, %for.inc20.i.for.body13.i_crit_edge ], [ %mul9.i, %if.else.i.for.body13.i_crit_edge ]
  %72 = ptrtoint ptr %vqs14.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %vqs14.i, align 4
  %arrayidx15.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %73, i32 %i.181.i
  %call16.i = call fastcc i32 @setup_vq(ptr noundef %5, ptr noundef %arrayidx15.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %for.inc20.i, label %for.body13.i.clean_added.i_crit_edge

for.body13.i.clean_added.i_crit_edge:             ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %clean_added.i

for.inc20.i:                                      ; preds = %for.body13.i
  %inc.i = add i32 %i.181.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %mul.i
  br i1 %exitcond.not.i, label %for.inc20.i.for.end21.i_crit_edge, label %for.inc20.i.for.body13.i_crit_edge

for.inc20.i.for.body13.i_crit_edge:               ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body13.i

for.inc20.i.for.end21.i_crit_edge:                ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end21.i

for.end21.i:                                      ; preds = %for.inc20.i.for.end21.i_crit_edge, %if.else.i.for.end21.i_crit_edge
  %i.1.lcssa.i = phi i32 [ %mul9.i, %if.else.i.for.end21.i_crit_edge ], [ %mul.i, %for.inc20.i.for.end21.i_crit_edge ]
  %call23.i = call fastcc i32 @modify_rqt(ptr noundef %5, i32 noundef %mul.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %for.end21.i.change_num_qps.exit_crit_edge, label %for.end21.i.clean_added.i_crit_edge

for.end21.i.clean_added.i_crit_edge:              ; preds = %for.end21.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %clean_added.i

for.end21.i.change_num_qps.exit_crit_edge:        ; preds = %for.end21.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %change_num_qps.exit

clean_added.i:                                    ; preds = %for.end21.i.clean_added.i_crit_edge, %for.body13.i.clean_added.i_crit_edge
  %i.179.i = phi i32 [ %i.1.lcssa.i, %for.end21.i.clean_added.i_crit_edge ], [ %i.181.i, %for.body13.i.clean_added.i_crit_edge ]
  %err.0.i = phi i32 [ %call23.i, %for.end21.i.clean_added.i_crit_edge ], [ %call16.i, %for.body13.i.clean_added.i_crit_edge ]
  %i.282.i = add i32 %i.179.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.282.i, i32 %mul9.i)
  %cmp31.not83.i = icmp slt i32 %i.282.i, %mul9.i
  br i1 %cmp31.not83.i, label %clean_added.i.cleanup.sink.split.i_crit_edge, label %clean_added.i.for.body32.i_crit_edge

clean_added.i.for.body32.i_crit_edge:             ; preds = %clean_added.i
  br label %for.body32.i

clean_added.i.cleanup.sink.split.i_crit_edge:     ; preds = %clean_added.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.i

for.body32.i:                                     ; preds = %for.body32.i.for.body32.i_crit_edge, %clean_added.i.for.body32.i_crit_edge
  %i.284.i = phi i32 [ %i.2.i, %for.body32.i.for.body32.i_crit_edge ], [ %i.282.i, %clean_added.i.for.body32.i_crit_edge ]
  %74 = ptrtoint ptr %vqs14.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vqs14.i, align 4
  %arrayidx34.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %75, i32 %i.284.i
  call fastcc void @teardown_vq(ptr noundef %5, ptr noundef %arrayidx34.i) #17
  %i.2.i = add i32 %i.284.i, -1
  %cmp31.not.i = icmp slt i32 %i.2.i, %mul9.i
  br i1 %cmp31.not.i, label %for.body32.i.cleanup.sink.split.i_crit_edge, label %for.body32.i.for.body32.i_crit_edge

for.body32.i.for.body32.i_crit_edge:              ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body32.i

for.body32.i.cleanup.sink.split.i_crit_edge:      ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.body32.i.cleanup.sink.split.i_crit_edge, %clean_added.i.cleanup.sink.split.i_crit_edge, %for.body.i.cleanup.sink.split.i_crit_edge, %if.end.i82.cleanup.sink.split.i_crit_edge
  %mul.sink.i = phi i32 [ %mul.i, %if.end.i82.cleanup.sink.split.i_crit_edge ], [ %mul9.i, %clean_added.i.cleanup.sink.split.i_crit_edge ], [ %mul.i, %for.body.i.cleanup.sink.split.i_crit_edge ], [ %mul9.i, %for.body32.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ 0, %if.end.i82.cleanup.sink.split.i_crit_edge ], [ %err.0.i, %clean_added.i.cleanup.sink.split.i_crit_edge ], [ 0, %for.body.i.cleanup.sink.split.i_crit_edge ], [ %err.0.i, %for.body32.i.cleanup.sink.split.i_crit_edge ]
  %76 = ptrtoint ptr %cur_num_vqs.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %mul.sink.i, ptr %cur_num_vqs.i, align 4
  br label %change_num_qps.exit

change_num_qps.exit:                              ; preds = %cleanup.sink.split.i, %for.end21.i.change_num_qps.exit_crit_edge, %if.then.i81.change_num_qps.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i79, %if.then.i81.change_num_qps.exit_crit_edge ], [ 0, %for.end21.i.change_num_qps.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool22.not.i = icmp ne i32 %retval.0.i, 0
  %spec.select.i = zext i1 %tobool22.not.i to i8
  br label %handle_ctrl_mq.exit

handle_ctrl_mq.exit:                              ; preds = %change_num_qps.exit, %if.end14.i.handle_ctrl_mq.exit_crit_edge, %lor.lhs.false.i.handle_ctrl_mq.exit_crit_edge, %if.end4.i.handle_ctrl_mq.exit_crit_edge, %if.end.i63.handle_ctrl_mq.exit_crit_edge, %sw.bb.i59.handle_ctrl_mq.exit_crit_edge, %sw.bb19.handle_ctrl_mq.exit_crit_edge
  %status.0.i64 = phi i8 [ 1, %if.end.i63.handle_ctrl_mq.exit_crit_edge ], [ 1, %if.end4.i.handle_ctrl_mq.exit_crit_edge ], [ 1, %lor.lhs.false.i.handle_ctrl_mq.exit_crit_edge ], [ 1, %sw.bb.i59.handle_ctrl_mq.exit_crit_edge ], [ 1, %sw.bb19.handle_ctrl_mq.exit_crit_edge ], [ 0, %if.end14.i.handle_ctrl_mq.exit_crit_edge ], [ %spec.select.i, %change_num_qps.exit ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mq.i) #17
  %77 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %status.0.i64, ptr %status, align 1
  br label %do.end

do.end:                                           ; preds = %handle_ctrl_mq.exit, %handle_ctrl_mac.exit, %if.end17.do.end_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !368
  %call27 = call i32 @vringh_iov_push_iotlb(ptr noundef %vring, ptr noundef %wiov, ptr noundef nonnull %status, i32 noundef 1) #17
  %78 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %head, align 8
  %call30 = call i32 @vringh_complete_iotlb(ptr noundef %vring, i16 noundef zeroext %79, i32 noundef %call27) #17
  %80 = ptrtoint ptr %max_num.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %max_num.i, align 4
  %and.i65 = and i32 %81, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i65)
  %tobool.not.i66 = icmp eq i32 %and.i65, 0
  br i1 %tobool.not.i66, label %do.end.vringh_kiov_cleanup.exit_crit_edge, label %if.then.i

do.end.vringh_kiov_cleanup.exit_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %vringh_kiov_cleanup.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %82 = ptrtoint ptr %riov to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %riov, align 4
  call void @kfree(ptr noundef %83) #17
  br label %vringh_kiov_cleanup.exit

vringh_kiov_cleanup.exit:                         ; preds = %if.then.i, %do.end.vringh_kiov_cleanup.exit_crit_edge
  %84 = call ptr @memset(ptr %riov, i32 0, i32 20)
  %85 = ptrtoint ptr %max_num.i68 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %max_num.i68, align 4
  %and.i69 = and i32 %86, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i69)
  %tobool.not.i70 = icmp eq i32 %and.i69, 0
  br i1 %tobool.not.i70, label %vringh_kiov_cleanup.exit.vringh_kiov_cleanup.exit73_crit_edge, label %if.then.i71

vringh_kiov_cleanup.exit.vringh_kiov_cleanup.exit73_crit_edge: ; preds = %vringh_kiov_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %vringh_kiov_cleanup.exit73

if.then.i71:                                      ; preds = %vringh_kiov_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #19
  %87 = ptrtoint ptr %wiov to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %wiov, align 4
  call void @kfree(ptr noundef %88) #17
  br label %vringh_kiov_cleanup.exit73

vringh_kiov_cleanup.exit73:                       ; preds = %if.then.i71, %vringh_kiov_cleanup.exit.vringh_kiov_cleanup.exit73_crit_edge
  %89 = call ptr @memset(ptr %wiov, i32 0, i32 20)
  %call34 = call i32 @vringh_need_notify_iotlb(ptr noundef %vring) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %vringh_kiov_cleanup.exit73.if.end38_crit_edge, label %if.then36

vringh_kiov_cleanup.exit73.if.end38_crit_edge:    ; preds = %vringh_kiov_cleanup.exit73
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38

if.then36:                                        ; preds = %vringh_kiov_cleanup.exit73
  %90 = ptrtoint ptr %notify.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %notify.i, align 4
  %tobool.not.i74 = icmp eq ptr %91, null
  br i1 %tobool.not.i74, label %if.then36.if.end38_crit_edge, label %if.then.i75

if.then36.if.end38_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38

if.then.i75:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #19
  call void %91(ptr noundef %vring) #17
  br label %if.end38

if.end38:                                         ; preds = %if.then.i75, %if.then36.if.end38_crit_edge, %vringh_kiov_cleanup.exit73.if.end38_crit_edge
  %call = call i32 @vringh_getdesc_iotlb(ptr noundef %vring, ptr noundef %riov, ptr noundef %wiov, ptr noundef %head, i32 noundef 2592) #17
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.end38.out_crit_edge, label %if.end38.if.end11_crit_edge

if.end38.if.end11_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

out:                                              ; preds = %if.end38.out_crit_edge, %if.end11.out_crit_edge, %while.cond.preheader.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  call void @kfree(ptr noundef %work) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vringh_getdesc_iotlb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vringh_iov_pull_iotlb(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vringh_iov_push_iotlb(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vringh_complete_iotlb(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vringh_need_notify_iotlb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @modify_rqt(ptr noundef %ndev, i32 noundef %num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_num_vqs = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %ndev, i32 0, i32 11
  %0 = ptrtoint ptr %cur_num_vqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_num_vqs, align 4
  %div144 = lshr i32 %1, 1
  %sub.i145 = add nsw i32 %div144, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i145)
  %tobool.not.i.i.i = icmp eq i32 %sub.i145, 0
  %2 = tail call i32 @llvm.ctlz.i32(i32 %sub.i145, i1 true) #17, !range !369
  %sub.i.i.i = sub nuw nsw i32 32, %2
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 1
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %6, i32 28
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 4
  %shr = lshr i32 %8, 8
  %and = and i32 %shr, 31
  %shl31 = shl nuw i32 1, %and
  %9 = tail call i32 @llvm.smin.i32(i32 %shl.i, i32 %shl31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp38 = icmp slt i32 %9, 1
  br i1 %cmp38, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %9, 2
  %add40 = add i32 %mul, 272
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add40, i32 noundef 3520) #22
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %uid = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %uid, align 8
  %conv45 = zext i16 %11 to i32
  %12 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call9.i.i, align 128
  %and48 = and i32 %13, -65536
  %or = or i32 %and48, %conv45
  store i32 %or, ptr %call9.i.i, align 128
  %add.ptr62 = getelementptr i64, ptr %call9.i.i, i32 2
  %14 = ptrtoint ptr %add.ptr62 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1, ptr %add.ptr62, align 16
  %add.ptr73 = getelementptr i8, ptr %call9.i.i, i32 52
  %15 = ptrtoint ptr %add.ptr73 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr73, align 4
  %and74 = and i32 %16, -117440513
  %or77 = or i32 %and74, 16777216
  store i32 %or77, ptr %add.ptr73, align 4
  %add.ptr81 = getelementptr i8, ptr %call9.i.i, i32 272
  %vqs = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %ndev, i32 0, i32 3
  %17 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vqs, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %j.0152 = phi i32 [ 0, %for.body.lr.ph ], [ %add86, %for.body.for.body_crit_edge ]
  %i.0151 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %rem = srem i32 %j.0152, %num
  %virtq_id = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %18, i32 %rem, i32 13
  %19 = ptrtoint ptr %virtq_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %virtq_id, align 4
  %arrayidx85 = getelementptr i32, ptr %add.ptr81, i32 %i.0151
  %21 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx85, align 4
  %inc = add nuw nsw i32 %i.0151, 1
  %add86 = add nuw i32 %j.0152, 2
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %do.body87, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

do.body87:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr92 = getelementptr i8, ptr %call9.i.i, i32 56
  %22 = ptrtoint ptr %add.ptr92 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr92, align 8
  %and93 = and i32 %23, -65536
  %and94 = and i32 %9, 65535
  %or96 = or i32 %and93, %and94
  store i32 %or96, ptr %add.ptr92, align 8
  %rqtn = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %ndev, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %rqtn to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rqtn, align 4
  %call102 = tail call i32 @mlx5_vdpa_modify_rqt(ptr noundef %ndev, ptr noundef nonnull %call9.i.i, i32 noundef %add40, i32 noundef %25) #17
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %do.body87, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call102, %do.body87 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @teardown_vq(ptr nocapture noundef readonly %ndev, ptr noundef %mvq) unnamed_addr #2 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %initialized = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 11
  %0 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %initialized, align 4, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  tail call fastcc void @suspend_vq(ptr noundef %ndev, ptr noundef %mvq)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #17
  %2 = getelementptr inbounds i8, ptr %in.i, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #17
  %4 = call ptr @memset(ptr %out.i, i32 0, i32 16)
  %virtq_id.i = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 13
  %5 = ptrtoint ptr %virtq_id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %virtq_id.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %7 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %add.ptr13.i, align 4
  %uid.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %uid.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %uid.i, align 8
  %conv.i = zext i16 %9 to i32
  %or32.i = or i32 %conv.i, 167968768
  %10 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or32.i, ptr %in.i, align 4
  %add.ptr43.i = getelementptr inbounds i32, ptr %in.i, i32 1
  %11 = ptrtoint ptr %add.ptr43.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 13, ptr %add.ptr43.i, align 4
  %mdev.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 1
  %12 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdev.i, align 8
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %13, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %out.i, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end57.i

do.end57.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdev.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %18 = call i32 @llvm.read_register.i32(metadata !353) #17
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid.i, align 8
  %24 = ptrtoint ptr %virtq_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %virtq_id.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 907, i32 noundef %23, i32 noundef %25) #21
  br label %destroy_virtqueue.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @umems_destroy(ptr noundef %ndev, ptr noundef %mvq) #17
  br label %destroy_virtqueue.exit

destroy_virtqueue.exit:                           ; preds = %if.end.i, %do.end57.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #17
  %vqqp = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 7
  call fastcc void @qp_destroy(ptr noundef %ndev, ptr noundef %vqqp)
  %fwqp = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 6
  call fastcc void @qp_destroy(ptr noundef %ndev, ptr noundef %fwqp)
  %index = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 12
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index, align 8
  %vqs.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %ndev, i32 0, i32 3
  %28 = ptrtoint ptr %vqs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vqs.i, align 4
  %idxprom.i = and i32 %27, 65535
  %30 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdev.i, align 8
  %cq.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %29, i32 %idxprom.i, i32 5
  %call.i12 = call i32 @mlx5_core_destroy_cq(ptr noundef %31, ptr noundef %cq.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool.not.i13 = icmp eq i32 %call.i12, 0
  %32 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdev.i, align 8
  br i1 %tobool.not.i13, label %if.end.i17, label %do.end.i

do.end.i:                                         ; preds = %destroy_virtqueue.exit
  call void @__sanitizer_cov_trace_pc() #19
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %36 = call i32 @llvm.read_register.i32(metadata !353) #17
  %and.i.i14 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i14 to ptr
  %task.i15 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i15 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i15, align 8
  %pid.i16 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 68
  %40 = ptrtoint ptr %pid.i16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pid.i16, align 8
  %42 = ptrtoint ptr %cq.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cq.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 654, i32 noundef %41, i32 noundef %43) #21
  br label %cq_destroy.exit

if.end.i17:                                       ; preds = %destroy_virtqueue.exit
  call void @__sanitizer_cov_trace_pc() #19
  %frag_buf.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %29, i32 %idxprom.i, i32 5, i32 1, i32 1
  call void @mlx5_frag_buf_free(ptr noundef %33, ptr noundef %frag_buf.i.i) #17
  %44 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mdev.i, align 8
  %db.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %29, i32 %idxprom.i, i32 5, i32 2
  call void @mlx5_db_free(ptr noundef %45, ptr noundef %db.i) #17
  br label %cq_destroy.exit

cq_destroy.exit:                                  ; preds = %if.end.i17, %do.end.i
  %46 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %initialized, align 4
  br label %return

return:                                           ; preds = %cq_destroy.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_vq(ptr nocapture noundef readonly %ndev, ptr noundef %mvq) unnamed_addr #2 align 64 {
entry:
  %out.i = alloca [4 x i32], align 4
  %eqn.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 12
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 8
  %num_ent = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 4
  %2 = ptrtoint ptr %num_ent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ent, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %initialized = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 11
  %4 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %initialized, align 4, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %vqs.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %ndev, i32 0, i32 3
  %6 = ptrtoint ptr %vqs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vqs.i, align 4
  %idxprom.i = and i32 %1, 65535
  %mdev1.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 1
  %8 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev1.i, align 8
  %uar.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %uar.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %uar.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #17
  %cq.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %7, i32 %idxprom.i, i32 5
  %14 = call ptr @memset(ptr %out.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eqn.i) #17
  %15 = ptrtoint ptr %eqn.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %eqn.i, align 4, !annotation !363
  %db.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %7, i32 %idxprom.i, i32 5, i32 2
  %call.i = tail call i32 @mlx5_db_alloc(ptr noundef %9, ptr noundef %db.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end3.cq_create.exit.thread_crit_edge

if.end3.cq_create.exit.thread_crit_edge:          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cq_create.exit.thread

if.end.i:                                         ; preds = %if.end3
  %16 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %db.i, align 4
  %set_ci_db.i = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq.i, i32 0, i32 2
  %18 = ptrtoint ptr %set_ci_db.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %set_ci_db.i, align 4
  %add.ptr.i = getelementptr i32, ptr %17, i32 1
  %arm_db.i = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq.i, i32 0, i32 3
  %19 = ptrtoint ptr %arm_db.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %arm_db.i, align 4
  %cqe_sz.i = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq.i, i32 0, i32 1
  %20 = ptrtoint ptr %cqe_sz.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 64, ptr %cqe_sz.i, align 4
  %frag_buf1.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %7, i32 %idxprom.i, i32 5, i32 1, i32 1
  %21 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdev1.i, align 8
  %mul.i.i = shl i32 %3, 6
  %numa_node.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %22, i32 0, i32 17, i32 17
  %23 = ptrtoint ptr %numa_node.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %numa_node.i.i, align 8
  %call.i.i = tail call i32 @mlx5_frag_buf_alloc_node(ptr noundef %22, i32 noundef %mul.i.i, ptr noundef %frag_buf1.i.i, i32 noundef %24) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end12.i, label %if.end.i.err_db.i_crit_edge

if.end.i.err_db.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_db.i

if.end12.i:                                       ; preds = %if.end.i
  %buf.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %7, i32 %idxprom.i, i32 5, i32 1
  %25 = ptrtoint ptr %frag_buf1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %frag_buf1.i.i, align 4
  %27 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %buf.i, align 4
  %log_stride2.i.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %buf.i, i32 0, i32 5
  %28 = ptrtoint ptr %log_stride2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 6, ptr %log_stride2.i.i.i.i, align 1
  %log_sz3.i.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %buf.i, i32 0, i32 4
  %29 = ptrtoint ptr %log_sz3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 6, ptr %log_sz3.i.i.i.i, align 4
  %sz_m1.i.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %buf.i, i32 0, i32 1
  %30 = ptrtoint ptr %sz_m1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 63, ptr %sz_m1.i.i.i.i, align 4
  %log_frag_strides.i.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %buf.i, i32 0, i32 6
  %31 = ptrtoint ptr %log_frag_strides.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 6, ptr %log_frag_strides.i.i.i.i, align 2
  %frag_sz_m1.i.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %buf.i, i32 0, i32 2
  %32 = ptrtoint ptr %frag_sz_m1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 63, ptr %frag_sz_m1.i.i.i.i, align 4
  %strides_offset14.i.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %buf.i, i32 0, i32 3
  %33 = ptrtoint ptr %strides_offset14.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %strides_offset14.i.i.i.i, align 2
  %cqe_size.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %7, i32 %idxprom.i, i32 5, i32 1, i32 2
  %34 = ptrtoint ptr %cqe_size.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 64, ptr %cqe_size.i.i, align 4
  %nent4.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %7, i32 %idxprom.i, i32 5, i32 1, i32 3
  %35 = ptrtoint ptr %nent4.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %3, ptr %nent4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3.i.i = icmp sgt i32 %3, 0
  br i1 %cmp3.i.i, label %for.body.lr.ph.i.i, label %if.end12.i.cq_frag_buf_init.exit.i_crit_edge

if.end12.i.cq_frag_buf_init.exit.i_crit_edge:     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cq_frag_buf_init.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end12.i
  %strides_offset.i.i.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %7, i32 %idxprom.i, i32 5, i32 1, i32 0, i32 3
  %log_frag_strides.i.i.i209.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %7, i32 %idxprom.i, i32 5, i32 1, i32 0, i32 6
  %frag_sz_m1.i.i.i210.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %7, i32 %idxprom.i, i32 5, i32 1, i32 0, i32 2
  %log_stride.i.i.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %7, i32 %idxprom.i, i32 5, i32 1, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.04.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %36 = ptrtoint ptr %strides_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %strides_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %37 to i32
  %add.i.i.i.i = add nuw i32 %i.04.i.i, %conv.i.i.i.i
  %38 = ptrtoint ptr %log_frag_strides.i.i.i209.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %log_frag_strides.i.i.i209.i, align 2
  %conv1.i.i.i.i = zext i8 %39 to i32
  %shr.i.i.i.i = lshr i32 %add.i.i.i.i, %conv1.i.i.i.i
  %40 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buf.i, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %41, i32 %shr.i.i.i.i
  %42 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %44 = ptrtoint ptr %frag_sz_m1.i.i.i210.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %frag_sz_m1.i.i.i210.i, align 4
  %conv2.i.i.i.i = zext i16 %45 to i32
  %and.i.i.i.i = and i32 %add.i.i.i.i, %conv2.i.i.i.i
  %46 = ptrtoint ptr %log_stride.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %log_stride.i.i.i.i, align 1
  %conv3.i.i.i.i = zext i8 %47 to i32
  %shl.i.i.i.i = shl i32 %and.i.i.i.i, %conv3.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %43, i32 %shl.i.i.i.i
  %op_own.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %add.ptr.i.i.i.i, i32 0, i32 23
  %48 = ptrtoint ptr %op_own.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -16, ptr %op_own.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.04.i.i, 1
  %49 = ptrtoint ptr %nent4.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nent4.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %50
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.cq_frag_buf_init.exit.i_crit_edge

for.body.i.i.cq_frag_buf_init.exit.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cq_frag_buf_init.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

cq_frag_buf_init.exit.i:                          ; preds = %for.body.i.i.cq_frag_buf_init.exit.i_crit_edge, %if.end12.i.cq_frag_buf_init.exit.i_crit_edge
  %npages.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %7, i32 %idxprom.i, i32 5, i32 1, i32 1, i32 1
  %51 = ptrtoint ptr %npages.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %npages.i, align 4
  %mul.i = shl i32 %52, 3
  %add.i = add i32 %mul.i, 272
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #22
  %tobool16.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool16.not.i, label %cq_frag_buf_init.exit.i.err_vzalloc.i_crit_edge, label %do.body.i

cq_frag_buf_init.exit.i.err_vzalloc.i_crit_edge:  ; preds = %cq_frag_buf_init.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_vzalloc.i

do.body.i:                                        ; preds = %cq_frag_buf_init.exit.i
  %uid.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 2, i32 4
  %53 = ptrtoint ptr %uid.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %uid.i, align 8
  %conv.i = zext i16 %54 to i32
  %55 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %call9.i.i.i, align 128
  %and.i = and i32 %56, -65536
  %or.i = or i32 %and.i, %conv.i
  store i32 %or.i, ptr %call9.i.i.i, align 128
  %add.ptr27.i = getelementptr i8, ptr %call9.i.i.i, i32 272
  tail call void @mlx5_fill_page_frag_array(ptr noundef %frag_buf1.i.i, ptr noundef %add.ptr27.i) #17
  %page_shift.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %7, i32 %idxprom.i, i32 5, i32 1, i32 1, i32 3
  %57 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %page_shift.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %call9.i.i.i, i32 40
  %59 = ptrtoint ptr %add.ptr39.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr39.i, align 8
  %and40.i = and i32 %60, -520093697
  %61 = add i8 %58, 20
  %62 = and i8 %61, 31
  %and41.i = zext i8 %62 to i32
  %shl42.i = shl nuw nsw i32 %and41.i, 24
  %or43.i = or i32 %shl42.i, %and40.i
  store i32 %or43.i, ptr %add.ptr39.i, align 8
  %call47.i = call i32 @mlx5_vector2eqn(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %eqn.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %cond.end60.i, label %do.body.i.err_vec.i_crit_edge

do.body.i.err_vec.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_vec.i

cond.end60.i:                                     ; preds = %do.body.i
  %63 = call i32 @llvm.ctlz.i32(i32 %3, i1 true) #17, !range !369
  %add.ptr65.i = getelementptr i8, ptr %call9.i.i.i, i32 28
  %64 = ptrtoint ptr %add.ptr65.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr65.i, align 4
  %and66.i = and i32 %65, -520093697
  %sub.i.op.i.i = shl nuw nsw i32 %63, 24
  %66 = or i32 %sub.i.op.i.i, %and66.i
  %or69.i = xor i32 %66, 520093696
  store i32 %or69.i, ptr %add.ptr65.i, align 4
  %67 = ptrtoint ptr %uar.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %uar.i, align 4
  %index.i = getelementptr inbounds %struct.mlx5_uars_page, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %index.i, align 4
  %and82.i = and i32 %or69.i, -16777216
  %and83.i = and i32 %70, 16777215
  %or85.i = or i32 %and83.i, %and82.i
  store i32 %or85.i, ptr %add.ptr65.i, align 4
  %71 = ptrtoint ptr %eqn.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %eqn.i, align 4
  %add.ptr94.i = getelementptr i8, ptr %call9.i.i.i, i32 36
  %73 = ptrtoint ptr %add.ptr94.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %add.ptr94.i, align 4
  %dma.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %7, i32 %idxprom.i, i32 5, i32 2, i32 2
  %74 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dma.i, align 4
  %conv111.i = zext i32 %75 to i64
  %add.ptr112.i = getelementptr i8, ptr %call9.i.i.i, i32 72
  %76 = ptrtoint ptr %add.ptr112.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %conv111.i, ptr %add.ptr112.i, align 8
  %call118.i = call i32 @mlx5_core_create_cq(ptr noundef %9, ptr noundef %cq.i, ptr noundef nonnull %call9.i.i.i, i32 noundef %add.i, ptr noundef nonnull %out.i, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118.i)
  %tobool119.not.i = icmp eq i32 %call118.i, 0
  br i1 %tobool119.not.i, label %if.end7, label %cond.end60.i.err_vec.i_crit_edge

cond.end60.i.err_vec.i_crit_edge:                 ; preds = %cond.end60.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_vec.i

err_vec.i:                                        ; preds = %cond.end60.i.err_vec.i_crit_edge, %do.body.i.err_vec.i_crit_edge
  %err.0.i = phi i32 [ %call47.i, %do.body.i.err_vec.i_crit_edge ], [ %call118.i, %cond.end60.i.err_vec.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #17
  br label %err_vzalloc.i

err_vzalloc.i:                                    ; preds = %err_vec.i, %cq_frag_buf_init.exit.i.err_vzalloc.i_crit_edge
  %err.1.i = phi i32 [ %err.0.i, %err_vec.i ], [ -12, %cq_frag_buf_init.exit.i.err_vzalloc.i_crit_edge ]
  %77 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mdev1.i, align 8
  call void @mlx5_frag_buf_free(ptr noundef %78, ptr noundef %frag_buf1.i.i) #17
  br label %err_db.i

err_db.i:                                         ; preds = %err_vzalloc.i, %if.end.i.err_db.i_crit_edge
  %err.2.i = phi i32 [ %err.1.i, %err_vzalloc.i ], [ %call.i.i, %if.end.i.err_db.i_crit_edge ]
  %79 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mdev1.i, align 8
  call void @mlx5_db_free(ptr noundef %80, ptr noundef %db.i) #17
  br label %cq_create.exit.thread

cq_create.exit.thread:                            ; preds = %err_db.i, %if.end3.cq_create.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.end3.cq_create.exit.thread_crit_edge ], [ %err.2.i, %err_db.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eqn.i) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #17
  br label %cleanup

if.end7:                                          ; preds = %cond.end60.i
  %comp.i = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq.i, i32 0, i32 9
  %81 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @mlx5_vdpa_cq_comp, ptr %comp.i, align 4
  %cqe.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %7, i32 %idxprom.i, i32 5, i32 3
  %82 = ptrtoint ptr %cqe.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %3, ptr %cqe.i, align 4
  %83 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %db.i, align 4
  %85 = ptrtoint ptr %set_ci_db.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %set_ci_db.i, align 4
  %add.ptr129.i = getelementptr i32, ptr %84, i32 1
  %86 = ptrtoint ptr %arm_db.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %add.ptr129.i, ptr %arm_db.i, align 4
  %cons_index.i = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq.i, i32 0, i32 11
  %87 = ptrtoint ptr %cons_index.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cons_index.i, align 4
  call fastcc void @mlx5_cq_arm(ptr noundef %cq.i, ptr noundef %13, i32 noundef %88) #17
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eqn.i) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #17
  %fwqp = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 6
  %call8 = call fastcc i32 @qp_create(ptr noundef %ndev, ptr noundef %mvq, ptr noundef %fwqp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.err_fwqp_crit_edge

if.end7.err_fwqp_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_fwqp

if.end11:                                         ; preds = %if.end7
  %vqqp = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 7
  %call12 = call fastcc i32 @qp_create(ptr noundef %ndev, ptr noundef %mvq, ptr noundef %vqqp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.err_vqqp_crit_edge

if.end11.err_vqqp_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_vqqp

if.end15:                                         ; preds = %if.end11
  %call16 = call fastcc i32 @connect_qps(ptr noundef %ndev, ptr noundef %mvq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.err_connect_crit_edge

if.end15.err_connect_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_connect

if.end19:                                         ; preds = %if.end15
  %call20 = call fastcc i32 @create_virtqueue(ptr noundef %ndev, ptr noundef %mvq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.err_connect_crit_edge

if.end19.err_connect_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_connect

if.end23:                                         ; preds = %if.end19
  %89 = ptrtoint ptr %mvq to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %mvq, align 8, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool24.not = icmp eq i8 %90, 0
  br i1 %tobool24.not, label %if.end23.if.end32_crit_edge, label %if.then25

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

if.then25:                                        ; preds = %if.end23
  %call26 = call fastcc i32 @modify_virtqueue(ptr noundef %ndev, ptr noundef %mvq, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then25.if.end32_crit_edge, label %do.end

if.then25.if.end32_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

do.end:                                           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #19
  %91 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mdev1.i, align 8
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 8
  %95 = call i32 @llvm.read_register.i32(metadata !353) #17
  %and.i70 = and i32 %95, -16384
  %96 = inttoptr i32 %and.i70 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %98, i32 0, i32 68
  %99 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %94, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1176, i32 noundef %100, i32 noundef %idxprom.i, i32 noundef %call26) #21
  br label %err_connect

if.end32:                                         ; preds = %if.then25.if.end32_crit_edge, %if.end23.if.end32_crit_edge
  %101 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %initialized, align 4
  br label %cleanup

err_connect:                                      ; preds = %do.end, %if.end19.err_connect_crit_edge, %if.end15.err_connect_crit_edge
  %err.0 = phi i32 [ %call16, %if.end15.err_connect_crit_edge ], [ %call20, %if.end19.err_connect_crit_edge ], [ %call26, %do.end ]
  call fastcc void @qp_destroy(ptr noundef %ndev, ptr noundef %vqqp)
  br label %err_vqqp

err_vqqp:                                         ; preds = %err_connect, %if.end11.err_vqqp_crit_edge
  %err.1 = phi i32 [ %call12, %if.end11.err_vqqp_crit_edge ], [ %err.0, %err_connect ]
  call fastcc void @qp_destroy(ptr noundef %ndev, ptr noundef %fwqp)
  br label %err_fwqp

err_fwqp:                                         ; preds = %err_vqqp, %if.end7.err_fwqp_crit_edge
  %err.2 = phi i32 [ %call8, %if.end7.err_fwqp_crit_edge ], [ %err.1, %err_vqqp ]
  %102 = ptrtoint ptr %vqs.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %vqs.i, align 4
  %104 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mdev1.i, align 8
  %cq.i74 = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %103, i32 %idxprom.i, i32 5
  %call.i75 = call i32 @mlx5_core_destroy_cq(ptr noundef %105, ptr noundef %cq.i74) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool.not.i76 = icmp eq i32 %call.i75, 0
  %106 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mdev1.i, align 8
  br i1 %tobool.not.i76, label %if.end.i78, label %do.end.i

do.end.i:                                         ; preds = %err_fwqp
  call void @__sanitizer_cov_trace_pc() #19
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 8
  %110 = call i32 @llvm.read_register.i32(metadata !353) #17
  %and.i.i = and i32 %110, -16384
  %111 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %113, i32 0, i32 68
  %114 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pid.i, align 8
  %116 = ptrtoint ptr %cq.i74 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cq.i74, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %109, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 654, i32 noundef %115, i32 noundef %117) #21
  br label %cleanup

if.end.i78:                                       ; preds = %err_fwqp
  call void @__sanitizer_cov_trace_pc() #19
  %frag_buf.i.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %103, i32 %idxprom.i, i32 5, i32 1, i32 1
  call void @mlx5_frag_buf_free(ptr noundef %107, ptr noundef %frag_buf.i.i) #17
  %118 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mdev1.i, align 8
  %db.i77 = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %103, i32 %idxprom.i, i32 5, i32 2
  call void @mlx5_db_free(ptr noundef %119, ptr noundef %db.i77) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end.i78, %do.end.i, %if.end32, %cq_create.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.i.ph, %cq_create.exit.thread ], [ %err.2, %do.end.i ], [ %err.2, %if.end.i78 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vdpa_modify_rqt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @suspend_vq(ptr nocapture noundef readonly %ndev, ptr nocapture noundef %mvq) unnamed_addr #2 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %initialized = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 11
  %0 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %initialized, align 4, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_state = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 17
  %2 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #17
  %4 = call ptr @memset(ptr %out.i, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 208) #20
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end2.do.end_crit_edge, label %if.end.i

if.end2.do.end_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.end.i:                                         ; preds = %if.end2
  %add.ptr12.i = getelementptr i32, ptr %call7.i.i.i, i32 1
  %6 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr12.i, align 4
  %and13.i = and i32 %7, -65536
  %or16.i = or i32 %and13.i, 13
  store i32 %or16.i, ptr %add.ptr12.i, align 4
  %virtq_id.i = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 13
  %8 = ptrtoint ptr %virtq_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %virtq_id.i, align 4
  %add.ptr25.i = getelementptr i32, ptr %call7.i.i.i, i32 2
  %10 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %add.ptr25.i, align 8
  %uid.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %uid.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %uid.i, align 8
  %conv.i = zext i16 %12 to i32
  %or42.i = or i32 %conv.i, 167837696
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or42.i, ptr %call7.i.i.i, align 8
  %add.ptr46.i = getelementptr i8, ptr %call7.i.i.i, i32 16
  %14 = ptrtoint ptr %add.ptr46.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1, ptr %add.ptr46.i, align 8
  %add.ptr65.i = getelementptr i8, ptr %call7.i.i.i, i32 32
  %15 = ptrtoint ptr %add.ptr65.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr65.i, align 8
  %and66.i = and i32 %16, -16
  %or69.i = or i32 %and66.i, 2
  store i32 %or69.i, ptr %add.ptr65.i, align 8
  %mdev.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 1
  %17 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mdev.i, align 8
  %call74.i = call i32 @mlx5_cmd_exec(ptr noundef %18, ptr noundef nonnull %call7.i.i.i, i32 noundef 208, ptr noundef nonnull %out.i, i32 noundef 16) #17
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %modify_virtqueue.exit, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

modify_virtqueue.exit:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %19 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %fw_state, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #17
  br label %if.end6

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %if.end2.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #17
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 1
  %20 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdev, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %24 = call i32 @llvm.read_register.i32(metadata !353) #17
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
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 1204, i32 noundef %29) #21
  br label %if.end6

if.end6:                                          ; preds = %do.end, %modify_virtqueue.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #17
  %30 = call ptr @memset(ptr %in.i, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i28 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 208) #20
  %tobool.not.i29 = icmp eq ptr %call7.i.i.i28, null
  br i1 %tobool.not.i29, label %query_virtqueue.exit.thread, label %if.end.i39

query_virtqueue.exit.thread:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #17
  br label %do.end12

if.end.i39:                                       ; preds = %if.end6
  %add.ptr12.i30 = getelementptr inbounds i32, ptr %in.i, i32 1
  %32 = ptrtoint ptr %add.ptr12.i30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr12.i30, align 4
  %and13.i31 = and i32 %33, -65536
  %or16.i32 = or i32 %and13.i31, 13
  store i32 %or16.i32, ptr %add.ptr12.i30, align 4
  %virtq_id.i33 = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 13
  %34 = ptrtoint ptr %virtq_id.i33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %virtq_id.i33, align 4
  %add.ptr25.i34 = getelementptr inbounds i32, ptr %in.i, i32 2
  %36 = ptrtoint ptr %add.ptr25.i34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %add.ptr25.i34, align 4
  %uid.i35 = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 2, i32 4
  %37 = ptrtoint ptr %uid.i35 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %uid.i35, align 8
  %conv.i36 = zext i16 %38 to i32
  %or42.i37 = or i32 %conv.i36, 167903232
  %39 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or42.i37, ptr %in.i, align 4
  %mdev.i38 = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 1
  %40 = ptrtoint ptr %mdev.i38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mdev.i38, align 8
  %call48.i = call i32 @mlx5_cmd_exec(ptr noundef %41, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %call7.i.i.i28, i32 noundef 208) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end19, label %query_virtqueue.exit

query_virtqueue.exit:                             ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #19
  call void @kfree(ptr noundef nonnull %call7.i.i.i28) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #17
  br label %do.end12

do.end12:                                         ; preds = %query_virtqueue.exit, %query_virtqueue.exit.thread
  %mdev14 = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 1
  %42 = ptrtoint ptr %mdev14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mdev14, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %46 = call i32 @llvm.read_register.i32(metadata !353) #17
  %and.i41 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i41 to ptr
  %task17 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task17 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task17, align 8
  %pid18 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 68
  %50 = ptrtoint ptr %pid18 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pid18, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef 1207, i32 noundef %51) #21
  br label %cleanup

if.end19:                                         ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr56.i = getelementptr i8, ptr %call7.i.i.i28, i32 56
  %52 = ptrtoint ptr %add.ptr56.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr56.i, align 8
  %shr57.i = lshr i32 %53, 16
  %conv59.i = trunc i32 %shr57.i to i16
  %conv63.i = trunc i32 %53 to i16
  call void @kfree(ptr noundef nonnull %call7.i.i.i28) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #17
  %avail_idx = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 15
  %54 = ptrtoint ptr %avail_idx to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv59.i, ptr %avail_idx, align 4
  %used_idx = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 16
  %55 = ptrtoint ptr %used_idx to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv63.i, ptr %used_idx, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qp_destroy(ptr nocapture noundef readonly %ndev, ptr noundef %vqp) unnamed_addr #2 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #17
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %qpn = getelementptr inbounds %struct.mlx5_core_qp, ptr %vqp, i32 0, i32 2
  %2 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qpn, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %and15 = and i32 %3, 16777215
  %4 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and15, ptr %add.ptr13, align 4
  %uid = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %uid, align 8
  %conv = zext i16 %6 to i32
  %or32 = or i32 %conv, 83951616
  %7 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or32, ptr %in, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #17
  %8 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 1
  %9 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev, align 8
  %call = call i32 @mlx5_cmd_exec(ptr noundef %10, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end43

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end43:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %11 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %15 = call i32 @llvm.read_register.i32(metadata !353) #17
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 68
  %19 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid, align 8
  %21 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qpn, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 502, i32 noundef %20, i32 noundef %22) #21
  br label %if.end

if.end:                                           ; preds = %do.end43, %entry.if.end_crit_edge
  %fw = getelementptr inbounds %struct.mlx5_vdpa_qp, ptr %vqp, i32 0, i32 4
  %23 = ptrtoint ptr %fw to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fw, align 2, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool49.not = icmp eq i8 %24, 0
  br i1 %tobool49.not, label %if.then50, label %if.end.if.end53_crit_edge

if.end.if.end53_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53

if.then50:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %25 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mdev, align 8
  %db = getelementptr inbounds %struct.mlx5_vdpa_qp, ptr %vqp, i32 0, i32 2
  call void @mlx5_db_free(ptr noundef %26, ptr noundef %db) #17
  %27 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mdev, align 8
  %frag_buf.i = getelementptr inbounds %struct.mlx5_vdpa_qp, ptr %vqp, i32 0, i32 1
  call void @mlx5_frag_buf_free(ptr noundef %28, ptr noundef %frag_buf.i) #17
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end.if.end53_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @modify_virtqueue(ptr nocapture noundef readonly %ndev, ptr nocapture noundef %mvq, i32 noundef %state) unnamed_addr #2 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #17
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 208) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr12 = getelementptr i32, ptr %call7.i.i, i32 1
  %2 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr12, align 4
  %and13 = and i32 %3, -65536
  %or16 = or i32 %and13, 13
  store i32 %or16, ptr %add.ptr12, align 4
  %virtq_id = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 13
  %4 = ptrtoint ptr %virtq_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virtq_id, align 4
  %add.ptr25 = getelementptr i32, ptr %call7.i.i, i32 2
  %6 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %add.ptr25, align 8
  %uid = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %uid, align 8
  %conv = zext i16 %8 to i32
  %or42 = or i32 %conv, 167837696
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or42, ptr %call7.i.i, align 8
  %add.ptr46 = getelementptr i8, ptr %call7.i.i, i32 16
  %10 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1, ptr %add.ptr46, align 8
  %add.ptr65 = getelementptr i8, ptr %call7.i.i, i32 32
  %11 = ptrtoint ptr %add.ptr65 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr65, align 8
  %and66 = and i32 %12, -16
  %and67 = and i32 %state, 15
  %or69 = or i32 %and66, %and67
  store i32 %or69, ptr %add.ptr65, align 8
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 1
  %13 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdev, align 8
  %call74 = call i32 @mlx5_cmd_exec(ptr noundef %14, ptr noundef nonnull %call7.i.i, i32 noundef 208, ptr noundef nonnull %out, i32 noundef 16) #17
  call void @kfree(ptr noundef nonnull %call7.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then76, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then76:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %fw_state = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 17
  %15 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %state, ptr %fw_state, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then76 ], [ %call74, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @umems_destroy(ptr nocapture noundef readonly %ndev, ptr noundef %mvq) unnamed_addr #2 align 64 {
do.body.i:
  %in.i = alloca [4 x i32], align 4
  %out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr15.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %mdev.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #17
  %0 = call ptr @memset(ptr %in.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #17
  %1 = call ptr @memset(ptr %out.i, i32 0, i32 16)
  %2 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in.i, align 4
  %and.i = and i32 %3, 65535
  %or.i = or i32 %and.i, 168427520
  store i32 %or.i, ptr %in.i, align 4
  %id.i = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 10, i32 3
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  %6 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr15.i, align 4
  %and16.i = and i32 %7, -16777216
  %and17.i = and i32 %5, 16777215
  %or19.i = or i32 %and16.i, %and17.i
  store i32 %or19.i, ptr %add.ptr15.i, align 4
  %8 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev.i, align 8
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %9, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %out.i, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.do.body.i.1_crit_edge

do.body.i.do.body.i.1_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.1

if.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdev.i, align 8
  %frag_buf.i.i = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 10, i32 1
  call void @mlx5_frag_buf_free(ptr noundef %11, ptr noundef %frag_buf.i.i) #17
  br label %do.body.i.1

do.body.i.1:                                      ; preds = %if.end.i, %do.body.i.do.body.i.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #17
  %12 = call ptr @memset(ptr %in.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #17
  %13 = call ptr @memset(ptr %out.i, i32 0, i32 16)
  %14 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %in.i, align 4
  %and.i.1 = and i32 %15, 65535
  %or.i.1 = or i32 %and.i.1, 168427520
  store i32 %or.i.1, ptr %in.i, align 4
  %id.i.1 = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 9, i32 3
  %16 = ptrtoint ptr %id.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i.1, align 4
  %18 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr15.i, align 4
  %and16.i.1 = and i32 %19, -16777216
  %and17.i.1 = and i32 %17, 16777215
  %or19.i.1 = or i32 %and16.i.1, %and17.i.1
  store i32 %or19.i.1, ptr %add.ptr15.i, align 4
  %20 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdev.i, align 8
  %call.i.1 = call i32 @mlx5_cmd_exec(ptr noundef %21, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %out.i, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %do.body.i.1.do.body.i.2_crit_edge

do.body.i.1.do.body.i.2_crit_edge:                ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.2

if.end.i.1:                                       ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mdev.i, align 8
  %frag_buf.i.i.1 = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 9, i32 1
  call void @mlx5_frag_buf_free(ptr noundef %23, ptr noundef %frag_buf.i.i.1) #17
  br label %do.body.i.2

do.body.i.2:                                      ; preds = %if.end.i.1, %do.body.i.1.do.body.i.2_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #17
  %24 = call ptr @memset(ptr %in.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #17
  %25 = call ptr @memset(ptr %out.i, i32 0, i32 16)
  %26 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %in.i, align 4
  %and.i.2 = and i32 %27, 65535
  %or.i.2 = or i32 %and.i.2, 168427520
  store i32 %or.i.2, ptr %in.i, align 4
  %id.i.2 = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 8, i32 3
  %28 = ptrtoint ptr %id.i.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id.i.2, align 4
  %30 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr15.i, align 4
  %and16.i.2 = and i32 %31, -16777216
  %and17.i.2 = and i32 %29, 16777215
  %or19.i.2 = or i32 %and16.i.2, %and17.i.2
  store i32 %or19.i.2, ptr %add.ptr15.i, align 4
  %32 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdev.i, align 8
  %call.i.2 = call i32 @mlx5_cmd_exec(ptr noundef %33, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %out.i, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.i.2, label %if.end.i.2, label %do.body.i.2.umem_destroy.exit.2_crit_edge

do.body.i.2.umem_destroy.exit.2_crit_edge:        ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %umem_destroy.exit.2

if.end.i.2:                                       ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #19
  %34 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mdev.i, align 8
  %frag_buf.i.i.2 = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 8, i32 1
  call void @mlx5_frag_buf_free(ptr noundef %35, ptr noundef %frag_buf.i.i.2) #17
  br label %umem_destroy.exit.2

umem_destroy.exit.2:                              ; preds = %if.end.i.2, %do.body.i.2.umem_destroy.exit.2_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_frag_buf_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_db_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_destroy_cq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qp_create(ptr nocapture noundef readonly %ndev, ptr noundef %mvq, ptr noundef %vqp) unnamed_addr #2 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #17
  %2 = call ptr @memset(ptr %out, i32 0, i32 16)
  %fw = getelementptr inbounds %struct.mlx5_vdpa_qp, ptr %vqp, i32 0, i32 4
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fw, align 2, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end8.i.i_crit_edge

entry.if.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i.i

if.then:                                          ; preds = %entry
  %vqqp = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 7
  %num_ent = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 4
  %5 = ptrtoint ptr %num_ent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_ent, align 8
  %mul.i = shl i32 %6, 4
  %frag_buf.i = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 7, i32 1
  %numa_node.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 17
  %7 = ptrtoint ptr %numa_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %numa_node.i, align 8
  %call.i = tail call i32 @mlx5_frag_buf_alloc_node(ptr noundef %1, i32 noundef %mul.i, ptr noundef %frag_buf.i, i32 noundef %8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %if.then
  %9 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev1, align 8
  %db = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 7, i32 2
  %call6 = tail call i32 @mlx5_db_alloc(ptr noundef %10, ptr noundef %db) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.err_db_crit_edge

if.end.err_db_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_db

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %npages = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 7, i32 1, i32 1
  %11 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %npages, align 4
  %mul = shl i32 %12, 3
  %add = add i32 %mul, 272
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end9, %entry.if.end8.i.i_crit_edge
  %inlen.0 = phi i32 [ 272, %entry.if.end8.i.i_crit_edge ], [ %add, %if.end9 ]
  %vqp.addr.0 = phi ptr [ %vqp, %entry.if.end8.i.i_crit_edge ], [ %vqqp, %if.end9 ]
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %inlen.0, i32 noundef 3520) #22
  %tobool12.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool12.not, label %if.end8.i.i.err_kzalloc_crit_edge, label %if.end14

if.end8.i.i.err_kzalloc_crit_edge:                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_kzalloc

if.end14:                                         ; preds = %if.end8.i.i
  %fw15 = getelementptr inbounds %struct.mlx5_vdpa_qp, ptr %vqp.addr.0, i32 0, i32 4
  %13 = ptrtoint ptr %fw15 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fw15, align 2, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not = icmp eq i8 %14, 0
  %num_ent17 = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 4
  %15 = ptrtoint ptr %num_ent17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_ent17, align 8
  %fwqp.i = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 6
  %vqqp.i = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 7
  %cond.i = select i1 %tobool16.not, ptr %vqqp.i, ptr %fwqp.i
  %uid.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %uid.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %uid.i, align 8
  %conv.i = zext i16 %18 to i32
  %19 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call9.i.i, align 128
  %and.i = and i32 %20, -65536
  %or.i = or i32 %and.i, %conv.i
  store i32 %or.i, ptr %call9.i.i, align 128
  %fw7.i = getelementptr inbounds %struct.mlx5_vdpa_qp, ptr %cond.i, i32 0, i32 4
  %21 = ptrtoint ptr %fw7.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fw7.i, align 2, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool8.not.i = icmp eq i8 %22, 0
  br i1 %tobool8.not.i, label %do.body36.i, label %if.then.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr15.i = getelementptr i8, ptr %call9.i.i, i32 196
  %23 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr15.i, align 4
  %and16.i = and i32 %24, -117440513
  %or19.i = or i32 %and16.i, 50331648
  store i32 %or19.i, ptr %add.ptr15.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %call9.i.i, i32 32
  %25 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr28.i, align 32
  %or32.i = or i32 %26, 32768
  store i32 %or32.i, ptr %add.ptr28.i, align 32
  br label %qp_prepare.exit

do.body36.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr6.i = getelementptr i8, ptr %call9.i.i, i32 24
  %res.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 2
  %27 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr6.i, align 8
  %and55.i = and i32 %28, -16717825
  %or58.i = or i32 %and55.i, 6144
  store i32 %or58.i, ptr %add.ptr6.i, align 8
  %29 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %res.i, align 8
  %add.ptr69.i = getelementptr i8, ptr %call9.i.i, i32 28
  %31 = ptrtoint ptr %add.ptr69.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr69.i, align 4
  %and70.i = and i32 %32, -16777216
  %and71.i = and i32 %30, 16777215
  %or73.i = or i32 %and70.i, %and71.i
  store i32 %or73.i, ptr %add.ptr69.i, align 4
  %add.ptr82.i = getelementptr i8, ptr %call9.i.i, i32 32
  %33 = ptrtoint ptr %add.ptr82.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr82.i, align 32
  %and83.i = and i32 %34, 536870911
  %or86.i = or i32 %and83.i, 536870912
  store i32 %or86.i, ptr %add.ptr82.i, align 32
  %uar.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %uar.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %uar.i, align 4
  %index.i = getelementptr inbounds %struct.mlx5_uars_page, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %index.i, align 4
  %add.ptr97.i = getelementptr i8, ptr %call9.i.i, i32 36
  %39 = ptrtoint ptr %add.ptr97.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr97.i, align 4
  %and98.i = and i32 %40, -16777216
  %and99.i = and i32 %38, 16777215
  %or101.i = or i32 %and98.i, %and99.i
  store i32 %or101.i, ptr %add.ptr97.i, align 4
  %frag_buf.i172 = getelementptr inbounds %struct.mlx5_vdpa_qp, ptr %cond.i, i32 0, i32 1
  %page_shift.i = getelementptr inbounds %struct.mlx5_vdpa_qp, ptr %cond.i, i32 0, i32 1, i32 3
  %41 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %page_shift.i, align 4
  %add.ptr111.i = getelementptr i8, ptr %call9.i.i, i32 44
  %43 = ptrtoint ptr %add.ptr111.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr111.i, align 4
  %and112.i = and i32 %44, -520093697
  %45 = add i8 %42, 20
  %46 = and i8 %45, 31
  %and113.i = zext i8 %46 to i32
  %shl114.i = shl nuw nsw i32 %and113.i, 24
  %or115.i = or i32 %shl114.i, %and112.i
  store i32 %or115.i, ptr %add.ptr111.i, align 4
  %or128.i = or i32 %and83.i, 536903680
  store i32 %or128.i, ptr %add.ptr82.i, align 32
  %cq.i = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 5
  %47 = ptrtoint ptr %cq.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cq.i, align 4
  %add.ptr137.i = getelementptr i8, ptr %call9.i.i, i32 180
  %49 = ptrtoint ptr %add.ptr137.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr137.i, align 4
  %and138.i = and i32 %50, -16777216
  %and139.i = and i32 %48, 16777215
  %or141.i = or i32 %and138.i, %and139.i
  store i32 %or141.i, ptr %add.ptr137.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i.i173 = icmp eq i32 %16, 0
  %51 = tail call i32 @llvm.ctlz.i32(i32 %16, i1 true) #17, !range !369
  %and162.i = and i32 %or128.i, 1065877503
  %sub.i.op.i.i = shl nuw nsw i32 %51, 19
  %sub.i.op.i.i.op = and i32 %sub.i.op.i.i, 7864320
  %sub.i.op.i.i.op.op = xor i32 %sub.i.op.i.i.op, 7864320
  %shl164.i = select i1 %tobool.not.i.i.i173, i32 7864320, i32 %sub.i.op.i.i.op.op
  %or165.i = or i32 %shl164.i, %and162.i
  %52 = ptrtoint ptr %add.ptr82.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or165.i, ptr %add.ptr82.i, align 32
  %add.ptr174.i = getelementptr i8, ptr %call9.i.i, i32 196
  %53 = ptrtoint ptr %add.ptr174.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr174.i, align 4
  %and175.i = and i32 %54, -117440513
  store i32 %and175.i, ptr %add.ptr174.i, align 4
  %add.ptr182.i = getelementptr i8, ptr %call9.i.i, i32 272
  tail call void @mlx5_fill_page_frag_array(ptr noundef %frag_buf.i172, ptr noundef %add.ptr182.i) #17
  br label %qp_prepare.exit

qp_prepare.exit:                                  ; preds = %do.body36.i, %if.then.i
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 24
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr, align 8
  %and30 = and i32 %56, -16717825
  %or33 = or i32 %and30, 6144
  store i32 %or33, ptr %add.ptr, align 8
  %res = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 2
  %57 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %res, align 8
  %add.ptr43 = getelementptr i8, ptr %call9.i.i, i32 28
  %59 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr43, align 4
  %and44 = and i32 %60, -16777216
  %and45 = and i32 %58, 16777215
  %or47 = or i32 %and44, %and45
  store i32 %or47, ptr %add.ptr43, align 4
  %add.ptr56 = getelementptr i8, ptr %call9.i.i, i32 32
  %61 = ptrtoint ptr %add.ptr56 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr56, align 32
  %and57 = and i32 %62, 536870911
  %or60 = or i32 %and57, 536870912
  store i32 %or60, ptr %add.ptr56, align 32
  %63 = ptrtoint ptr %fw15 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %fw15, align 2, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool65.not = icmp eq i8 %64, 0
  br i1 %tobool65.not, label %do.end74, label %qp_prepare.exit.do.body82_crit_edge

qp_prepare.exit.do.body82_crit_edge:              ; preds = %qp_prepare.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body82

do.end74:                                         ; preds = %qp_prepare.exit
  call void @__sanitizer_cov_trace_pc() #19
  %dma = getelementptr inbounds %struct.mlx5_vdpa_qp, ptr %vqp.addr.0, i32 0, i32 2, i32 2
  %65 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dma, align 4
  %conv = zext i32 %66 to i64
  %add.ptr76 = getelementptr i8, ptr %call9.i.i, i32 184
  %67 = ptrtoint ptr %add.ptr76 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %conv, ptr %add.ptr76, align 8
  br label %do.body82

do.body82:                                        ; preds = %do.end74, %qp_prepare.exit.do.body82_crit_edge
  %68 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %call9.i.i, align 128
  %and88 = and i32 %69, 65535
  %or91 = or i32 %and88, 83886080
  store i32 %or91, ptr %call9.i.i, align 128
  %call95 = call i32 @mlx5_cmd_exec(ptr noundef %1, ptr noundef nonnull %call9.i.i, i32 noundef %inlen.0, ptr noundef nonnull %out, i32 noundef 16) #17
  call void @kfree(ptr noundef nonnull %call9.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %do.body82.err_kzalloc_crit_edge

do.body82.err_kzalloc_crit_edge:                  ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_kzalloc

if.end98:                                         ; preds = %do.body82
  %70 = ptrtoint ptr %uid.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %uid.i, align 8
  %uid101 = getelementptr inbounds %struct.mlx5_core_qp, ptr %vqp.addr.0, i32 0, i32 5
  %72 = ptrtoint ptr %uid101 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %uid101, align 4
  %add.ptr103 = getelementptr inbounds i32, ptr %out, i32 2
  %73 = ptrtoint ptr %add.ptr103 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr103, align 4
  %and104 = and i32 %74, 16777215
  %qpn = getelementptr inbounds %struct.mlx5_core_qp, ptr %vqp.addr.0, i32 0, i32 2
  %75 = ptrtoint ptr %qpn to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %and104, ptr %qpn, align 4
  %76 = ptrtoint ptr %fw15 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %fw15, align 2, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool107.not = icmp eq i8 %77, 0
  br i1 %tobool107.not, label %if.then108, label %if.end98.cleanup_crit_edge

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then108:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #19
  %78 = ptrtoint ptr %num_ent17 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_ent17, align 8
  %head.i = getelementptr inbounds %struct.mlx5_vdpa_qp, ptr %vqp.addr.0, i32 0, i32 3
  %80 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %head.i, align 4
  %82 = trunc i32 %79 to i16
  %conv1.i = add i16 %81, %82
  store i16 %conv1.i, ptr %head.i, align 4
  %conv3.i = zext i16 %conv1.i to i32
  %db.i = getelementptr inbounds %struct.mlx5_vdpa_qp, ptr %vqp.addr.0, i32 0, i32 2
  %83 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %db.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %conv3.i, ptr %84, align 4
  br label %cleanup

err_kzalloc:                                      ; preds = %do.body82.err_kzalloc_crit_edge, %if.end8.i.i.err_kzalloc_crit_edge
  %err.0 = phi i32 [ %call95, %do.body82.err_kzalloc_crit_edge ], [ -12, %if.end8.i.i.err_kzalloc_crit_edge ]
  %fw111 = getelementptr inbounds %struct.mlx5_vdpa_qp, ptr %vqp.addr.0, i32 0, i32 4
  %86 = ptrtoint ptr %fw111 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %fw111, align 2, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool112.not = icmp eq i8 %87, 0
  br i1 %tobool112.not, label %if.then113, label %err_kzalloc.err_db_crit_edge

err_kzalloc.err_db_crit_edge:                     ; preds = %err_kzalloc
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_db

if.then113:                                       ; preds = %err_kzalloc
  call void @__sanitizer_cov_trace_pc() #19
  %88 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mdev1, align 8
  %db116 = getelementptr inbounds %struct.mlx5_vdpa_qp, ptr %vqp.addr.0, i32 0, i32 2
  call void @mlx5_db_free(ptr noundef %89, ptr noundef %db116) #17
  br label %err_db

err_db:                                           ; preds = %if.then113, %err_kzalloc.err_db_crit_edge, %if.end.err_db_crit_edge
  %err.1 = phi i32 [ %err.0, %err_kzalloc.err_db_crit_edge ], [ %err.0, %if.then113 ], [ %call6, %if.end.err_db_crit_edge ]
  %vqp.addr.1 = phi ptr [ %vqp.addr.0, %err_kzalloc.err_db_crit_edge ], [ %vqp.addr.0, %if.then113 ], [ %vqqp, %if.end.err_db_crit_edge ]
  %fw118 = getelementptr inbounds %struct.mlx5_vdpa_qp, ptr %vqp.addr.1, i32 0, i32 4
  %90 = ptrtoint ptr %fw118 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %fw118, align 2, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool119.not = icmp eq i8 %91, 0
  br i1 %tobool119.not, label %if.then120, label %err_db.cleanup_crit_edge

err_db.cleanup_crit_edge:                         ; preds = %err_db
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then120:                                       ; preds = %err_db
  call void @__sanitizer_cov_trace_pc() #19
  %92 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mdev1, align 8
  %frag_buf.i175 = getelementptr inbounds %struct.mlx5_vdpa_qp, ptr %vqp.addr.1, i32 0, i32 1
  call void @mlx5_frag_buf_free(ptr noundef %93, ptr noundef %frag_buf.i175) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then120, %err_db.cleanup_crit_edge, %if.then108, %if.end98.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.cleanup_crit_edge ], [ 0, %if.then108 ], [ 0, %if.end98.cleanup_crit_edge ], [ %err.1, %if.then120 ], [ %err.1, %err_db.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @connect_qps(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readonly %mvq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @modify_qp(ptr noundef %ndev, ptr noundef %mvq, i1 noundef zeroext true, i32 noundef 1290)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @modify_qp(ptr noundef %ndev, ptr noundef %mvq, i1 noundef zeroext false, i32 noundef 1290)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @modify_qp(ptr noundef %ndev, ptr noundef %mvq, i1 noundef zeroext true, i32 noundef 1282)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call fastcc i32 @modify_qp(ptr noundef %ndev, ptr noundef %mvq, i1 noundef zeroext false, i32 noundef 1282)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call fastcc i32 @modify_qp(ptr noundef %ndev, ptr noundef %mvq, i1 noundef zeroext true, i32 noundef 1283)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call fastcc i32 @modify_qp(ptr noundef %ndev, ptr noundef %mvq, i1 noundef zeroext false, i32 noundef 1283)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  %call21 = tail call fastcc i32 @modify_qp(ptr noundef %ndev, ptr noundef %mvq, i1 noundef zeroext true, i32 noundef 1284)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end20 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_virtqueue(ptr nocapture noundef readonly %ndev, ptr noundef %mvq) unnamed_addr #2 align 64 {
entry:
  %in.i.i = alloca [4 x i32], align 4
  %out.i17.i = alloca [4 x i32], align 4
  %out.i.i = alloca [4 x i32], align 4
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #17
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  %mdev1.i.i.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 1
  %num_ent.i.i.i = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 4
  %umem3.i.i.i = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 10
  %umem2.i.i.i = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 9
  %umem1.i.i.i = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 8
  %uid.i.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 2, i32 4
  %add.ptr69.i.i = getelementptr inbounds i32, ptr %out.i.i, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %num.043.i = phi i32 [ 1, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i.i) #17
  %1 = call ptr @memset(ptr %out.i.i, i32 0, i32 16)
  %2 = ptrtoint ptr %mdev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev1.i.i.i, align 8
  %4 = zext i32 %num.043.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %num.043.i, label %for.body.i.set_umem_size.exit.i.i_crit_edge [
    i32 1, label %sw.bb.i.i.i
    i32 2, label %sw.bb10.i.i.i
    i32 3, label %sw.bb27.i.i.i
  ]

for.body.i.set_umem_size.exit.i.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %set_umem_size.exit.i.i

sw.bb.i.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i.i.i = getelementptr %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 0, i32 19
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i32, ptr %6, i32 8
  %add.ptr7.i.i.i = getelementptr i32, ptr %6, i32 9
  br label %sw.epilog.sink.split.i.i.i

sw.bb10.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx13.i.i.i = getelementptr %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 0, i32 19
  %7 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx13.i.i.i, align 4
  %add.ptr16.i.i.i = getelementptr i32, ptr %8, i32 10
  %add.ptr24.i.i.i = getelementptr i32, ptr %8, i32 11
  br label %sw.epilog.sink.split.i.i.i

sw.bb27.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx30.i.i.i = getelementptr %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 0, i32 19
  %9 = ptrtoint ptr %arrayidx30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx30.i.i.i, align 4
  %add.ptr33.i.i.i = getelementptr i32, ptr %10, i32 12
  %add.ptr41.i.i.i = getelementptr i32, ptr %10, i32 13
  br label %sw.epilog.sink.split.i.i.i

sw.epilog.sink.split.i.i.i:                       ; preds = %sw.bb27.i.i.i, %sw.bb10.i.i.i, %sw.bb.i.i.i
  %umem3.sink.i.i.i = phi ptr [ %umem3.i.i.i, %sw.bb27.i.i.i ], [ %umem2.i.i.i, %sw.bb10.i.i.i ], [ %umem1.i.i.i, %sw.bb.i.i.i ]
  %p_a.0.ph.in.i.i.i = phi ptr [ %add.ptr33.i.i.i, %sw.bb27.i.i.i ], [ %add.ptr16.i.i.i, %sw.bb10.i.i.i ], [ %add.ptr.i.i.i, %sw.bb.i.i.i ]
  %p_b.0.ph.in.i.i.i = phi ptr [ %add.ptr41.i.i.i, %sw.bb27.i.i.i ], [ %add.ptr24.i.i.i, %sw.bb10.i.i.i ], [ %add.ptr7.i.i.i, %sw.bb.i.i.i ]
  %11 = ptrtoint ptr %p_b.0.ph.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %p_b.0.ph.i.i.i = load i32, ptr %p_b.0.ph.in.i.i.i, align 4
  %12 = ptrtoint ptr %p_a.0.ph.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %p_a.0.ph.i.i.i = load i32, ptr %p_a.0.ph.in.i.i.i, align 4
  br label %set_umem_size.exit.i.i

set_umem_size.exit.i.i:                           ; preds = %sw.epilog.sink.split.i.i.i, %for.body.i.set_umem_size.exit.i.i_crit_edge
  %umem.0.i.i = phi ptr [ inttoptr (i32 -1 to ptr), %for.body.i.set_umem_size.exit.i.i_crit_edge ], [ %umem3.sink.i.i.i, %sw.epilog.sink.split.i.i.i ]
  %p_a.0.i.i.i = phi i32 [ -1, %for.body.i.set_umem_size.exit.i.i_crit_edge ], [ %p_a.0.ph.i.i.i, %sw.epilog.sink.split.i.i.i ]
  %p_b.0.i.i.i = phi i32 [ -1, %for.body.i.set_umem_size.exit.i.i_crit_edge ], [ %p_b.0.ph.i.i.i, %sw.epilog.sink.split.i.i.i ]
  %13 = ptrtoint ptr %num_ent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_ent.i.i.i, align 8
  %mul.i.i.i = mul i32 %14, %p_a.0.i.i.i
  %add.i.i.i = add i32 %mul.i.i.i, %p_b.0.i.i.i
  %size.i.i.i = getelementptr inbounds %struct.mlx5_vdpa_umem, ptr %umem.0.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add.i.i.i, ptr %size.i.i.i, align 4
  %frag_buf1.i.i.i = getelementptr inbounds %struct.mlx5_vdpa_umem, ptr %umem.0.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %mdev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdev1.i.i.i, align 8
  %numa_node.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %17, i32 0, i32 17, i32 17
  %18 = ptrtoint ptr %numa_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %numa_node.i.i.i, align 8
  %call.i.i.i = call i32 @mlx5_frag_buf_alloc_node(ptr noundef %17, i32 noundef %add.i.i.i, ptr noundef %frag_buf1.i.i.i, i32 noundef %19) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %set_umem_size.exit.i.i.create_umem.exit.i_crit_edge

set_umem_size.exit.i.i.create_umem.exit.i_crit_edge: ; preds = %set_umem_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %create_umem.exit.i

if.end.i.i:                                       ; preds = %set_umem_size.exit.i.i
  %npages.i.i = getelementptr inbounds %struct.mlx5_vdpa_umem, ptr %umem.0.i.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %npages.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %npages.i.i, align 4
  %mul.i.i = shl i32 %21, 3
  %add.i.i = add i32 %mul.i.i, 48
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #22
  %tobool2.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.err_in.i.i_crit_edge, label %do.body.i.i

if.end.i.i.err_in.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_in.i.i

do.body.i.i:                                      ; preds = %if.end.i.i
  %22 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call9.i.i.i.i, align 128
  %and.i.i = and i32 %23, 65535
  %or.i.i = or i32 %and.i.i, 168296448
  store i32 %or.i.i, ptr %call9.i.i.i.i, align 128
  %24 = ptrtoint ptr %uid.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %uid.i.i, align 8
  %conv.i.i = zext i16 %25 to i32
  %or19.i.i = or i32 %conv.i.i, 168296448
  store i32 %or19.i.i, ptr %call9.i.i.i.i, align 128
  %page_shift.i.i = getelementptr inbounds %struct.mlx5_vdpa_umem, ptr %umem.0.i.i, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %page_shift.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %page_shift.i.i, align 4
  %add.ptr31.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 32
  %28 = ptrtoint ptr %add.ptr31.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr31.i.i, align 32
  %and32.i.i = and i32 %29, -32
  %30 = add i8 %27, 20
  %31 = and i8 %30, 31
  %and33.i.i = zext i8 %31 to i32
  %or35.i.i = or i32 %and32.i.i, %and33.i.i
  store i32 %or35.i.i, ptr %add.ptr31.i.i, align 32
  %32 = ptrtoint ptr %npages.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %npages.i.i, align 4
  %conv49.i.i = sext i32 %33 to i64
  %add.ptr50.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 40
  %34 = ptrtoint ptr %add.ptr50.i.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv49.i.i, ptr %add.ptr50.i.i, align 8
  %add.ptr55.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 48
  call void @mlx5_fill_page_frag_array_perm(ptr noundef %frag_buf1.i.i.i, ptr noundef %add.ptr55.i.i, i8 noundef zeroext 3) #17
  %35 = ptrtoint ptr %mdev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mdev1.i.i.i, align 8
  %call58.i.i = call i32 @mlx5_cmd_exec(ptr noundef %36, ptr noundef nonnull %call9.i.i.i.i, i32 noundef %add.i.i, ptr noundef nonnull %out.i.i, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %for.inc.i, label %do.end63.i.i

do.end63.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %37 = ptrtoint ptr %mdev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mdev1.i.i.i, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %41 = call i32 @llvm.read_register.i32(metadata !353) #17
  %and.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task.i.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 68
  %45 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pid.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 727, i32 noundef %46, i32 noundef %call58.i.i) #21
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #17
  br label %err_in.i.i

err_in.i.i:                                       ; preds = %do.end63.i.i, %if.end.i.i.err_in.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call58.i.i, %do.end63.i.i ], [ -12, %if.end.i.i.err_in.i.i_crit_edge ]
  %47 = ptrtoint ptr %mdev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mdev1.i.i.i, align 8
  call void @mlx5_frag_buf_free(ptr noundef %48, ptr noundef %frag_buf1.i.i.i) #17
  br label %create_umem.exit.i

create_umem.exit.i:                               ; preds = %err_in.i.i, %set_umem_size.exit.i.i.create_umem.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %err.0.i.i, %err_in.i.i ], [ %call.i.i.i, %set_umem_size.exit.i.i.create_umem.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num.043.i)
  %cmp245.i = icmp ugt i32 %num.043.i, 1
  br i1 %cmp245.i, label %for.body3.lr.ph.i, label %create_umem.exit.i.cleanup_crit_edge

create_umem.exit.i.cleanup_crit_edge:             ; preds = %create_umem.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body3.lr.ph.i:                                ; preds = %create_umem.exit.i
  %add.ptr15.i.i = getelementptr inbounds i32, ptr %in.i.i, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i.i) #17
  %49 = call ptr @memset(ptr %in.i.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i17.i) #17
  %50 = call ptr @memset(ptr %out.i17.i, i32 0, i32 16)
  %51 = zext i32 %num.043.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %num.043.i, label %for.body3.lr.ph.i.do.body.i24.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 3, label %sw.bb1.i.i
    i32 4, label %sw.bb2.i.i
  ]

for.body3.lr.ph.i.do.body.i24.i_crit_edge:        ; preds = %for.body3.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i24.i

for.inc.i:                                        ; preds = %do.body.i.i
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #17
  %52 = ptrtoint ptr %add.ptr69.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr69.i.i, align 4
  %and70.i.i = and i32 %53, 16777215
  %id.i.i = getelementptr inbounds %struct.mlx5_vdpa_umem, ptr %umem.0.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and70.i.i, ptr %id.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i.i) #17
  %inc.i = add nuw nsw i32 %num.043.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %if.end, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

sw.bb.i.i:                                        ; preds = %for.body3.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i24.i

sw.bb1.i.i:                                       ; preds = %for.body3.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i24.i

sw.bb2.i.i:                                       ; preds = %for.body3.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i24.i

do.body.i24.i:                                    ; preds = %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i, %for.body3.lr.ph.i.do.body.i24.i_crit_edge
  %umem.0.i18.i = phi ptr [ inttoptr (i32 -1 to ptr), %for.body3.lr.ph.i.do.body.i24.i_crit_edge ], [ %umem3.i.i.i, %sw.bb2.i.i ], [ %umem2.i.i.i, %sw.bb1.i.i ], [ %umem1.i.i.i, %sw.bb.i.i ]
  %55 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %in.i.i, align 4
  %and.i19.i = and i32 %56, 65535
  %or.i20.i = or i32 %and.i19.i, 168427520
  store i32 %or.i20.i, ptr %in.i.i, align 4
  %id.i21.i = getelementptr inbounds %struct.mlx5_vdpa_umem, ptr %umem.0.i18.i, i32 0, i32 3
  %57 = ptrtoint ptr %id.i21.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %id.i21.i, align 4
  %59 = ptrtoint ptr %add.ptr15.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr15.i.i, align 4
  %and16.i.i = and i32 %60, -16777216
  %and17.i.i = and i32 %58, 16777215
  %or19.i22.i = or i32 %and16.i.i, %and17.i.i
  store i32 %or19.i22.i, ptr %add.ptr15.i.i, align 4
  %61 = ptrtoint ptr %mdev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mdev1.i.i.i, align 8
  %call.i.i = call i32 @mlx5_cmd_exec(ptr noundef %62, ptr noundef nonnull %in.i.i, i32 noundef 16, ptr noundef nonnull %out.i17.i, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i23.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i23.i, label %if.end.i25.i, label %do.body.i24.i.umem_destroy.exit.i_crit_edge

do.body.i24.i.umem_destroy.exit.i_crit_edge:      ; preds = %do.body.i24.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %umem_destroy.exit.i

if.end.i25.i:                                     ; preds = %do.body.i24.i
  call void @__sanitizer_cov_trace_pc() #19
  %63 = ptrtoint ptr %mdev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mdev1.i.i.i, align 8
  %frag_buf.i.i.i = getelementptr inbounds %struct.mlx5_vdpa_umem, ptr %umem.0.i18.i, i32 0, i32 1
  call void @mlx5_frag_buf_free(ptr noundef %64, ptr noundef %frag_buf.i.i.i) #17
  br label %umem_destroy.exit.i

umem_destroy.exit.i:                              ; preds = %if.end.i25.i, %do.body.i24.i.umem_destroy.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i17.i) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num.043.i)
  %cmp2.i = icmp ugt i32 %num.043.i, 2
  br i1 %cmp2.i, label %for.body3.i.1, label %umem_destroy.exit.i.cleanup_crit_edge

umem_destroy.exit.i.cleanup_crit_edge:            ; preds = %umem_destroy.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body3.i.1:                                    ; preds = %umem_destroy.exit.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i.i) #17
  %65 = call ptr @memset(ptr %in.i.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i17.i) #17
  %66 = call ptr @memset(ptr %out.i17.i, i32 0, i32 16)
  %67 = zext i32 %num.043.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.214)
  switch i32 %num.043.i, label %for.body3.i.1.do.body.i24.i.1_crit_edge [
    i32 3, label %sw.bb.i.i.1
    i32 4, label %sw.bb1.i.i.1
    i32 5, label %sw.bb2.i.i.1
  ]

for.body3.i.1.do.body.i24.i.1_crit_edge:          ; preds = %for.body3.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i24.i.1

sw.bb2.i.i.1:                                     ; preds = %for.body3.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i24.i.1

sw.bb1.i.i.1:                                     ; preds = %for.body3.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i24.i.1

sw.bb.i.i.1:                                      ; preds = %for.body3.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i24.i.1

do.body.i24.i.1:                                  ; preds = %sw.bb.i.i.1, %sw.bb1.i.i.1, %sw.bb2.i.i.1, %for.body3.i.1.do.body.i24.i.1_crit_edge
  %umem.0.i18.i.1 = phi ptr [ inttoptr (i32 -1 to ptr), %for.body3.i.1.do.body.i24.i.1_crit_edge ], [ %umem3.i.i.i, %sw.bb2.i.i.1 ], [ %umem2.i.i.i, %sw.bb1.i.i.1 ], [ %umem1.i.i.i, %sw.bb.i.i.1 ]
  %68 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %in.i.i, align 4
  %and.i19.i.1 = and i32 %69, 65535
  %or.i20.i.1 = or i32 %and.i19.i.1, 168427520
  store i32 %or.i20.i.1, ptr %in.i.i, align 4
  %id.i21.i.1 = getelementptr inbounds %struct.mlx5_vdpa_umem, ptr %umem.0.i18.i.1, i32 0, i32 3
  %70 = ptrtoint ptr %id.i21.i.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %id.i21.i.1, align 4
  %72 = ptrtoint ptr %add.ptr15.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr15.i.i, align 4
  %and16.i.i.1 = and i32 %73, -16777216
  %and17.i.i.1 = and i32 %71, 16777215
  %or19.i22.i.1 = or i32 %and16.i.i.1, %and17.i.i.1
  store i32 %or19.i22.i.1, ptr %add.ptr15.i.i, align 4
  %74 = ptrtoint ptr %mdev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mdev1.i.i.i, align 8
  %call.i.i.1 = call i32 @mlx5_cmd_exec(ptr noundef %75, ptr noundef nonnull %in.i.i, i32 noundef 16, ptr noundef nonnull %out.i17.i, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool.not.i23.i.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool.not.i23.i.1, label %if.end.i25.i.1, label %do.body.i24.i.1.umem_destroy.exit.i.1_crit_edge

do.body.i24.i.1.umem_destroy.exit.i.1_crit_edge:  ; preds = %do.body.i24.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %umem_destroy.exit.i.1

if.end.i25.i.1:                                   ; preds = %do.body.i24.i.1
  call void @__sanitizer_cov_trace_pc() #19
  %76 = ptrtoint ptr %mdev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mdev1.i.i.i, align 8
  %frag_buf.i.i.i.1 = getelementptr inbounds %struct.mlx5_vdpa_umem, ptr %umem.0.i18.i.1, i32 0, i32 1
  call void @mlx5_frag_buf_free(ptr noundef %77, ptr noundef %frag_buf.i.i.i.1) #17
  br label %umem_destroy.exit.i.1

umem_destroy.exit.i.1:                            ; preds = %if.end.i25.i.1, %do.body.i24.i.1.umem_destroy.exit.i.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i17.i) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i.i) #17
  br label %cleanup

if.end:                                           ; preds = %for.inc.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %78 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %78, i32 noundef 3520, i32 noundef 208) #20
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.err_alloc_crit_edge, label %if.end4

if.end.err_alloc_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_alloc

if.end4:                                          ; preds = %if.end
  %add.ptr16 = getelementptr i32, ptr %call7.i.i, i32 1
  %79 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr16, align 4
  %and17 = and i32 %80, -65536
  %or20 = or i32 %and17, 13
  store i32 %or20, ptr %add.ptr16, align 4
  %res = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 2
  %81 = ptrtoint ptr %uid.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %uid.i.i, align 8
  %conv = zext i16 %82 to i32
  %or33 = or i32 %conv, 167772160
  %83 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %or33, ptr %call7.i.i, align 8
  %avail_idx = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 15
  %84 = ptrtoint ptr %avail_idx to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %avail_idx, align 4
  %conv40 = zext i16 %85 to i32
  %add.ptr44 = getelementptr i8, ptr %call7.i.i, i32 56
  %shl47 = shl nuw i32 %conv40, 16
  %used_idx = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 16
  %86 = ptrtoint ptr %used_idx to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %used_idx, align 2
  %conv54 = zext i16 %87 to i32
  %or62 = or i32 %shl47, %conv54
  %88 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %or62, ptr %add.ptr44, align 8
  %actual_features = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 4
  %89 = ptrtoint ptr %actual_features to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %actual_features, align 8
  %91 = trunc i64 %90 to i32
  %92 = lshr i32 %91, 2
  %shl.i = and i32 %92, 512
  %93 = lshr i32 %91, 4
  %shl8.i = and i32 %93, 256
  %94 = shl i32 %91, 7
  %shl15.i = and i32 %94, 128
  %95 = shl i32 %91, 5
  %shl23.i = and i32 %95, 64
  %or16.i = or i32 %shl.i, %shl8.i
  %or.i = or i32 %or16.i, %shl15.i
  %or24.i = or i32 %or.i, %shl23.i
  %add.ptr74 = getelementptr i8, ptr %call7.i.i, i32 32
  %96 = ptrtoint ptr %add.ptr74 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr74, align 8
  %and75 = and i32 %97, 4194303
  %shl77 = shl nuw i32 %or24.i, 22
  %or78 = or i32 %shl77, %and75
  store i32 %or78, ptr %add.ptr74, align 8
  %add.ptr82 = getelementptr i8, ptr %call7.i.i, i32 80
  %98 = ptrtoint ptr %mdev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mdev1.i.i.i, align 8
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %99, i32 0, i32 8, i32 0, i32 19
  %100 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  %and1.i = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.get_queue_type.exit_crit_edge

if.end4.get_queue_type.exit_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_queue_type.exit

if.end.i:                                         ; preds = %if.end4
  %and2.i = and i32 %103, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %if.end.i.get_queue_type.exit_crit_edge, !prof !365

if.end.i.get_queue_type.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_queue_type.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 806, i32 noundef 9, ptr noundef null) #17
  br label %get_queue_type.exit

get_queue_type.exit:                              ; preds = %do.end.i, %if.end.i.get_queue_type.exit_crit_edge, %if.end4.get_queue_type.exit_crit_edge
  %retval.0.i432 = phi i32 [ 0, %if.end4.get_queue_type.exit_crit_edge ], [ 16777216, %do.end.i ], [ 16777216, %if.end.i.get_queue_type.exit_crit_edge ]
  %104 = ptrtoint ptr %add.ptr82 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %add.ptr82, align 8
  %and90 = and i32 %105, 16777215
  %or93 = or i32 %and90, %retval.0.i432
  store i32 %or93, ptr %add.ptr82, align 8
  %index = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 12
  %106 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %index, align 8
  %108 = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.i.not = icmp eq i32 %108, 0
  br i1 %tobool.i.not, label %get_queue_type.exit.do.body115_crit_edge, label %do.body100

get_queue_type.exit.do.body115_crit_edge:         ; preds = %get_queue_type.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body115

do.body100:                                       ; preds = %get_queue_type.exit
  call void @__sanitizer_cov_trace_pc() #19
  %res102 = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %ndev, i32 0, i32 1
  %109 = ptrtoint ptr %res102 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %res102, align 8
  %add.ptr106 = getelementptr i8, ptr %call7.i.i, i32 36
  %111 = ptrtoint ptr %add.ptr106 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %add.ptr106, align 4
  %and107 = and i32 %112, -16777216
  %and108 = and i32 %110, 16777215
  %or110 = or i32 %and107, %and108
  store i32 %or110, ptr %add.ptr106, align 4
  br label %do.body115

do.body115:                                       ; preds = %do.body100, %get_queue_type.exit.do.body115_crit_edge
  %113 = ptrtoint ptr %add.ptr82 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %add.ptr82, align 8
  %or124 = and i32 %114, -524288
  %and136 = and i32 %107, 65535
  %and135 = or i32 %and136, %or124
  %or138 = or i32 %and135, 65536
  store i32 %or138, ptr %add.ptr82, align 8
  %qpn = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 6, i32 0, i32 2
  %115 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %qpn, align 4
  %add.ptr147 = getelementptr i8, ptr %call7.i.i, i32 84
  %117 = ptrtoint ptr %add.ptr147 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %add.ptr147, align 4
  %and148 = and i32 %118, -1090519040
  %and149 = and i32 %116, 16777215
  %or151 = or i32 %and148, %and149
  %119 = ptrtoint ptr %num_ent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %num_ent.i.i.i, align 8
  %add.ptr160 = getelementptr i8, ptr %call7.i.i, i32 88
  %121 = ptrtoint ptr %add.ptr160 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %add.ptr160, align 8
  %and161 = and i32 %122, -65536
  %and162 = and i32 %120, 65535
  %or164 = or i32 %and161, %and162
  store i32 %or164, ptr %add.ptr160, align 8
  %123 = ptrtoint ptr %actual_features to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %actual_features, align 8
  %sh.diff = lshr i64 %124, 2
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %shl181 = and i32 %tr.sh.diff, 1073741824
  %or182 = or i32 %shl181, %or151
  store i32 %or182, ptr %add.ptr147, align 4
  %desc_addr = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 1
  %125 = ptrtoint ptr %desc_addr to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %desc_addr, align 8
  %add.ptr194 = getelementptr i8, ptr %call7.i.i, i32 96
  %127 = ptrtoint ptr %add.ptr194 to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %126, ptr %add.ptr194, align 8
  %device_addr = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 2
  %128 = ptrtoint ptr %device_addr to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %device_addr, align 8
  %add.ptr207 = getelementptr i8, ptr %call7.i.i, i32 104
  %130 = ptrtoint ptr %add.ptr207 to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %129, ptr %add.ptr207, align 8
  %driver_addr = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 3
  %131 = ptrtoint ptr %driver_addr to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %driver_addr, align 8
  %add.ptr220 = getelementptr i8, ptr %call7.i.i, i32 112
  %133 = ptrtoint ptr %add.ptr220 to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %132, ptr %add.ptr220, align 8
  %mr = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 9
  %134 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %mr, align 8
  %add.ptr231 = getelementptr i8, ptr %call7.i.i, i32 120
  %136 = ptrtoint ptr %add.ptr231 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %add.ptr231, align 8
  %id = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 8, i32 3
  %137 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %id, align 4
  %add.ptr244 = getelementptr i8, ptr %call7.i.i, i32 128
  %139 = ptrtoint ptr %add.ptr244 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %add.ptr244, align 8
  %size = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 8, i32 2
  %140 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %size, align 4
  %add.ptr258 = getelementptr i8, ptr %call7.i.i, i32 132
  %142 = ptrtoint ptr %add.ptr258 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %add.ptr258, align 4
  %id268 = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 9, i32 3
  %143 = ptrtoint ptr %id268 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %id268, align 4
  %add.ptr272 = getelementptr i8, ptr %call7.i.i, i32 144
  %145 = ptrtoint ptr %add.ptr272 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %add.ptr272, align 8
  %size283 = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 9, i32 2
  %146 = ptrtoint ptr %size283 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %size283, align 4
  %add.ptr287 = getelementptr i8, ptr %call7.i.i, i32 148
  %148 = ptrtoint ptr %add.ptr287 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %add.ptr287, align 4
  %id297 = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 10, i32 3
  %149 = ptrtoint ptr %id297 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %id297, align 4
  %add.ptr301 = getelementptr i8, ptr %call7.i.i, i32 160
  %151 = ptrtoint ptr %add.ptr301 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %add.ptr301, align 8
  %size312 = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 10, i32 2
  %152 = ptrtoint ptr %size312 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %size312, align 4
  %add.ptr316 = getelementptr i8, ptr %call7.i.i, i32 164
  %154 = ptrtoint ptr %add.ptr316 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %add.ptr316, align 4
  %155 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %res, align 8
  %add.ptr331 = getelementptr i8, ptr %call7.i.i, i32 180
  %157 = ptrtoint ptr %add.ptr331 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %add.ptr331, align 4
  %and332 = and i32 %158, -16777216
  %and333 = and i32 %156, 16777215
  %or335 = or i32 %and332, %and333
  store i32 %or335, ptr %add.ptr331, align 4
  %159 = ptrtoint ptr %mdev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mdev1.i.i.i, align 8
  %call340 = call i32 @mlx5_cmd_exec(ptr noundef %160, ptr noundef nonnull %call7.i.i, i32 noundef 208, ptr noundef nonnull %out, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call340)
  %tobool341.not = icmp eq i32 %call340, 0
  call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br i1 %tobool341.not, label %if.end343, label %do.body115.err_alloc_crit_edge

do.body115.err_alloc_crit_edge:                   ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_alloc

if.end343:                                        ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr345 = getelementptr inbounds i32, ptr %out, i32 2
  %161 = ptrtoint ptr %add.ptr345 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %add.ptr345, align 4
  %virtq_id = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 13
  %163 = ptrtoint ptr %virtq_id to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %virtq_id, align 4
  br label %cleanup

err_alloc:                                        ; preds = %do.body115.err_alloc_crit_edge, %if.end.err_alloc_crit_edge
  %err.0 = phi i32 [ -12, %if.end.err_alloc_crit_edge ], [ %call340, %do.body115.err_alloc_crit_edge ]
  call fastcc void @umems_destroy(ptr noundef %ndev, ptr noundef %mvq)
  br label %cleanup

cleanup:                                          ; preds = %err_alloc, %if.end343, %umem_destroy.exit.i.1, %umem_destroy.exit.i.cleanup_crit_edge, %create_umem.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_alloc ], [ 0, %if.end343 ], [ %retval.0.i.i, %create_umem.exit.i.cleanup_crit_edge ], [ %retval.0.i.i, %umem_destroy.exit.i.1 ], [ %retval.0.i.i, %umem_destroy.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_db_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fill_page_frag_array(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vector2eqn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_create_cq(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_vdpa_cq_comp(ptr nocapture noundef %mcq, ptr nocapture noundef readnone %eqe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev1 = getelementptr i8, ptr %mcq, i32 580
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 8
  %uar = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %uar to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uar, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cons_index.i.i = getelementptr %struct.mlx5_core_cq, ptr %mcq, i32 0, i32 11
  %cqe.i.i.i = getelementptr inbounds %struct.mlx5_vdpa_cq, ptr %mcq, i32 0, i32 3
  %buf.i.i.i.i = getelementptr inbounds %struct.mlx5_vdpa_cq, ptr %mcq, i32 0, i32 1
  %strides_offset.i.i.i.i.i = getelementptr inbounds %struct.mlx5_vdpa_cq, ptr %mcq, i32 0, i32 1, i32 0, i32 3
  %log_frag_strides.i.i.i.i.i = getelementptr inbounds %struct.mlx5_vdpa_cq, ptr %mcq, i32 0, i32 1, i32 0, i32 6
  %frag_sz_m1.i.i.i.i.i = getelementptr inbounds %struct.mlx5_vdpa_cq, ptr %mcq, i32 0, i32 1, i32 0, i32 2
  %log_stride.i.i.i.i.i = getelementptr inbounds %struct.mlx5_vdpa_cq, ptr %mcq, i32 0, i32 1, i32 0, i32 5
  %num_ent = getelementptr i8, ptr %mcq, i32 -4
  %index.i = getelementptr i8, ptr %mcq, i32 572
  %set_ci_db.i.i = getelementptr i8, ptr %mcq, i32 8
  %head.i.i = getelementptr i8, ptr %mcq, i32 444
  %db.i.i = getelementptr i8, ptr %mcq, i32 428
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %num.0 = phi i32 [ 0, %entry ], [ %num.0.be, %while.cond.backedge ]
  %6 = ptrtoint ptr %cons_index.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cons_index.i.i, align 4
  %8 = ptrtoint ptr %cqe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cqe.i.i.i, align 4
  %sub.i.i.i = add i32 %9, -1
  %and.i.i.i = and i32 %sub.i.i.i, %7
  %10 = ptrtoint ptr %strides_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %strides_offset.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %11 to i32
  %add.i.i.i.i.i = add i32 %and.i.i.i, %conv.i.i.i.i.i
  %12 = ptrtoint ptr %log_frag_strides.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %log_frag_strides.i.i.i.i.i, align 2
  %conv1.i.i.i.i.i = zext i8 %13 to i32
  %shr.i.i.i.i.i = lshr i32 %add.i.i.i.i.i, %conv1.i.i.i.i.i
  %14 = ptrtoint ptr %buf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %15, i32 %shr.i.i.i.i.i
  %16 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %frag_sz_m1.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %frag_sz_m1.i.i.i.i.i, align 4
  %conv2.i.i.i.i.i = zext i16 %19 to i32
  %and.i.i.i.i.i = and i32 %add.i.i.i.i.i, %conv2.i.i.i.i.i
  %20 = ptrtoint ptr %log_stride.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %log_stride.i.i.i.i.i, align 1
  %conv3.i.i.i.i.i = zext i8 %21 to i32
  %shl.i.i.i.i.i = shl i32 %and.i.i.i.i.i, %conv3.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %17, i32 %shl.i.i.i.i.i
  %op_own.i.i.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %add.ptr.i.i.i.i.i, i32 0, i32 23
  %22 = ptrtoint ptr %op_own.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %op_own.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %23)
  %cmp.not.i.i.i = icmp ugt i8 %23, -17
  br i1 %cmp.not.i.i.i, label %while.cond.while.end_crit_edge, label %land.lhs.true.i.i.i, !prof !365

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

land.lhs.true.i.i.i:                              ; preds = %while.cond
  %and7.i.i.i = and i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i.i)
  %tobool8.i.i.i = icmp ne i32 %and7.i.i.i, 0
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %25 = icmp ne i8 %24, 0
  %tobool13.not.i.i.not.i = xor i1 %tobool8.i.i.i, %25
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i.i.i, null
  %or.cond.i = select i1 %tobool13.not.i.i.not.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.i.while.end_crit_edge, label %while.body

land.lhs.true.i.i.i.while.end_crit_edge:          ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %land.lhs.true.i.i.i
  %inc.i = add i32 %7, 1
  %26 = ptrtoint ptr %cons_index.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %inc.i, ptr %cons_index.i.i, align 4
  %inc = add i32 %num.0, 1
  %27 = ptrtoint ptr %num_ent to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_ent, align 8
  %div19 = lshr i32 %28, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %div19)
  %cmp = icmp ugt i32 %inc, %div19
  br i1 %cmp, label %if.then, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.backedge

if.then:                                          ; preds = %while.body
  %29 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ndev1, align 8
  %event_cbs.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %event_cbs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %event_cbs.i, align 8
  %33 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %index.i, align 8
  %arrayidx.i = getelementptr %struct.vdpa_callback, ptr %32, i32 %34
  %35 = ptrtoint ptr %cons_index.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cons_index.i.i, align 4
  %and.i.i = and i32 %36, 16777215
  %37 = ptrtoint ptr %set_ci_db.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_ci_db.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and.i.i, ptr %38, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !370
  %40 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %head.i.i, align 4
  %42 = trunc i32 %inc to i16
  %conv1.i.i = add i16 %41, %42
  store i16 %conv1.i.i, ptr %head.i.i, align 4
  %conv3.i.i = zext i16 %conv1.i.i to i32
  %43 = ptrtoint ptr %db.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %db.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv3.i.i, ptr %44, align 4
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i21 = icmp eq ptr %47, null
  br i1 %tobool.not.i21, label %if.then.while.cond.backedge_crit_edge, label %if.then.i

if.then.while.cond.backedge_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.backedge

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %private.i = getelementptr %struct.vdpa_callback, ptr %32, i32 %34, i32 1
  %48 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %private.i, align 4
  %call.i = tail call i32 %47(ptr noundef %49) #17
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then.i, %if.then.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %num.0.be = phi i32 [ %inc, %while.body.while.cond.backedge_crit_edge ], [ 0, %if.then.while.cond.backedge_crit_edge ], [ 0, %if.then.i ]
  br label %while.cond

while.end:                                        ; preds = %land.lhs.true.i.i.i.while.end_crit_edge, %while.cond.while.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.0)
  %tobool2.not = icmp eq i32 %num.0, 0
  br i1 %tobool2.not, label %while.end.if.end4_crit_edge, label %if.then3

while.end.if.end4_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4

if.then3:                                         ; preds = %while.end
  %50 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ndev1, align 8
  %event_cbs.i24 = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %event_cbs.i24 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %event_cbs.i24, align 8
  %54 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %index.i, align 8
  %arrayidx.i26 = getelementptr %struct.vdpa_callback, ptr %53, i32 %55
  %56 = ptrtoint ptr %cons_index.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cons_index.i.i, align 4
  %and.i.i28 = and i32 %57, 16777215
  %58 = ptrtoint ptr %set_ci_db.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %set_ci_db.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and.i.i28, ptr %59, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !370
  %61 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %head.i.i, align 4
  %63 = trunc i32 %num.0 to i16
  %conv1.i.i31 = add i16 %62, %63
  store i16 %conv1.i.i31, ptr %head.i.i, align 4
  %conv3.i.i32 = zext i16 %conv1.i.i31 to i32
  %64 = ptrtoint ptr %db.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %db.i.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv3.i.i32, ptr %65, align 4
  %67 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i26, align 4
  %tobool.not.i34 = icmp eq ptr %68, null
  br i1 %tobool.not.i34, label %if.then3.if.end4_crit_edge, label %if.then.i37

if.then3.if.end4_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4

if.then.i37:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  %private.i35 = getelementptr %struct.vdpa_callback, ptr %53, i32 %55, i32 1
  %69 = ptrtoint ptr %private.i35 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %private.i35, align 4
  %call.i36 = tail call i32 %68(ptr noundef %70) #17
  br label %if.end4

if.end4:                                          ; preds = %if.then.i37, %if.then3.if.end4_crit_edge, %while.end.if.end4_crit_edge
  %71 = ptrtoint ptr %cons_index.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cons_index.i.i, align 4
  %arm_sn.i = getelementptr inbounds %struct.mlx5_core_cq, ptr %mcq, i32 0, i32 12
  %73 = ptrtoint ptr %arm_sn.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arm_sn.i, align 4
  %and1.i = and i32 %72, 16777215
  %and.i = shl i32 %74, 28
  %shl.i = and i32 %and.i, 805306368
  %or2.i = or i32 %shl.i, %and1.i
  %arm_db.i = getelementptr inbounds %struct.mlx5_core_cq, ptr %mcq, i32 0, i32 3
  %75 = ptrtoint ptr %arm_db.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arm_db.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or2.i, ptr %76, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !371
  tail call void @arm_heavy_mb() #17
  %78 = ptrtoint ptr %mcq to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mcq, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or2.i) #17, !srcloc !372
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %79) #17, !srcloc !372
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_cq_arm(ptr nocapture noundef readonly %cq, ptr noundef %uar_page, i32 noundef %cons_index) unnamed_addr #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %arm_sn = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 12
  %0 = ptrtoint ptr %arm_sn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arm_sn, align 4
  %and1 = and i32 %cons_index, 16777215
  %and = shl i32 %1, 28
  %shl = and i32 %and, 805306368
  %or2 = or i32 %shl, %and1
  %arm_db = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 3
  %2 = ptrtoint ptr %arm_db to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arm_db, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or2, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !371
  tail call void @arm_heavy_mb() #17
  %5 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cq, align 4
  %add.ptr = getelementptr i8, ptr %uar_page, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or2) #17, !srcloc !372
  %add.ptr.i = getelementptr i8, ptr %uar_page, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #17, !srcloc !372
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_frag_buf_alloc_node(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @modify_qp(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readonly %mvq, i1 noundef zeroext %fw, i32 noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %qpn.i = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 6, i32 0, i32 2
  %qpn2.i = getelementptr inbounds %struct.mlx5_vdpa_virtqueue, ptr %mvq, i32 0, i32 7, i32 0, i32 2
  %cond.in.i = select i1 %fw, ptr %qpn.i, ptr %qpn2.i
  %0 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %cond.in.i16 = select i1 %fw, ptr %qpn2.i, ptr %qpn.i
  %1 = ptrtoint ptr %cond.in.i16 to i32
  call void @__asan_load4_noabort(i32 %1)
  %cond.i17 = load i32, ptr %cond.in.i16, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.215)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1290, label %kzalloc.exit449.i
    i32 1282, label %kzalloc.exit481.i
    i32 1283, label %kzalloc.exit521.i
    i32 1284, label %kzalloc.exit561.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

kzalloc.exit449.i:                                ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 16) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i445.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 16) #20
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  %tobool2.not.i = icmp eq ptr %call7.i.i445.i, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %kzalloc.exit449.i.outerr.i_crit_edge, label %do.body.i

kzalloc.exit449.i.outerr.i_crit_edge:             ; preds = %kzalloc.exit449.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %outerr.i

do.body.i:                                        ; preds = %kzalloc.exit449.i
  call void @__sanitizer_cov_trace_pc() #19
  %uid.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %uid.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %uid.i, align 8
  %conv.i = zext i16 %6 to i32
  %or17.i = or i32 %conv.i, 84541440
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or17.i, ptr %call7.i.i.i, align 8
  %add.ptr26.i = getelementptr i32, ptr %call7.i.i.i, i32 2
  %8 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr26.i, align 8
  %and27.i = and i32 %9, -16777216
  %and28.i = and i32 %cond.i, 16777215
  %or30.i = or i32 %and27.i, %and28.i
  store i32 %or30.i, ptr %add.ptr26.i, align 8
  br label %if.end

kzalloc.exit481.i:                                ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i477.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 272) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i488.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 16) #20
  %tobool37.not.i = icmp eq ptr %call7.i.i477.i, null
  %tobool39.not.i = icmp eq ptr %call7.i.i488.i, null
  %or.cond415.i = select i1 %tobool37.not.i, i1 true, i1 %tobool39.not.i
  br i1 %or.cond415.i, label %kzalloc.exit481.i.outerr.i_crit_edge, label %do.body42.i

kzalloc.exit481.i.outerr.i_crit_edge:             ; preds = %kzalloc.exit481.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %outerr.i

do.body42.i:                                      ; preds = %kzalloc.exit481.i
  call void @__sanitizer_cov_trace_pc() #19
  %uid59.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %uid59.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %uid59.i, align 8
  %conv60.i = zext i16 %13 to i32
  %or68.i = or i32 %conv60.i, 84017152
  %14 = ptrtoint ptr %call7.i.i477.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or68.i, ptr %call7.i.i477.i, align 8
  %add.ptr77.i = getelementptr i32, ptr %call7.i.i477.i, i32 2
  %15 = ptrtoint ptr %add.ptr77.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr77.i, align 8
  %and78.i = and i32 %16, -16777216
  %and79.i = and i32 %cond.i, 16777215
  %or81.i = or i32 %and78.i, %and79.i
  store i32 %or81.i, ptr %add.ptr77.i, align 8
  %add.ptr91.i = getelementptr i8, ptr %call7.i.i477.i, i32 44
  %17 = ptrtoint ptr %add.ptr91.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr91.i, align 4
  %and92.i = and i32 %18, -16777216
  %and93.i = and i32 %cond.i17, 16777215
  %or95.i = or i32 %and92.i, %and93.i
  store i32 %or95.i, ptr %add.ptr91.i, align 4
  %add.ptr104.i = getelementptr i8, ptr %call7.i.i477.i, i32 168
  %19 = ptrtoint ptr %add.ptr104.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr104.i, align 8
  %or108.i = or i32 %20, 16384
  store i32 %or108.i, ptr %add.ptr104.i, align 8
  %add.ptr118.i = getelementptr i8, ptr %call7.i.i477.i, i32 84
  %21 = ptrtoint ptr %add.ptr118.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr118.i, align 4
  %and119.i = and i32 %22, -16711681
  %or122.i = or i32 %and119.i, 65536
  store i32 %or122.i, ptr %add.ptr118.i, align 4
  br label %if.end

kzalloc.exit521.i:                                ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i517.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 272) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i528.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 16) #20
  %tobool129.not.i = icmp eq ptr %call7.i.i517.i, null
  %tobool131.not.i = icmp eq ptr %call7.i.i528.i, null
  %or.cond416.i = select i1 %tobool129.not.i, i1 true, i1 %tobool131.not.i
  br i1 %or.cond416.i, label %kzalloc.exit521.i.outerr.i_crit_edge, label %do.body134.i

kzalloc.exit521.i.outerr.i_crit_edge:             ; preds = %kzalloc.exit521.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %outerr.i

do.body134.i:                                     ; preds = %kzalloc.exit521.i
  call void @__sanitizer_cov_trace_pc() #19
  %uid151.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %uid151.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %uid151.i, align 8
  %conv152.i = zext i16 %26 to i32
  %or160.i = or i32 %conv152.i, 84082688
  %27 = ptrtoint ptr %call7.i.i517.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or160.i, ptr %call7.i.i517.i, align 8
  %add.ptr169.i = getelementptr i32, ptr %call7.i.i517.i, i32 2
  %28 = ptrtoint ptr %add.ptr169.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr169.i, align 8
  %and170.i = and i32 %29, -16777216
  %and171.i = and i32 %cond.i, 16777215
  %or173.i = or i32 %and170.i, %and171.i
  store i32 %or173.i, ptr %add.ptr169.i, align 8
  %add.ptr183.i = getelementptr i8, ptr %call7.i.i517.i, i32 32
  %30 = ptrtoint ptr %add.ptr183.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr183.i, align 8
  %and184.i = and i32 %31, 16777215
  %or200.i = or i32 %and184.i, 1040187392
  store i32 %or200.i, ptr %add.ptr183.i, align 8
  %add.ptr209.i = getelementptr i8, ptr %call7.i.i517.i, i32 44
  %32 = ptrtoint ptr %add.ptr209.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr209.i, align 4
  %and210.i = and i32 %33, -16777216
  %and211.i = and i32 %cond.i17, 16777215
  %or213.i = or i32 %and210.i, %and211.i
  store i32 %or213.i, ptr %add.ptr209.i, align 4
  %add.ptr217.i = getelementptr i8, ptr %call7.i.i517.i, i32 48
  %34 = ptrtoint ptr %add.ptr217.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr217.i, align 8
  %or227.i = or i32 %35, -2147483648
  store i32 %or227.i, ptr %add.ptr217.i, align 8
  br label %if.end

kzalloc.exit561.i:                                ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i557.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 272) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i568.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 16) #20
  %tobool234.not.i = icmp eq ptr %call7.i.i557.i, null
  %tobool236.not.i = icmp eq ptr %call7.i.i568.i, null
  %or.cond417.i = select i1 %tobool234.not.i, i1 true, i1 %tobool236.not.i
  br i1 %or.cond417.i, label %kzalloc.exit561.i.outerr.i_crit_edge, label %do.body239.i

kzalloc.exit561.i.outerr.i_crit_edge:             ; preds = %kzalloc.exit561.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %outerr.i

do.body239.i:                                     ; preds = %kzalloc.exit561.i
  call void @__sanitizer_cov_trace_pc() #19
  %uid256.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 2, i32 4
  %38 = ptrtoint ptr %uid256.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %uid256.i, align 8
  %conv257.i = zext i16 %39 to i32
  %or265.i = or i32 %conv257.i, 84148224
  %40 = ptrtoint ptr %call7.i.i557.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or265.i, ptr %call7.i.i557.i, align 8
  %add.ptr274.i = getelementptr i32, ptr %call7.i.i557.i, i32 2
  %41 = ptrtoint ptr %add.ptr274.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr274.i, align 8
  %and275.i = and i32 %42, -16777216
  %and276.i = and i32 %cond.i, 16777215
  %or278.i = or i32 %and275.i, %and276.i
  store i32 %or278.i, ptr %add.ptr274.i, align 8
  %add.ptr289.i = getelementptr i8, ptr %call7.i.i557.i, i32 56
  %43 = ptrtoint ptr %add.ptr289.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr289.i, align 8
  %and290.i = and i32 %44, 134217727
  %or293.i = or i32 %and290.i, 1879048192
  store i32 %or293.i, ptr %add.ptr289.i, align 8
  %add.ptr302.i = getelementptr i8, ptr %call7.i.i557.i, i32 136
  %45 = ptrtoint ptr %add.ptr302.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr302.i, align 8
  %or319.i = or i32 %46, 516096
  store i32 %or319.i, ptr %add.ptr302.i, align 8
  br label %if.end

outerr.i:                                         ; preds = %kzalloc.exit561.i.outerr.i_crit_edge, %kzalloc.exit521.i.outerr.i_crit_edge, %kzalloc.exit481.i.outerr.i_crit_edge, %kzalloc.exit449.i.outerr.i_crit_edge
  %out.0 = phi ptr [ %call7.i.i568.i, %kzalloc.exit561.i.outerr.i_crit_edge ], [ %call7.i.i528.i, %kzalloc.exit521.i.outerr.i_crit_edge ], [ %call7.i.i488.i, %kzalloc.exit481.i.outerr.i_crit_edge ], [ %call7.i.i445.i, %kzalloc.exit449.i.outerr.i_crit_edge ]
  %in.0 = phi ptr [ %call7.i.i557.i, %kzalloc.exit561.i.outerr.i_crit_edge ], [ %call7.i.i517.i, %kzalloc.exit521.i.outerr.i_crit_edge ], [ %call7.i.i477.i, %kzalloc.exit481.i.outerr.i_crit_edge ], [ %call7.i.i.i, %kzalloc.exit449.i.outerr.i_crit_edge ]
  tail call void @kfree(ptr noundef %in.0) #17
  tail call void @kfree(ptr noundef %out.0) #17
  br label %cleanup

if.end:                                           ; preds = %do.body239.i, %do.body134.i, %do.body42.i, %do.body.i
  %inlen.2.ph = phi i32 [ 16, %do.body.i ], [ 272, %do.body42.i ], [ 272, %do.body134.i ], [ 272, %do.body239.i ]
  %out.1.ph = phi ptr [ %call7.i.i445.i, %do.body.i ], [ %call7.i.i488.i, %do.body42.i ], [ %call7.i.i528.i, %do.body134.i ], [ %call7.i.i568.i, %do.body239.i ]
  %in.1.ph = phi ptr [ %call7.i.i.i, %do.body.i ], [ %call7.i.i477.i, %do.body42.i ], [ %call7.i.i517.i, %do.body134.i ], [ %call7.i.i557.i, %do.body239.i ]
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 1
  %47 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mdev, align 8
  %call5 = tail call i32 @mlx5_cmd_exec(ptr noundef %48, ptr noundef nonnull %in.1.ph, i32 noundef %inlen.2.ph, ptr noundef nonnull %out.1.ph, i32 noundef 16) #17
  tail call void @kfree(ptr noundef nonnull %in.1.ph) #17
  tail call void @kfree(ptr noundef nonnull %out.1.ph) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %outerr.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %outerr.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fill_page_frag_array_perm(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_cvq_notify(ptr nocapture noundef readonly %vring) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %event_cb = getelementptr i8, ptr %vring, i32 72
  %0 = ptrtoint ptr %event_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %event_cb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %private = getelementptr i8, ptr %vring, i32 76
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %call = tail call i32 %1(ptr noundef %3) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_driver(ptr noundef %mvdev) unnamed_addr #2 align 64 {
entry:
  %dest.i = alloca [2 x %struct.mlx5_flow_destination], align 4
  %ft_attr.i = alloca %struct.mlx5_flow_table_attr, align 4
  %flow_act.i = alloca %struct.mlx5_flow_act, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %reslock = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %mvdev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %reslock, i32 noundef 0) #17
  %setup = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %mvdev, i32 0, i32 10
  %0 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %setup, align 8, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !353) #17
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.185, i32 noundef 2162, i32 noundef %11) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_vqs.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 6
  %12 = ptrtoint ptr %max_vqs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_vqs.i, align 4
  %.off.i = add i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %14 = icmp ult i32 %.off.i, 3
  br i1 %14, label %if.end.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %vqs.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %mvdev, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.048.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %vqs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vqs.i, align 4
  %arrayidx.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %16, i32 %i.048.i
  %call2.i = tail call fastcc i32 @setup_vq(ptr noundef %mvdev, ptr noundef %arrayidx.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.err_vq.i_crit_edge

for.body.i.err_vq.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_vq.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.048.i, 1
  %17 = ptrtoint ptr %max_vqs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_vqs.i, align 4
  %div.i.i = sdiv i32 %18, 2
  %mul.i = shl nsw i32 %div.i.i, 1
  %cmp.i = icmp ult i32 %inc.i, %mul.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end.for.end.i_crit_edge ], [ %inc.i, %for.inc.i.for.end.i_crit_edge ]
  %actual_features.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 4
  %19 = ptrtoint ptr %actual_features.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %actual_features.i, align 8
  %and.i73 = and i64 %20, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i73)
  %tobool3.not.i = icmp eq i64 %and.i73, 0
  br i1 %tobool3.not.i, label %for.end.i.if.end12_crit_edge, label %if.then4.i

for.end.i.if.end12_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.then4.i:                                       ; preds = %for.end.i
  %vring.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 10, i32 2
  %desc_addr.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 10, i32 4
  %21 = ptrtoint ptr %desc_addr.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %desc_addr.i, align 8
  %conv.i = trunc i64 %22 to i32
  %23 = inttoptr i32 %conv.i to ptr
  %driver_addr.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 10, i32 6
  %24 = ptrtoint ptr %driver_addr.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %driver_addr.i, align 8
  %conv6.i = trunc i64 %25 to i32
  %26 = inttoptr i32 %conv6.i to ptr
  %device_addr.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 10, i32 5
  %27 = ptrtoint ptr %device_addr.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %device_addr.i, align 8
  %conv7.i = trunc i64 %28 to i32
  %29 = inttoptr i32 %conv7.i to ptr
  %call8.i = tail call i32 @vringh_init_iotlb(ptr noundef %vring.i, i64 noundef %20, i32 noundef 16, i1 noundef zeroext false, ptr noundef %23, ptr noundef %26, ptr noundef %29) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then4.i.if.end12_crit_edge, label %if.then4.i.err_vq.i_crit_edge

if.then4.i.err_vq.i_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_vq.i

if.then4.i.if.end12_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

err_vq.i:                                         ; preds = %if.then4.i.err_vq.i_crit_edge, %for.body.i.err_vq.i_crit_edge
  %i.044.i = phi i32 [ %i.0.lcssa.i, %if.then4.i.err_vq.i_crit_edge ], [ %i.048.i, %for.body.i.err_vq.i_crit_edge ]
  %err.0.i = phi i32 [ %call8.i, %if.then4.i.err_vq.i_crit_edge ], [ %call2.i, %for.body.i.err_vq.i_crit_edge ]
  %i.149.i = add i32 %i.044.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.149.i)
  %cmp1450.i = icmp sgt i32 %i.149.i, -1
  br i1 %cmp1450.i, label %for.body16.lr.ph.i, label %err_vq.i.do.end6_crit_edge

err_vq.i.do.end6_crit_edge:                       ; preds = %err_vq.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end6

for.body16.lr.ph.i:                               ; preds = %err_vq.i
  %vqs17.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %mvdev, i32 0, i32 3
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.body16.lr.ph.i
  %i.151.i = phi i32 [ %i.149.i, %for.body16.lr.ph.i ], [ %i.1.i, %for.body16.i.for.body16.i_crit_edge ]
  %30 = ptrtoint ptr %vqs17.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vqs17.i, align 4
  %arrayidx18.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %31, i32 %i.151.i
  tail call fastcc void @teardown_vq(ptr noundef %mvdev, ptr noundef %arrayidx18.i) #17
  %i.1.i = add nsw i32 %i.151.i, -1
  %cmp14.i.not = icmp eq i32 %i.151.i, 0
  br i1 %cmp14.i.not, label %setup_virtqueues.exit, label %for.body16.i.for.body16.i_crit_edge

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body16.i

setup_virtqueues.exit:                            ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool2.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool2.not, label %setup_virtqueues.exit.if.end12_crit_edge, label %setup_virtqueues.exit.do.end6_crit_edge

setup_virtqueues.exit.do.end6_crit_edge:          ; preds = %setup_virtqueues.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end6

setup_virtqueues.exit.if.end12_crit_edge:         ; preds = %setup_virtqueues.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

do.end6:                                          ; preds = %setup_virtqueues.exit.do.end6_crit_edge, %err_vq.i.do.end6_crit_edge
  %mdev7 = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 1
  %32 = ptrtoint ptr %mdev7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdev7, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %36 = tail call i32 @llvm.read_register.i32(metadata !353) #17
  %and.i74 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i74 to ptr
  %task10 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task10 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task10, align 8
  %pid11 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 68
  %40 = ptrtoint ptr %pid11 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pid11, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.185, i32 noundef 2168, i32 noundef %41) #21
  br label %cleanup

if.end12:                                         ; preds = %setup_virtqueues.exit.if.end12_crit_edge, %if.then4.i.if.end12_crit_edge, %for.end.i.if.end12_crit_edge
  %actual_features.i75 = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 4
  %42 = ptrtoint ptr %actual_features.i75 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %actual_features.i75, align 8
  %and.i76 = and i64 %43, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i76)
  %tobool.not.i77 = icmp eq i64 %and.i76, 0
  br i1 %tobool.not.i77, label %if.end12.cond.end17.i_crit_edge, label %if.else.i

if.end12.cond.end17.i_crit_edge:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end17.i

if.else.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  %cur_num_vqs.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %mvdev, i32 0, i32 11
  %44 = ptrtoint ptr %cur_num_vqs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cur_num_vqs.i, align 4
  %div143.i = lshr i32 %45, 1
  br label %cond.end17.i

cond.end17.i:                                     ; preds = %if.else.i, %if.end12.cond.end17.i_crit_edge
  %num.0.i = phi i32 [ %div143.i, %if.else.i ], [ 1, %if.end12.cond.end17.i_crit_edge ]
  %sub.i144.i = add nsw i32 %num.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i144.i)
  %tobool.not.i.i.i.i = icmp eq i32 %sub.i144.i, 0
  %46 = tail call i32 @llvm.ctlz.i32(i32 %sub.i144.i, i1 true) #17, !range !369
  %sub.i.i.i.i = sub nuw nsw i32 32, %46
  %sub.i.i.op.i.i = shl nuw i32 1, %sub.i.i.i.i
  %shl.i.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i
  %mdev.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 1
  %47 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mdev.i, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %50, i32 28
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i, align 4
  %shr.i = lshr i32 %52, 8
  %and20.i = and i32 %shr.i, 31
  %shl21.i = shl nuw i32 1, %and20.i
  %53 = tail call i32 @llvm.smin.i32(i32 %shl.i.i, i32 %shl21.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp28.i = icmp slt i32 %53, 1
  br i1 %cmp28.i, label %cond.end17.i.do.end18_crit_edge, label %if.end31.i

cond.end17.i.do.end18_crit_edge:                  ; preds = %cond.end17.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end18

if.end31.i:                                       ; preds = %cond.end17.i
  %mul.i79 = shl i32 %53, 2
  %add32.i = add i32 %mul.i79, 272
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add32.i, i32 noundef 3520) #22
  %tobool34.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool34.not.i, label %if.end31.i.do.end18_crit_edge, label %for.body.lr.ph.i81

if.end31.i.do.end18_crit_edge:                    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end18

for.body.lr.ph.i81:                               ; preds = %if.end31.i
  %uid.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2, i32 4
  %54 = ptrtoint ptr %uid.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %uid.i, align 8
  %conv38.i = zext i16 %55 to i32
  %56 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %call9.i.i.i, align 128
  %and41.i = and i32 %57, -65536
  %or.i = or i32 %and41.i, %conv38.i
  store i32 %or.i, ptr %call9.i.i.i, align 128
  %add.ptr53.i = getelementptr i8, ptr %call9.i.i.i, i32 52
  %58 = ptrtoint ptr %add.ptr53.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr53.i, align 4
  %and54.i = and i32 %59, -117506048
  %and68.i = and i32 %53, 65535
  %or57.i = or i32 %and68.i, %and54.i
  %or70.i = or i32 %or57.i, 16777216
  store i32 %or70.i, ptr %add.ptr53.i, align 4
  %add.ptr74.i = getelementptr i8, ptr %call9.i.i.i, i32 272
  %vqs.i80 = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %mvdev, i32 0, i32 3
  %mul77.i = shl nuw i32 %num.0.i, 1
  %60 = ptrtoint ptr %vqs.i80 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vqs.i80, align 4
  br label %for.body.i83

for.body.i83:                                     ; preds = %for.body.i83.for.body.i83_crit_edge, %for.body.lr.ph.i81
  %j.0152.i = phi i32 [ 0, %for.body.lr.ph.i81 ], [ %add80.i, %for.body.i83.for.body.i83_crit_edge ]
  %i.0151.i = phi i32 [ 0, %for.body.lr.ph.i81 ], [ %inc.i82, %for.body.i83.for.body.i83_crit_edge ]
  %rem.i = srem i32 %j.0152.i, %mul77.i
  %virtq_id.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %61, i32 %rem.i, i32 13
  %62 = ptrtoint ptr %virtq_id.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %virtq_id.i, align 4
  %arrayidx79.i = getelementptr i32, ptr %add.ptr74.i, i32 %i.0151.i
  %64 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx79.i, align 4
  %inc.i82 = add nuw nsw i32 %i.0151.i, 1
  %add80.i = add nuw i32 %j.0152.i, 2
  %exitcond.not.i = icmp eq i32 %inc.i82, %53
  br i1 %exitcond.not.i, label %create_rqt.exit, label %for.body.i83.for.body.i83_crit_edge

for.body.i83.for.body.i83_crit_edge:              ; preds = %for.body.i83
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i83

create_rqt.exit:                                  ; preds = %for.body.i83
  %add.ptr86.i = getelementptr i8, ptr %call9.i.i.i, i32 56
  %65 = ptrtoint ptr %add.ptr86.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr86.i, align 8
  %and87.i = and i32 %66, -65536
  %or90.i = or i32 %and87.i, %and68.i
  store i32 %or90.i, ptr %add.ptr86.i, align 8
  %rqtn.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %mvdev, i32 0, i32 1, i32 3
  %call96.i = tail call i32 @mlx5_vdpa_create_rqt(ptr noundef %mvdev, ptr noundef nonnull %call9.i.i.i, i32 noundef %add32.i, ptr noundef %rqtn.i) #17
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i)
  %tobool14.not = icmp eq i32 %call96.i, 0
  br i1 %tobool14.not, label %if.end24, label %create_rqt.exit.do.end18_crit_edge

create_rqt.exit.do.end18_crit_edge:               ; preds = %create_rqt.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end18

do.end18:                                         ; preds = %create_rqt.exit.do.end18_crit_edge, %if.end31.i.do.end18_crit_edge, %cond.end17.i.do.end18_crit_edge
  %retval.0.i84122 = phi i32 [ %call96.i, %create_rqt.exit.do.end18_crit_edge ], [ -12, %if.end31.i.do.end18_crit_edge ], [ -95, %cond.end17.i.do.end18_crit_edge ]
  %67 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mdev.i, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  %71 = tail call i32 @llvm.read_register.i32(metadata !353) #17
  %and.i85 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i85 to ptr
  %task22 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %task22 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %task22, align 8
  %pid23 = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 68
  %75 = ptrtoint ptr %pid23 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pid23, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %70, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.185, i32 noundef 2174, i32 noundef %76) #21
  br label %err_rqt

if.end24:                                         ; preds = %create_rqt.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %77 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i86 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %77, i32 noundef 3520, i32 noundef 272) #20
  %tobool.not.i87 = icmp eq ptr %call7.i.i.i86, null
  br i1 %tobool.not.i87, label %if.end24.do.end30_crit_edge, label %create_tir.exit

if.end24.do.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end30

create_tir.exit:                                  ; preds = %if.end24
  %78 = ptrtoint ptr %uid.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %uid.i, align 8
  %conv.i89 = zext i16 %79 to i32
  %80 = ptrtoint ptr %call7.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %call7.i.i.i86, align 8
  %and.i90 = and i32 %81, -65536
  %or.i91 = or i32 %and.i90, %conv.i89
  store i32 %or.i91, ptr %call7.i.i.i86, align 8
  %add.ptr12.i = getelementptr i8, ptr %call7.i.i.i86, i32 36
  %82 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr12.i, align 4
  %and13.i = and i32 %83, 268435455
  %or16.i = or i32 %and13.i, 268435456
  store i32 %or16.i, ptr %add.ptr12.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %call7.i.i.i86, i32 64
  %84 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr25.i, align 8
  %add.ptr38.i = getelementptr i8, ptr %call7.i.i.i86, i32 68
  %86 = ptrtoint ptr %add.ptr38.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr38.i, align 4
  %add.ptr46.i = getelementptr i8, ptr %call7.i.i.i86, i32 72
  %88 = call ptr @memcpy(ptr %add.ptr46.i, ptr @create_tir.rx_hash_toeplitz_key, i32 40)
  %add.ptr47.i = getelementptr i8, ptr %call7.i.i.i86, i32 112
  %89 = ptrtoint ptr %add.ptr47.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 15, ptr %add.ptr47.i, align 8
  %90 = ptrtoint ptr %rqtn.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rqtn.i, align 4
  %or29.i = and i32 %85, 2130706432
  %and95.i = and i32 %91, 16777215
  %and94.i = or i32 %or29.i, %and95.i
  %or97.i = or i32 %and94.i, -2147483648
  store i32 %or97.i, ptr %add.ptr25.i, align 8
  %tdn.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %mvdev, i32 0, i32 1, i32 1
  %92 = ptrtoint ptr %tdn.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tdn.i, align 4
  %or42.i = and i32 %87, 251658240
  %and109.i = and i32 %93, 16777215
  %and108.i = or i32 %or42.i, %and109.i
  %or111.i = or i32 %and108.i, 536870912
  store i32 %or111.i, ptr %add.ptr38.i, align 4
  %tirn.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %mvdev, i32 0, i32 1, i32 2
  %call117.i = tail call i32 @mlx5_vdpa_create_tir(ptr noundef %mvdev, ptr noundef nonnull %call7.i.i.i86, ptr noundef %tirn.i) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i86) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117.i)
  %tobool26.not = icmp eq i32 %call117.i, 0
  br i1 %tobool26.not, label %if.end36, label %create_tir.exit.do.end30_crit_edge

create_tir.exit.do.end30_crit_edge:               ; preds = %create_tir.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end30

do.end30:                                         ; preds = %create_tir.exit.do.end30_crit_edge, %if.end24.do.end30_crit_edge
  %retval.0.i93125 = phi i32 [ %call117.i, %create_tir.exit.do.end30_crit_edge ], [ -12, %if.end24.do.end30_crit_edge ]
  %94 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mdev.i, align 8
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 8
  %98 = tail call i32 @llvm.read_register.i32(metadata !353) #17
  %and.i94 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i94 to ptr
  %task34 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %task34 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %task34, align 8
  %pid35 = getelementptr inbounds %struct.task_struct, ptr %101, i32 0, i32 68
  %102 = ptrtoint ptr %pid35 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pid35, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %97, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.185, i32 noundef 2180, i32 noundef %103) #21
  br label %err_tir

if.end36:                                         ; preds = %create_tir.exit
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dest.i) #17
  %104 = call ptr @memset(ptr %dest.i, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr.i) #17
  %105 = call ptr @memset(ptr %ft_attr.i, i32 0, i32 28)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i) #17
  %106 = call ptr @memset(ptr %flow_act.i, i32 0, i32 36)
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #22
  %tobool.not.i95 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i95, label %add_fwd_to_tir.exit.thread, label %if.end.i97

add_fwd_to_tir.exit.thread:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #17
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dest.i) #17
  br label %do.end42

if.end.i97:                                       ; preds = %if.end36
  %107 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %call.i.i.i, align 4
  %max_fte.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 1
  %108 = ptrtoint ptr %max_fte.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 2, ptr %max_fte.i, align 4
  %autogroup.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 5
  %109 = ptrtoint ptr %autogroup.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 2, ptr %autogroup.i, align 4
  %110 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mdev.i, align 8
  %call1.i = tail call ptr @mlx5_get_flow_namespace(ptr noundef %111, i32 noundef 0) #17
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %add_fwd_to_tir.exit.thread132, label %if.end7.i

add_fwd_to_tir.exit.thread132:                    ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #19
  %112 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mdev.i, align 8
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 8
  %116 = tail call i32 @llvm.read_register.i32(metadata !353) #17
  %and.i.i = and i32 %116, -16384
  %117 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %119, i32 0, i32 68
  %120 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %115, ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.199, i32 noundef 1394, i32 noundef %121) #21
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #17
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dest.i) #17
  br label %do.end42

if.end7.i:                                        ; preds = %if.end.i97
  %call8.i98 = call ptr @mlx5_create_auto_grouped_flow_table(ptr noundef nonnull %call1.i, ptr noundef nonnull %ft_attr.i) #17
  %rxft.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %mvdev, i32 0, i32 6
  %122 = ptrtoint ptr %rxft.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call8.i98, ptr %rxft.i, align 8
  %cmp.i.i = icmp ugt ptr %call8.i98, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end7.i.add_fwd_to_tir.exit_crit_edge, label %if.end14.i

if.end7.i.add_fwd_to_tir.exit_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %add_fwd_to_tir.exit

if.end14.i:                                       ; preds = %if.end7.i
  %123 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mdev.i, align 8
  %call17.i = call ptr @mlx5_fc_create(ptr noundef %124, i1 noundef zeroext false) #17
  %rx_counter.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %mvdev, i32 0, i32 7
  %125 = ptrtoint ptr %rx_counter.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call17.i, ptr %rx_counter.i, align 4
  %cmp.i112.i = icmp ugt ptr %call17.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112.i, label %if.end14.i.err_fc.i_crit_edge, label %if.end23.i

if.end14.i.err_fc.i_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_fc.i

if.end23.i:                                       ; preds = %if.end14.i
  %add.ptr24.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 1, i32 2
  %126 = call ptr @memset(ptr %add.ptr24.i, i32 255, i32 6)
  %add.ptr27.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 2, i32 2
  %config.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %mvdev, i32 0, i32 2
  %127 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %config.i, align 4
  %129 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %add.ptr27.i, align 4
  %add.ptr.i.i = getelementptr %struct.mlx5_vdpa_net, ptr %mvdev, i32 0, i32 2, i32 0, i32 4
  %130 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 2, i32 3
  %132 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %131, ptr %add.ptr1.i.i, align 2
  %133 = ptrtoint ptr %flow_act.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 12, ptr %flow_act.i, align 4
  %134 = ptrtoint ptr %dest.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 2, ptr %dest.i, align 4
  %135 = ptrtoint ptr %tirn.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %tirn.i, align 8
  %137 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i, i32 0, i32 1
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %136, ptr %137, align 4
  %arrayidx30.i = getelementptr inbounds [2 x %struct.mlx5_flow_destination], ptr %dest.i, i32 0, i32 1
  %139 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 256, ptr %arrayidx30.i, align 4
  %call33.i = call i32 @mlx5_fc_id(ptr noundef %call17.i) #17
  %140 = getelementptr inbounds [2 x %struct.mlx5_flow_destination], ptr %dest.i, i32 0, i32 1, i32 1
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %call33.i, ptr %140, align 4
  %142 = ptrtoint ptr %rxft.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rxft.i, align 8
  %call37.i = call ptr @mlx5_add_flow_rules(ptr noundef %143, ptr noundef nonnull %call.i.i.i, ptr noundef nonnull %flow_act.i, ptr noundef nonnull %dest.i, i32 noundef 2) #17
  %rx_rule_ucast.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %mvdev, i32 0, i32 8
  %144 = ptrtoint ptr %rx_rule_ucast.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call37.i, ptr %rx_rule_ucast.i, align 8
  %cmp.i113.i = icmp ugt ptr %call37.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113.i, label %if.end23.i.err_rule_ucast.i_crit_edge, label %if.end44.i

if.end23.i.err_rule_ucast.i_crit_edge:            ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_rule_ucast.i

if.end44.i:                                       ; preds = %if.end23.i
  %145 = getelementptr inbounds i8, ptr %add.ptr24.i, i32 1
  %146 = call ptr @memset(ptr %145, i32 0, i32 5)
  %147 = getelementptr inbounds i8, ptr %add.ptr27.i, i32 1
  %148 = call ptr @memset(ptr %147, i32 0, i32 5)
  %149 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 1, ptr %add.ptr24.i, align 1
  %150 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 1, ptr %add.ptr27.i, align 1
  %151 = ptrtoint ptr %flow_act.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 4, ptr %flow_act.i, align 4
  %152 = ptrtoint ptr %rxft.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %rxft.i, align 8
  %call50.i = call ptr @mlx5_add_flow_rules(ptr noundef %153, ptr noundef nonnull %call.i.i.i, ptr noundef nonnull %flow_act.i, ptr noundef nonnull %dest.i, i32 noundef 1) #17
  %rx_rule_mcast.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %mvdev, i32 0, i32 9
  %154 = ptrtoint ptr %rx_rule_mcast.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call50.i, ptr %rx_rule_mcast.i, align 4
  %cmp.i114.i = icmp ugt ptr %call50.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114.i, label %if.then53.i, label %add_fwd_to_tir.exit.thread129

add_fwd_to_tir.exit.thread129:                    ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #17
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dest.i) #17
  br label %if.end48

if.then53.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #19
  %155 = ptrtoint ptr %rx_rule_mcast.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr null, ptr %rx_rule_mcast.i, align 4
  %156 = ptrtoint ptr %rx_rule_ucast.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %rx_rule_ucast.i, align 8
  call void @mlx5_del_flow_rules(ptr noundef %157) #17
  br label %err_rule_ucast.i

err_rule_ucast.i:                                 ; preds = %if.then53.i, %if.end23.i.err_rule_ucast.i_crit_edge
  %err.0.in.i = phi ptr [ %call50.i, %if.then53.i ], [ %call37.i, %if.end23.i.err_rule_ucast.i_crit_edge ]
  %158 = ptrtoint ptr %rx_rule_ucast.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %rx_rule_ucast.i, align 8
  %159 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mdev.i, align 8
  %161 = ptrtoint ptr %rx_counter.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %rx_counter.i, align 4
  call void @mlx5_fc_destroy(ptr noundef %160, ptr noundef %162) #17
  br label %err_fc.i

err_fc.i:                                         ; preds = %err_rule_ucast.i, %if.end14.i.err_fc.i_crit_edge
  %err.1.in.i = phi ptr [ %err.0.in.i, %err_rule_ucast.i ], [ %call17.i, %if.end14.i.err_fc.i_crit_edge ]
  %163 = ptrtoint ptr %rxft.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %rxft.i, align 8
  %call64.i = call i32 @mlx5_destroy_flow_table(ptr noundef %164) #17
  br label %add_fwd_to_tir.exit

add_fwd_to_tir.exit:                              ; preds = %err_fc.i, %if.end7.i.add_fwd_to_tir.exit_crit_edge
  %retval.0.ph.i.in = phi ptr [ %err.1.in.i, %err_fc.i ], [ %call8.i98, %if.end7.i.add_fwd_to_tir.exit_crit_edge ]
  %retval.0.ph.i = ptrtoint ptr %retval.0.ph.i.in to i32
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #17
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dest.i) #17
  %tobool38.not = icmp eq ptr %retval.0.ph.i.in, null
  br i1 %tobool38.not, label %add_fwd_to_tir.exit.if.end48_crit_edge, label %add_fwd_to_tir.exit.do.end42_crit_edge

add_fwd_to_tir.exit.do.end42_crit_edge:           ; preds = %add_fwd_to_tir.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end42

add_fwd_to_tir.exit.if.end48_crit_edge:           ; preds = %add_fwd_to_tir.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end48

do.end42:                                         ; preds = %add_fwd_to_tir.exit.do.end42_crit_edge, %add_fwd_to_tir.exit.thread132, %add_fwd_to_tir.exit.thread
  %retval.0.i100128 = phi i32 [ -12, %add_fwd_to_tir.exit.thread ], [ %retval.0.ph.i, %add_fwd_to_tir.exit.do.end42_crit_edge ], [ -95, %add_fwd_to_tir.exit.thread132 ]
  %165 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %mdev.i, align 8
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %166, align 8
  %169 = call i32 @llvm.read_register.i32(metadata !353) #17
  %and.i101 = and i32 %169, -16384
  %170 = inttoptr i32 %and.i101 to ptr
  %task46 = getelementptr inbounds %struct.thread_info, ptr %170, i32 0, i32 2
  %171 = ptrtoint ptr %task46 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %task46, align 8
  %pid47 = getelementptr inbounds %struct.task_struct, ptr %172, i32 0, i32 68
  %173 = ptrtoint ptr %pid47 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %pid47, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %168, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.185, i32 noundef 2186, i32 noundef %174) #21
  %175 = ptrtoint ptr %tirn.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %tirn.i, align 8
  call void @mlx5_vdpa_destroy_tir(ptr noundef %mvdev, i32 noundef %176) #17
  br label %err_tir

if.end48:                                         ; preds = %add_fwd_to_tir.exit.if.end48_crit_edge, %add_fwd_to_tir.exit.thread129
  %177 = ptrtoint ptr %setup to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 1, ptr %setup, align 8
  br label %cleanup

err_tir:                                          ; preds = %do.end42, %do.end30
  %err.0 = phi i32 [ %retval.0.i93125, %do.end30 ], [ %retval.0.i100128, %do.end42 ]
  %178 = ptrtoint ptr %rqtn.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %rqtn.i, align 4
  call void @mlx5_vdpa_destroy_rqt(ptr noundef %mvdev, i32 noundef %179) #17
  br label %err_rqt

err_rqt:                                          ; preds = %err_tir, %do.end18
  %err.1 = phi i32 [ %retval.0.i84122, %do.end18 ], [ %err.0, %err_tir ]
  %180 = ptrtoint ptr %max_vqs.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %max_vqs.i, align 4
  %i.06.i = add i32 %181, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.06.i)
  %cmp7.i = icmp sgt i32 %i.06.i, -1
  br i1 %cmp7.i, label %for.body.lr.ph.i106, label %err_rqt.cleanup_crit_edge

err_rqt.cleanup_crit_edge:                        ; preds = %err_rqt
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.lr.ph.i106:                              ; preds = %err_rqt
  %vqs.i105 = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %mvdev, i32 0, i32 3
  br label %for.body.i108

for.body.i108:                                    ; preds = %for.inc.i112.for.body.i108_crit_edge, %for.body.lr.ph.i106
  %i.08.i = phi i32 [ %i.06.i, %for.body.lr.ph.i106 ], [ %i.0.i, %for.inc.i112.for.body.i108_crit_edge ]
  %182 = ptrtoint ptr %vqs.i105 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %vqs.i105, align 4
  %initialized.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %183, i32 %i.08.i, i32 11
  %184 = ptrtoint ptr %initialized.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %initialized.i, align 4, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool.not.i107 = icmp eq i8 %185, 0
  br i1 %tobool.not.i107, label %for.body.i108.for.inc.i112_crit_edge, label %if.end.i110

for.body.i108.for.inc.i112_crit_edge:             ; preds = %for.body.i108
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i112

if.end.i110:                                      ; preds = %for.body.i108
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i109 = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %183, i32 %i.08.i
  call fastcc void @teardown_vq(ptr noundef %mvdev, ptr noundef %arrayidx.i109) #17
  br label %for.inc.i112

for.inc.i112:                                     ; preds = %if.end.i110, %for.body.i108.for.inc.i112_crit_edge
  %i.0.i = add i32 %i.08.i, -1
  %cmp.i111 = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i111, label %for.inc.i112.for.body.i108_crit_edge, label %for.inc.i112.cleanup_crit_edge

for.inc.i112.cleanup_crit_edge:                   ; preds = %for.inc.i112
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.inc.i112.for.body.i108_crit_edge:             ; preds = %for.inc.i112
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i108

cleanup:                                          ; preds = %for.inc.i112.cleanup_crit_edge, %err_rqt.cleanup_crit_edge, %if.end48, %do.end6, %do.end
  %retval.0 = phi i32 [ 0, %if.end48 ], [ 0, %do.end ], [ %err.0.i, %do.end6 ], [ %err.1, %err_rqt.cleanup_crit_edge ], [ %err.1, %for.inc.i112.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef %reslock) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vringh_init_iotlb(ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vdpa_create_rqt(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vdpa_create_tir(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_flow_namespace(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_auto_grouped_flow_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_fc_create(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fc_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_add_flow_rules(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_del_flow_rules(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fc_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_destroy_flow_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_vdpa_destroy_tir(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_vdpa_destroy_rqt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @teardown_driver(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %reslock = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %ndev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %reslock, i32 noundef 0) #17
  %setup = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %ndev, i32 0, i32 10
  %0 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %setup, align 8, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %entry
  %rx_rule_ucast.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %ndev, i32 0, i32 8
  %2 = ptrtoint ptr %rx_rule_ucast.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_rule_ucast.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.remove_fwd_to_tir.exit_crit_edge, label %if.end.i

if.end.remove_fwd_to_tir.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %remove_fwd_to_tir.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %rx_rule_mcast.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %ndev, i32 0, i32 9
  %4 = ptrtoint ptr %rx_rule_mcast.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_rule_mcast.i, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %5) #17
  %6 = ptrtoint ptr %rx_rule_mcast.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %rx_rule_mcast.i, align 4
  %7 = ptrtoint ptr %rx_rule_ucast.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_rule_ucast.i, align 8
  tail call void @mlx5_del_flow_rules(ptr noundef %8) #17
  %9 = ptrtoint ptr %rx_rule_ucast.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rx_rule_ucast.i, align 8
  %mdev.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 1
  %10 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdev.i, align 8
  %rx_counter.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %ndev, i32 0, i32 7
  %12 = ptrtoint ptr %rx_counter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_counter.i, align 4
  tail call void @mlx5_fc_destroy(ptr noundef %11, ptr noundef %13) #17
  %rxft.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %ndev, i32 0, i32 6
  %14 = ptrtoint ptr %rxft.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rxft.i, align 8
  %call.i = tail call i32 @mlx5_destroy_flow_table(ptr noundef %15) #17
  br label %remove_fwd_to_tir.exit

remove_fwd_to_tir.exit:                           ; preds = %if.end.i, %if.end.remove_fwd_to_tir.exit_crit_edge
  %tirn.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %ndev, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %tirn.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tirn.i, align 8
  tail call void @mlx5_vdpa_destroy_tir(ptr noundef %ndev, i32 noundef %17) #17
  %rqtn.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %ndev, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %rqtn.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rqtn.i, align 4
  tail call void @mlx5_vdpa_destroy_rqt(ptr noundef %ndev, i32 noundef %19) #17
  %max_vqs.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %ndev, i32 0, i32 6
  %20 = ptrtoint ptr %max_vqs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_vqs.i, align 4
  %i.06.i = add i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.06.i)
  %cmp7.i = icmp sgt i32 %i.06.i, -1
  br i1 %cmp7.i, label %for.body.lr.ph.i, label %remove_fwd_to_tir.exit.teardown_virtqueues.exit_crit_edge

remove_fwd_to_tir.exit.teardown_virtqueues.exit_crit_edge: ; preds = %remove_fwd_to_tir.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %teardown_virtqueues.exit

for.body.lr.ph.i:                                 ; preds = %remove_fwd_to_tir.exit
  %vqs.i = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %ndev, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ %i.06.i, %for.body.lr.ph.i ], [ %i.0.i, %for.inc.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %vqs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vqs.i, align 4
  %initialized.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %23, i32 %i.08.i, i32 11
  %24 = ptrtoint ptr %initialized.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %initialized.i, align 4, !range !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i10 = icmp eq i8 %25, 0
  br i1 %tobool.not.i10, label %for.body.i.for.inc.i_crit_edge, label %if.end.i11

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.end.i11:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i = getelementptr %struct.mlx5_vdpa_virtqueue, ptr %23, i32 %i.08.i
  tail call fastcc void @teardown_vq(ptr noundef %ndev, ptr noundef %arrayidx.i) #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i11, %for.body.i.for.inc.i_crit_edge
  %i.0.i = add i32 %i.08.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.teardown_virtqueues.exit_crit_edge

for.inc.i.teardown_virtqueues.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %teardown_virtqueues.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

teardown_virtqueues.exit:                         ; preds = %for.inc.i.teardown_virtqueues.exit_crit_edge, %remove_fwd_to_tir.exit.teardown_virtqueues.exit_crit_edge
  %26 = ptrtoint ptr %setup to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %setup, align 8
  br label %out

out:                                              ; preds = %teardown_virtqueues.exit, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %reslock) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vdpa_handle_set_map(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_nic_vport_mtu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vdpa_alloc_transport_domain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_vdpa_dealloc_transport_domain(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vdpa_create_tis(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_carrier(ptr noundef %work) #2 align 64 {
entry:
  %out.i.i = alloca [4 x i32], align 4
  %in.i.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mvdev1 = getelementptr inbounds %struct.mlx5_vdpa_wq_ent, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %mvdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvdev1, align 4
  %mdev.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i.i) #17
  %4 = call ptr @memset(ptr %out.i.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i.i) #17
  %5 = getelementptr inbounds i8, ptr %in.i.i, i32 12
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %5, align 4
  %7 = ptrtoint ptr %in.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 122683392, ptr %in.i.i, align 4
  %add.ptr13.i.i = getelementptr inbounds i32, ptr %in.i.i, i32 1
  %8 = ptrtoint ptr %add.ptr13.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %add.ptr13.i.i, align 4
  %add.ptr29.i.i = getelementptr inbounds i32, ptr %in.i.i, i32 2
  %9 = ptrtoint ptr %add.ptr29.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %add.ptr29.i.i, align 4
  %call.i.i = call i32 @mlx5_cmd_exec(ptr noundef %3, ptr noundef nonnull %in.i.i, i32 noundef 16, ptr noundef nonnull %out.i.i, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool55.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool55.not.i.i, label %get_link_state.exit, label %get_link_state.exit.thread

get_link_state.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i.i) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i.i) #17
  br label %if.else

get_link_state.exit:                              ; preds = %entry
  %add.ptr59.i.i = getelementptr inbounds i32, ptr %out.i.i, i32 3
  %10 = ptrtoint ptr %add.ptr59.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr59.i.i, align 4
  %conv61.i2.i = and i32 %11, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv61.i2.i)
  %phi.cmp.i = icmp eq i32 %conv61.i2.i, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i.i) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i.i) #17
  br i1 %phi.cmp.i, label %if.then, label %get_link_state.exit.if.else_crit_edge

get_link_state.exit.if.else_crit_edge:            ; preds = %get_link_state.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.then:                                          ; preds = %get_link_state.exit
  call void @__sanitizer_cov_trace_pc() #19
  %actual_features.i.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %actual_features.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %actual_features.i.i, align 8
  %and.i.i = and i64 %13, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %retval.0.i.i30 = select i1 %tobool.i.not.i, i16 1, i16 256
  %status = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %1, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %status, align 2
  %or29 = or i16 %retval.0.i.i30, %15
  store i16 %or29, ptr %status, align 2
  br label %if.end

if.else:                                          ; preds = %get_link_state.exit.if.else_crit_edge, %get_link_state.exit.thread
  %actual_features.i.i31 = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %actual_features.i.i31 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %actual_features.i.i31, align 8
  %and.i.i32 = and i64 %17, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i32)
  %tobool.i.not.i33 = icmp eq i64 %and.i.i32, 0
  %retval.0.i.i34 = select i1 %tobool.i.not.i33, i16 -2, i16 -257
  %status11 = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %1, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %status11 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %status11, align 2
  %and28 = and i16 %retval.0.i.i34, %19
  store i16 %and28, ptr %status11, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %config_cb = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %1, i32 0, i32 13
  %20 = ptrtoint ptr %config_cb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %config_cb, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %if.end.if.end19_crit_edge, label %if.then14

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %private = getelementptr inbounds %struct.mlx5_vdpa_net, ptr %1, i32 0, i32 13, i32 1
  %22 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private, align 4
  %call18 = call i32 %21(ptr noundef %23) #17
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end.if.end19_crit_edge
  call void @kfree(ptr noundef %work) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_vdpa_destroy_tis(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_vdpa_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vdpa_mgmtdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

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
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind readonly }
attributes #15 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !34, !35, !37, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !249, !250, !251, !252, !254, !255, !256, !257, !258, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !281, !282, !284, !285, !286, !288, !289, !290, !291, !293, !294, !295, !297, !298, !299, !300, !302, !303, !304, !306, !307, !308, !310, !311, !312, !314, !315, !316, !318, !320, !321, !322, !323, !325, !326, !327, !328, !330, !331, !332, !334, !335, !336, !337, !339, !340, !341, !342, !344, !345, !346, !347, !349, !351}
!llvm.named.register.sp = !{!353}
!llvm.module.flags = !{!354, !355, !356, !357, !358, !359, !360, !361}
!llvm.ident = !{!362}

!0 = !{ptr @__UNIQUE_ID_author522, !1, !"__UNIQUE_ID_author522", i1 false, i1 false}
!1 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_description523, !3, !"__UNIQUE_ID_description523", i1 false, i1 false}
!3 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_file524, !5, !"__UNIQUE_ID_file524", i1 false, i1 false}
!5 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license525, !5, !"__UNIQUE_ID_license525", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_mlx5_vdpa__656_2786_mlx5v_driver_init6, !8, !"__initcall__kmod_mlx5_vdpa__656_2786_mlx5v_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 2786, i32 1}
!9 = !{ptr @__exitcall_mlx5v_driver_exit, !8, !"__exitcall_mlx5v_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 2780, i32 10}
!13 = !{ptr @mlx5v_driver, !14, !"mlx5v_driver", i1 false, i1 false}
!14 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 2779, i32 32}
!15 = !{ptr @mdev_ops, !16, !"mdev_ops", i1 false, i1 false}
!16 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 2717, i32 38}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 2587, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mlx5_vdpa_dev_add._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @mlx5_vdpa_dev_add._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 2593, i32 3}
!27 = !{ptr @mlx5_vdpa_dev_add._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mlx5_vdpa_dev_add._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @mlx5_vdpa_dev_add.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 2625, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 2671, i32 14}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mlx5_vdpa_ops, !36, !"mlx5_vdpa_ops", i1 false, i1 false}
!36 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 2384, i32 37}
!37 = !{ptr @mlx5_vdpa_kick_vq.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 1680, i32 3}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 1494, i32 5}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @handle_ctrl_mac._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @handle_ctrl_mac._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 1501, i32 4}
!47 = !{ptr @handle_ctrl_mac._entry.16, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @handle_ctrl_mac._entry_ptr.18, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 1204, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @suspend_vq._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @suspend_vq._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 1207, i32 3}
!56 = !{ptr @suspend_vq._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @suspend_vq._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 907, i32 3}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @destroy_virtqueue._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @destroy_virtqueue._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 502, i32 3}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @qp_destroy._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @qp_destroy._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 654, i32 3}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cq_destroy._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @cq_destroy._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 1175, i32 4}
!75 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @setup_vq._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @setup_vq._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 727, i32 3}
!80 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @create_umem._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @create_umem._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 1813, i32 3}
!85 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @mlx5_vdpa_set_vq_state._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @mlx5_vdpa_set_vq_state._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 1854, i32 3}
!90 = !{ptr @mlx5_vdpa_get_vq_state._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @mlx5_vdpa_get_vq_state._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 250, i32 3}
!94 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @print_features._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @print_features._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 256, i32 2}
!99 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @print_features._entry.39, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @print_features._entry_ptr.42, !98, !"_entry_ptr", i1 false, i1 false}
!102 = distinct !{null, !98, !"<string literal>", i1 false, i1 false}
!103 = distinct !{null, !98, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 258, i32 3}
!106 = !{ptr @print_features._entry.45, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @print_features._entry_ptr.47, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 260, i32 2}
!110 = !{ptr @print_features._entry.48, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @print_features._entry_ptr.50, !109, !"_entry_ptr", i1 false, i1 false}
!112 = distinct !{null, !109, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @print_features._entry.52, !114, !"_entry", i1 false, i1 false}
!114 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 261, i32 2}
!115 = !{ptr @print_features._entry_ptr.53, !114, !"_entry_ptr", i1 false, i1 false}
!116 = distinct !{null, !114, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @print_features._entry.55, !118, !"_entry", i1 false, i1 false}
!118 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 262, i32 2}
!119 = !{ptr @print_features._entry_ptr.56, !118, !"_entry_ptr", i1 false, i1 false}
!120 = distinct !{null, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @print_features._entry.58, !122, !"_entry", i1 false, i1 false}
!122 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 263, i32 2}
!123 = !{ptr @print_features._entry_ptr.59, !122, !"_entry_ptr", i1 false, i1 false}
!124 = distinct !{null, !122, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @print_features._entry.61, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 264, i32 2}
!127 = !{ptr @print_features._entry_ptr.62, !126, !"_entry_ptr", i1 false, i1 false}
!128 = distinct !{null, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @print_features._entry.64, !130, !"_entry", i1 false, i1 false}
!130 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 265, i32 2}
!131 = !{ptr @print_features._entry_ptr.65, !130, !"_entry_ptr", i1 false, i1 false}
!132 = distinct !{null, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @print_features._entry.67, !134, !"_entry", i1 false, i1 false}
!134 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 266, i32 2}
!135 = !{ptr @print_features._entry_ptr.68, !134, !"_entry_ptr", i1 false, i1 false}
!136 = distinct !{null, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @print_features._entry.70, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 267, i32 2}
!139 = !{ptr @print_features._entry_ptr.71, !138, !"_entry_ptr", i1 false, i1 false}
!140 = distinct !{null, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @print_features._entry.73, !142, !"_entry", i1 false, i1 false}
!142 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 268, i32 2}
!143 = !{ptr @print_features._entry_ptr.74, !142, !"_entry_ptr", i1 false, i1 false}
!144 = distinct !{null, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @print_features._entry.76, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 269, i32 2}
!147 = !{ptr @print_features._entry_ptr.77, !146, !"_entry_ptr", i1 false, i1 false}
!148 = distinct !{null, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @print_features._entry.79, !150, !"_entry", i1 false, i1 false}
!150 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 270, i32 2}
!151 = !{ptr @print_features._entry_ptr.80, !150, !"_entry_ptr", i1 false, i1 false}
!152 = distinct !{null, !150, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @print_features._entry.82, !154, !"_entry", i1 false, i1 false}
!154 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 271, i32 2}
!155 = !{ptr @print_features._entry_ptr.83, !154, !"_entry_ptr", i1 false, i1 false}
!156 = distinct !{null, !154, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @print_features._entry.85, !158, !"_entry", i1 false, i1 false}
!158 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 272, i32 2}
!159 = !{ptr @print_features._entry_ptr.86, !158, !"_entry_ptr", i1 false, i1 false}
!160 = distinct !{null, !158, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @print_features._entry.88, !162, !"_entry", i1 false, i1 false}
!162 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 273, i32 2}
!163 = !{ptr @print_features._entry_ptr.89, !162, !"_entry_ptr", i1 false, i1 false}
!164 = distinct !{null, !162, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @print_features._entry.91, !166, !"_entry", i1 false, i1 false}
!166 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 274, i32 2}
!167 = !{ptr @print_features._entry_ptr.92, !166, !"_entry_ptr", i1 false, i1 false}
!168 = distinct !{null, !166, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @print_features._entry.94, !170, !"_entry", i1 false, i1 false}
!170 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 275, i32 2}
!171 = !{ptr @print_features._entry_ptr.95, !170, !"_entry_ptr", i1 false, i1 false}
!172 = distinct !{null, !170, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @print_features._entry.97, !174, !"_entry", i1 false, i1 false}
!174 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 276, i32 2}
!175 = !{ptr @print_features._entry_ptr.98, !174, !"_entry_ptr", i1 false, i1 false}
!176 = distinct !{null, !174, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @print_features._entry.100, !178, !"_entry", i1 false, i1 false}
!178 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 277, i32 2}
!179 = !{ptr @print_features._entry_ptr.101, !178, !"_entry_ptr", i1 false, i1 false}
!180 = distinct !{null, !178, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @print_features._entry.103, !182, !"_entry", i1 false, i1 false}
!182 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 278, i32 2}
!183 = !{ptr @print_features._entry_ptr.104, !182, !"_entry_ptr", i1 false, i1 false}
!184 = distinct !{null, !182, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @print_features._entry.106, !186, !"_entry", i1 false, i1 false}
!186 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 279, i32 2}
!187 = !{ptr @print_features._entry_ptr.107, !186, !"_entry_ptr", i1 false, i1 false}
!188 = distinct !{null, !186, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @print_features._entry.109, !190, !"_entry", i1 false, i1 false}
!190 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 280, i32 2}
!191 = !{ptr @print_features._entry_ptr.110, !190, !"_entry_ptr", i1 false, i1 false}
!192 = distinct !{null, !190, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @print_features._entry.112, !194, !"_entry", i1 false, i1 false}
!194 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 281, i32 2}
!195 = !{ptr @print_features._entry_ptr.113, !194, !"_entry_ptr", i1 false, i1 false}
!196 = distinct !{null, !194, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @print_features._entry.115, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 282, i32 2}
!199 = !{ptr @print_features._entry_ptr.116, !198, !"_entry_ptr", i1 false, i1 false}
!200 = distinct !{null, !198, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @print_features._entry.118, !202, !"_entry", i1 false, i1 false}
!202 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 283, i32 2}
!203 = !{ptr @print_features._entry_ptr.119, !202, !"_entry_ptr", i1 false, i1 false}
!204 = distinct !{null, !202, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @print_features._entry.121, !206, !"_entry", i1 false, i1 false}
!206 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 284, i32 2}
!207 = !{ptr @print_features._entry_ptr.122, !206, !"_entry_ptr", i1 false, i1 false}
!208 = distinct !{null, !206, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @print_features._entry.124, !210, !"_entry", i1 false, i1 false}
!210 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 285, i32 2}
!211 = !{ptr @print_features._entry_ptr.125, !210, !"_entry_ptr", i1 false, i1 false}
!212 = distinct !{null, !210, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @print_features._entry.127, !214, !"_entry", i1 false, i1 false}
!214 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 286, i32 2}
!215 = !{ptr @print_features._entry_ptr.128, !214, !"_entry_ptr", i1 false, i1 false}
!216 = distinct !{null, !214, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @print_features._entry.130, !218, !"_entry", i1 false, i1 false}
!218 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 287, i32 2}
!219 = !{ptr @print_features._entry_ptr.131, !218, !"_entry_ptr", i1 false, i1 false}
!220 = distinct !{null, !218, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @print_features._entry.133, !222, !"_entry", i1 false, i1 false}
!222 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 288, i32 2}
!223 = !{ptr @print_features._entry_ptr.134, !222, !"_entry_ptr", i1 false, i1 false}
!224 = distinct !{null, !222, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @print_features._entry.136, !226, !"_entry", i1 false, i1 false}
!226 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 289, i32 2}
!227 = !{ptr @print_features._entry_ptr.137, !226, !"_entry_ptr", i1 false, i1 false}
!228 = distinct !{null, !226, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @print_features._entry.139, !230, !"_entry", i1 false, i1 false}
!230 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 290, i32 2}
!231 = !{ptr @print_features._entry_ptr.140, !230, !"_entry_ptr", i1 false, i1 false}
!232 = distinct !{null, !230, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @print_features._entry.142, !234, !"_entry", i1 false, i1 false}
!234 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 291, i32 2}
!235 = !{ptr @print_features._entry_ptr.143, !234, !"_entry_ptr", i1 false, i1 false}
!236 = distinct !{null, !234, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @print_features._entry.145, !238, !"_entry", i1 false, i1 false}
!238 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 292, i32 2}
!239 = !{ptr @print_features._entry_ptr.146, !238, !"_entry_ptr", i1 false, i1 false}
!240 = distinct !{null, !238, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @print_features._entry.148, !242, !"_entry", i1 false, i1 false}
!242 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 293, i32 2}
!243 = !{ptr @print_features._entry_ptr.149, !242, !"_entry_ptr", i1 false, i1 false}
!244 = distinct !{null, !242, !"<string literal>", i1 false, i1 false}
!245 = distinct !{null, !246, !"mlx5_vdpa_debug", i1 false, i1 false}
!246 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 173, i32 13}
!247 = !{ptr @.str.151, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 227, i32 3}
!249 = !{ptr @.str.152, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @print_status._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @print_status._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.154, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 233, i32 2}
!254 = !{ptr @print_status._entry.153, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @print_status._entry_ptr.155, !253, !"_entry_ptr", i1 false, i1 false}
!256 = distinct !{null, !253, !"<string literal>", i1 false, i1 false}
!257 = distinct !{null, !253, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.159, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 235, i32 3}
!260 = !{ptr @print_status._entry.158, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @print_status._entry_ptr.160, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @print_status._entry.161, !263, !"_entry", i1 false, i1 false}
!263 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 239, i32 2}
!264 = !{ptr @print_status._entry_ptr.162, !263, !"_entry_ptr", i1 false, i1 false}
!265 = distinct !{null, !263, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @print_status._entry.164, !267, !"_entry", i1 false, i1 false}
!267 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 240, i32 2}
!268 = !{ptr @print_status._entry_ptr.165, !267, !"_entry_ptr", i1 false, i1 false}
!269 = distinct !{null, !267, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @print_status._entry.167, !271, !"_entry", i1 false, i1 false}
!271 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 241, i32 2}
!272 = !{ptr @print_status._entry_ptr.168, !271, !"_entry_ptr", i1 false, i1 false}
!273 = distinct !{null, !271, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @print_status._entry.170, !275, !"_entry", i1 false, i1 false}
!275 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 242, i32 2}
!276 = !{ptr @print_status._entry_ptr.171, !275, !"_entry_ptr", i1 false, i1 false}
!277 = distinct !{null, !275, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @print_status._entry.173, !279, !"_entry", i1 false, i1 false}
!279 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 243, i32 2}
!280 = !{ptr @print_status._entry_ptr.174, !279, !"_entry_ptr", i1 false, i1 false}
!281 = distinct !{null, !279, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @print_status._entry.176, !283, !"_entry", i1 false, i1 false}
!283 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 244, i32 2}
!284 = !{ptr @print_status._entry_ptr.177, !283, !"_entry_ptr", i1 false, i1 false}
!285 = distinct !{null, !283, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.179, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 2242, i32 5}
!288 = !{ptr @.str.180, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @mlx5_vdpa_set_status._entry, !287, !"_entry", i1 false, i1 false}
!290 = !{ptr @mlx5_vdpa_set_status._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.182, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 2246, i32 4}
!293 = !{ptr @mlx5_vdpa_set_status._entry.181, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @mlx5_vdpa_set_status._entry_ptr.183, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.184, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 2162, i32 3}
!297 = !{ptr @.str.185, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @setup_driver._entry, !296, !"_entry", i1 false, i1 false}
!299 = !{ptr @setup_driver._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.187, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 2168, i32 3}
!302 = !{ptr @setup_driver._entry.186, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @setup_driver._entry_ptr.188, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.190, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 2174, i32 3}
!306 = !{ptr @setup_driver._entry.189, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @setup_driver._entry_ptr.191, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.193, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 2180, i32 3}
!310 = !{ptr @setup_driver._entry.192, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @setup_driver._entry_ptr.194, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.196, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 2186, i32 3}
!314 = !{ptr @setup_driver._entry.195, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @setup_driver._entry_ptr.197, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @create_tir.rx_hash_toeplitz_key, !317, !"rx_hash_toeplitz_key", i1 false, i1 false}
!317 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 1329, i32 18}
!318 = !{ptr @.str.198, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 1394, i32 3}
!320 = !{ptr @.str.199, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @add_fwd_to_tir._entry, !319, !"_entry", i1 false, i1 false}
!322 = !{ptr @add_fwd_to_tir._entry_ptr, !319, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.200, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 2265, i32 2}
!325 = !{ptr @.str.201, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @mlx5_vdpa_reset._entry, !324, !"_entry", i1 false, i1 false}
!327 = !{ptr @mlx5_vdpa_reset._entry_ptr, !324, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.203, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 2276, i32 4}
!330 = !{ptr @mlx5_vdpa_reset._entry.202, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @mlx5_vdpa_reset._entry_ptr.204, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.205, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 2318, i32 3}
!334 = !{ptr @.str.206, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @mlx5_vdpa_set_map._entry, !333, !"_entry", i1 false, i1 false}
!336 = !{ptr @mlx5_vdpa_set_map._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.207, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 2433, i32 3}
!339 = !{ptr @.str.208, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @alloc_resources._entry, !338, !"_entry", i1 false, i1 false}
!341 = !{ptr @alloc_resources._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.209, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 307, i32 3}
!344 = !{ptr @.str.210, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @create_tis._entry, !343, !"_entry", i1 false, i1 false}
!346 = !{ptr @create_tis._entry_ptr, !343, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @event_handler.__key, !348, !"__key", i1 false, i1 false}
!348 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 2556, i32 4}
!349 = !{ptr @id_table, !350, !"id_table", i1 false, i1 false}
!350 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 2722, i32 32}
!351 = !{ptr @mlx5v_id_table, !352, !"mlx5v_id_table", i1 false, i1 false}
!352 = !{!"../drivers/vdpa/mlx5/net/mlx5_vnet.c", i32 2772, i32 41}
!353 = !{!"sp"}
!354 = !{i32 1, !"wchar_size", i32 2}
!355 = !{i32 1, !"min_enum_size", i32 4}
!356 = !{i32 8, !"branch-target-enforcement", i32 0}
!357 = !{i32 8, !"sign-return-address", i32 0}
!358 = !{i32 8, !"sign-return-address-all", i32 0}
!359 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!360 = !{i32 7, !"uwtable", i32 1}
!361 = !{i32 7, !"frame-pointer", i32 2}
!362 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!363 = !{!"auto-init"}
!364 = !{i8 0, i8 2}
!365 = !{!"branch_weights", i32 1, i32 2000}
!366 = !{i64 2152489174}
!367 = !{i64 4946982}
!368 = !{i64 2159830997}
!369 = !{i32 0, i32 33}
!370 = !{i64 2159244533}
!371 = !{i64 2158964039}
!372 = !{i64 4947602}
