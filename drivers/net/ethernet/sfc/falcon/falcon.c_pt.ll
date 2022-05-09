; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/falcon/falcon.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/falcon/falcon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ef4_nic_type = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i32, i32, i64, i32 }
%struct.ef4_hw_stat_desc = type { ptr, i16, i16 }
%struct.atomic_t = type { i32 }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ef4_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ef4_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.ef4_msi_context], [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [40 x i8], [128 x i32], i8, i32, i32, i8, %struct.ef4_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, %struct.ef4_buffer, i64, i64, i8, i32, ptr, ptr, %struct.mdio_if_info, i32, i32, %struct.ef4_link_state, i32, i8, %union.ef4_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, %struct.rw_semaphore, %struct.spinlock, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, ptr, [32 x i8], %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.ef4_msi_context = type { ptr, i32, [22 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ef4_buffer = type { ptr, i32, i32 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.ef4_link_state = type { i8, i8, i8, i32 }
%union.ef4_multicast_hash = type { [2 x %union.ef4_oword] }
%union.ef4_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.falcon_nic_data = type { ptr, ptr, %struct.falcon_board, [49 x i64], i32, i8, %struct.timer_list, %struct.falcon_spi_device, %struct.falcon_spi_device, %struct.mutex, %struct.mutex, i8 }
%struct.falcon_board = type { ptr, i32, i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.falcon_spi_device = type { i32, i32, i32, i8, i8, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.127 = type { ptr }
%struct.falcon_board_type = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.ef4_channel = type { ptr, i32, ptr, i8, i8, i32, i32, ptr, %struct.napi_struct, i32, %struct.ef4_special_buffer, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ef4_rx_queue, [120 x i8], [4 x %struct.ef4_tx_queue] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ef4_special_buffer = type { %struct.ef4_buffer, i32, i32 }
%struct.ef4_rx_queue = type { ptr, i32, ptr, %struct.ef4_special_buffer, i32, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32 }
%struct.ef4_tx_queue = type { ptr, i32, ptr, ptr, ptr, ptr, %struct.ef4_special_buffer, i32, i8, i32, ptr, [68 x i8], i32, i32, i32, i32, i32, [108 x i8], i32, i32, i32, i32, i8, i32, i32, [100 x i8], i32, %struct.atomic_t, [120 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.128, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.128 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.falcon_mtd_partition = type { %struct.ef4_mtd_partition, ptr, i32 }
%struct.ef4_mtd_partition = type { %struct.list_head, %struct.mtd_info, ptr, ptr, [36 x i8] }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.147 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.147 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.109 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ef4_self_tests = type { i32, i32, i32, [32 x i32], [32 x i32], i32, i32, [20 x i32], [18 x %struct.ef4_loopback_self_tests] }
%struct.ef4_loopback_self_tests = type { [4 x i32], [4 x i32], i32, i32 }
%struct.falcon_nvconfig = type { %union.ef4_oword, [2 x [8 x i8]], %union.ef4_oword, %union.ef4_oword, %union.ef4_oword, %union.ef4_oword, %union.ef4_oword, %union.ef4_oword, %union.ef4_oword, %union.ef4_oword, i16, i16, i16, %struct.falcon_nvconfig_board_v2, %union.ef4_oword, %struct.falcon_nvconfig_board_v3 }
%struct.falcon_nvconfig_board_v2 = type { i16, i8, i8, i8, i8, i16, i16 }
%struct.falcon_nvconfig_board_v3 = type { [2 x i32] }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/sfc/falcon/falcon.c\00", [55 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"timed out waiting for XAUI/XGXS reset\0A\00", [57 x i8] zeroinitializer }, align 32
@falcon_a1_nic_type = dso_local constant { %struct.ef4_nic_type, [112 x i8] } { %struct.ef4_nic_type { i32 2, ptr @falcon_a1_mem_map_size, ptr @falcon_probe_nic, ptr @falcon_remove_nic, ptr @falcon_init_nic, ptr @falcon_dimension_resources, ptr @falcon_irq_ack_a1, ptr @falcon_monitor, ptr @falcon_map_reset_reason, ptr @falcon_map_reset_flags, ptr @falcon_reset_hw, ptr @falcon_probe_port, ptr @falcon_remove_port, ptr @falcon_handle_global_event, ptr @ef4_farch_fini_dmaq, ptr @falcon_prepare_flush, ptr @ef4_port_dummy_op_void, ptr @ef4_port_dummy_op_void, ptr @ef4_farch_finish_flr, ptr @falcon_describe_nic_stats, ptr @falcon_update_nic_stats, ptr @falcon_start_nic_stats, ptr @falcon_pull_nic_stats, ptr @falcon_stop_nic_stats, ptr @falcon_set_id_led, ptr @falcon_push_irq_moderation, ptr @falcon_reconfigure_port, ptr @falcon_a1_prepare_enable_fc_tx, ptr @falcon_reconfigure_xmac, ptr @falcon_xmac_check_fault, ptr @falcon_get_wol, ptr @falcon_set_wol, ptr @ef4_port_dummy_op_void, ptr null, ptr @falcon_test_nvram, ptr @ef4_farch_irq_enable_master, ptr @ef4_farch_irq_test_generate, ptr @ef4_farch_irq_disable_master, ptr @ef4_farch_msi_interrupt, ptr @falcon_legacy_interrupt_a1, ptr @ef4_farch_tx_probe, ptr @ef4_farch_tx_init, ptr @ef4_farch_tx_remove, ptr @ef4_farch_tx_write, ptr @ef4_farch_tx_limit_len, ptr @dummy_rx_push_rss_config, ptr @ef4_farch_rx_probe, ptr @ef4_farch_rx_init, ptr @ef4_farch_rx_remove, ptr @ef4_farch_rx_write, ptr @ef4_farch_rx_defer_refill, ptr @ef4_farch_ev_probe, ptr @ef4_farch_ev_init, ptr @ef4_farch_ev_fini, ptr @ef4_farch_ev_remove, ptr @ef4_farch_ev_process, ptr @ef4_farch_ev_read_ack, ptr @ef4_farch_ev_test_generate, ptr @ef4_farch_filter_table_probe, ptr @ef4_farch_filter_table_restore, ptr @ef4_farch_filter_table_remove, ptr null, ptr @ef4_farch_filter_insert, ptr @ef4_farch_filter_remove_safe, ptr @ef4_farch_filter_get_safe, ptr @ef4_farch_filter_clear_rx, ptr @ef4_farch_filter_count_rx_used, ptr @ef4_farch_filter_get_rx_id_limit, ptr @ef4_farch_filter_get_rx_ids, ptr null, ptr null, ptr @falcon_mtd_probe, ptr @falcon_mtd_rename, ptr @falcon_mtd_read, ptr @falcon_mtd_erase, ptr @falcon_mtd_write, ptr @falcon_mtd_sync, ptr null, ptr null, i32 1, i32 71936, i32 71680, i32 98304, i32 72192, i32 72448, i64 70368744177663, i32 0, i32 0, i32 0, i32 36, i8 0, i8 0, i32 1, i32 4096, i64 2, i32 0 }, [112 x i8] zeroinitializer }, align 32
@falcon_b0_nic_type = dso_local constant { %struct.ef4_nic_type, [112 x i8] } { %struct.ef4_nic_type { i32 2, ptr @falcon_b0_mem_map_size, ptr @falcon_probe_nic, ptr @falcon_remove_nic, ptr @falcon_init_nic, ptr @falcon_dimension_resources, ptr @ef4_port_dummy_op_void, ptr @falcon_monitor, ptr @falcon_map_reset_reason, ptr @falcon_map_reset_flags, ptr @falcon_reset_hw, ptr @falcon_probe_port, ptr @falcon_remove_port, ptr @falcon_handle_global_event, ptr @ef4_farch_fini_dmaq, ptr @falcon_prepare_flush, ptr @ef4_port_dummy_op_void, ptr @ef4_port_dummy_op_void, ptr @ef4_farch_finish_flr, ptr @falcon_describe_nic_stats, ptr @falcon_update_nic_stats, ptr @falcon_start_nic_stats, ptr @falcon_pull_nic_stats, ptr @falcon_stop_nic_stats, ptr @falcon_set_id_led, ptr @falcon_push_irq_moderation, ptr @falcon_reconfigure_port, ptr @falcon_b0_prepare_enable_fc_tx, ptr @falcon_reconfigure_xmac, ptr @falcon_xmac_check_fault, ptr @falcon_get_wol, ptr @falcon_set_wol, ptr @ef4_port_dummy_op_void, ptr @falcon_b0_test_chip, ptr @falcon_test_nvram, ptr @ef4_farch_irq_enable_master, ptr @ef4_farch_irq_test_generate, ptr @ef4_farch_irq_disable_master, ptr @ef4_farch_msi_interrupt, ptr @ef4_farch_legacy_interrupt, ptr @ef4_farch_tx_probe, ptr @ef4_farch_tx_init, ptr @ef4_farch_tx_remove, ptr @ef4_farch_tx_write, ptr @ef4_farch_tx_limit_len, ptr @falcon_b0_rx_push_rss_config, ptr @ef4_farch_rx_probe, ptr @ef4_farch_rx_init, ptr @ef4_farch_rx_remove, ptr @ef4_farch_rx_write, ptr @ef4_farch_rx_defer_refill, ptr @ef4_farch_ev_probe, ptr @ef4_farch_ev_init, ptr @ef4_farch_ev_fini, ptr @ef4_farch_ev_remove, ptr @ef4_farch_ev_process, ptr @ef4_farch_ev_read_ack, ptr @ef4_farch_ev_test_generate, ptr @ef4_farch_filter_table_probe, ptr @ef4_farch_filter_table_restore, ptr @ef4_farch_filter_table_remove, ptr @ef4_farch_filter_update_rx_scatter, ptr @ef4_farch_filter_insert, ptr @ef4_farch_filter_remove_safe, ptr @ef4_farch_filter_get_safe, ptr @ef4_farch_filter_clear_rx, ptr @ef4_farch_filter_count_rx_used, ptr @ef4_farch_filter_get_rx_id_limit, ptr @ef4_farch_filter_get_rx_ids, ptr @ef4_farch_filter_rfs_insert, ptr @ef4_farch_filter_rfs_expire_one, ptr @falcon_mtd_probe, ptr @falcon_mtd_rename, ptr @falcon_mtd_read, ptr @falcon_mtd_erase, ptr @falcon_mtd_write, ptr @falcon_mtd_sync, ptr null, ptr null, i32 2, i32 16056320, i32 15990784, i32 8388608, i32 16121856, i32 16384000, i64 70368744177663, i32 16, i32 12, i32 0, i32 0, i8 1, i8 0, i32 0, i32 4096, i64 824633720834, i32 8192 }, [112 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@falcon_stat_desc = internal constant { [49 x %struct.ef4_hw_stat_desc], [120 x i8] } { [49 x %struct.ef4_hw_stat_desc] [%struct.ef4_hw_stat_desc { ptr @.str.3, i16 0, i16 0 }, %struct.ef4_hw_stat_desc { ptr @.str.4, i16 0, i16 0 }, %struct.ef4_hw_stat_desc { ptr @.str.5, i16 64, i16 136 }, %struct.ef4_hw_stat_desc { ptr @.str.6, i16 32, i16 128 }, %struct.ef4_hw_stat_desc { ptr @.str.7, i16 32, i16 160 }, %struct.ef4_hw_stat_desc { ptr @.str.8, i16 32, i16 156 }, %struct.ef4_hw_stat_desc { ptr @.str.9, i16 32, i16 152 }, %struct.ef4_hw_stat_desc { ptr @.str.10, i16 32, i16 144 }, %struct.ef4_hw_stat_desc { ptr @.str.11, i16 32, i16 148 }, %struct.ef4_hw_stat_desc { ptr @.str.12, i16 32, i16 192 }, %struct.ef4_hw_stat_desc { ptr @.str.13, i16 32, i16 164 }, %struct.ef4_hw_stat_desc { ptr @.str.14, i16 32, i16 168 }, %struct.ef4_hw_stat_desc { ptr @.str.15, i16 32, i16 172 }, %struct.ef4_hw_stat_desc { ptr @.str.16, i16 32, i16 176 }, %struct.ef4_hw_stat_desc { ptr @.str.17, i16 32, i16 180 }, %struct.ef4_hw_stat_desc { ptr @.str.18, i16 32, i16 184 }, %struct.ef4_hw_stat_desc { ptr @.str.19, i16 32, i16 188 }, %struct.ef4_hw_stat_desc { ptr @.str.20, i16 32, i16 196 }, %struct.ef4_hw_stat_desc { ptr @.str.21, i16 16, i16 200 }, %struct.ef4_hw_stat_desc { ptr @.str.22, i16 16, i16 204 }, %struct.ef4_hw_stat_desc { ptr @.str.23, i16 16, i16 208 }, %struct.ef4_hw_stat_desc { ptr @.str.24, i16 64, i16 0 }, %struct.ef4_hw_stat_desc { ptr @.str.25, i16 64, i16 8 }, %struct.ef4_hw_stat_desc { ptr @.str.26, i16 0, i16 0 }, %struct.ef4_hw_stat_desc { ptr @.str.27, i16 32, i16 16 }, %struct.ef4_hw_stat_desc { ptr @.str.28, i16 32, i16 20 }, %struct.ef4_hw_stat_desc { ptr @.str.29, i16 32, i16 56 }, %struct.ef4_hw_stat_desc { ptr @.str.30, i16 32, i16 76 }, %struct.ef4_hw_stat_desc { ptr @.str.31, i16 32, i16 72 }, %struct.ef4_hw_stat_desc { ptr @.str.32, i16 32, i16 32 }, %struct.ef4_hw_stat_desc { ptr @.str.33, i16 32, i16 28 }, %struct.ef4_hw_stat_desc { ptr @.str.34, i16 32, i16 24 }, %struct.ef4_hw_stat_desc { ptr @.str.35, i16 32, i16 36 }, %struct.ef4_hw_stat_desc { ptr @.str.36, i16 32, i16 80 }, %struct.ef4_hw_stat_desc { ptr @.str.37, i16 32, i16 84 }, %struct.ef4_hw_stat_desc { ptr @.str.38, i16 32, i16 88 }, %struct.ef4_hw_stat_desc { ptr @.str.39, i16 32, i16 92 }, %struct.ef4_hw_stat_desc { ptr @.str.40, i16 32, i16 96 }, %struct.ef4_hw_stat_desc { ptr @.str.41, i16 32, i16 100 }, %struct.ef4_hw_stat_desc { ptr @.str.42, i16 32, i16 104 }, %struct.ef4_hw_stat_desc { ptr @.str.43, i16 32, i16 40 }, %struct.ef4_hw_stat_desc { ptr @.str.44, i16 32, i16 48 }, %struct.ef4_hw_stat_desc { ptr @.str.45, i16 32, i16 44 }, %struct.ef4_hw_stat_desc { ptr @.str.46, i16 32, i16 52 }, %struct.ef4_hw_stat_desc { ptr @.str.47, i16 32, i16 64 }, %struct.ef4_hw_stat_desc { ptr @.str.48, i16 32, i16 60 }, %struct.ef4_hw_stat_desc { ptr @.str.49, i16 32, i16 108 }, %struct.ef4_hw_stat_desc { ptr @.str.50, i16 32, i16 68 }, %struct.ef4_hw_stat_desc { ptr @.str.51, i16 0, i16 0 }], [120 x i8] zeroinitializer }, align 32
@falcon_stat_mask = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 -1, i32 -1], [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"timed out waiting for statistics\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_noskb_drops\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_nodesc_trunc\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_bytes\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_packets\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_pause\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_control\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_unicast\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_multicast\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_broadcast\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tx_lt64\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tx_64\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_65_to_127\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_128_to_255\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_256_to_511\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx_512_to_1023\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_1024_to_15xx\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_15xx_to_jumbo\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_gtjumbo\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_non_tcpudp\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_mac_src_error\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_ip_src_error\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx_bytes\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_good_bytes\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_bad_bytes\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_packets\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rx_good\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rx_bad\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx_pause\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_control\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_unicast\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_multicast\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_broadcast\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rx_lt64\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rx_64\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_65_to_127\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_128_to_255\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_256_to_511\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_512_to_1023\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_1024_to_15xx\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_15xx_to_jumbo\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_gtjumbo\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx_bad_lt64\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_bad_gtjumbo\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx_overflow\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_symbol_error\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_align_error\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_length_error\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_internal_error\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_nodesc_drop_cnt\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Falcon FPGA not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Falcon rev A0 not supported\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Falcon rev A1 1G not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Falcon rev A1 PCI-X not supported\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to find secondary function\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to reset NIC\0A\00", [43 x i8] zeroinitializer }, align 32
@falcon_probe_nic.__UNIQUE_ID_ddebug551 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.59, ptr @.str, ptr @.str.60, i8 2, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sfc_falcon\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"falcon_probe_nic\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"INT_KER at %llx (virt %p phys %llx)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NVRAM is invalid\0A\00", [46 x i8] zeroinitializer }, align 32
@falcon_i2c_bit_operations = internal constant { %struct.i2c_algo_bit_data, [56 x i8] } { %struct.i2c_algo_bit_data { ptr null, ptr @falcon_setsda, ptr @falcon_setscl, ptr @falcon_getsda, ptr @falcon_getscl, ptr null, ptr null, i32 5, i32 5, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SFC4000 GPIO\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to initialise board\0A\00", [36 x i8] zeroinitializer }, align 32
@falcon_probe_nic.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&nic_data->stats_timer)\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__falcon_reset_hw.__UNIQUE_ID_ddebug542 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.65, ptr @.str, ptr @.str.66, i8 1, i8 -16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__falcon_reset_hw\00", [46 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"performing %s hardware reset\0A\00", [34 x i8] zeroinitializer }, align 32
@ef4_reset_type_max = external dso_local local_unnamed_addr constant i32, align 4
@ef4_reset_type_names = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(invalid)\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"failed to backup PCI state of primary function prior to hardware reset\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"failed to backup PCI state of secondary function prior to hardware reset\0A\00", [54 x i8] zeroinitializer }, align 32
@__falcon_reset_hw.__UNIQUE_ID_ddebug543 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.65, ptr @.str, ptr @.str.70, i8 1, i8 -6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"waiting for hardware reset\0A\00", [36 x i8] zeroinitializer }, align 32
@__falcon_reset_hw.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.65, ptr @.str, ptr @.str.71, i8 1, i8 -4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"successfully restored PCI config\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"timed out waiting for hardware reset\0A\00", [58 x i8] zeroinitializer }, align 32
@__falcon_reset_hw.__UNIQUE_ID_ddebug545 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.65, ptr @.str, ptr @.str.73, i8 1, i8 -1, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hardware reset complete\0A\00", [39 x i8] zeroinitializer }, align 32
@falcon_probe_spi_devices.__UNIQUE_ID_ddebug549 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.74, ptr @.str, ptr @.str.75, i8 2, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"falcon_probe_spi_devices\00", [39 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Booted from %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flash\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EEPROM\00", [25 x i8] zeroinitializer }, align 32
@falcon_probe_spi_devices.__UNIQUE_ID_ddebug550 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.74, ptr @.str, ptr @.str.78, i8 2, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Booted from internal ASIC settings; setting SPI config\0A\00", [40 x i8] zeroinitializer }, align 32
@falcon_probe_spi_devices.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&nic_data->spi_lock\00", [44 x i8] zeroinitializer }, align 32
@falcon_probe_nvconfig.__UNIQUE_ID_ddebug548 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.80, ptr @.str, ptr @.str.81, i8 2, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"falcon_probe_nvconfig\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PHY is %d phy_id %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed to read %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NVRAM bad magic 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NVRAM has ancient version 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NVRAM has incorrect checksum\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"timed out waiting for SPI\0A\00", [37 x i8] zeroinitializer }, align 32
@falcon_reset_sram.__UNIQUE_ID_ddebug546 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.87, ptr @.str, ptr @.str.88, i8 2, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"falcon_reset_sram\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"waiting for SRAM reset (attempt %d)...\0A\00", [56 x i8] zeroinitializer }, align 32
@falcon_reset_sram.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.87, ptr @.str, ptr @.str.89, i8 2, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SRAM reset complete\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"timed out waiting for SRAM reset\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Board sensor %s; shutting down PHY\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reported fault\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"timed out waiting for XMAC core reset\0A\00", [57 x i8] zeroinitializer }, align 32
@falcon_reset_macs.__UNIQUE_ID_ddebug538 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.95, ptr @.str, ptr @.str.96, i8 1, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"falcon_reset_macs\00", [46 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Completed MAC reset after %d loops\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MAC reset failed\0A\00", [46 x i8] zeroinitializer }, align 32
@falcon_xmac_link_ok_retry.__UNIQUE_ID_ddebug537 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.98, ptr @.str, ptr @.str.99, i8 1, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"falcon_xmac_link_ok_retry\00", [38 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bashing xaui\0A\00", [18 x i8] zeroinitializer }, align 32
@ef4_mdio_phyxgxs_lane_sync.__UNIQUE_ID_ddebug522 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.100, ptr @.str.101, ptr @.str.102, i8 0, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ef4_mdio_phyxgxs_lane_sync\00", [37 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/sfc/falcon/mdio_10g.h\00", [53 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"XGXS lane status: %x\0A\00", [42 x i8] zeroinitializer }, align 32
@falcon_sfx7101_phy_ops = external dso_local constant %struct.ef4_phy_operations, align 4
@falcon_qt202x_phy_ops = external dso_local constant %struct.ef4_phy_operations, align 4
@falcon_txc_phy_ops = external dso_local constant %struct.ef4_phy_operations, align 4
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unknown PHY type %d\0A\00", [43 x i8] zeroinitializer }, align 32
@falcon_probe_port.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&nic_data->mdio_lock\00", [43 x i8] zeroinitializer }, align 32
@falcon_probe_port.__UNIQUE_ID_ddebug541 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.105, ptr @.str, ptr @.str.106, i8 1, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"falcon_probe_port\00", [46 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"stats buffer at %llx (virt %p phys %llx)\0A\00", [54 x i8] zeroinitializer }, align 32
@falcon_mdio_read.__UNIQUE_ID_ddebug540 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.107, ptr @.str, ptr @.str.108, i8 1, i8 -95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"falcon_mdio_read\00", [47 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"read from MDIO %d register %d.%d, got error %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"error from GMII access %08x:%08x:%08x:%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"timed out waiting for GMII\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"channel %d seen global RX_RESET event. Resetting.\0A\00", [45 x i8] zeroinitializer }, align 32
@falcon_mtd_probe.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.112 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sfc_flash_bootrom\00", [46 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sfc_bootconfig\00", [17 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"SPI write timeout on device %d last status=0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@falcon_spi_slow_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: timed out waiting for %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"falcon_spi_slow_wait\00", [43 x i8] zeroinitializer }, align 32
@falcon_spi_slow_wait._entry_ptr = internal global ptr @falcon_spi_slow_wait._entry, section ".printk_index", align 4
@falcon_b0_register_tests = internal constant { [18 x { i32, [4 x i8], { [4 x i32] } }], [112 x i8] } { [18 x { i32, [4 x i8], { [4 x i32] } }] [{ i32, [4 x i8], { [4 x i32] } } { i32 0, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 -64768, i32 -64768, i32 -64768, i32 -64768] } }, { i32, [4 x i8], { [4 x i32] } } { i32 2048, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 -16777217, i32 -8453888, i32 0, i32 0] } }, { i32, [4 x i8], { [4 x i32] } } { i32 2640, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 922812287, i32 0, i32 0, i32 0] } }, { i32, [4 x i8], { [4 x i32] } } { i32 2688, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 -2130772225, i32 -225, i32 -33554430, i32 -33024] } }, { i32, [4 x i8], { [4 x i32] } } { i32 3200, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 65535, i32 0, i32 0, i32 0] } }, { i32, [4 x i8], { [4 x i32] } } { i32 1568, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 -57600, i32 0, i32 0, i32 0] } }, { i32, [4 x i8], { [4 x i32] } } { i32 2112, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 251658240, i32 0, i32 0, i32 0] } }, { i32, [4 x i8], { [4 x i32] } } { i32 2128, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 -16580608, i32 0, i32 0, i32 0] } }, { i32, [4 x i8], { [4 x i32] } } { i32 592, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 -15794176, i32 0, i32 0, i32 0] } }, { i32, [4 x i8], { [4 x i32] } } { i32 3600, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 930283520, i32 0, i32 0, i32 0] } }, { i32, [4 x i8], { [4 x i32] } } { i32 3872, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 522125312, i32 0, i32 0, i32 0] } }, { i32, [4 x i8], { [4 x i32] } } { i32 4640, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 1745616896, i32 0, i32 0, i32 0] } }, { i32, [4 x i8], { [4 x i32] } } { i32 4656, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 1677789184, i32 0, i32 0, i32 0] } }, { i32, [4 x i8], { [4 x i32] } } { i32 4672, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 201986055, i32 0, i32 0, i32 0] } }, { i32, [4 x i8], { [4 x i32] } } { i32 4832, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 -132186112, i32 0, i32 0, i32 0] } }, { i32, [4 x i8], { [4 x i32] } } { i32 4720, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 16842751, i32 0, i32 0, i32 0] } }, { i32, [4 x i8], { [4 x i32] } } { i32 4608, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 -1, i32 0, i32 0, i32 0] } }, { i32, [4 x i8], { [4 x i32] } } { i32 4880, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 268370688, i32 0, i32 0, i32 0] } }], [112 x i8] zeroinitializer }, align 32
@switch.table.falcon_probe_port = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @falcon_txc_phy_ops, ptr @falcon_sfx7101_phy_ops, ptr @falcon_sfx7101_phy_ops, ptr @falcon_qt202x_phy_ops, ptr @falcon_sfx7101_phy_ops, ptr @falcon_sfx7101_phy_ops, ptr @falcon_sfx7101_phy_ops, ptr @falcon_sfx7101_phy_ops, ptr @falcon_qt202x_phy_ops], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.121 = internal global [5 x i64] [i64 3, i64 32, i64 100, i64 1000, i64 10000]
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1020, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1036, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [19 x i8] c"falcon_a1_nic_type\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2708, i32 27 }
@___asan_gen_.131 = private unnamed_addr constant [19 x i8] c"falcon_b0_nic_type\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2805, i32 27 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"falcon_stat_desc\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 147, i32 38 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"falcon_stat_mask\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 198, i32 28 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1449, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 196, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 195, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 148, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 149, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 150, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 151, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 152, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 153, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 154, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 155, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 156, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 157, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 158, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 159, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 160, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 161, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 162, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 163, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 164, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 165, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 166, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 167, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 168, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 169, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 170, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 171, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 172, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 173, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 174, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 175, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 176, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 177, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 178, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 179, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 180, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 181, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 182, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 183, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 184, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 185, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 186, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 187, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 188, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 189, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 190, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 191, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 192, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 193, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 194, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2301, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2312, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2318, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2323, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2339, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2349, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2360, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2372, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant [26 x i8] c"falcon_i2c_bit_operations\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 364, i32 39 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2390, i32 32 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2398, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2404, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1983, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1990, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1998, i32 5 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2026, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2034, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2042, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2046, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2239, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2246, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2257, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2208, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1807, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1819, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1824, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1838, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 543, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2131, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2140, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2147, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2079, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1291, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1314, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1320, i32 4 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1206, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/sfc/falcon/mdio_10g.h\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 51, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1694, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1700, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1724, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1666, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1557, i32 5 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1567, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1761, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 929, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 942, i32 37 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 955, i32 37 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 855, i32 43 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 680, i32 4 }
@___asan_gen_.497 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.503 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 761, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant [25 x i8] c"falcon_b0_register_tests\00", align 1
@___asan_gen_.507 = private constant [44 x i8] c"../drivers/net/ethernet/sfc/falcon/falcon.c\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1857, i32 45 }
@___asan_gen_.509 = private unnamed_addr constant [31 x i8] c"switch.table.falcon_probe_port\00", align 1
@llvm.compiler.used = appending global [131 x ptr] [ptr @falcon_spi_slow_wait._entry, ptr @falcon_spi_slow_wait._entry_ptr, ptr @.str, ptr @.str.1, ptr @falcon_a1_nic_type, ptr @falcon_b0_nic_type, ptr @falcon_stat_desc, ptr @falcon_stat_mask, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @falcon_i2c_bit_operations, ptr @.str.62, ptr @.str.63, ptr @falcon_probe_nic.__key, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @falcon_probe_spi_devices.__key, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @falcon_probe_port.__key, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @falcon_b0_register_tests, ptr @switch.table.falcon_probe_port], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @falcon_a1_nic_type to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @falcon_b0_nic_type to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @falcon_stat_desc to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @falcon_stat_mask to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @falcon_i2c_bit_operations to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @falcon_probe_nic.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @falcon_probe_spi_devices.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @falcon_probe_port.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @falcon_spi_slow_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @falcon_b0_register_tests to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.falcon_probe_port to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @falcon_reset_xaui(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 4
  %stats_disable_count = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %stats_disable_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stats_disable_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !265

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1020, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #17, !srcloc !266
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %7, i32 4868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 0) #17, !srcloc !266
  %8 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %9, i32 4872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #17, !srcloc !266
  %10 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %11, i32 4876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #17
  br label %for.body

for.body:                                         ; preds = %if.end38.for.body_crit_edge, %if.end
  %count.067 = phi i32 [ 0, %if.end ], [ %inc, %if.end38.for.body_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %12 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i57 = getelementptr i8, ptr %13, i32 4864
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57) #17, !srcloc !267
  %15 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i58 = getelementptr i8, ptr %16, i32 4868
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i58) #17, !srcloc !267
  %18 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %19, i32 4872
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #17, !srcloc !267
  %21 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %22, i32 4876
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #17
  %24 = and i32 %14, 16777472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %if.then37, label %if.end38

if.then37:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @falcon_setup_xaui(ptr noundef %efx)
  br label %cleanup

if.end38:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 2147480) #17
  %inc = add nuw nsw i32 %count.067, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %do.body39, label %if.end38.for.body_crit_edge

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

do.body39:                                        ; preds = %if.end38
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %27 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_enable, align 8
  %and40 = and i32 %28, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body39.cleanup_crit_edge, label %if.then42

do.body39.cleanup_crit_edge:                      ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then42:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %29 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.1) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %do.body39.cleanup_crit_edge, %if.then37
  %retval.0 = phi i32 [ 0, %if.then37 ], [ -110, %if.then42 ], [ -110, %do.body39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @falcon_setup_xaui(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 75
  %0 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %2 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4880
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !267
  %5 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %6, i32 4884
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #17, !srcloc !267
  %8 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %9, i32 4888
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #17, !srcloc !267
  %11 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %12, i32 4892
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #17
  %and130 = and i32 %4, -16711681
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %14 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i160 = getelementptr i8, ptr %15, i32 4880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i160, i32 %and130) #17, !srcloc !266
  %16 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %17, i32 4884
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %7) #17, !srcloc !266
  %18 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %19, i32 4888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %10) #17, !srcloc !266
  %20 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i162 = getelementptr i8, ptr %21, i32 4892
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i162, i32 %13) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #17
  %call3.i164 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %22 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i166 = getelementptr i8, ptr %23, i32 4896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i166, i32 1431695086) #17, !srcloc !266
  %24 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i168 = getelementptr i8, ptr %25, i32 4900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i168, i32 0) #17, !srcloc !266
  %26 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i170 = getelementptr i8, ptr %27, i32 4904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i170, i32 0) #17, !srcloc !266
  %28 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i172 = getelementptr i8, ptr %29, i32 4908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i172, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i164) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @falcon_start_nic_stats(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 4
  %stats_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 105
  tail call void @_raw_spin_lock_bh(ptr noundef %stats_lock) #17
  %stats_disable_count = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %stats_disable_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stats_disable_count, align 8
  %dec = add i32 %3, -1
  store i32 %dec, ptr %stats_disable_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @falcon_stats_request(ptr noundef %efx)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @falcon_stats_request(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 4
  %stats_pending = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %stats_pending to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stats_pending, align 4, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !269

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1418, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %stats_disable_count = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %stats_disable_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stats_disable_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool22.not = icmp eq i32 %5, 0
  br i1 %tobool22.not, label %if.end.if.end44_crit_edge, label %do.end38, !prof !269

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end44

do.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1419, i32 noundef 9, ptr noundef null) #17
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %if.end.if.end44_crit_edge
  %stats_buffer = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 71
  %6 = ptrtoint ptr %stats_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stats_buffer, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 212
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %add.ptr, align 4
  %9 = ptrtoint ptr %stats_pending to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %stats_pending, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !270
  tail call void @arm_heavy_mb() #17
  %dma_addr = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 71, i32 1
  %10 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_addr, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %13 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 3168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #17, !srcloc !266
  %15 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %16, i32 3172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 256) #17, !srcloc !266
  %17 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %18, i32 3176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #17, !srcloc !266
  %19 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %20, i32 3180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #17
  %stats_timer = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %21, 50
  %call = tail call i32 @round_jiffies_up(i32 noundef %add) #17
  %call70 = tail call i32 @mod_timer(ptr noundef %stats_timer, i32 noundef %call) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @falcon_stop_nic_stats(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 2654) #17
  %stats_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 105
  tail call void @_raw_spin_lock_bh(ptr noundef %stats_lock) #17
  %stats_disable_count = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %stats_disable_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stats_disable_count, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %stats_disable_count, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock) #17
  %stats_timer = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 6
  %call = tail call i32 @del_timer_sync(ptr noundef %stats_timer) #17
  %stats_pending = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 5
  %stats_buffer = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 71
  %4 = ptrtoint ptr %stats_pending to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stats_pending, align 4, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %entry
  %6 = ptrtoint ptr %stats_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stats_buffer, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 212
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end:                                           ; preds = %for.body
  tail call void @msleep(i32 noundef 1) #17
  %10 = ptrtoint ptr %stats_pending to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %stats_pending, align 4, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.1 = icmp eq i8 %11, 0
  br i1 %tobool.not.1, label %if.end.for.end_crit_edge, label %for.body.1

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.1:                                       ; preds = %if.end
  %12 = ptrtoint ptr %stats_buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats_buffer, align 8
  %add.ptr.1 = getelementptr i8, ptr %13, i32 212
  %14 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool6.not.1 = icmp eq i32 %15, 0
  br i1 %tobool6.not.1, label %if.end.1, label %for.body.1.for.end_crit_edge

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end.1:                                         ; preds = %for.body.1
  tail call void @msleep(i32 noundef 1) #17
  %16 = ptrtoint ptr %stats_pending to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %stats_pending, align 4, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.2 = icmp eq i8 %17, 0
  br i1 %tobool.not.2, label %if.end.1.for.end_crit_edge, label %for.body.2

if.end.1.for.end_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.2:                                       ; preds = %if.end.1
  %18 = ptrtoint ptr %stats_buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stats_buffer, align 8
  %add.ptr.2 = getelementptr i8, ptr %19, i32 212
  %20 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool6.not.2 = icmp eq i32 %21, 0
  br i1 %tobool6.not.2, label %if.end.2, label %for.body.2.for.end_crit_edge

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end.2:                                         ; preds = %for.body.2
  tail call void @msleep(i32 noundef 1) #17
  %22 = ptrtoint ptr %stats_pending to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %stats_pending, align 4, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.3 = icmp eq i8 %23, 0
  br i1 %tobool.not.3, label %if.end.2.for.end_crit_edge, label %for.body.3

if.end.2.for.end_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.3:                                       ; preds = %if.end.2
  %24 = ptrtoint ptr %stats_buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stats_buffer, align 8
  %add.ptr.3 = getelementptr i8, ptr %25, i32 212
  %26 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool6.not.3 = icmp eq i32 %27, 0
  br i1 %tobool6.not.3, label %if.end.3, label %for.body.3.for.end_crit_edge

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end.3:                                         ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @msleep(i32 noundef 1) #17
  br label %for.end

for.end:                                          ; preds = %if.end.3, %for.body.3.for.end_crit_edge, %if.end.2.for.end_crit_edge, %for.body.2.for.end_crit_edge, %if.end.1.for.end_crit_edge, %for.body.1.for.end_crit_edge, %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %stats_lock) #17
  %28 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nic_data1, align 4
  %stats_pending.i = getelementptr inbounds %struct.falcon_nic_data, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %stats_pending.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %stats_pending.i, align 4, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i, label %for.end.falcon_stats_complete.exit_crit_edge, label %if.end.i

for.end.falcon_stats_complete.exit_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_stats_complete.exit

if.end.i:                                         ; preds = %for.end
  %32 = ptrtoint ptr %stats_pending.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %stats_pending.i, align 4
  %33 = ptrtoint ptr %stats_buffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %stats_buffer, align 8
  %add.ptr.i = getelementptr i8, ptr %34, i32 212
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool3.not.i = icmp eq i32 %36, 0
  br i1 %tobool3.not.i, label %do.body.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !271
  %stats.i = getelementptr inbounds %struct.falcon_nic_data, ptr %29, i32 0, i32 3
  %37 = ptrtoint ptr %stats_buffer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %stats_buffer, align 8
  tail call void @ef4_nic_update_stats(ptr noundef nonnull @falcon_stat_desc, i32 noundef 49, ptr noundef nonnull @falcon_stat_mask, ptr noundef %stats.i, ptr noundef %38, i1 noundef zeroext true) #17
  br label %falcon_stats_complete.exit

do.body.i:                                        ; preds = %if.end.i
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %39 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %40, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %do.body.i.falcon_stats_complete.exit_crit_edge, label %if.then8.i

do.body.i.falcon_stats_complete.exit_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_stats_complete.exit

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %41 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %42, ptr noundef nonnull @.str.2) #20
  br label %falcon_stats_complete.exit

falcon_stats_complete.exit:                       ; preds = %if.then8.i, %do.body.i.falcon_stats_complete.exit_crit_edge, %if.then4.i, %for.end.falcon_stats_complete.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @falcon_a1_mem_map_size(ptr nocapture noundef readnone %efx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 131072
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @falcon_probe_nic(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %primary = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 2
  %0 = ptrtoint ptr %primary to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %efx, ptr %primary, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 2120) #21
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup220_crit_edge, label %if.end

entry.cleanup220_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup220

if.end:                                           ; preds = %entry
  %nic_data1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %2 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %nic_data1, align 4
  %efx2 = getelementptr inbounds %struct.falcon_nic_data, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %efx2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %efx, ptr %efx2, align 4
  %call3 = tail call i32 @ef4_farch_fpga_ver(ptr noundef %efx) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %if.end8, label %do.body

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.fail1_crit_edge, label %if.then6

do.body.fail1_crit_edge:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail1

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.52) #20
  br label %fail1

if.end8:                                          ; preds = %if.end
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.ef4_nic_type, ptr %9, i32 0, i32 79
  %10 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp10 = icmp slt i32 %11, 2
  br i1 %cmp10, label %if.then11, label %if.end8.if.end91_crit_edge

if.end8.if.end91_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end91

if.then11:                                        ; preds = %if.end8
  %pci_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 4
  %12 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %revision, align 4
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i8 %15, label %if.end27 [
    i8 -1, label %if.then11.do.body18_crit_edge
    i8 0, label %if.then11.do.body18_crit_edge320
  ]

if.then11.do.body18_crit_edge320:                 ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body18

if.then11.do.body18_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body18

do.body18:                                        ; preds = %if.then11.do.body18_crit_edge, %if.then11.do.body18_crit_edge320
  %msg_enable19 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %17 = ptrtoint ptr %msg_enable19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable19, align 8
  %and20 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body18.fail1_crit_edge, label %if.then22

do.body18.fail1_crit_edge:                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail1

if.then22:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev23 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %19 = ptrtoint ptr %net_dev23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net_dev23, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.53) #20
  br label %fail1

if.end27:                                         ; preds = %if.then11
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %21 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 512
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !267
  %24 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %25, i32 516
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #17, !srcloc !267
  %27 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %28, i32 520
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #17, !srcloc !267
  %30 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %31, i32 524
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #17
  %33 = tail call i32 @llvm.bswap.i32(i32 %23)
  %34 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp31 = icmp eq i32 %34, 0
  br i1 %cmp31, label %do.body34, label %if.end43

do.body34:                                        ; preds = %if.end27
  %msg_enable35 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %35 = ptrtoint ptr %msg_enable35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %msg_enable35, align 8
  %and36 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body34.fail1_crit_edge, label %if.then38

do.body34.fail1_crit_edge:                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail1

if.then38:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev39 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %37 = ptrtoint ptr %net_dev39 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net_dev39, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %38, ptr noundef nonnull @.str.54) #20
  br label %fail1

if.end43:                                         ; preds = %if.end27
  %and48 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %cmp49 = icmp eq i32 %and48, 0
  br i1 %cmp49, label %do.body52, label %if.end61

do.body52:                                        ; preds = %if.end43
  %msg_enable53 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %39 = ptrtoint ptr %msg_enable53 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_enable53, align 8
  %and54 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.body52.fail1_crit_edge, label %if.then56

do.body52.fail1_crit_edge:                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail1

if.then56:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev57 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %41 = ptrtoint ptr %net_dev57 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net_dev57, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %42, ptr noundef nonnull @.str.55) #20
  br label %fail1

if.end61:                                         ; preds = %if.end43
  %43 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pci_dev, align 4
  %call63 = tail call ptr @pci_dev_get(ptr noundef %44) #17
  %call64312 = tail call ptr @pci_get_device(i32 noundef 6436, i32 noundef 26371, ptr noundef %call63) #17
  %tobool65.not313 = icmp eq ptr %call64312, null
  br i1 %tobool65.not313, label %if.end61.while.end_crit_edge, label %if.end61.while.body_crit_edge

if.end61.while.body_crit_edge:                    ; preds = %if.end61
  br label %while.body

if.end61.while.end_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %if.end75.while.body_crit_edge, %if.end61.while.body_crit_edge
  %call64314 = phi ptr [ %call64, %if.end75.while.body_crit_edge ], [ %call64312, %if.end61.while.body_crit_edge ]
  %bus = getelementptr inbounds %struct.pci_dev, ptr %call64314, i32 0, i32 1
  %45 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus, align 8
  %47 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pci_dev, align 4
  %bus67 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %bus67 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bus67, align 8
  %cmp68 = icmp eq ptr %46, %50
  br i1 %cmp68, label %land.lhs.true, label %while.body.if.end75_crit_edge

while.body.if.end75_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end75

land.lhs.true:                                    ; preds = %while.body
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %call64314, i32 0, i32 6
  %51 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %devfn, align 4
  %devfn71 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 6
  %53 = ptrtoint ptr %devfn71 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %devfn71, align 4
  %add = add i32 %54, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %add)
  %cmp72 = icmp eq i32 %52, %add
  br i1 %cmp72, label %while.end.thread, label %land.lhs.true.if.end75_crit_edge

land.lhs.true.if.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end75

while.end.thread:                                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %55 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call64314, ptr %call7.i.i, align 8
  br label %if.end91

if.end75:                                         ; preds = %land.lhs.true.if.end75_crit_edge, %while.body.if.end75_crit_edge
  %call64 = tail call ptr @pci_get_device(i32 noundef 6436, i32 noundef 26371, ptr noundef nonnull %call64314) #17
  %tobool65.not = icmp eq ptr %call64, null
  br i1 %tobool65.not, label %if.end75.while.end_crit_edge, label %if.end75.while.body_crit_edge

if.end75.while.body_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

if.end75.while.end_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %if.end75.while.end_crit_edge, %if.end61.while.end_crit_edge
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr = load ptr, ptr %call7.i.i, align 8
  %tobool77.not = icmp eq ptr %.pr, null
  br i1 %tobool77.not, label %do.body79, label %while.end.if.end91_crit_edge

while.end.if.end91_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end91

do.body79:                                        ; preds = %while.end
  %msg_enable80 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %57 = ptrtoint ptr %msg_enable80 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %msg_enable80, align 8
  %and81 = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %do.body79.fail1_crit_edge, label %if.then83

do.body79.fail1_crit_edge:                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail1

if.then83:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev84 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %59 = ptrtoint ptr %net_dev84 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %net_dev84, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %60, ptr noundef nonnull @.str.56) #20
  br label %fail1

if.end91:                                         ; preds = %while.end.if.end91_crit_edge, %while.end.thread, %if.end8.if.end91_crit_edge
  %call92 = tail call fastcc i32 @__falcon_reset_hw(ptr noundef %efx, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end104, label %do.body95

do.body95:                                        ; preds = %if.end91
  %msg_enable96 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %61 = ptrtoint ptr %msg_enable96 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %msg_enable96, align 8
  %and97 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %do.body95.fail3_crit_edge, label %if.then99

do.body95.fail3_crit_edge:                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail3

if.then99:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev100 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %63 = ptrtoint ptr %net_dev100 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %net_dev100, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %64, ptr noundef nonnull @.str.57) #20
  br label %fail3

if.end104:                                        ; preds = %if.end91
  %irq_status = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 58
  %call105 = tail call i32 @ef4_nic_alloc_buffer(ptr noundef %efx, ptr noundef %irq_status, i32 noundef 16, i32 noundef 3264) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %do.body109, label %if.end104.fail3_crit_edge

if.end104.fail3_crit_edge:                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail3

do.body109:                                       ; preds = %if.end104
  %dma_addr = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 58, i32 1
  %65 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dma_addr, align 4
  %and111 = and i32 %66, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %do.body125, label %do.body116, !prof !269

do.body116:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/falcon/falcon.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2358, 0\0A.popsection", ""() #17, !srcloc !272
  unreachable

do.body125:                                       ; preds = %do.body109
  %msg_enable126 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %67 = ptrtoint ptr %msg_enable126 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %msg_enable126, align 8
  %and127 = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %do.body125.do.end154_crit_edge, label %do.body130

do.body125.do.end154_crit_edge:                   ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end154

do.body130:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @falcon_probe_nic.__UNIQUE_ID_ddebug551, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@falcon_probe_nic, %if.then139)) #17
          to label %do.end154 [label %if.then139], !srcloc !273

if.then139:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev140 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %69 = ptrtoint ptr %net_dev140 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %net_dev140, align 4
  %71 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dma_addr, align 4
  %conv143 = zext i32 %72 to i64
  %73 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %irq_status, align 4
  %75 = ptrtoint ptr %74 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %75) #17
  %conv148 = zext i32 %call.i to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @falcon_probe_nic.__UNIQUE_ID_ddebug551, ptr noundef %70, ptr noundef nonnull @.str.60, i64 noundef %conv143, ptr noundef %74, i64 noundef %conv148) #17
  br label %do.end154

do.end154:                                        ; preds = %if.then139, %do.body130, %do.body125.do.end154_crit_edge
  tail call fastcc void @falcon_probe_spi_devices(ptr noundef %efx)
  %call155 = tail call fastcc i32 @falcon_probe_nvconfig(ptr noundef %efx)
  %76 = zext i32 %call155 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %call155, label %do.end154.fail5_crit_edge [
    i32 0, label %if.end171
    i32 -22, label %do.body161
  ]

do.end154.fail5_crit_edge:                        ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail5

do.body161:                                       ; preds = %do.end154
  %77 = ptrtoint ptr %msg_enable126 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %msg_enable126, align 8
  %and163 = and i32 %78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %do.body161.fail5_crit_edge, label %if.then165

do.body161.fail5_crit_edge:                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail5

if.then165:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev166 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %79 = ptrtoint ptr %net_dev166 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %net_dev166, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %80, ptr noundef nonnull @.str.61) #20
  br label %fail5

if.end171:                                        ; preds = %do.end154
  %81 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %type.i, align 4
  %revision.i305 = getelementptr inbounds %struct.ef4_nic_type, ptr %82, i32 0, i32 79
  %83 = ptrtoint ptr %revision.i305 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %revision.i305, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp173 = icmp slt i32 %84, 2
  %cond = select i1 %cmp173, i32 4, i32 32
  %max_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 34
  %85 = ptrtoint ptr %max_channels to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %cond, ptr %max_channels, align 4
  %max_tx_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 35
  %86 = ptrtoint ptr %max_tx_channels to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %cond, ptr %max_tx_channels, align 16
  %timer_quantum_ns = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 15
  %87 = ptrtoint ptr %timer_quantum_ns to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 4968, ptr %timer_quantum_ns, align 4
  %timer_period_max = getelementptr inbounds %struct.ef4_nic_type, ptr %82, i32 0, i32 93
  %88 = ptrtoint ptr %timer_period_max to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %timer_period_max, align 8
  %mul = mul i32 %89, 4968
  %timer_max_ns = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 16
  %90 = ptrtoint ptr %timer_max_ns to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %mul, ptr %timer_max_ns, align 8
  %91 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %nic_data1, align 4
  %i2c_adap = getelementptr inbounds %struct.falcon_nic_data, ptr %92, i32 0, i32 2, i32 3
  %93 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %i2c_adap, align 8
  %i2c_data = getelementptr inbounds %struct.falcon_nic_data, ptr %92, i32 0, i32 2, i32 4
  %94 = call ptr @memcpy(ptr %i2c_data, ptr @falcon_i2c_bit_operations, i32 40)
  %95 = ptrtoint ptr %i2c_data to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %efx, ptr %i2c_data, align 8
  %algo_data = getelementptr inbounds %struct.falcon_nic_data, ptr %92, i32 0, i32 2, i32 3, i32 3
  %96 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %i2c_data, ptr %algo_data, align 4
  %pci_dev181 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 4
  %97 = ptrtoint ptr %pci_dev181 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pci_dev181, align 4
  %dev182 = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 44
  %parent = getelementptr inbounds %struct.falcon_nic_data, ptr %92, i32 0, i32 2, i32 3, i32 9, i32 1
  %99 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %dev182, ptr %parent, align 8
  %name = getelementptr inbounds %struct.falcon_nic_data, ptr %92, i32 0, i32 2, i32 3, i32 12
  %call186 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str.62, i32 noundef 48) #17
  %call188 = tail call i32 @i2c_bit_add_bus(ptr noundef %i2c_adap) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %if.end191, label %if.end171.fail5_crit_edge

if.end171.fail5_crit_edge:                        ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail5

if.end191:                                        ; preds = %if.end171
  %100 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %nic_data1, align 4
  %board.i307 = getelementptr inbounds %struct.falcon_nic_data, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %board.i307 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %board.i307, align 8
  %init = getelementptr inbounds %struct.falcon_board_type, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %init, align 4
  %call194 = tail call i32 %105(ptr noundef %efx) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.end206, label %do.body197

do.body197:                                       ; preds = %if.end191
  %106 = ptrtoint ptr %msg_enable126 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %msg_enable126, align 8
  %and199 = and i32 %107, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %do.body197.fail6_crit_edge, label %if.then201

do.body197.fail6_crit_edge:                       ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail6

if.then201:                                       ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev202 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %108 = ptrtoint ptr %net_dev202 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %net_dev202, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %109, ptr noundef nonnull @.str.63) #20
  br label %fail6

if.end206:                                        ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #19
  %stats_disable_count = getelementptr inbounds %struct.falcon_nic_data, ptr %call7.i.i, i32 0, i32 4
  %110 = ptrtoint ptr %stats_disable_count to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 1, ptr %stats_disable_count, align 8
  %stats_timer = getelementptr inbounds %struct.falcon_nic_data, ptr %call7.i.i, i32 0, i32 6
  tail call void @init_timer_key(ptr noundef %stats_timer, ptr noundef nonnull @falcon_stats_timer_func, i32 noundef 0, ptr noundef nonnull @.str.64, ptr noundef nonnull @falcon_probe_nic.__key) #17
  br label %cleanup220

fail6:                                            ; preds = %if.then201, %do.body197.fail6_crit_edge
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap) #17
  %111 = call ptr @memset(ptr %i2c_adap, i32 0, i32 1360)
  br label %fail5

fail5:                                            ; preds = %fail6, %if.end171.fail5_crit_edge, %if.then165, %do.body161.fail5_crit_edge, %do.end154.fail5_crit_edge
  %rc.1 = phi i32 [ -22, %if.then165 ], [ -22, %do.body161.fail5_crit_edge ], [ %call188, %if.end171.fail5_crit_edge ], [ %call194, %fail6 ], [ %call155, %do.end154.fail5_crit_edge ]
  tail call void @ef4_nic_free_buffer(ptr noundef %efx, ptr noundef %irq_status) #17
  br label %fail3

fail3:                                            ; preds = %fail5, %if.end104.fail3_crit_edge, %if.then99, %do.body95.fail3_crit_edge
  %rc.2 = phi i32 [ %call92, %if.then99 ], [ %call92, %do.body95.fail3_crit_edge ], [ %call105, %if.end104.fail3_crit_edge ], [ %rc.1, %fail5 ]
  %112 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %call7.i.i, align 8
  %tobool214.not = icmp eq ptr %113, null
  br i1 %tobool214.not, label %fail3.fail1_crit_edge, label %if.then215

fail3.fail1_crit_edge:                            ; preds = %fail3
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail1

if.then215:                                       ; preds = %fail3
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @pci_dev_put(ptr noundef nonnull %113) #17
  %114 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %call7.i.i, align 8
  br label %fail1

fail1:                                            ; preds = %if.then215, %fail3.fail1_crit_edge, %if.then83, %do.body79.fail1_crit_edge, %if.then56, %do.body52.fail1_crit_edge, %if.then38, %do.body34.fail1_crit_edge, %if.then22, %do.body18.fail1_crit_edge, %if.then6, %do.body.fail1_crit_edge
  %rc.3 = phi i32 [ -19, %if.then6 ], [ -19, %do.body.fail1_crit_edge ], [ %rc.2, %if.then215 ], [ %rc.2, %fail3.fail1_crit_edge ], [ -19, %if.then22 ], [ -19, %do.body18.fail1_crit_edge ], [ -19, %if.then38 ], [ -19, %do.body34.fail1_crit_edge ], [ -19, %if.then56 ], [ -19, %do.body52.fail1_crit_edge ], [ -19, %if.then83 ], [ -19, %do.body79.fail1_crit_edge ]
  %115 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %nic_data1, align 4
  tail call void @kfree(ptr noundef %116) #17
  br label %cleanup220

cleanup220:                                       ; preds = %fail1, %if.end206, %entry.cleanup220_crit_edge
  %retval.0 = phi i32 [ %rc.3, %fail1 ], [ 0, %if.end206 ], [ -12, %entry.cleanup220_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @falcon_remove_nic(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 4
  %board.i = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board.i, align 8
  %fini = getelementptr inbounds %struct.falcon_board_type, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fini, align 4
  tail call void %5(ptr noundef %efx) #17
  %i2c_adap = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2, i32 3
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap) #17
  %6 = call ptr @memset(ptr %i2c_adap, i32 0, i32 1360)
  %irq_status = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 58
  tail call void @ef4_nic_free_buffer(ptr noundef %efx, ptr noundef %irq_status) #17
  %call3 = tail call fastcc i32 @__falcon_reset_hw(ptr noundef %efx, i32 noundef 2)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @pci_dev_put(ptr noundef nonnull %8) #17
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nic_data1, align 4
  tail call void @kfree(ptr noundef %11) #17
  %12 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %nic_data1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @falcon_init_nic(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 512
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !267
  %3 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %4, i32 516
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #17, !srcloc !267
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %7, i32 520
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #17, !srcloc !267
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %10, i32 524
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #17
  %or = or i32 %2, 256
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %12 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i231 = getelementptr i8, ptr %13, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i231, i32 %or) #17, !srcloc !266
  %14 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %15, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %5) #17, !srcloc !266
  %16 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %17, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %8) #17, !srcloc !266
  %18 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i233 = getelementptr i8, ptr %19, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i233, i32 %11) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #17
  %call = tail call fastcc i32 @falcon_reset_sram(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.ef4_nic_type, ptr %21, i32 0, i32 79
  %22 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp = icmp slt i32 %23, 2
  br i1 %cmp, label %if.then15, label %if.end.if.end35_crit_edge

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call2.i235 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %24 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i237 = getelementptr i8, ptr %25, i32 784
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i237) #17, !srcloc !267
  %27 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i238 = getelementptr i8, ptr %28, i32 788
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i238) #17, !srcloc !267
  %30 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i240 = getelementptr i8, ptr %31, i32 792
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i240) #17, !srcloc !267
  %33 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i242 = getelementptr i8, ptr %34, i32 796
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i242) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i235) #17
  %and26 = and i32 %32, -196609
  %call3.i245 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %36 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i247 = getelementptr i8, ptr %37, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i247, i32 %26) #17, !srcloc !266
  %38 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i249 = getelementptr i8, ptr %39, i32 788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i249, i32 %29) #17, !srcloc !266
  %40 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i251 = getelementptr i8, ptr %41, i32 792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i251, i32 %and26) #17, !srcloc !266
  %42 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i253 = getelementptr i8, ptr %43, i32 796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i253, i32 %35) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i245) #17
  br label %if.end35

if.end35:                                         ; preds = %if.then15, %if.end.if.end35_crit_edge
  %44 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %type.i, align 4
  %revision.i255 = getelementptr inbounds %struct.ef4_nic_type, ptr %45, i32 0, i32 79
  %46 = ptrtoint ptr %revision.i255 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %revision.i255, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp37 = icmp slt i32 %47, 2
  br i1 %cmp37, label %if.then38, label %if.end35.if.end115_crit_edge

if.end35.if.end115_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end115

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  %call2.i257 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %48 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i259 = getelementptr i8, ptr %49, i32 2064
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i259) #17, !srcloc !267
  %51 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i260 = getelementptr i8, ptr %52, i32 2068
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i260) #17, !srcloc !267
  %54 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i262 = getelementptr i8, ptr %55, i32 2072
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i262) #17, !srcloc !267
  %57 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i264 = getelementptr i8, ptr %58, i32 2076
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i264) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i257) #17
  %and45 = and i32 %53, 16777215
  %or46 = or i32 %and45, 134217728
  %or80 = and i32 %50, 255
  %or99 = or i32 %or80, 134744064
  %call3.i267 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %60 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i269 = getelementptr i8, ptr %61, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i269, i32 %or99) #17, !srcloc !266
  %62 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i271 = getelementptr i8, ptr %63, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i271, i32 %or46) #17, !srcloc !266
  %64 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i273 = getelementptr i8, ptr %65, i32 2072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i273, i32 %56) #17, !srcloc !266
  %66 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i275 = getelementptr i8, ptr %67, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i275, i32 %59) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i267) #17
  br label %if.end115

if.end115:                                        ; preds = %if.then38, %if.end35.if.end115_crit_edge
  %call2.i277 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %68 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i279 = getelementptr i8, ptr %69, i32 2192
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i279) #17, !srcloc !267
  %71 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i280 = getelementptr i8, ptr %72, i32 2196
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i280) #17, !srcloc !267
  %74 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i282 = getelementptr i8, ptr %75, i32 2200
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i282) #17, !srcloc !267
  %77 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i284 = getelementptr i8, ptr %78, i32 2204
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i284) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i277) #17
  %80 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %type.i, align 4
  %revision.i287 = getelementptr inbounds %struct.ef4_nic_type, ptr %81, i32 0, i32 79
  %82 = ptrtoint ptr %revision.i287 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %revision.i287, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %83)
  %cmp155 = icmp slt i32 %83, 2
  %spec.select.v = select i1 %cmp155, i32 197120, i32 196608
  %spec.select = or i32 %spec.select.v, %70
  %call3.i289 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %84 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i291 = getelementptr i8, ptr %85, i32 2192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i291, i32 %spec.select) #17, !srcloc !266
  %86 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i293 = getelementptr i8, ptr %87, i32 2196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i293, i32 %73) #17, !srcloc !266
  %88 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i295 = getelementptr i8, ptr %89, i32 2200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i295, i32 %76) #17, !srcloc !266
  %90 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i297 = getelementptr i8, ptr %91, i32 2204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i297, i32 %79) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i289) #17
  %call2.i299 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %92 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i301 = getelementptr i8, ptr %93, i32 2640
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i301) #17, !srcloc !267
  %95 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i302 = getelementptr i8, ptr %96, i32 2644
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i302) #17, !srcloc !267
  %98 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i304 = getelementptr i8, ptr %99, i32 2648
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i304) #17, !srcloc !267
  %101 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i306 = getelementptr i8, ptr %102, i32 2652
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i306) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i299) #17
  %and179 = and i32 %94, -536870913
  %call3.i309 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %104 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i311 = getelementptr i8, ptr %105, i32 2640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i311, i32 %and179) #17, !srcloc !266
  %106 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i313 = getelementptr i8, ptr %107, i32 2644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i313, i32 %97) #17, !srcloc !266
  %108 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i315 = getelementptr i8, ptr %109, i32 2648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i315, i32 %100) #17, !srcloc !266
  %110 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i317 = getelementptr i8, ptr %111, i32 2652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i317, i32 %103) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i309) #17
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %112 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %113, i32 2048
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #17, !srcloc !267
  %115 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %116, i32 2052
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i.i) #17, !srcloc !267
  %118 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i.i = getelementptr i8, ptr %119, i32 2056
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i.i) #17, !srcloc !267
  %121 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i.i = getelementptr i8, ptr %122, i32 2060
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i.i) #17
  %124 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %type.i, align 4
  %revision.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %125, i32 0, i32 79
  %126 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %127)
  %cmp.i = icmp slt i32 %127, 2
  br i1 %cmp.i, label %do.body.i, label %do.body109.i

do.body.i:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #19
  %and3.i = and i32 %117, -134217729
  %or74.i = and i32 %114, 192
  %phi.bo.i = or i32 %or74.i, -1862230999
  br label %falcon_init_rx_cfg.exit

do.body109.i:                                     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #19
  %and191.i = and i32 %117, -1073217537
  %or287.i = or i32 %and191.i, 703594496
  br label %falcon_init_rx_cfg.exit

falcon_init_rx_cfg.exit:                          ; preds = %do.body109.i, %do.body.i
  %reg.sroa.0.sroa.12.0.i = phi i32 [ %and3.i, %do.body.i ], [ %or287.i, %do.body109.i ]
  %reg.sroa.0.sroa.0.0.i = phi i32 [ %phi.bo.i, %do.body.i ], [ -1447968367, %do.body109.i ]
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %128 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i322.i = getelementptr i8, ptr %129, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i322.i, i32 %reg.sroa.0.sroa.0.0.i) #17, !srcloc !266
  %130 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %131, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 %reg.sroa.0.sroa.12.0.i) #17, !srcloc !266
  %132 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %133, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 %120) #17, !srcloc !266
  %134 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i324.i = getelementptr i8, ptr %135, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i324.i, i32 %123) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i.i) #17
  %136 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %type.i, align 4
  %revision.i319 = getelementptr inbounds %struct.ef4_nic_type, ptr %137, i32 0, i32 79
  %138 = ptrtoint ptr %revision.i319 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %revision.i319, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %139)
  %cmp197 = icmp sgt i32 %139, 1
  br i1 %cmp197, label %if.then198, label %falcon_init_rx_cfg.exit.if.end207_crit_edge

falcon_init_rx_cfg.exit.if.end207_crit_edge:      ; preds = %falcon_init_rx_cfg.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end207

if.then198:                                       ; preds = %falcon_init_rx_cfg.exit
  call void @__sanitizer_cov_trace_pc() #19
  %rx_hash_key.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 52
  %140 = ptrtoint ptr %rx_hash_key.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 8)
  %temp.sroa.0.0.copyload.i = load i64, ptr %rx_hash_key.i, align 4
  %temp.sroa.0.sroa.0.0.extract.shift.i = lshr i64 %temp.sroa.0.0.copyload.i, 32
  %temp.sroa.0.sroa.0.0.extract.trunc.i = trunc i64 %temp.sroa.0.sroa.0.0.extract.shift.i to i32
  %temp.sroa.0.sroa.5.0.extract.trunc.i = trunc i64 %temp.sroa.0.0.copyload.i to i32
  %temp.sroa.6.0.rx_hash_key.sroa_idx.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 52, i32 8
  %141 = ptrtoint ptr %temp.sroa.6.0.rx_hash_key.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %141, i32 8)
  %temp.sroa.6.0.copyload.i = load i64, ptr %temp.sroa.6.0.rx_hash_key.sroa_idx.i, align 4
  %call3.i.i321 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %142 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i.i323 = getelementptr i8, ptr %143, i32 2144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i323, i32 %temp.sroa.0.sroa.0.0.extract.trunc.i) #17, !srcloc !266
  %144 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i.i324 = getelementptr i8, ptr %145, i32 2148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i324, i32 %temp.sroa.0.sroa.5.0.extract.trunc.i) #17, !srcloc !266
  %temp.sroa.6.8.extract.shift.i = lshr i64 %temp.sroa.6.0.copyload.i, 32
  %temp.sroa.6.8.extract.trunc.i = trunc i64 %temp.sroa.6.8.extract.shift.i to i32
  %146 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i.i325 = getelementptr i8, ptr %147, i32 2152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i325, i32 %temp.sroa.6.8.extract.trunc.i) #17, !srcloc !266
  %temp.sroa.6.12.extract.trunc.i = trunc i64 %temp.sroa.6.0.copyload.i to i32
  %148 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i.i326 = getelementptr i8, ptr %149, i32 2156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i326, i32 %temp.sroa.6.12.extract.trunc.i) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i.i321) #17
  tail call void @ef4_farch_rx_push_indir_table(ptr noundef %efx) #17
  %call3.i328 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %150 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i330 = getelementptr i8, ptr %151, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i330, i32 0) #17, !srcloc !266
  %152 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i332 = getelementptr i8, ptr %153, i32 596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i332, i32 0) #17, !srcloc !266
  %154 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i334 = getelementptr i8, ptr %155, i32 600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i334, i32 0) #17, !srcloc !266
  %156 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i336 = getelementptr i8, ptr %157, i32 604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i336, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i328) #17
  br label %if.end207

if.end207:                                        ; preds = %if.then198, %falcon_init_rx_cfg.exit.if.end207_crit_edge
  tail call void @ef4_farch_init_common(ptr noundef %efx) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end207, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @falcon_dimension_resources(ptr nocapture noundef writeonly %efx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_dc_base = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 31
  %0 = ptrtoint ptr %rx_dc_base to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 131072, ptr %rx_dc_base, align 64
  %tx_dc_base = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 30
  %1 = ptrtoint ptr %tx_dc_base to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 155648, ptr %tx_dc_base, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @falcon_irq_ack_a1(ptr nocapture noundef readonly %efx) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 2129377024) #17, !srcloc !266
  %2 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i3 = getelementptr i8, ptr %3, i32 112
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3) #17, !srcloc !267
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @falcon_monitor(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 64
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mac_lock) #17
  br i1 %call, label %do.end8, label %do.body3, !prof !269

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/falcon/falcon.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2075, 0\0A.popsection", ""() #17, !srcloc !274
  unreachable

do.end8:                                          ; preds = %entry
  %nic_data.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data.i, align 4
  %board.i = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board.i, align 8
  %monitor = getelementptr inbounds %struct.falcon_board_type, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %monitor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %monitor, align 4
  %call10 = tail call i32 %5(ptr noundef %efx) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.end8.if.end49_crit_edge, label %do.body13

do.end8.if.end49_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

do.body13:                                        ; preds = %do.end8
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 8
  %and = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %do.body13.do.end18_crit_edge, label %if.then15

do.body13.do.end18_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end18

if.then15:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -34, i32 %call10)
  %cmp = icmp eq i32 %call10, -34
  %cond = select i1 %cmp, ptr @.str.92, ptr @.str.93
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.91, ptr noundef nonnull %cond) #20
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %do.body13.do.end18_crit_edge
  %phy_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 79
  %10 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phy_mode, align 16
  %or = or i32 %11, 2
  store i32 %or, ptr %phy_mode, align 16
  %call19 = tail call i32 @__ef4_reconfigure_port(ptr noundef %efx) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.end18.if.end49_crit_edge, label %do.end36, !prof !269

do.end18.if.end49_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

do.end36:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2084, i32 noundef 9, ptr noundef null) #17
  br label %if.end49

if.end49:                                         ; preds = %do.end36, %do.end18.if.end49_crit_edge, %do.end8.if.end49_crit_edge
  %loopback_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %12 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %loopback_mode, align 4
  %shl = shl nuw i32 1, %13
  %and50 = and i32 %shl, 66600958
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end56, label %if.then52

if.then52:                                        ; preds = %if.end49
  %call53 = tail call fastcc zeroext i1 @falcon_loopback_link_poll(ptr noundef %efx)
  br i1 %call53, label %if.then52.if.then58_crit_edge, label %if.then52.if.end78_crit_edge

if.then52.if.end78_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end78

if.then52.if.then58_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then58

if.end56:                                         ; preds = %if.end49
  %phy_op = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 76
  %14 = ptrtoint ptr %phy_op to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_op, align 16
  %poll = getelementptr inbounds %struct.ef4_phy_operations, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %poll, align 4
  %call54 = tail call zeroext i1 %17(ptr noundef %efx) #17
  br i1 %call54, label %if.end56.if.then58_crit_edge, label %if.end56.if.end78_crit_edge

if.end56.if.end78_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end78

if.end56.if.then58_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then58

if.then58:                                        ; preds = %if.end56.if.then58_crit_edge, %if.then52.if.then58_crit_edge
  tail call void @falcon_stop_nic_stats(ptr noundef %efx)
  tail call fastcc void @falcon_deconfigure_mac_wrapper(ptr noundef %efx)
  tail call fastcc void @falcon_reset_macs(ptr noundef %efx)
  %call59 = tail call i32 @falcon_reconfigure_xmac(ptr noundef %efx)
  %18 = ptrtoint ptr %nic_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nic_data.i, align 4
  %stats_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 105
  tail call void @_raw_spin_lock_bh(ptr noundef %stats_lock.i) #17
  %stats_disable_count.i = getelementptr inbounds %struct.falcon_nic_data, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %stats_disable_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stats_disable_count.i, align 8
  %dec.i = add i32 %21, -1
  store i32 %dec.i, ptr %stats_disable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then58.falcon_start_nic_stats.exit_crit_edge

if.then58.falcon_start_nic_stats.exit_crit_edge:  ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_start_nic_stats.exit

if.then.i:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @falcon_stats_request(ptr noundef %efx) #17
  br label %falcon_start_nic_stats.exit

falcon_start_nic_stats.exit:                      ; preds = %if.then.i, %if.then58.falcon_start_nic_stats.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock.i) #17
  tail call void @ef4_link_status_changed(ptr noundef %efx) #17
  br label %if.end78

if.end78:                                         ; preds = %falcon_start_nic_stats.exit, %if.end56.if.end78_crit_edge, %if.then52.if.end78_crit_edge
  %link_state.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81
  %22 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %link_state.i, align 8, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.end78.falcon_poll_xmac.exit_crit_edge, label %lor.lhs.false.i

if.end78.falcon_poll_xmac.exit_crit_edge:         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_poll_xmac.exit

lor.lhs.false.i:                                  ; preds = %if.end78
  %24 = ptrtoint ptr %nic_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nic_data.i, align 4
  %xmac_poll_required.i = getelementptr inbounds %struct.falcon_nic_data, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %xmac_poll_required.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %xmac_poll_required.i, align 8, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool2.not.i = icmp eq i8 %27, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.falcon_poll_xmac.exit_crit_edge, label %if.end.i

lor.lhs.false.i.falcon_poll_xmac.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_poll_xmac.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i = tail call fastcc zeroext i1 @falcon_xmac_link_ok_retry(ptr noundef %efx, i32 noundef 1) #17
  %lnot.i = xor i1 %call.i, true
  %frombool.i = zext i1 %lnot.i to i8
  %28 = ptrtoint ptr %xmac_poll_required.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool.i, ptr %xmac_poll_required.i, align 8
  %29 = ptrtoint ptr %nic_data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nic_data.i, align 4
  %type.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %31 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %type.i.i.i, align 4
  %revision.i.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %32, i32 0, i32 79
  %33 = ptrtoint ptr %revision.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %revision.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp.not.i.i = icmp eq i32 %34, 2
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.falcon_poll_xmac.exit_crit_edge

if.end.i.falcon_poll_xmac.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_poll_xmac.exit

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %35 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %loopback_mode, align 4
  %shl.i.i = shl nuw i32 1, %36
  %and.i.i = and i32 %shl.i.i, 66600958
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.falcon_poll_xmac.exit_crit_edge

lor.lhs.false.i.i.falcon_poll_xmac.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_poll_xmac.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %37 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %link_state.i, align 8, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool2.not.i.i = icmp eq i8 %38, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.falcon_poll_xmac.exit_crit_edge, label %if.end4.i.i

if.end.i.i.falcon_poll_xmac.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_poll_xmac.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  %xmac_poll_required.i.i = getelementptr inbounds %struct.falcon_nic_data, ptr %30, i32 0, i32 11
  %39 = ptrtoint ptr %xmac_poll_required.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %xmac_poll_required.i.i, align 8, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool5.not.i.i = icmp eq i8 %40, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %if.end4.i.i.falcon_poll_xmac.exit_crit_edge

if.end4.i.i.falcon_poll_xmac.exit_crit_edge:      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_poll_xmac.exit

if.end7.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %biu_lock.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i.i) #17
  %membase.i.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %41 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %42, i32 4848
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #17, !srcloc !267
  %44 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i29.i.i.i = getelementptr i8, ptr %45, i32 4852
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i.i.i) #17, !srcloc !267
  %47 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i31.i.i.i = getelementptr i8, ptr %48, i32 4856
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i.i.i) #17, !srcloc !267
  %50 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i33.i.i.i = getelementptr i8, ptr %51, i32 4860
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i.i.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i.i, i32 noundef %call2.i.i.i) #17
  br label %falcon_poll_xmac.exit

falcon_poll_xmac.exit:                            ; preds = %if.end7.i.i, %if.end4.i.i.falcon_poll_xmac.exit_crit_edge, %if.end.i.i.falcon_poll_xmac.exit_crit_edge, %lor.lhs.false.i.i.falcon_poll_xmac.exit_crit_edge, %if.end.i.falcon_poll_xmac.exit_crit_edge, %lor.lhs.false.i.falcon_poll_xmac.exit_crit_edge, %if.end78.falcon_poll_xmac.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @falcon_map_reset_reason(i32 noundef %reason) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %reason.off = add i32 %reason, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %reason.off)
  %switch = icmp ult i32 %reason.off, 3
  %. = select i1 %switch, i32 0, i32 2
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @falcon_map_reset_flags(ptr nocapture noundef %flags) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 126
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %and)
  %cmp = icmp eq i32 %and, 126
  br i1 %cmp, label %entry.return.sink.split_crit_edge, label %if.end

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 124
  call void @__sanitizer_cov_trace_const_cmp4(i32 124, i32 %and2)
  %cmp3 = icmp eq i32 %and2, 124
  br i1 %cmp3, label %if.end.return.sink.split_crit_edge, label %if.end6

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %return.sink.split

if.end6:                                          ; preds = %if.end
  %and7 = and i32 %1, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %and7)
  %cmp8 = icmp eq i32 %and7, 60
  br i1 %cmp8, label %if.end6.return.sink.split_crit_edge, label %if.end6.return_crit_edge

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end6.return.sink.split_crit_edge:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end6.return.sink.split_crit_edge, %if.end.return.sink.split_crit_edge, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ -127, %entry.return.sink.split_crit_edge ], [ -125, %if.end.return.sink.split_crit_edge ], [ -61, %if.end6.return.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 3, %entry.return.sink.split_crit_edge ], [ 2, %if.end.return.sink.split_crit_edge ], [ 0, %if.end6.return.sink.split_crit_edge ]
  %and10 = and i32 %1, %.sink
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and10, ptr %flags, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end6.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.end6.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @falcon_reset_hw(ptr noundef %efx, i32 noundef %method) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 4
  %spi_lock = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %spi_lock, i32 noundef 0) #17
  %call = tail call fastcc i32 @__falcon_reset_hw(ptr noundef %efx, i32 noundef %method)
  tail call void @mutex_unlock(ptr noundef %spi_lock) #17
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @falcon_probe_port(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 4
  %phy_type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 75
  %2 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_type, align 4
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 9
  br i1 %4, label %switch.hole_check, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.body:                                          ; preds = %switch.hole_check.do.body_crit_edge, %entry.do.body_crit_edge
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 8
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %7 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.103, i32 noundef %3) #20
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 269, %switch.maskindex
  %9 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %switch.lobit.not = icmp eq i16 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body_crit_edge, label %switch.lookup

switch.hole_check.do.body_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [9 x ptr], ptr @switch.table.falcon_probe_port, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %phy_op = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 76
  %11 = ptrtoint ptr %phy_op to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %switch.load, ptr %phy_op, align 16
  %mdio_lock = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %mdio_lock, ptr noundef nonnull @.str.104, ptr noundef nonnull @falcon_probe_port.__key) #17
  %mdio_read = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 4
  %12 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @falcon_mdio_read, ptr %mdio_read, align 8
  %mdio_write = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 5
  %13 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @falcon_mdio_write, ptr %mdio_write, align 4
  %phy_op11 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 76
  %14 = ptrtoint ptr %phy_op11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_op11, align 16
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call = tail call i32 %17(ptr noundef %efx) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end13, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end13:                                         ; preds = %switch.lookup
  %speed = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81, i32 3
  %18 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 10000, ptr %speed, align 4
  %fd = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81, i32 1
  %19 = ptrtoint ptr %fd to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %fd, align 1
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.ef4_nic_type, ptr %21, i32 0, i32 79
  %22 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp16 = icmp sgt i32 %23, 1
  %spec.select = select i1 %cmp16, i8 3, i8 2
  %24 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 85
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %spec.select, ptr %24, align 8
  %mmds = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 1
  %26 = ptrtoint ptr %mmds to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mmds, align 4
  %and21 = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end13.if.end26_crit_edge, label %if.then23

if.end13.if.end26_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

if.then23:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %24, align 8
  %30 = or i8 %29, 4
  store i8 %30, ptr %24, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end13.if.end26_crit_edge
  %stats_buffer = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 71
  %call27 = tail call i32 @ef4_nic_alloc_buffer(ptr noundef %efx, ptr noundef %stats_buffer, i32 noundef 256, i32 noundef 3264) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.body31, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body31:                                        ; preds = %if.end26
  %msg_enable32 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %31 = ptrtoint ptr %msg_enable32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable32, align 8
  %and33 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.body31.cleanup_crit_edge, label %do.body36

do.body31.cleanup_crit_edge:                      ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body36:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @falcon_probe_port.__UNIQUE_ID_ddebug541, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@falcon_probe_port, %if.then41)) #17
          to label %cleanup [label %if.then41], !srcloc !273

if.then41:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev42 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %33 = ptrtoint ptr %net_dev42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %net_dev42, align 4
  %dma_addr = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 71, i32 1
  %35 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_addr, align 4
  %conv44 = zext i32 %36 to i64
  %37 = ptrtoint ptr %stats_buffer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %stats_buffer, align 8
  %39 = ptrtoint ptr %38 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %39) #17
  %conv49 = zext i32 %call.i to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @falcon_probe_port.__UNIQUE_ID_ddebug541, ptr noundef %34, ptr noundef nonnull @.str.106, i64 noundef %conv44, ptr noundef %38, i64 noundef %conv49) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %do.body36, %do.body31.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %if.then, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then ], [ -19, %do.body.cleanup_crit_edge ], [ %call, %switch.lookup.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ 0, %if.then41 ], [ 0, %do.body31.cleanup_crit_edge ], [ 0, %do.body36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @falcon_remove_port(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_op = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %phy_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_op, align 16
  %remove = getelementptr inbounds %struct.ef4_phy_operations, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove, align 4
  tail call void %3(ptr noundef %efx) #17
  %stats_buffer = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 71
  tail call void @ef4_nic_free_buffer(ptr noundef %efx, ptr noundef %stats_buffer) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @falcon_handle_global_event(ptr nocapture noundef readonly %channel, ptr nocapture noundef readonly %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %nic_data2 = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 63
  %2 = ptrtoint ptr %nic_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data2, align 4
  %4 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event, align 8
  %6 = and i32 %5, -2147090432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.ef4_nic_type, ptr %9, i32 0, i32 79
  %10 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp eq i32 %11, 2
  br i1 %cmp, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %if.end
  %12 = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool18.not = icmp eq i32 %12, 0
  br i1 %tobool18.not, label %land.lhs.true.cond.false_crit_edge, label %if.then19

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %xmac_poll_required = getelementptr inbounds %struct.falcon_nic_data, ptr %3, i32 0, i32 11
  %13 = ptrtoint ptr %xmac_poll_required to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %xmac_poll_required, align 8
  br label %cleanup

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp22 = icmp slt i32 %11, 2
  br i1 %cmp22, label %cond.true, label %if.end20.cond.false_crit_edge

if.end20.cond.false_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

cond.true:                                        ; preds = %if.end20
  %14 = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool27.not = icmp eq i32 %14, 0
  br i1 %tobool27.not, label %cond.true.cleanup_crit_edge, label %cond.true.do.body_crit_edge

cond.true.do.body_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cond.false:                                       ; preds = %if.end20.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge
  %15 = and i32 %5, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool32.not = icmp eq i32 %15, 0
  br i1 %tobool32.not, label %cond.false.cleanup_crit_edge, label %cond.false.do.body_crit_edge

cond.false.do.body_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body:                                          ; preds = %cond.false.do.body_crit_edge, %cond.true.do.body_crit_edge
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 8
  %and34 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body.do.end_crit_edge, label %if.then36

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %18 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev, align 4
  %channel37 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 1
  %20 = ptrtoint ptr %channel37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel37, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.111, i32 noundef %21) #20
  br label %do.end

do.end:                                           ; preds = %if.then36, %do.body.do.end_crit_edge
  %rx_reset = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 87
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_reset, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %rx_reset, i32 1, i32 3, i32 1) #17
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_reset, ptr %rx_reset, i32 1, ptr elementtype(i32) %rx_reset) #17, !srcloc !275
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %type.i, align 4
  %revision.i60 = getelementptr inbounds %struct.ef4_nic_type, ptr %24, i32 0, i32 79
  %25 = ptrtoint ptr %revision.i60 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %revision.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp40 = icmp slt i32 %26, 2
  %cond = select i1 %cmp40, i32 10, i32 6
  tail call void @ef4_schedule_reset(ptr noundef %1, i32 noundef %cond) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %cond.false.cleanup_crit_edge, %cond.true.cleanup_crit_edge, %if.then19, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then19 ], [ true, %do.end ], [ true, %entry.cleanup_crit_edge ], [ false, %cond.false.cleanup_crit_edge ], [ false, %cond.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_farch_fini_dmaq(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @falcon_prepare_flush(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @falcon_deconfigure_mac_wrapper(ptr noundef %efx)
  tail call void @msleep(i32 noundef 10) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_port_dummy_op_void(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_farch_finish_flr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @falcon_describe_nic_stats(ptr nocapture noundef readnone %efx, ptr noundef %names) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ef4_nic_describe_stats(ptr noundef nonnull @falcon_stat_desc, i32 noundef 49, ptr noundef nonnull @falcon_stat_mask, ptr noundef %names) #17
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @falcon_update_nic_stats(ptr noundef %efx, ptr noundef writeonly %full_stats, ptr noundef %core_stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 4
  %stats2 = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 3
  %stats_disable_count = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %stats_disable_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stats_disable_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

if.then:                                          ; preds = %entry
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 2176
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !267
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %8, i32 2180
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #17, !srcloc !267
  %10 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %11, i32 2184
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #17, !srcloc !267
  %13 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %14, i32 2188
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #17
  %16 = and i32 %6, -65536
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %conv = zext i32 %17 to i64
  %arrayidx5 = getelementptr %struct.falcon_nic_data, ptr %1, i32 0, i32 3, i32 48
  %18 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx5, align 8
  %add = add i64 %19, %conv
  store i64 %add, ptr %arrayidx5, align 8
  %stats_pending = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %stats_pending to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %stats_pending, align 4, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool6.not = icmp eq i8 %21, 0
  br i1 %tobool6.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %stats_buffer = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 71
  %22 = ptrtoint ptr %stats_buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stats_buffer, align 8
  %add.ptr = getelementptr i8, ptr %23, i32 212
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool8.not = icmp eq i32 %25, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end_crit_edge, label %if.then9

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %26 = ptrtoint ptr %stats_pending to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %stats_pending, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !276
  %27 = ptrtoint ptr %stats_buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stats_buffer, align 8
  tail call void @ef4_nic_update_stats(ptr noundef nonnull @falcon_stat_desc, i32 noundef 49, ptr noundef nonnull @falcon_stat_mask, ptr noundef %stats2, ptr noundef %28, i1 noundef zeroext true) #17
  br label %if.end

if.end:                                           ; preds = %if.then9, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %arrayidx13 = getelementptr %struct.falcon_nic_data, ptr %1, i32 0, i32 3, i32 23
  %arrayidx14 = getelementptr %struct.falcon_nic_data, ptr %1, i32 0, i32 3, i32 21
  %29 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx14, align 8
  %arrayidx15 = getelementptr %struct.falcon_nic_data, ptr %1, i32 0, i32 3, i32 22
  %31 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx15, align 8
  %sub = sub i64 %30, %32
  %arrayidx16 = getelementptr %struct.falcon_nic_data, ptr %1, i32 0, i32 3, i32 28
  %33 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx16, align 8
  %mul.neg = mul i64 %34, -64
  %sub17 = add i64 %mul.neg, %sub
  %35 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx13, align 8
  %sub.i = sub i64 %sub17, %36
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp.i = icmp sgt i64 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.ef4_update_diff_stat.exit_crit_edge

if.end.ef4_update_diff_stat.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %ef4_update_diff_stat.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %37 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %sub17, ptr %arrayidx13, align 8
  br label %ef4_update_diff_stat.exit

ef4_update_diff_stat.exit:                        ; preds = %if.then.i, %if.end.ef4_update_diff_stat.exit_crit_edge
  tail call void @ef4_update_sw_stats(ptr noundef %efx, ptr noundef %stats2) #17
  br label %if.end18

if.end18:                                         ; preds = %ef4_update_diff_stat.exit, %entry.if.end18_crit_edge
  %tobool19.not = icmp eq ptr %full_stats, null
  br i1 %tobool19.not, label %if.end18.if.end21_crit_edge, label %if.then20

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  %38 = call ptr @memcpy(ptr %full_stats, ptr %stats2, i32 392)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18.if.end21_crit_edge
  %tobool22.not = icmp eq ptr %core_stats, null
  br i1 %tobool22.not, label %if.end21.if.end47_crit_edge, label %if.then23

if.end21.if.end47_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end47

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx24 = getelementptr %struct.falcon_nic_data, ptr %1, i32 0, i32 3, i32 24
  %39 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx24, align 8
  %41 = ptrtoint ptr %core_stats to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %core_stats, align 8
  %arrayidx25 = getelementptr %struct.falcon_nic_data, ptr %1, i32 0, i32 3, i32 3
  %42 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx25, align 8
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 1
  %44 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %tx_packets, align 8
  %arrayidx26 = getelementptr %struct.falcon_nic_data, ptr %1, i32 0, i32 3, i32 21
  %45 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx26, align 8
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 2
  %47 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %rx_bytes, align 8
  %arrayidx27 = getelementptr %struct.falcon_nic_data, ptr %1, i32 0, i32 3, i32 2
  %48 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx27, align 8
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 3
  %50 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %tx_bytes, align 8
  %arrayidx28 = getelementptr %struct.falcon_nic_data, ptr %1, i32 0, i32 3, i32 48
  %51 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx28, align 8
  %arrayidx29 = getelementptr %struct.falcon_nic_data, ptr %1, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx29, align 8
  %add30 = add i64 %54, %52
  %55 = ptrtoint ptr %stats2 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %stats2, align 8
  %add32 = add i64 %add30, %56
  %rx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 6
  %57 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %add32, ptr %rx_dropped, align 8
  %arrayidx33 = getelementptr %struct.falcon_nic_data, ptr %1, i32 0, i32 3, i32 30
  %58 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx33, align 8
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 8
  %60 = ptrtoint ptr %multicast to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %multicast, align 8
  %arrayidx34 = getelementptr %struct.falcon_nic_data, ptr %1, i32 0, i32 3, i32 40
  %61 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx34, align 8
  %arrayidx35 = getelementptr %struct.falcon_nic_data, ptr %1, i32 0, i32 3, i32 46
  %63 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx35, align 8
  %add36 = add i64 %64, %62
  %rx_length_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 10
  %65 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %add36, ptr %rx_length_errors, align 8
  %arrayidx37 = getelementptr %struct.falcon_nic_data, ptr %1, i32 0, i32 3, i32 26
  %66 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %arrayidx37, align 8
  %rx_crc_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 12
  %68 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %rx_crc_errors, align 8
  %arrayidx38 = getelementptr %struct.falcon_nic_data, ptr %1, i32 0, i32 3, i32 45
  %69 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx38, align 8
  %rx_frame_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 13
  %71 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %rx_frame_errors, align 8
  %arrayidx39 = getelementptr %struct.falcon_nic_data, ptr %1, i32 0, i32 3, i32 43
  %72 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx39, align 8
  %rx_fifo_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 14
  %74 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %rx_fifo_errors, align 8
  %add42 = add i64 %67, %add36
  %add44 = add i64 %add42, %70
  %arrayidx45 = getelementptr %struct.falcon_nic_data, ptr %1, i32 0, i32 3, i32 44
  %75 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx45, align 8
  %add46 = add i64 %add44, %76
  %rx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 4
  %77 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %add46, ptr %rx_errors, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then23, %if.end21.if.end47_crit_edge
  ret i32 49
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @falcon_pull_nic_stats(ptr nocapture noundef readnone %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @msleep(i32 noundef 10) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @falcon_set_id_led(ptr noundef %efx, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data.i, align 4
  %board.i = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board.i, align 8
  %set_id_led = getelementptr inbounds %struct.falcon_board_type, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %set_id_led to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_id_led, align 4
  tail call void %5(ptr noundef %efx, i32 noundef %mode) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @falcon_push_irq_moderation(ptr nocapture noundef readonly %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %irq_moderation_us = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 6
  %2 = ptrtoint ptr %irq_moderation_us to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_moderation_us, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %if.then

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 @ef4_usecs_to_ticks(ptr noundef %1, i32 noundef %3) #17
  %sub = add i32 %call, -1
  %4 = or i32 %sub, 8192
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  br label %do.end10

do.end10:                                         ; preds = %if.then, %entry.do.end10_crit_edge
  %storemerge = phi i32 [ %5, %if.then ], [ 0, %entry.do.end10_crit_edge ]
  %channel11 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 1
  %6 = ptrtoint ptr %channel11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %do.body1.i, label %if.else.i

do.body1.i:                                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #19
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 103
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %membase.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %storemerge) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #17
  br label %_ef4_writed_page_locked.exit

if.else.i:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #19
  %mul7.i = shl i32 %7, 13
  %add8.i = or i32 %mul7.i, 1056
  %membase.i.i1.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %membase.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i1.i, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %11, i32 %add8.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2.i, i32 %storemerge) #17, !srcloc !266
  br label %_ef4_writed_page_locked.exit

_ef4_writed_page_locked.exit:                     ; preds = %if.else.i, %do.body1.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @falcon_reconfigure_port(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.ef4_nic_type, ptr %1, i32 0, i32 79
  %2 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp sgt i32 %3, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !265

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1488, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %loopback_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %4 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %loopback_mode, align 4
  %shl = shl nuw i32 1, %5
  %and = and i32 %shl, 66600958
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call21 = tail call fastcc zeroext i1 @falcon_loopback_link_poll(ptr noundef %efx)
  br label %if.end23

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %phy_op = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 76
  %6 = ptrtoint ptr %phy_op to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_op, align 16
  %poll = getelementptr inbounds %struct.ef4_phy_operations, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %poll, align 4
  %call22 = tail call zeroext i1 %9(ptr noundef %efx) #17
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then20
  tail call void @falcon_stop_nic_stats(ptr noundef %efx)
  tail call fastcc void @falcon_deconfigure_mac_wrapper(ptr noundef %efx)
  tail call fastcc void @falcon_reset_macs(ptr noundef %efx)
  %phy_op24 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 76
  %10 = ptrtoint ptr %phy_op24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_op24, align 16
  %reconfigure = getelementptr inbounds %struct.ef4_phy_operations, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %reconfigure to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reconfigure, align 4
  %call25 = tail call i32 %13(ptr noundef %efx) #17
  %call26 = tail call i32 @falcon_reconfigure_xmac(ptr noundef %efx)
  %nic_data1.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %14 = ptrtoint ptr %nic_data1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nic_data1.i, align 4
  %stats_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 105
  tail call void @_raw_spin_lock_bh(ptr noundef %stats_lock.i) #17
  %stats_disable_count.i = getelementptr inbounds %struct.falcon_nic_data, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %stats_disable_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stats_disable_count.i, align 8
  %dec.i = add i32 %17, -1
  store i32 %dec.i, ptr %stats_disable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end23.falcon_start_nic_stats.exit_crit_edge

if.end23.falcon_start_nic_stats.exit_crit_edge:   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_start_nic_stats.exit

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @falcon_stats_request(ptr noundef %efx) #17
  br label %falcon_start_nic_stats.exit

falcon_start_nic_stats.exit:                      ; preds = %if.then.i, %if.end23.falcon_start_nic_stats.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock.i) #17
  tail call void @ef4_link_status_changed(ptr noundef %efx) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @falcon_a1_prepare_enable_fc_tx(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ef4_schedule_reset(ptr noundef %efx, i32 noundef 0) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @falcon_reconfigure_xmac(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 4
  tail call void @ef4_farch_filter_sync_rx_mode(ptr noundef %efx) #17
  %loopback_mode.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %2 = ptrtoint ptr %loopback_mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %loopback_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.i = icmp eq i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp2.i = icmp eq i32 %3, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp5.i = icmp eq i32 %3, 3
  %biu_lock.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %membase.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %4 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 4960
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #17, !srcloc !267
  %7 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %8, i32 4964
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i.i) #17, !srcloc !267
  %10 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i31.i.i = getelementptr i8, ptr %11, i32 4968
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i.i) #17, !srcloc !267
  %13 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i33.i.i = getelementptr i8, ptr %14, i32 4972
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call2.i.i) #17
  %16 = tail call i32 @llvm.bswap.i32(i32 %6) #17
  %call2.i231.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %17 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i233.i = getelementptr i8, ptr %18, i32 4880
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i233.i) #17, !srcloc !267
  %20 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i234.i = getelementptr i8, ptr %21, i32 4884
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i234.i) #17, !srcloc !267
  %23 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i31.i236.i = getelementptr i8, ptr %24, i32 4888
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i236.i) #17, !srcloc !267
  %26 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i33.i238.i = getelementptr i8, ptr %27, i32 4892
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i238.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call2.i231.i) #17
  %29 = and i32 %16, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %30 = icmp eq i32 %29, 0
  %cmp28.not.i = xor i1 %cmp.i, %30
  br i1 %cmp28.not.i, label %lor.lhs.false.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %31 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %32 = icmp eq i32 %31, 0
  %cmp34.not.i = xor i1 %cmp2.i, %32
  br i1 %cmp34.not.i, label %lor.lhs.false36.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

lor.lhs.false36.i:                                ; preds = %lor.lhs.false.i
  %33 = and i32 %16, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %34 = icmp eq i32 %33, 0
  %cmp41.not.i = xor i1 %cmp5.i, %34
  br i1 %cmp41.not.i, label %lor.lhs.false36.i.falcon_reconfigure_xgxs_core.exit_crit_edge, label %lor.lhs.false36.i.if.then.i_crit_edge

lor.lhs.false36.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false36.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

lor.lhs.false36.i.falcon_reconfigure_xgxs_core.exit_crit_edge: ; preds = %lor.lhs.false36.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_reconfigure_xgxs_core.exit

if.then.i:                                        ; preds = %lor.lhs.false36.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call.i = tail call i32 @falcon_reset_xaui(ptr noundef %efx) #17
  br label %falcon_reconfigure_xgxs_core.exit

falcon_reconfigure_xgxs_core.exit:                ; preds = %if.then.i, %lor.lhs.false36.i.falcon_reconfigure_xgxs_core.exit_crit_edge
  %call2.i241.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %35 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i243.i = getelementptr i8, ptr %36, i32 4960
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i243.i) #17, !srcloc !267
  %38 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i244.i = getelementptr i8, ptr %39, i32 4964
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i244.i) #17, !srcloc !267
  %41 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i31.i246.i = getelementptr i8, ptr %42, i32 4968
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i246.i) #17, !srcloc !267
  %44 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i33.i248.i = getelementptr i8, ptr %45, i32 4972
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i248.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call2.i241.i) #17
  %spec.select.i = select i1 %cmp.i, i32 32768, i32 0
  %47 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %47)
  %48 = icmp eq i32 %47, 4
  %spec.select229.i = select i1 %48, i32 255, i32 0
  %and44.i = and i32 %37, -49408
  %shl95.i = select i1 %cmp5.i, i32 16384, i32 0
  %or52.i = or i32 %shl95.i, %spec.select.i
  %or74.i = or i32 %or52.i, %spec.select229.i
  %or98.i = or i32 %or74.i, %and44.i
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %49 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i252.i = getelementptr i8, ptr %50, i32 4960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i252.i, i32 %or98.i) #17, !srcloc !266
  %51 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %52, i32 4964
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 %40) #17, !srcloc !266
  %53 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %54, i32 4968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 %43) #17, !srcloc !266
  %55 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i254.i = getelementptr i8, ptr %56, i32 4972
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i254.i, i32 %46) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #17
  %call2.i256.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %57 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i258.i = getelementptr i8, ptr %58, i32 4880
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i258.i) #17, !srcloc !267
  %60 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i259.i = getelementptr i8, ptr %61, i32 4884
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i259.i) #17, !srcloc !267
  %63 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i31.i261.i = getelementptr i8, ptr %64, i32 4888
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i261.i) #17, !srcloc !267
  %66 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i33.i263.i = getelementptr i8, ptr %67, i32 4892
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i263.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call2.i256.i) #17
  %and116.i = and i32 %59, -251658241
  %or170.i = select i1 %cmp2.i, i32 251658240, i32 0
  %or194.i = or i32 %and116.i, %or170.i
  %call3.i266.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %69 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i268.i = getelementptr i8, ptr %70, i32 4880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i268.i, i32 %or194.i) #17, !srcloc !266
  %71 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i270.i = getelementptr i8, ptr %72, i32 4884
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i270.i, i32 %62) #17, !srcloc !266
  %73 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i272.i = getelementptr i8, ptr %74, i32 4888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i272.i, i32 %65) #17, !srcloc !266
  %75 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i274.i = getelementptr i8, ptr %76, i32 4892
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i274.i, i32 %68) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i266.i) #17
  %fc.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81, i32 2
  %77 = ptrtoint ptr %fc.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %fc.i, align 2
  %conv.i = zext i8 %78 to i32
  %call3.i.i9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %79 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i11 = getelementptr i8, ptr %80, i32 4640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i11, i32 1074528256) #17, !srcloc !266
  %81 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i12 = getelementptr i8, ptr %82, i32 4644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i12, i32 0) #17, !srcloc !266
  %83 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i13 = getelementptr i8, ptr %84, i32 4648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i13, i32 0) #17, !srcloc !266
  %85 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i14 = getelementptr i8, ptr %86, i32 4652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i14, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i9) #17
  %and5.i = shl nuw nsw i32 %conv.i, 10
  %87 = and i32 %and5.i, 1024
  %call3.i100.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %88 = or i32 %87, 196902
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #17
  %90 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i102.i = getelementptr i8, ptr %91, i32 4656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i102.i, i32 %89) #17, !srcloc !266
  %92 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i104.i = getelementptr i8, ptr %93, i32 4660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i104.i, i32 0) #17, !srcloc !266
  %94 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i106.i = getelementptr i8, ptr %95, i32 4664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i106.i, i32 0) #17, !srcloc !266
  %96 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i108.i = getelementptr i8, ptr %97, i32 4668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i108.i, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i100.i) #17
  %unicast_filter.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 83
  %98 = ptrtoint ptr %unicast_filter.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %unicast_filter.i, align 4, !range !268
  %100 = xor i8 %99, 1
  %101 = zext i8 %100 to i32
  %shl28.i = shl nuw nsw i32 %101, 9
  %102 = or i32 %shl28.i, 33556482
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #17
  %call3.i110.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %104 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i112.i = getelementptr i8, ptr %105, i32 4672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i112.i, i32 %103) #17, !srcloc !266
  %106 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i114.i = getelementptr i8, ptr %107, i32 4676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i114.i, i32 0) #17, !srcloc !266
  %108 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i116.i = getelementptr i8, ptr %109, i32 4680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i116.i, i32 0) #17, !srcloc !266
  %110 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i118.i = getelementptr i8, ptr %111, i32 4684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i118.i, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i110.i) #17
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %112 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %net_dev.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %113, i32 0, i32 20
  %114 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %mtu.i, align 4
  %add42.i = add i32 %115, 45
  %and43.i = and i32 %add42.i, -8
  %116 = tail call i32 @llvm.bswap.i32(i32 %and43.i) #17
  %call3.i120.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %117 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i122.i = getelementptr i8, ptr %118, i32 4832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i122.i, i32 %116) #17, !srcloc !266
  %119 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i124.i = getelementptr i8, ptr %120, i32 4836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i124.i, i32 0) #17, !srcloc !266
  %121 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i126.i = getelementptr i8, ptr %122, i32 4840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i126.i, i32 0) #17, !srcloc !266
  %123 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i128.i = getelementptr i8, ptr %124, i32 4844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i128.i, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i120.i) #17
  %shl55.i = shl i32 %and43.i, 16
  %125 = or i32 %shl55.i, -2147483648
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #17
  %call3.i130.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %127 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i132.i = getelementptr i8, ptr %128, i32 4816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i132.i, i32 %126) #17, !srcloc !266
  %129 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i134.i = getelementptr i8, ptr %130, i32 4820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i134.i, i32 0) #17, !srcloc !266
  %131 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i136.i = getelementptr i8, ptr %132, i32 4824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i136.i, i32 0) #17, !srcloc !266
  %133 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i138.i = getelementptr i8, ptr %134, i32 4828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i138.i, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i130.i) #17
  %135 = shl nuw nsw i32 %conv.i, 23
  %136 = and i32 %135, 16777216
  %call3.i140.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %reg.sroa.0.sroa.0.sroa.0.0.insert.insert282.i = xor i32 %136, 16842495
  %137 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i142.i = getelementptr i8, ptr %138, i32 4720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i142.i, i32 %reg.sroa.0.sroa.0.sroa.0.0.insert.insert282.i) #17, !srcloc !266
  %139 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i144.i = getelementptr i8, ptr %140, i32 4724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i144.i, i32 0) #17, !srcloc !266
  %141 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i146.i = getelementptr i8, ptr %142, i32 4728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i146.i, i32 0) #17, !srcloc !266
  %143 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i148.i = getelementptr i8, ptr %144, i32 4732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i148.i, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i140.i) #17
  %145 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %net_dev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %146, i32 0, i32 86
  %147 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev_addr.i, align 64
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_loadN_noabort(i32 %149, i32 4)
  %150 = load i32, ptr %148, align 1
  %call3.i150.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %reg.sroa.0.sroa.0.sroa.19.0.insert.ext311.i = and i32 %150, 65535
  %151 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i152.i = getelementptr i8, ptr %152, i32 4608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i152.i, i32 %150) #17, !srcloc !266
  %153 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i154.i = getelementptr i8, ptr %154, i32 4612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i154.i, i32 0) #17, !srcloc !266
  %155 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i156.i = getelementptr i8, ptr %156, i32 4616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i156.i, i32 0) #17, !srcloc !266
  %157 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i158.i = getelementptr i8, ptr %158, i32 4620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i158.i, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i150.i) #17
  %159 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %net_dev.i, align 4
  %dev_addr83.i = getelementptr inbounds %struct.net_device, ptr %160, i32 0, i32 86
  %161 = ptrtoint ptr %dev_addr83.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev_addr83.i, align 64
  %arrayidx84.i = getelementptr i8, ptr %162, i32 4
  %163 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_loadN_noabort(i32 %163, i32 2)
  %164 = load i16, ptr %arrayidx84.i, align 1
  %call3.i160.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %reg.sroa.0.sroa.0.sroa.0.0.insert.ext287.i = zext i16 %164 to i32
  %reg.sroa.0.sroa.0.sroa.0.0.insert.shift288.i = shl nuw i32 %reg.sroa.0.sroa.0.sroa.0.0.insert.ext287.i, 16
  %reg.sroa.0.sroa.0.sroa.0.0.insert.insert290.i = or i32 %reg.sroa.0.sroa.0.sroa.0.0.insert.shift288.i, %reg.sroa.0.sroa.0.sroa.19.0.insert.ext311.i
  %165 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i162.i = getelementptr i8, ptr %166, i32 4624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i162.i, i32 %reg.sroa.0.sroa.0.sroa.0.0.insert.insert290.i) #17, !srcloc !266
  %167 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i164.i = getelementptr i8, ptr %168, i32 4628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i164.i, i32 0) #17, !srcloc !266
  %169 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i166.i = getelementptr i8, ptr %170, i32 4632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i166.i, i32 0) #17, !srcloc !266
  %171 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i168.i = getelementptr i8, ptr %172, i32 4636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i168.i, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i160.i) #17
  %link_state1.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81
  %reset_pending.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 22
  %173 = ptrtoint ptr %reset_pending.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %reset_pending.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool.not.i = icmp eq i32 %174, 0
  %speed.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81, i32 3
  %175 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %speed.i, align 4
  %177 = zext i32 %176 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %176, label %sw.default.i [
    i32 10000, label %falcon_reconfigure_xgxs_core.exit.do.body5.i_crit_edge
    i32 1000, label %sw.bb3.i
    i32 100, label %sw.bb4.i
  ]

falcon_reconfigure_xgxs_core.exit.do.body5.i_crit_edge: ; preds = %falcon_reconfigure_xgxs_core.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body5.i

sw.bb3.i:                                         ; preds = %falcon_reconfigure_xgxs_core.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body5.i

sw.bb4.i:                                         ; preds = %falcon_reconfigure_xgxs_core.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body5.i

sw.default.i:                                     ; preds = %falcon_reconfigure_xgxs_core.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body5.i

do.body5.i:                                       ; preds = %sw.default.i, %sw.bb4.i, %sw.bb3.i, %falcon_reconfigure_xgxs_core.exit.do.body5.i_crit_edge
  %link_speed.0.i = phi i32 [ -65516, %sw.default.i ], [ -65515, %sw.bb4.i ], [ -65514, %sw.bb3.i ], [ -65513, %falcon_reconfigure_xgxs_core.exit.do.body5.i_crit_edge ]
  %178 = ptrtoint ptr %unicast_filter.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %unicast_filter.i, align 4, !range !268
  %180 = shl nuw nsw i8 %179, 3
  %181 = xor i8 %180, 8
  %conv.i16 = zext i8 %181 to i32
  %or11.i = or i32 %link_speed.0.i, %conv.i16
  %182 = tail call i32 @llvm.bswap.i32(i32 %or11.i) #17
  %type.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %183 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %type.i.i, align 4
  %revision.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %184, i32 0, i32 79
  %185 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %186)
  %cmp.i17 = icmp sgt i32 %186, 1
  br i1 %cmp.i17, label %do.body19.i, label %do.body5.i.if.end.i_crit_edge

do.body5.i.if.end.i_crit_edge:                    ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

do.body19.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #19
  %and.i = and i32 %182, 2130771967
  %187 = ptrtoint ptr %link_state1.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %link_state1.i, align 4, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool21.not.i = icmp eq i8 %188, 0
  %phi.bo.i = select i1 %tobool.not.i, i32 0, i32 -2147483648
  %spec.select.i18 = select i1 %tobool21.not.i, i32 -2147483648, i32 %phi.bo.i
  %or26.i = or i32 %spec.select.i18, %and.i
  br label %if.end.i

if.end.i:                                         ; preds = %do.body19.i, %do.body5.i.if.end.i_crit_edge
  %reg.sroa.0.sroa.0.0.i = phi i32 [ %or26.i, %do.body19.i ], [ %182, %do.body5.i.if.end.i_crit_edge ]
  %call3.i.i20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %189 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i22 = getelementptr i8, ptr %190, i32 3200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i22, i32 %reg.sroa.0.sroa.0.0.i) #17, !srcloc !266
  %191 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i23 = getelementptr i8, ptr %192, i32 3204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i23, i32 0) #17, !srcloc !266
  %193 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i24 = getelementptr i8, ptr %194, i32 3208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i24, i32 0) #17, !srcloc !266
  %195 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i25 = getelementptr i8, ptr %196, i32 3212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i25, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i20) #17
  %mac_lock.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 64
  %call.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mac_lock.i.i) #17
  br i1 %call.i.i, label %if.end.i.falcon_reconfigure_mac_wrapper.exit_crit_edge, label %do.end.i.i, !prof !269

if.end.i.falcon_reconfigure_mac_wrapper.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_reconfigure_mac_wrapper.exit

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1264, i32 noundef 9, ptr noundef null) #17
  br label %falcon_reconfigure_mac_wrapper.exit

falcon_reconfigure_mac_wrapper.exit:              ; preds = %do.end.i.i, %if.end.i.falcon_reconfigure_mac_wrapper.exit_crit_edge
  %multicast_hash.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 84
  %call3.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %197 = ptrtoint ptr %multicast_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %multicast_hash.i.i, align 8
  %199 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %200, i32 3232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %198) #17, !srcloc !266
  %arrayidx6.i.i.i = getelementptr [4 x i32], ptr %multicast_hash.i.i, i32 0, i32 1
  %201 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx6.i.i.i, align 4
  %203 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i.i = getelementptr i8, ptr %204, i32 3236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i.i, i32 %202) #17, !srcloc !266
  %arrayidx8.i.i.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 84, i32 0, i32 0, i32 0, i32 1
  %205 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx8.i.i.i, align 8
  %207 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i.i = getelementptr i8, ptr %208, i32 3240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i, i32 %206) #17, !srcloc !266
  %arrayidx10.i.i.i = getelementptr [4 x i32], ptr %multicast_hash.i.i, i32 0, i32 3
  %209 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx10.i.i.i, align 4
  %211 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i.i = getelementptr i8, ptr %212, i32 3244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i.i, i32 %210) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i.i) #17
  %arrayidx20.i.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 84, i32 0, i32 1
  %call3.i27.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %213 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx20.i.i, align 8
  %215 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i29.i.i = getelementptr i8, ptr %216, i32 3248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i29.i.i, i32 %214) #17, !srcloc !266
  %arrayidx6.i30.i.i = getelementptr [4 x i32], ptr %arrayidx20.i.i, i32 0, i32 1
  %217 = ptrtoint ptr %arrayidx6.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx6.i30.i.i, align 4
  %219 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i31.i.i = getelementptr i8, ptr %220, i32 3252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i31.i.i, i32 %218) #17, !srcloc !266
  %arrayidx8.i32.i.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 84, i32 0, i32 1, i32 0, i32 1
  %221 = ptrtoint ptr %arrayidx8.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx8.i32.i.i, align 8
  %223 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i33.i.i = getelementptr i8, ptr %224, i32 3256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i33.i.i, i32 %222) #17, !srcloc !266
  %arrayidx10.i34.i.i = getelementptr [4 x i32], ptr %arrayidx20.i.i, i32 0, i32 3
  %225 = ptrtoint ptr %arrayidx10.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx10.i34.i.i, align 4
  %227 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i35.i.i = getelementptr i8, ptr %228, i32 3260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i35.i.i, i32 %226) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i27.i.i) #17
  %call2.i.i26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %229 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i103.i = getelementptr i8, ptr %230, i32 2048
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i103.i) #17, !srcloc !267
  %232 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i104.i = getelementptr i8, ptr %233, i32 2052
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i104.i) #17, !srcloc !267
  %235 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i31.i.i27 = getelementptr i8, ptr %236, i32 2056
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i.i27) #17, !srcloc !267
  %238 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i33.i.i28 = getelementptr i8, ptr %239, i32 2060
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i.i28) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call2.i.i26) #17
  %or45.i = or i32 %231, 16777216
  %241 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %type.i.i, align 4
  %revision.i107.i = getelementptr inbounds %struct.ef4_nic_type, ptr %242, i32 0, i32 79
  %243 = ptrtoint ptr %revision.i107.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %revision.i107.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %244)
  %cmp62.i = icmp sgt i32 %244, 1
  %and71.i = and i32 %234, -8388609
  %shl75.i = select i1 %tobool.not.i, i32 8388608, i32 0
  %or78.i = or i32 %and71.i, %shl75.i
  %reg.sroa.0.sroa.11.0.i = select i1 %cmp62.i, i32 %or78.i, i32 %234
  %call3.i109.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %245 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i111.i = getelementptr i8, ptr %246, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i111.i, i32 %or45.i) #17, !srcloc !266
  %247 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i113.i = getelementptr i8, ptr %248, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i113.i, i32 %reg.sroa.0.sroa.11.0.i) #17, !srcloc !266
  %249 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i115.i = getelementptr i8, ptr %250, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i115.i, i32 %237) #17, !srcloc !266
  %251 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i117.i = getelementptr i8, ptr %252, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i117.i, i32 %240) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i109.i) #17
  %call = tail call fastcc zeroext i1 @falcon_xmac_link_ok_retry(ptr noundef %efx, i32 noundef 5)
  %lnot = xor i1 %call, true
  %xmac_poll_required = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 11
  %frombool = zext i1 %lnot to i8
  %253 = ptrtoint ptr %xmac_poll_required to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %frombool, ptr %xmac_poll_required, align 8
  %254 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %nic_data1, align 4
  %256 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %type.i.i, align 4
  %revision.i.i30 = getelementptr inbounds %struct.ef4_nic_type, ptr %257, i32 0, i32 79
  %258 = ptrtoint ptr %revision.i.i30 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %revision.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %259)
  %cmp.not.i = icmp eq i32 %259, 2
  br i1 %cmp.not.i, label %lor.lhs.false.i34, label %falcon_reconfigure_mac_wrapper.exit.falcon_ack_status_intr.exit_crit_edge

falcon_reconfigure_mac_wrapper.exit.falcon_ack_status_intr.exit_crit_edge: ; preds = %falcon_reconfigure_mac_wrapper.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_ack_status_intr.exit

lor.lhs.false.i34:                                ; preds = %falcon_reconfigure_mac_wrapper.exit
  %260 = ptrtoint ptr %loopback_mode.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %loopback_mode.i, align 4
  %shl.i = shl nuw i32 1, %261
  %and.i32 = and i32 %shl.i, 66600958
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32)
  %tobool.not.i33 = icmp eq i32 %and.i32, 0
  br i1 %tobool.not.i33, label %if.end.i35, label %lor.lhs.false.i34.falcon_ack_status_intr.exit_crit_edge

lor.lhs.false.i34.falcon_ack_status_intr.exit_crit_edge: ; preds = %lor.lhs.false.i34
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_ack_status_intr.exit

if.end.i35:                                       ; preds = %lor.lhs.false.i34
  %262 = ptrtoint ptr %link_state1.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %link_state1.i, align 8, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %263)
  %tobool2.not.i = icmp eq i8 %263, 0
  br i1 %tobool2.not.i, label %if.end.i35.falcon_ack_status_intr.exit_crit_edge, label %if.end4.i

if.end.i35.falcon_ack_status_intr.exit_crit_edge: ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_ack_status_intr.exit

if.end4.i:                                        ; preds = %if.end.i35
  %xmac_poll_required.i = getelementptr inbounds %struct.falcon_nic_data, ptr %255, i32 0, i32 11
  %264 = ptrtoint ptr %xmac_poll_required.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %xmac_poll_required.i, align 8, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %265)
  %tobool5.not.i = icmp eq i8 %265, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end4.i.falcon_ack_status_intr.exit_crit_edge

if.end4.i.falcon_ack_status_intr.exit_crit_edge:  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_ack_status_intr.exit

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  %call2.i.i37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %266 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i39 = getelementptr i8, ptr %267, i32 4848
  %268 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i39) #17, !srcloc !267
  %269 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i40 = getelementptr i8, ptr %270, i32 4852
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i.i40) #17, !srcloc !267
  %272 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i31.i.i41 = getelementptr i8, ptr %273, i32 4856
  %274 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i.i41) #17, !srcloc !267
  %275 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i33.i.i42 = getelementptr i8, ptr %276, i32 4860
  %277 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i.i42) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call2.i.i37) #17
  br label %falcon_ack_status_intr.exit

falcon_ack_status_intr.exit:                      ; preds = %if.end7.i, %if.end4.i.falcon_ack_status_intr.exit_crit_edge, %if.end.i35.falcon_ack_status_intr.exit_crit_edge, %lor.lhs.false.i34.falcon_ack_status_intr.exit_crit_edge, %falcon_reconfigure_mac_wrapper.exit.falcon_ack_status_intr.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @falcon_xmac_check_fault(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @falcon_xmac_link_ok_retry(ptr noundef %efx, i32 noundef 5)
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @falcon_get_wol(ptr nocapture noundef readnone %efx, ptr nocapture noundef writeonly %wol) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = call ptr @memset(ptr %supported, i32 0, i32 14)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @falcon_set_wol(ptr nocapture noundef readnone %efx, i32 noundef %type) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.not = icmp eq i32 %type, 0
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @falcon_test_nvram(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @falcon_read_nvram(ptr noundef %efx, ptr noundef null)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_farch_irq_enable_master(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_farch_irq_test_generate(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_farch_irq_disable_master(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_farch_msi_interrupt(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @falcon_legacy_interrupt_a1(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_status = getelementptr inbounds %struct.ef4_nic, ptr %dev_id, i32 0, i32 58
  %0 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_status, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %arrayidx1 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %or = or i32 %5, %3
  %arrayidx2 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 8
  %or3 = or i32 %or, %7
  %arrayidx4 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %or5 = or i32 %or3, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5)
  %cmp = icmp eq i32 %or5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !265

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = tail call i32 @llvm.read_register.i32(metadata !255) #17
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %last_irq_cpu = getelementptr inbounds %struct.ef4_nic, ptr %dev_id, i32 0, i32 104
  %14 = ptrtoint ptr %last_irq_cpu to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %last_irq_cpu, align 16
  %irq_soft_enabled = getelementptr inbounds %struct.ef4_nic, ptr %dev_id, i32 0, i32 57
  %15 = ptrtoint ptr %irq_soft_enabled to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load volatile i8, ptr %irq_soft_enabled, align 8, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool9.not = icmp eq i8 %16, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end18, !prof !265

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %17 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx2, align 8
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool22.not = icmp eq i32 %19, 0
  br i1 %tobool22.not, label %do.end34, label %if.then29, !prof !269

if.then29:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  %call30 = tail call i32 @ef4_farch_fatal_interrupt(ptr noundef %dev_id) #17
  br label %cleanup

do.end34:                                         ; preds = %if.end18
  %20 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx1, align 4
  %22 = call ptr @memset(ptr %1, i32 0, i32 16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !277
  tail call void @arm_heavy_mb() #17
  %membase.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %dev_id, i32 0, i32 13
  %23 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 2129377024) #17, !srcloc !266
  %25 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i3.i = getelementptr i8, ptr %26, i32 112
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3.i) #17, !srcloc !267
  %28 = and i32 %21, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool51.not = icmp eq i32 %28, 0
  br i1 %tobool51.not, label %do.end34.if.end54_crit_edge, label %if.then52

do.end34.if.end54_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end54

if.then52:                                        ; preds = %do.end34
  %arrayidx.i = getelementptr %struct.ef4_nic, ptr %dev_id, i32 0, i32 23, i32 0
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %31 = tail call i32 @llvm.read_register.i32(metadata !255) #17
  %and.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu.i, align 4
  %event_test_cpu.i = getelementptr inbounds %struct.ef4_channel, ptr %30, i32 0, i32 13
  %35 = ptrtoint ptr %event_test_cpu.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %event_test_cpu.i, align 32
  %napi_str.i.i = getelementptr inbounds %struct.ef4_channel, ptr %30, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi_str.i.i) #17
  br i1 %call.i.i.i, label %if.then.i.i.i, label %if.then52.if.end54_crit_edge

if.then52.if.end54_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end54

if.then.i.i.i:                                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__napi_schedule(ptr noundef %napi_str.i.i) #17
  br label %if.end54

if.end54:                                         ; preds = %if.then.i.i.i, %if.then52.if.end54_crit_edge, %do.end34.if.end54_crit_edge
  %36 = and i32 %21, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool56.not = icmp eq i32 %36, 0
  br i1 %tobool56.not, label %if.end54.cleanup_crit_edge, label %if.then57

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then57:                                        ; preds = %if.end54
  %arrayidx.i79 = getelementptr %struct.ef4_nic, ptr %dev_id, i32 0, i32 23, i32 1
  %37 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i79, align 4
  %39 = tail call i32 @llvm.read_register.i32(metadata !255) #17
  %and.i.i80 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i80 to ptr
  %cpu.i81 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %cpu.i81 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu.i81, align 4
  %event_test_cpu.i82 = getelementptr inbounds %struct.ef4_channel, ptr %38, i32 0, i32 13
  %43 = ptrtoint ptr %event_test_cpu.i82 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %event_test_cpu.i82, align 32
  %napi_str.i.i83 = getelementptr inbounds %struct.ef4_channel, ptr %38, i32 0, i32 8
  %call.i.i.i84 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi_str.i.i83) #17
  br i1 %call.i.i.i84, label %if.then.i.i.i85, label %if.then57.cleanup_crit_edge

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then.i.i.i85:                                  ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__napi_schedule(ptr noundef %napi_str.i.i83) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i85, %if.then57.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %if.then29, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.then29 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end54.cleanup_crit_edge ], [ 1, %if.then57.cleanup_crit_edge ], [ 1, %if.then.i.i.i85 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_farch_tx_probe(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_farch_tx_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_farch_tx_remove(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_farch_tx_write(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_farch_tx_limit_len(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dummy_rx_push_rss_config(ptr nocapture noundef readnone %efx, i1 noundef zeroext %user, ptr nocapture noundef readnone %rx_indir_table) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_farch_rx_probe(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_farch_rx_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_farch_rx_remove(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_farch_rx_write(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_farch_rx_defer_refill(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_farch_ev_probe(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_farch_ev_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_farch_ev_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_farch_ev_remove(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_farch_ev_process(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_farch_ev_read_ack(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_farch_ev_test_generate(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_farch_filter_table_probe(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_farch_filter_table_restore(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_farch_filter_table_remove(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_farch_filter_insert(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_farch_filter_remove_safe(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_farch_filter_get_safe(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_farch_filter_clear_rx(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_farch_filter_count_rx_used(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_farch_filter_get_rx_id_limit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_farch_filter_get_rx_ids(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @falcon_mtd_probe(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 4
  %call = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b167 = load i1, ptr @falcon_mtd_probe.__already_done, align 1
  br i1 %.b167, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !269

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @falcon_mtd_probe.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 929, i32 noundef 9, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str, i32 noundef 929) #17
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 2944) #21
  %tobool39.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool39.not, label %if.end30.cleanup_crit_edge, label %if.end41

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end41:                                         ; preds = %if.end30
  %spi_flash = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 7
  %size.i = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.not = icmp eq i32 %4, 0
  br i1 %cmp.i.not, label %if.end41.if.end62_crit_edge, label %land.lhs.true

if.end41.if.end62_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end62

land.lhs.true:                                    ; preds = %if.end41
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %6)
  %cmp = icmp ugt i32 %6, 32768
  br i1 %cmp, label %if.then43, label %land.lhs.true.if.end62_crit_edge

land.lhs.true.if.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end62

if.then43:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %spi44 = getelementptr inbounds %struct.falcon_mtd_partition, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %spi44 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spi_flash, ptr %spi44, align 8
  %offset = getelementptr inbounds %struct.falcon_mtd_partition, ptr %call7.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32768, ptr %offset, align 4
  %dev_type_name = getelementptr inbounds %struct.ef4_mtd_partition, ptr %call7.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %dev_type_name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.76, ptr %dev_type_name, align 8
  %type_name = getelementptr inbounds %struct.ef4_mtd_partition, ptr %call7.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %type_name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.113, ptr %type_name, align 4
  %mtd = getelementptr inbounds %struct.ef4_mtd_partition, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %mtd to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %mtd, align 8
  %flags = getelementptr inbounds %struct.ef4_mtd_partition, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3072, ptr %flags, align 4
  %13 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.i, align 4
  %sub = add i32 %14, -32768
  %conv = zext i32 %sub to i64
  %size58 = getelementptr inbounds %struct.ef4_mtd_partition, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %size58 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv, ptr %size58, align 8
  %erase_size = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 7, i32 5
  %16 = ptrtoint ptr %erase_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %erase_size, align 4
  %erasesize = getelementptr inbounds %struct.ef4_mtd_partition, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %erasesize to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %erasesize, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then43, %land.lhs.true.if.end62_crit_edge, %if.end41.if.end62_crit_edge
  %n_parts.0 = phi i32 [ 1, %if.then43 ], [ 0, %land.lhs.true.if.end62_crit_edge ], [ 0, %if.end41.if.end62_crit_edge ]
  %spi_eeprom = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 8
  %size.i168 = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %size.i168 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size.i168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i169.not = icmp eq i32 %20, 0
  br i1 %cmp.i169.not, label %if.end62.if.end104_crit_edge, label %land.lhs.true65

if.end62.if.end104_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end104

land.lhs.true65:                                  ; preds = %if.end62
  %21 = ptrtoint ptr %size.i168 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %22)
  %cmp67 = icmp ugt i32 %22, 2048
  br i1 %cmp67, label %if.then69, label %land.lhs.true65.if.end104_crit_edge

land.lhs.true65.if.end104_crit_edge:              ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end104

if.then69:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx70 = getelementptr %struct.falcon_mtd_partition, ptr %call7.i.i.i, i32 %n_parts.0
  %spi71 = getelementptr %struct.falcon_mtd_partition, ptr %call7.i.i.i, i32 %n_parts.0, i32 1
  %23 = ptrtoint ptr %spi71 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %spi_eeprom, ptr %spi71, align 8
  %offset73 = getelementptr %struct.falcon_mtd_partition, ptr %call7.i.i.i, i32 %n_parts.0, i32 2
  %24 = ptrtoint ptr %offset73 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2048, ptr %offset73, align 4
  %dev_type_name76 = getelementptr inbounds %struct.ef4_mtd_partition, ptr %arrayidx70, i32 0, i32 2
  %25 = ptrtoint ptr %dev_type_name76 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.77, ptr %dev_type_name76, align 8
  %type_name79 = getelementptr inbounds %struct.ef4_mtd_partition, ptr %arrayidx70, i32 0, i32 3
  %26 = ptrtoint ptr %type_name79 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.114, ptr %type_name79, align 4
  %mtd82 = getelementptr inbounds %struct.ef4_mtd_partition, ptr %arrayidx70, i32 0, i32 1
  %27 = ptrtoint ptr %mtd82 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %mtd82, align 8
  %flags87 = getelementptr inbounds %struct.mtd_info, ptr %mtd82, i32 0, i32 1
  %28 = ptrtoint ptr %flags87 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 7168, ptr %flags87, align 4
  %29 = ptrtoint ptr %size.i168 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.i168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144, i32 %30)
  %cmp90 = icmp ult i32 %30, 6144
  %phi.bo = add i32 %30, -2048
  %cond = select i1 %cmp90, i32 %phi.bo, i32 4096
  %conv93 = zext i32 %cond to i64
  %size97 = getelementptr inbounds %struct.mtd_info, ptr %mtd82, i32 0, i32 2
  %31 = ptrtoint ptr %size97 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv93, ptr %size97, align 8
  %erase_size98 = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 8, i32 5
  %32 = ptrtoint ptr %erase_size98 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %erase_size98, align 4
  %erasesize102 = getelementptr inbounds %struct.mtd_info, ptr %mtd82, i32 0, i32 3
  %34 = ptrtoint ptr %erasesize102 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %erasesize102, align 8
  %inc103 = add nuw nsw i32 %n_parts.0, 1
  br label %if.end104

if.end104:                                        ; preds = %if.then69, %land.lhs.true65.if.end104_crit_edge, %if.end62.if.end104_crit_edge
  %n_parts.1 = phi i32 [ %inc103, %if.then69 ], [ %n_parts.0, %land.lhs.true65.if.end104_crit_edge ], [ %n_parts.0, %if.end62.if.end104_crit_edge ]
  %call107 = tail call i32 @ef4_mtd_add(ptr noundef %efx, ptr noundef nonnull %call7.i.i.i, i32 noundef %n_parts.1, i32 noundef 1472) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end104.cleanup_crit_edge, label %if.then109

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then109:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then109, %if.end104.cleanup_crit_edge, %if.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end30.cleanup_crit_edge ], [ %call107, %if.then109 ], [ 0, %if.end104.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @falcon_mtd_rename(ptr nocapture noundef %part) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ef4_mtd_partition, ptr %part, i32 0, i32 1, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %name = getelementptr inbounds %struct.ef4_mtd_partition, ptr %part, i32 0, i32 4
  %type_name = getelementptr inbounds %struct.ef4_mtd_partition, ptr %part, i32 0, i32 3
  %2 = ptrtoint ptr %type_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type_name, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 36, ptr noundef nonnull @.str.115, ptr noundef %1, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @falcon_mtd_read(ptr nocapture noundef readonly %mtd, i64 noundef %start, i32 noundef %len, ptr noundef %retlen, ptr noundef %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %nic_data1 = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 63
  %2 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data1, align 4
  %spi_lock = getelementptr inbounds %struct.falcon_nic_data, ptr %3, i32 0, i32 9
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %spi_lock, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %spi = getelementptr i8, ptr %mtd, i32 1456
  %4 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi, align 8
  %offset = getelementptr i8, ptr %mtd, i32 1460
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %conv = zext i32 %7 to i64
  %add = add i64 %conv, %start
  %call2 = tail call fastcc i32 @falcon_spi_read(ptr noundef %1, ptr noundef %5, i64 noundef %add, i32 noundef %len, ptr noundef %retlen, ptr noundef %buffer)
  tail call void @mutex_unlock(ptr noundef %spi_lock) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @falcon_mtd_erase(ptr noundef %mtd, i64 noundef %start, i32 noundef %len) #0 align 64 {
entry:
  %status.i.i = alloca i8, align 1
  %empty.i = alloca [16 x i8], align 1
  %buffer.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %nic_data1 = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 63
  %2 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data1, align 4
  %spi_lock = getelementptr inbounds %struct.falcon_nic_data, ptr %3, i32 0, i32 9
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %spi_lock, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %mtd, i32 -8
  %offset = getelementptr i8, ptr %mtd, i32 1460
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %spi1.i = getelementptr i8, ptr %mtd, i32 1456
  %6 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi1.i, align 8
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %empty.i) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer.i) #17
  %erase_size.i = getelementptr inbounds %struct.falcon_spi_device, ptr %7, i32 0, i32 5
  %10 = call ptr @memset(ptr %buffer.i, i32 255, i32 16)
  %11 = ptrtoint ptr %erase_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %erase_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %len)
  %cmp.not.i = icmp eq i32 %12, %len
  br i1 %cmp.not.i, label %if.end.i, label %if.end.falcon_spi_erase.exit_crit_edge

if.end.falcon_spi_erase.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_spi_erase.exit

if.end.i:                                         ; preds = %if.end
  %erase_command.i = getelementptr inbounds %struct.falcon_spi_device, ptr %7, i32 0, i32 4
  %13 = ptrtoint ptr %erase_command.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %erase_command.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp2.i = icmp eq i8 %14, 0
  br i1 %cmp2.i, label %if.end.i.falcon_spi_erase.exit_crit_edge, label %if.end5.i

if.end.i.falcon_spi_erase.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_spi_erase.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i.i) #17
  %15 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %status.i.i, align 1, !annotation !278
  %call.i.i = call fastcc i32 @falcon_spi_cmd(ptr noundef %9, ptr noundef %7, i32 noundef 5, i32 noundef -1, ptr noundef null, ptr noundef nonnull %status.i.i, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.i.falcon_spi_unlock.exit.thread.i_crit_edge

if.end5.i.falcon_spi_unlock.exit.thread.i_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_spi_unlock.exit.thread.i

if.end.i.i:                                       ; preds = %if.end5.i
  %16 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %status.i.i, align 1
  %18 = and i8 %17, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool1.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool1.not.i.i, label %falcon_spi_unlock.exit.thread88.i, label %if.end3.i.i

falcon_spi_unlock.exit.thread88.i:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i.i) #17
  br label %if.end7.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %call4.i.i = call fastcc i32 @falcon_spi_cmd(ptr noundef %9, ptr noundef %7, i32 noundef 6, i32 noundef -1, ptr noundef null, ptr noundef null, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %if.end3.i.i.falcon_spi_unlock.exit.thread.i_crit_edge

if.end3.i.i.falcon_spi_unlock.exit.thread.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_spi_unlock.exit.thread.i

if.end7.i.i:                                      ; preds = %if.end3.i.i
  %call8.i.i = call fastcc i32 @falcon_spi_cmd(ptr noundef %9, ptr noundef %7, i32 noundef 80, i32 noundef -1, ptr noundef null, ptr noundef null, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end11.i.i, label %if.end7.i.i.falcon_spi_unlock.exit.thread.i_crit_edge

if.end7.i.i.falcon_spi_unlock.exit.thread.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_spi_unlock.exit.thread.i

if.end11.i.i:                                     ; preds = %if.end7.i.i
  %19 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %status.i.i, align 1
  %21 = and i8 %20, -29
  store i8 %21, ptr %status.i.i, align 1
  %call15.i.i = call fastcc i32 @falcon_spi_cmd(ptr noundef %9, ptr noundef %7, i32 noundef 1, i32 noundef -1, ptr noundef nonnull %status.i.i, ptr noundef null, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %falcon_spi_unlock.exit.i, label %if.end11.i.i.falcon_spi_unlock.exit.thread.i_crit_edge

if.end11.i.i.falcon_spi_unlock.exit.thread.i_crit_edge: ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_spi_unlock.exit.thread.i

falcon_spi_unlock.exit.thread.i:                  ; preds = %if.end11.i.i.falcon_spi_unlock.exit.thread.i_crit_edge, %if.end7.i.i.falcon_spi_unlock.exit.thread.i_crit_edge, %if.end3.i.i.falcon_spi_unlock.exit.thread.i_crit_edge, %if.end5.i.falcon_spi_unlock.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call15.i.i, %if.end11.i.i.falcon_spi_unlock.exit.thread.i_crit_edge ], [ %call8.i.i, %if.end7.i.i.falcon_spi_unlock.exit.thread.i_crit_edge ], [ %call4.i.i, %if.end3.i.i.falcon_spi_unlock.exit.thread.i_crit_edge ], [ %call.i.i, %if.end5.i.falcon_spi_unlock.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i.i) #17
  br label %falcon_spi_erase.exit

falcon_spi_unlock.exit.i:                         ; preds = %if.end11.i.i
  %call19.i.i = call fastcc i32 @falcon_spi_wait_write(ptr noundef %9, ptr noundef %7) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool.not.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool.not.i, label %falcon_spi_unlock.exit.i.if.end7.i_crit_edge, label %falcon_spi_unlock.exit.i.falcon_spi_erase.exit_crit_edge

falcon_spi_unlock.exit.i.falcon_spi_erase.exit_crit_edge: ; preds = %falcon_spi_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_spi_erase.exit

falcon_spi_unlock.exit.i.if.end7.i_crit_edge:     ; preds = %falcon_spi_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7.i

if.end7.i:                                        ; preds = %falcon_spi_unlock.exit.i.if.end7.i_crit_edge, %falcon_spi_unlock.exit.thread88.i
  %call8.i = call fastcc i32 @falcon_spi_cmd(ptr noundef %9, ptr noundef %7, i32 noundef 6, i32 noundef -1, ptr noundef null, ptr noundef null, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end7.i.falcon_spi_erase.exit_crit_edge

if.end7.i.falcon_spi_erase.exit_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_spi_erase.exit

if.end11.i:                                       ; preds = %if.end7.i
  %22 = ptrtoint ptr %erase_command.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %erase_command.i, align 1
  %conv13.i = zext i8 %23 to i32
  %24 = trunc i64 %start to i32
  %conv14.i = add i32 %5, %24
  %call15.i = call fastcc i32 @falcon_spi_cmd(ptr noundef %9, ptr noundef %7, i32 noundef %conv13.i, i32 noundef %conv14.i, ptr noundef null, ptr noundef null, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end11.i.falcon_spi_erase.exit_crit_edge

if.end11.i.falcon_spi_erase.exit_crit_edge:       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_spi_erase.exit

if.end18.i:                                       ; preds = %if.end11.i
  %call19.i = call fastcc i32 @falcon_spi_slow_wait(ptr noundef %add.ptr, i1 noundef zeroext false) #17
  %25 = call ptr @memset(ptr %empty.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp2097.not.i = icmp eq i32 %len, 0
  br i1 %cmp2097.not.i, label %if.end18.i.falcon_spi_erase.exit_crit_edge, label %for.body.lr.ph.i

if.end18.i.falcon_spi_erase.exit_crit_edge:       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_spi_erase.exit

for.body.lr.ph.i:                                 ; preds = %if.end18.i
  %munge_address.i.i.i = getelementptr inbounds %struct.falcon_spi_device, ptr %7, i32 0, i32 3
  br label %for.body.i

for.cond.i:                                       ; preds = %signal_pending.exit.i
  %add43.i = add i32 %26, %pos.098.i
  %cmp20.i = icmp ult i32 %add43.i, %len
  br i1 %cmp20.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.falcon_spi_erase.exit_crit_edge

for.cond.i.falcon_spi_erase.exit_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_spi_erase.exit

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.098.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add43.i, %for.cond.i.for.body.i_crit_edge ]
  %sub.i = sub i32 %len, %pos.098.i
  %26 = call i32 @llvm.umin.i32(i32 %sub.i, i32 16) #17
  %27 = add i32 %pos.098.i, %conv14.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %signal_pending.exit.i.i.while.cond.i.i_crit_edge, %for.body.i
  %pos.0.i.i = phi i32 [ 0, %for.body.i ], [ %add8.i.i, %signal_pending.exit.i.i.while.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %pos.0.i.i)
  %cmp.i.i = icmp ugt i32 %26, %pos.0.i.i
  br i1 %cmp.i.i, label %while.body.i.i, label %if.end29.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %sub.i.i = sub i32 %26, %pos.0.i.i
  %28 = call i32 @llvm.umin.i32(i32 %sub.i.i, i32 16) #17
  %conv2.i.i = add i32 %27, %pos.0.i.i
  %shr.i.i.i = lshr i32 %conv2.i.i, 8
  %29 = ptrtoint ptr %munge_address.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i.i.i = load i8, ptr %munge_address.i.i.i, align 4
  %bf.lshr.i.i.i = lshr i8 %bf.load.i.i.i, 7
  %30 = trunc i32 %shr.i.i.i to i8
  %and.tr.i.i.i = and i8 %bf.lshr.i.i.i, %30
  %31 = shl nuw nsw i8 %and.tr.i.i.i, 3
  %conv1.i.i.i = or i8 %31, 3
  %conv3.i.i = zext i8 %conv1.i.i.i to i32
  %add.ptr.i.i = getelementptr i8, ptr %buffer.i, i32 %pos.0.i.i
  %call7.i.i = call fastcc i32 @falcon_spi_cmd(ptr noundef %9, ptr noundef %7, i32 noundef %conv3.i.i, i32 noundef %conv2.i.i, ptr noundef null, ptr noundef %add.ptr.i.i, i32 noundef %28) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool.not.i79.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool.not.i79.i, label %if.end.i80.i, label %while.body.i.i.falcon_spi_erase.exit_crit_edge

while.body.i.i.falcon_spi_erase.exit_crit_edge:   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_spi_erase.exit

if.end.i80.i:                                     ; preds = %while.body.i.i
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 634, i32 noundef 0) #17
  %call.i.i.i = call i32 @__cond_resched() #17
  %32 = call i32 @llvm.read_register.i32(metadata !255) #17
  %and.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %stack.i.i.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  %40 = and i32 %39, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i.i, label %signal_pending.exit.i.i, label %if.end.i80.i.falcon_spi_erase.exit_crit_edge, !prof !269

if.end.i80.i.falcon_spi_erase.exit_crit_edge:     ; preds = %if.end.i80.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_spi_erase.exit

signal_pending.exit.i.i:                          ; preds = %if.end.i80.i
  %add8.i.i = add i32 %28, %pos.0.i.i
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %37, align 4
  %and1.i.i.i.i.i.i.i = and i32 %42, 1
  %tobool13.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i.i, 0
  br i1 %tobool13.not.i.i, label %signal_pending.exit.i.i.while.cond.i.i_crit_edge, label %signal_pending.exit.i.i.falcon_spi_erase.exit_crit_edge

signal_pending.exit.i.i.falcon_spi_erase.exit_crit_edge: ; preds = %signal_pending.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_spi_erase.exit

signal_pending.exit.i.i.while.cond.i.i_crit_edge: ; preds = %signal_pending.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.i.i

if.end29.i:                                       ; preds = %while.cond.i.i
  %bcmp.i = call i32 @bcmp(ptr nonnull %empty.i, ptr nonnull %buffer.i, i32 %26) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool33.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.end29.i.falcon_spi_erase.exit_crit_edge

if.end29.i.falcon_spi_erase.exit_crit_edge:       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_spi_erase.exit

if.end35.i:                                       ; preds = %if.end29.i
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 843, i32 noundef 0) #17
  %call.i82.i = call i32 @__cond_resched() #17
  %43 = call i32 @llvm.read_register.i32(metadata !255) #17
  %and.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %stack.i.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  %51 = and i32 %50, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i83.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i83.i, label %signal_pending.exit.i, label %if.end35.i.falcon_spi_erase.exit_crit_edge, !prof !269

if.end35.i.falcon_spi_erase.exit_crit_edge:       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_spi_erase.exit

signal_pending.exit.i:                            ; preds = %if.end35.i
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %48, align 4
  %and1.i.i.i.i.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool40.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool40.not.i, label %for.cond.i, label %signal_pending.exit.i.falcon_spi_erase.exit_crit_edge

signal_pending.exit.i.falcon_spi_erase.exit_crit_edge: ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_spi_erase.exit

falcon_spi_erase.exit:                            ; preds = %signal_pending.exit.i.falcon_spi_erase.exit_crit_edge, %if.end35.i.falcon_spi_erase.exit_crit_edge, %if.end29.i.falcon_spi_erase.exit_crit_edge, %signal_pending.exit.i.i.falcon_spi_erase.exit_crit_edge, %if.end.i80.i.falcon_spi_erase.exit_crit_edge, %while.body.i.i.falcon_spi_erase.exit_crit_edge, %for.cond.i.falcon_spi_erase.exit_crit_edge, %if.end18.i.falcon_spi_erase.exit_crit_edge, %if.end11.i.falcon_spi_erase.exit_crit_edge, %if.end7.i.falcon_spi_erase.exit_crit_edge, %falcon_spi_unlock.exit.i.falcon_spi_erase.exit_crit_edge, %falcon_spi_unlock.exit.thread.i, %if.end.i.falcon_spi_erase.exit_crit_edge, %if.end.falcon_spi_erase.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.end.falcon_spi_erase.exit_crit_edge ], [ -95, %if.end.i.falcon_spi_erase.exit_crit_edge ], [ %call19.i.i, %falcon_spi_unlock.exit.i.falcon_spi_erase.exit_crit_edge ], [ %call8.i, %if.end7.i.falcon_spi_erase.exit_crit_edge ], [ %call15.i, %if.end11.i.falcon_spi_erase.exit_crit_edge ], [ %retval.0.i.ph.i, %falcon_spi_unlock.exit.thread.i ], [ %call19.i, %if.end18.i.falcon_spi_erase.exit_crit_edge ], [ -4, %if.end.i80.i.falcon_spi_erase.exit_crit_edge ], [ -4, %signal_pending.exit.i.i.falcon_spi_erase.exit_crit_edge ], [ %call7.i.i, %while.body.i.i.falcon_spi_erase.exit_crit_edge ], [ -4, %if.end35.i.falcon_spi_erase.exit_crit_edge ], [ 0, %for.cond.i.falcon_spi_erase.exit_crit_edge ], [ -4, %signal_pending.exit.i.falcon_spi_erase.exit_crit_edge ], [ -5, %if.end29.i.falcon_spi_erase.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer.i) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %empty.i) #17
  call void @mutex_unlock(ptr noundef %spi_lock) #17
  br label %cleanup

cleanup:                                          ; preds = %falcon_spi_erase.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %falcon_spi_erase.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @falcon_mtd_write(ptr nocapture noundef readonly %mtd, i64 noundef %start, i32 noundef %len, ptr noundef writeonly %retlen, ptr noundef %buffer) #0 align 64 {
entry:
  %verify_buffer.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %nic_data1 = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 63
  %2 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data1, align 4
  %spi_lock = getelementptr inbounds %struct.falcon_nic_data, ptr %3, i32 0, i32 9
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %spi_lock, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %spi = getelementptr i8, ptr %mtd, i32 1456
  %4 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi, align 8
  %offset = getelementptr i8, ptr %mtd, i32 1460
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %verify_buffer.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp91.not.i = icmp eq i32 %len, 0
  %8 = call ptr @memset(ptr %verify_buffer.i, i32 255, i32 16)
  br i1 %cmp91.not.i, label %if.end.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end.while.end.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end
  %9 = trunc i64 %start to i32
  %10 = add i32 %7, %9
  %block_size.i.i = getelementptr inbounds %struct.falcon_spi_device, ptr %5, i32 0, i32 6
  %munge_address.i.i = getelementptr inbounds %struct.falcon_spi_device, ptr %5, i32 0, i32 3
  br label %while.body.i

while.cond.i:                                     ; preds = %signal_pending.exit.i
  %cmp.i = icmp ult i32 %add36.i, %len
  br i1 %cmp.i, label %while.cond.i.while.body.i_crit_edge, label %while.cond.i.while.end.i_crit_edge

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %pos.092.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add36.i, %while.cond.i.while.body.i_crit_edge ]
  %call.i = call fastcc i32 @falcon_spi_cmd(ptr noundef %1, ptr noundef %5, i32 noundef 6, i32 noundef -1, ptr noundef null, ptr noundef null, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

if.end.i:                                         ; preds = %while.body.i
  %sub.i = sub i32 %len, %pos.092.i
  %conv1.i = add i32 %10, %pos.092.i
  %11 = ptrtoint ptr %block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %block_size.i.i, align 4
  %sub.i.i = add i32 %12, -1
  %and.i.i = and i32 %sub.i.i, %conv1.i
  %sub2.i.i = sub i32 %12, %and.i.i
  %13 = call i32 @llvm.umin.i32(i32 %sub2.i.i, i32 %sub.i) #17
  %14 = call i32 @llvm.umin.i32(i32 %13, i32 16) #17
  %shr.i.i = lshr i32 %conv1.i, 8
  %15 = ptrtoint ptr %munge_address.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i.i = load i8, ptr %munge_address.i.i, align 4
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 7
  %16 = trunc i32 %shr.i.i to i8
  %and.tr.i.i = and i8 %bf.lshr.i.i, %16
  %17 = shl nuw nsw i8 %and.tr.i.i, 3
  %conv1.i.i = or i8 %17, 2
  %conv9.i = zext i8 %conv1.i.i to i32
  %add.ptr.i = getelementptr i8, ptr %buffer, i32 %pos.092.i
  %call13.i = call fastcc i32 @falcon_spi_cmd(ptr noundef %1, ptr noundef %5, i32 noundef %conv9.i, i32 noundef %conv1.i, ptr noundef %add.ptr.i, ptr noundef null, i32 noundef %14) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

if.end16.i:                                       ; preds = %if.end.i
  %call17.i = call fastcc i32 @falcon_spi_wait_write(ptr noundef %1, ptr noundef %5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end16.i.while.end.i_crit_edge

if.end16.i.while.end.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

if.end20.i:                                       ; preds = %if.end16.i
  %18 = ptrtoint ptr %munge_address.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i84.i = load i8, ptr %munge_address.i.i, align 4
  %bf.lshr.i85.i = lshr i8 %bf.load.i84.i, 7
  %and.tr.i86.i = and i8 %bf.lshr.i85.i, %16
  %19 = shl nuw nsw i8 %and.tr.i86.i, 3
  %conv1.i87.i = or i8 %19, 3
  %conv25.i = zext i8 %conv1.i87.i to i32
  %call29.i = call fastcc i32 @falcon_spi_cmd(ptr noundef %1, ptr noundef %5, i32 noundef %conv25.i, i32 noundef %conv1.i, ptr noundef null, ptr noundef nonnull %verify_buffer.i, i32 noundef %14) #17
  %bcmp.i = call i32 @bcmp(ptr nonnull %verify_buffer.i, ptr %add.ptr.i, i32 %14) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool33.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.end20.i.while.end.i_crit_edge

if.end20.i.while.end.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

if.end35.i:                                       ; preds = %if.end20.i
  %add36.i = add i32 %14, %pos.092.i
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 727, i32 noundef 0) #17
  %call.i.i = call i32 @__cond_resched() #17
  %20 = call i32 @llvm.read_register.i32(metadata !255) #17
  %and.i88.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i88.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stack.i.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %28 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end35.i.while.end.i_crit_edge, !prof !269

if.end35.i.while.end.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

signal_pending.exit.i:                            ; preds = %if.end35.i
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %25, align 4
  %and1.i.i.i.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool41.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool41.not.i, label %while.cond.i, label %signal_pending.exit.i.while.end.i_crit_edge

signal_pending.exit.i.while.end.i_crit_edge:      ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

while.end.i:                                      ; preds = %signal_pending.exit.i.while.end.i_crit_edge, %if.end35.i.while.end.i_crit_edge, %if.end20.i.while.end.i_crit_edge, %if.end16.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge, %if.end.while.end.i_crit_edge
  %rc.1.i = phi i32 [ 0, %if.end.while.end.i_crit_edge ], [ %call29.i, %while.cond.i.while.end.i_crit_edge ], [ %call.i, %while.body.i.while.end.i_crit_edge ], [ %call13.i, %if.end.i.while.end.i_crit_edge ], [ %call17.i, %if.end16.i.while.end.i_crit_edge ], [ -5, %if.end20.i.while.end.i_crit_edge ], [ -4, %signal_pending.exit.i.while.end.i_crit_edge ], [ -4, %if.end35.i.while.end.i_crit_edge ]
  %pos.1.i = phi i32 [ 0, %if.end.while.end.i_crit_edge ], [ %add36.i, %while.cond.i.while.end.i_crit_edge ], [ %pos.092.i, %while.body.i.while.end.i_crit_edge ], [ %pos.092.i, %if.end.i.while.end.i_crit_edge ], [ %pos.092.i, %if.end16.i.while.end.i_crit_edge ], [ %pos.092.i, %if.end20.i.while.end.i_crit_edge ], [ %add36.i, %signal_pending.exit.i.while.end.i_crit_edge ], [ %add36.i, %if.end35.i.while.end.i_crit_edge ]
  %tobool44.not.i = icmp eq ptr %retlen, null
  br i1 %tobool44.not.i, label %while.end.i.falcon_spi_write.exit_crit_edge, label %if.then45.i

while.end.i.falcon_spi_write.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_spi_write.exit

if.then45.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %31 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %pos.1.i, ptr %retlen, align 4
  br label %falcon_spi_write.exit

falcon_spi_write.exit:                            ; preds = %if.then45.i, %while.end.i.falcon_spi_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %verify_buffer.i) #17
  call void @mutex_unlock(ptr noundef %spi_lock) #17
  br label %cleanup

cleanup:                                          ; preds = %falcon_spi_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1.i, %falcon_spi_write.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @falcon_mtd_sync(ptr noundef %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mtd, i32 -8
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %nic_data1 = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 63
  %2 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data1, align 4
  %spi_lock = getelementptr inbounds %struct.falcon_nic_data, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %spi_lock, i32 noundef 0) #17
  %call = tail call fastcc i32 @falcon_spi_slow_wait(ptr noundef %add.ptr, i1 noundef zeroext true)
  tail call void @mutex_unlock(ptr noundef %spi_lock) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @falcon_b0_mem_map_size(ptr nocapture noundef readnone %efx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 16451584
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @falcon_b0_prepare_enable_fc_tx(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @falcon_stop_nic_stats(ptr noundef %efx)
  %type.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %0 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i.i, align 4
  %revision.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %1, i32 0, i32 79
  %2 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp slt i32 %3, 2
  br i1 %cmp.i, label %entry.falcon_drain_tx_fifo.exit_crit_edge, label %lor.lhs.false.i

entry.falcon_drain_tx_fifo.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_drain_tx_fifo.exit

lor.lhs.false.i:                                  ; preds = %entry
  %loopback_mode.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %4 = ptrtoint ptr %loopback_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %loopback_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.not.i = icmp eq i32 %5, 0
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.falcon_drain_tx_fifo.exit_crit_edge

lor.lhs.false.i.falcon_drain_tx_fifo.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_drain_tx_fifo.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %biu_lock.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %membase.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %6 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 3200
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #17, !srcloc !267
  %9 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %10, i32 3204
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i.i) #17, !srcloc !267
  %12 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i31.i.i = getelementptr i8, ptr %13, i32 3208
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i.i) #17, !srcloc !267
  %15 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i33.i.i = getelementptr i8, ptr %16, i32 3212
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call2.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not.i = icmp sgt i32 %8, -1
  br i1 %tobool.not.i, label %if.end5.i, label %if.end.i.falcon_drain_tx_fifo.exit_crit_edge

if.end.i.falcon_drain_tx_fifo.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_drain_tx_fifo.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @falcon_reset_macs(ptr noundef %efx) #17
  br label %falcon_drain_tx_fifo.exit

falcon_drain_tx_fifo.exit:                        ; preds = %if.end5.i, %if.end.i.falcon_drain_tx_fifo.exit_crit_edge, %lor.lhs.false.i.falcon_drain_tx_fifo.exit_crit_edge, %entry.falcon_drain_tx_fifo.exit_crit_edge
  %call = tail call i32 @falcon_reconfigure_xmac(ptr noundef %efx)
  %nic_data1.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %18 = ptrtoint ptr %nic_data1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nic_data1.i, align 4
  %stats_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 105
  tail call void @_raw_spin_lock_bh(ptr noundef %stats_lock.i) #17
  %stats_disable_count.i = getelementptr inbounds %struct.falcon_nic_data, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %stats_disable_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stats_disable_count.i, align 8
  %dec.i = add i32 %21, -1
  store i32 %dec.i, ptr %stats_disable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i4 = icmp eq i32 %dec.i, 0
  br i1 %cmp.i4, label %if.then.i, label %falcon_drain_tx_fifo.exit.falcon_start_nic_stats.exit_crit_edge

falcon_drain_tx_fifo.exit.falcon_start_nic_stats.exit_crit_edge: ; preds = %falcon_drain_tx_fifo.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_start_nic_stats.exit

if.then.i:                                        ; preds = %falcon_drain_tx_fifo.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @falcon_stats_request(ptr noundef %efx) #17
  br label %falcon_start_nic_stats.exit

falcon_start_nic_stats.exit:                      ; preds = %if.then.i, %falcon_drain_tx_fifo.exit.falcon_start_nic_stats.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock.i) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @falcon_b0_test_chip(ptr noundef %efx, ptr nocapture noundef writeonly %tests) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #17
  %loopback_modes = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 89
  %0 = ptrtoint ptr %loopback_modes to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %loopback_modes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %and = and i64 %1, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool2.not = icmp eq i64 %and, 0
  %conv = trunc i64 %1 to i32
  %2 = tail call i32 @llvm.cttz.i32(i32 %conv, i1 false) #17, !range !279
  %.sink = select i1 %tobool2.not, i32 %2, i32 3
  %loopback_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %3 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink, ptr %loopback_mode, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then, %entry.if.end6_crit_edge
  %call7 = tail call i32 @__ef4_reconfigure_port(ptr noundef %efx) #17
  tail call void @mutex_unlock(ptr noundef %mac_lock) #17
  tail call void @ef4_reset_down(ptr noundef %efx, i32 noundef 0) #17
  %call9 = tail call i32 @ef4_farch_test_registers(ptr noundef %efx, ptr noundef nonnull @falcon_b0_register_tests, i32 noundef 18) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  %cond = select i1 %tobool10.not, i32 1, i32 -1
  %registers = getelementptr inbounds %struct.ef4_self_tests, ptr %tests, i32 0, i32 6
  %4 = ptrtoint ptr %registers to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %registers, align 4
  %nic_data1.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %5 = ptrtoint ptr %nic_data1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nic_data1.i, align 4
  %spi_lock.i = getelementptr inbounds %struct.falcon_nic_data, ptr %6, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %spi_lock.i, i32 noundef 0) #17
  %call.i = tail call fastcc i32 @__falcon_reset_hw(ptr noundef %efx, i32 noundef 0) #17
  tail call void @mutex_unlock(ptr noundef %spi_lock.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  %call13 = tail call i32 @ef4_reset_up(ptr noundef %efx, i32 noundef 0, i1 noundef zeroext %cmp) #17
  %call13.call11 = select i1 %cmp, i32 %call13, i32 %call.i
  ret i32 %call13.call11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_farch_legacy_interrupt(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @falcon_b0_rx_push_rss_config(ptr noundef %efx, i1 noundef zeroext %user, ptr nocapture noundef readonly %rx_indir_table) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_hash_key = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 52
  %0 = ptrtoint ptr %rx_hash_key to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %temp.sroa.0.0.copyload = load i64, ptr %rx_hash_key, align 4
  %temp.sroa.0.sroa.0.0.extract.shift = lshr i64 %temp.sroa.0.0.copyload, 32
  %temp.sroa.0.sroa.0.0.extract.trunc = trunc i64 %temp.sroa.0.sroa.0.0.extract.shift to i32
  %temp.sroa.0.sroa.5.0.extract.trunc = trunc i64 %temp.sroa.0.0.copyload to i32
  %temp.sroa.6.0.rx_hash_key.sroa_idx = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 52, i32 8
  %1 = ptrtoint ptr %temp.sroa.6.0.rx_hash_key.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %temp.sroa.6.0.copyload = load i64, ptr %temp.sroa.6.0.rx_hash_key.sroa_idx, align 4
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %2 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %temp.sroa.0.sroa.0.0.extract.trunc) #17, !srcloc !266
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %5, i32 2148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %temp.sroa.0.sroa.5.0.extract.trunc) #17, !srcloc !266
  %temp.sroa.6.8.extract.shift = lshr i64 %temp.sroa.6.0.copyload, 32
  %temp.sroa.6.8.extract.trunc = trunc i64 %temp.sroa.6.8.extract.shift to i32
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %7, i32 2152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %temp.sroa.6.8.extract.trunc) #17, !srcloc !266
  %temp.sroa.6.12.extract.trunc = trunc i64 %temp.sroa.6.0.copyload to i32
  %8 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %9, i32 2156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %temp.sroa.6.12.extract.trunc) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #17
  %rx_indir_table1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 53
  %10 = call ptr @memcpy(ptr %rx_indir_table1, ptr %rx_indir_table, i32 512)
  tail call void @ef4_farch_rx_push_indir_table(ptr noundef %efx) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_farch_filter_update_rx_scatter(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_farch_filter_rfs_insert(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ef4_farch_filter_rfs_expire_one(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_up(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_nic_update_stats(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_farch_fpga_ver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__falcon_reset_hw(ptr noundef %efx, i32 noundef %method) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 4
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__falcon_reset_hw.__UNIQUE_ID_ddebug542, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__falcon_reset_hw, %if.then6)) #17
          to label %do.end9 [label %if.then6], !srcloc !273

if.then6:                                         ; preds = %do.body2
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ef4_reset_type_max to i32))
  %6 = load i32, ptr @ef4_reset_type_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %method)
  %cmp = icmp ugt i32 %6, %method
  br i1 %cmp, label %cond.true, label %if.then6.cond.end_crit_edge

if.then6.cond.end_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx = getelementptr [0 x ptr], ptr @ef4_reset_type_names, i32 0, i32 %method
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then6.cond.end_crit_edge
  %cond = phi ptr [ %8, %cond.true ], [ @.str.67, %if.then6.cond.end_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__falcon_reset_hw.__UNIQUE_ID_ddebug542, ptr noundef %5, ptr noundef nonnull @.str.66, ptr noundef %cond) #17
  br label %do.end9

do.end9:                                          ; preds = %cond.end, %do.body2, %entry.do.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %method)
  %cmp10 = icmp eq i32 %method, 3
  br i1 %cmp10, label %if.then11, label %do.body48

if.then11:                                        ; preds = %do.end9
  %pci_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 4
  %9 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev, align 4
  %call12 = tail call i32 @pci_save_state(ptr noundef %10) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end24, label %do.body15

do.body15:                                        ; preds = %if.then11
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 8
  %and17 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body15.cleanup_crit_edge, label %if.then19

do.body15.cleanup_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then19:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev20 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %13 = ptrtoint ptr %net_dev20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_dev20, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.68) #20
  br label %cleanup

if.end24:                                         ; preds = %if.then11
  %type.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %15 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %type.i.i, align 4
  %revision.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %16, i32 0, i32 79
  %17 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.i = icmp slt i32 %18, 2
  br i1 %cmp.i, label %if.then26, label %if.end24.if.end64_crit_edge

if.end24.if.end64_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64

if.then26:                                        ; preds = %if.end24
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %call27 = tail call i32 @pci_save_state(ptr noundef %20) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.if.end64_crit_edge, label %do.body30

if.then26.if.end64_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64

do.body30:                                        ; preds = %if.then26
  %21 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable, align 8
  %and32 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body30.fail2_crit_edge, label %if.then34

do.body30.fail2_crit_edge:                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail2

if.then34:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev35 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %23 = ptrtoint ptr %net_dev35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net_dev35, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %24, ptr noundef nonnull @.str.69) #20
  br label %fail2

do.body48:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %method)
  %cmp50 = icmp eq i32 %method, 0
  %25 = select i1 %cmp50, i32 -1509818368, i32 637665280
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  br label %if.end64

if.end64:                                         ; preds = %do.body48, %if.then26.if.end64_crit_edge, %if.end24.if.end64_crit_edge
  %glb_ctl_reg_ker.sroa.0.sroa.8.0 = phi i32 [ %26, %do.body48 ], [ 0, %if.end24.if.end64_crit_edge ], [ 0, %if.then26.if.end64_crit_edge ]
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %27 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 251658240) #17, !srcloc !266
  %29 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %30, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %glb_ctl_reg_ker.sroa.0.sroa.8.0) #17, !srcloc !266
  %31 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %32, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #17, !srcloc !266
  %33 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %34, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #17
  %35 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %msg_enable, align 8
  %and67 = and i32 %36, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end64.do.end89_crit_edge, label %do.body70

if.end64.do.end89_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end89

do.body70:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__falcon_reset_hw.__UNIQUE_ID_ddebug543, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__falcon_reset_hw, %if.then82)) #17
          to label %do.end89 [label %if.then82], !srcloc !273

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev83 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %37 = ptrtoint ptr %net_dev83 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net_dev83, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__falcon_reset_hw.__UNIQUE_ID_ddebug543, ptr noundef %38, ptr noundef nonnull @.str.70) #17
  br label %do.end89

do.end89:                                         ; preds = %if.then82, %do.body70, %if.end64.do.end89_crit_edge
  %call90 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 5) #17
  br i1 %cmp10, label %if.then93, label %do.end89.if.end124_crit_edge

do.end89.if.end124_crit_edge:                     ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end124

if.then93:                                        ; preds = %do.end89
  %type.i.i209 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %39 = ptrtoint ptr %type.i.i209 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %type.i.i209, align 4
  %revision.i.i210 = getelementptr inbounds %struct.ef4_nic_type, ptr %40, i32 0, i32 79
  %41 = ptrtoint ptr %revision.i.i210 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %revision.i.i210, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp.i211 = icmp slt i32 %42, 2
  br i1 %cmp.i211, label %if.then95, label %if.then93.if.end97_crit_edge

if.then93.if.end97_crit_edge:                     ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end97

if.then95:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #19
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  tail call void @pci_restore_state(ptr noundef %44) #17
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.then93.if.end97_crit_edge
  %pci_dev98 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 4
  %45 = ptrtoint ptr %pci_dev98 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pci_dev98, align 4
  tail call void @pci_restore_state(ptr noundef %46) #17
  %47 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %msg_enable, align 8
  %and101 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end97.if.end124_crit_edge, label %do.body104

if.end97.if.end124_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end124

do.body104:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__falcon_reset_hw.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__falcon_reset_hw, %if.then116)) #17
          to label %if.end124 [label %if.then116], !srcloc !273

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev117 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %49 = ptrtoint ptr %net_dev117 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net_dev117, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__falcon_reset_hw.__UNIQUE_ID_ddebug544, ptr noundef %50, ptr noundef nonnull @.str.71) #17
  br label %if.end124

if.end124:                                        ; preds = %if.then116, %do.body104, %if.end97.if.end124_crit_edge, %do.end89.if.end124_crit_edge
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %51 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i214 = getelementptr i8, ptr %52, i32 544
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i214) #17, !srcloc !267
  %54 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i215 = getelementptr i8, ptr %55, i32 548
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i215) #17, !srcloc !267
  %57 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %58, i32 552
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #17, !srcloc !267
  %60 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %61, i32 556
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #17
  %63 = and i32 %53, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp131.not = icmp eq i32 %63, 0
  %64 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %msg_enable, align 8
  %and146 = and i32 %65, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %cmp131.not, label %do.body144, label %if.then133

if.then133:                                       ; preds = %if.end124
  br i1 %tobool147.not, label %if.then133.cleanup_crit_edge, label %if.then138

if.then133.cleanup_crit_edge:                     ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then138:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev139 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %66 = ptrtoint ptr %net_dev139 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %net_dev139, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %67, ptr noundef nonnull @.str.72) #20
  br label %cleanup

do.body144:                                       ; preds = %if.end124
  br i1 %tobool147.not, label %do.body144.cleanup_crit_edge, label %do.body149

do.body144.cleanup_crit_edge:                     ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body149:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__falcon_reset_hw.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__falcon_reset_hw, %if.then161)) #17
          to label %cleanup [label %if.then161], !srcloc !273

if.then161:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev162 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %68 = ptrtoint ptr %net_dev162 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %net_dev162, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__falcon_reset_hw.__UNIQUE_ID_ddebug545, ptr noundef %69, ptr noundef nonnull @.str.73) #17
  br label %cleanup

fail2:                                            ; preds = %if.then34, %do.body30.fail2_crit_edge
  %70 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pci_dev, align 4
  tail call void @pci_restore_state(ptr noundef %71) #17
  br label %cleanup

cleanup:                                          ; preds = %fail2, %if.then161, %do.body149, %do.body144.cleanup_crit_edge, %if.then138, %if.then133.cleanup_crit_edge, %if.then19, %do.body15.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then161 ], [ 0, %do.body144.cleanup_crit_edge ], [ %call12, %if.then19 ], [ %call12, %do.body15.cleanup_crit_edge ], [ %call27, %fail2 ], [ -110, %if.then138 ], [ -110, %if.then133.cleanup_crit_edge ], [ 0, %do.body149 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_nic_alloc_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @falcon_probe_spi_devices(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 4
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %2 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 528
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !267
  %5 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %6, i32 532
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #17, !srcloc !267
  %8 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %9, i32 536
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #17, !srcloc !267
  %11 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %12, i32 540
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #17
  %call2.i83 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %14 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i85 = getelementptr i8, ptr %15, i32 512
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i85) #17, !srcloc !267
  %17 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i86 = getelementptr i8, ptr %18, i32 516
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i86) #17, !srcloc !267
  %20 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i88 = getelementptr i8, ptr %21, i32 520
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i88) #17, !srcloc !267
  %23 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i90 = getelementptr i8, ptr %24, i32 524
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i90) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i83) #17
  %call2.i93 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %26 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i95 = getelementptr i8, ptr %27, i32 320
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i95) #17, !srcloc !267
  %29 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i96 = getelementptr i8, ptr %30, i32 324
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i96) #17, !srcloc !267
  %32 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i98 = getelementptr i8, ptr %33, i32 328
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i98) #17, !srcloc !267
  %35 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i100 = getelementptr i8, ptr %36, i32 332
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i100) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i93) #17
  %38 = and i32 %4, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not = icmp eq i32 %38, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %39 = and i32 %16, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool10.not = icmp eq i32 %39, 0
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %40 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msg_enable, align 8
  %and11 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then.do.body56_crit_edge, label %do.body14

if.then.do.body56_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body56

do.body14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @falcon_probe_spi_devices.__UNIQUE_ID_ddebug549, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@falcon_probe_spi_devices, %if.then18)) #17
          to label %do.body56 [label %if.then18], !srcloc !273

if.then18:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %42 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net_dev, align 4
  %cond19 = select i1 %tobool10.not, ptr @.str.77, ptr @.str.76
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @falcon_probe_spi_devices.__UNIQUE_ID_ddebug549, ptr noundef %43, ptr noundef nonnull @.str.75, ptr noundef nonnull %cond19) #17
  br label %do.body56

if.else:                                          ; preds = %entry
  %msg_enable24 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %44 = ptrtoint ptr %msg_enable24 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_enable24, align 8
  %and25 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else.do.body56.thread_crit_edge, label %do.body28

if.else.do.body56.thread_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body56.thread

do.body28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @falcon_probe_spi_devices.__UNIQUE_ID_ddebug550, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@falcon_probe_spi_devices, %if.then40)) #17
          to label %do.body56.thread [label %if.then40], !srcloc !273

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev41 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %46 = ptrtoint ptr %net_dev41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net_dev41, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @falcon_probe_spi_devices.__UNIQUE_ID_ddebug550, ptr noundef %47, ptr noundef nonnull @.str.78) #17
  br label %do.body56.thread

do.body56.thread:                                 ; preds = %if.then40, %do.body28, %if.else.do.body56.thread_crit_edge
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %48 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i104 = getelementptr i8, ptr %49, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i104, i32 0) #17, !srcloc !266
  %50 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %51, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 0) #17, !srcloc !266
  %52 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %53, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #17, !srcloc !266
  %54 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i106 = getelementptr i8, ptr %55, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i106, i32 16135) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #17
  %spi_lock123 = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %spi_lock123, ptr noundef nonnull @.str.79, ptr noundef nonnull @falcon_probe_spi_devices.__key) #17
  br label %if.end64

do.body56:                                        ; preds = %if.then18, %do.body14, %if.then.do.body56_crit_edge
  %spi_lock = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %spi_lock, ptr noundef nonnull @.str.79, ptr noundef nonnull @falcon_probe_spi_devices.__key) #17
  br i1 %tobool10.not, label %if.then63, label %if.then60

if.then60:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #19
  %spi_flash = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 7
  %56 = ptrtoint ptr %spi_flash to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %spi_flash, align 4
  %addr_len.i = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 7, i32 2
  %57 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 3, ptr %addr_len.i, align 4
  %munge_address.i = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 7, i32 3
  %58 = ptrtoint ptr %munge_address.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i = load i8, ptr %munge_address.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %munge_address.i, align 4
  %erase_command.i = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 7, i32 4
  %59 = ptrtoint ptr %erase_command.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 82, ptr %erase_command.i, align 1
  %erase_size.i = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 7, i32 5
  %60 = ptrtoint ptr %erase_size.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 32768, ptr %erase_size.i, align 4
  %block_size.i = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 7, i32 6
  %61 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 256, ptr %block_size.i, align 4
  %62 = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 7, i32 1
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 131072, ptr %62, align 4
  br label %if.end64

if.then63:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #19
  %spi_eeprom = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 8
  %64 = ptrtoint ptr %spi_eeprom to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %spi_eeprom, align 4
  %addr_len.i107 = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 8, i32 2
  %65 = ptrtoint ptr %addr_len.i107 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2, ptr %addr_len.i107, align 4
  %munge_address.i108 = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 8, i32 3
  %66 = ptrtoint ptr %munge_address.i108 to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load.i109 = load i8, ptr %munge_address.i108, align 4
  %bf.clear.i110 = and i8 %bf.load.i109, 127
  store i8 %bf.clear.i110, ptr %munge_address.i108, align 4
  %erase_command.i111 = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 8, i32 4
  %67 = ptrtoint ptr %erase_command.i111 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %erase_command.i111, align 1
  %erase_size.i112 = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 8, i32 5
  %68 = ptrtoint ptr %erase_size.i112 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %erase_size.i112, align 4
  %block_size.i113 = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 8, i32 6
  %69 = ptrtoint ptr %block_size.i113 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 32, ptr %block_size.i113, align 4
  %70 = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 8, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 8192, ptr %70, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.then60, %do.body56.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @falcon_probe_nvconfig(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 200) #21
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @falcon_read_nvram(ptr noundef %efx, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end5:                                          ; preds = %if.end
  %port0_phy_type = getelementptr inbounds %struct.falcon_nvconfig, ptr %call7.i, i32 0, i32 13, i32 2
  %3 = ptrtoint ptr %port0_phy_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port0_phy_type, align 1
  %conv = zext i8 %4 to i32
  %phy_type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 75
  %5 = ptrtoint ptr %phy_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %phy_type, align 4
  %port0_phy_addr = getelementptr inbounds %struct.falcon_nvconfig, ptr %call7.i, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %port0_phy_addr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port0_phy_addr, align 8
  %conv7 = zext i8 %7 to i32
  %mdio = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %8 = ptrtoint ptr %mdio to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv7, ptr %mdio, align 8
  %board_struct_ver = getelementptr inbounds %struct.falcon_nvconfig, ptr %call7.i, i32 0, i32 11
  %9 = ptrtoint ptr %board_struct_ver to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %board_struct_ver, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %11)
  %cmp = icmp ugt i16 %11, 2
  br i1 %cmp, label %if.then10, label %if.end5.if.end14_crit_edge

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.then10:                                        ; preds = %if.end5
  %board_v3 = getelementptr inbounds %struct.falcon_nvconfig, ptr %call7.i, i32 0, i32 15
  %arrayidx = getelementptr %struct.falcon_nvconfig, ptr %call7.i, i32 0, i32 15, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i, label %if.then10.falcon_spi_device_init.exit_crit_edge, label %if.then.i

if.then10.falcon_spi_device_init.exit_crit_edge:  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_spi_device_init.exit

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  %spi_flash = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 7
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %spi_flash to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %spi_flash, align 4
  %and.i = and i32 %14, 31
  %shl.i = shl nuw i32 1, %and.i
  %shr2.i = lshr i32 %14, 6
  %and3.i = and i32 %shr2.i, 3
  %addr_len.i = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and3.i, ptr %addr_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and.i)
  %cmp5.i = icmp eq i32 %and.i, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and3.i)
  %cmp7.i = icmp eq i32 %and3.i, 1
  %17 = and i1 %cmp5.i, %cmp7.i
  %18 = select i1 %17, i8 -128, i8 0
  %munge_address.i = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 7, i32 3
  %19 = ptrtoint ptr %munge_address.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %munge_address.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %18
  store i8 %bf.set.i, ptr %munge_address.i, align 4
  %shr8.i = lshr i32 %14, 8
  %conv.i = trunc i32 %shr8.i to i8
  %erase_command.i = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 7, i32 4
  %20 = ptrtoint ptr %erase_command.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i, ptr %erase_command.i, align 1
  %shr10.i = lshr i32 %14, 16
  %and11.i = and i32 %shr10.i, 31
  %shl12.i = shl nuw i32 1, %and11.i
  %erase_size.i = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 7, i32 5
  %21 = ptrtoint ptr %erase_size.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl12.i, ptr %erase_size.i, align 4
  %shr13.i = lshr i32 %14, 24
  %and14.i = and i32 %shr13.i, 31
  %shl15.i = shl nuw i32 1, %and14.i
  %block_size.i = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 7, i32 6
  %22 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shl15.i, ptr %block_size.i, align 4
  br label %falcon_spi_device_init.exit

falcon_spi_device_init.exit:                      ; preds = %if.then.i, %if.then10.falcon_spi_device_init.exit_crit_edge
  %shl.sink.i = phi i32 [ %shl.i, %if.then.i ], [ 0, %if.then10.falcon_spi_device_init.exit_crit_edge ]
  %23 = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shl.sink.i, ptr %23, align 4
  %25 = ptrtoint ptr %board_v3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %board_v3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not.i59 = icmp eq i32 %26, 0
  br i1 %cmp.not.i59, label %falcon_spi_device_init.exit.falcon_spi_device_init.exit84_crit_edge, label %if.then.i82

falcon_spi_device_init.exit.falcon_spi_device_init.exit84_crit_edge: ; preds = %falcon_spi_device_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_spi_device_init.exit84

if.then.i82:                                      ; preds = %falcon_spi_device_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  %spi_eeprom = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 8
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %spi_eeprom to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %spi_eeprom, align 4
  %and.i60 = and i32 %27, 31
  %shl.i61 = shl nuw i32 1, %and.i60
  %shr2.i62 = lshr i32 %27, 6
  %and3.i63 = and i32 %shr2.i62, 3
  %addr_len.i64 = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 8, i32 2
  %29 = ptrtoint ptr %addr_len.i64 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and3.i63, ptr %addr_len.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and.i60)
  %cmp5.i65 = icmp eq i32 %and.i60, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and3.i63)
  %cmp7.i66 = icmp eq i32 %and3.i63, 1
  %30 = and i1 %cmp5.i65, %cmp7.i66
  %31 = select i1 %30, i8 -128, i8 0
  %munge_address.i67 = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 8, i32 3
  %32 = ptrtoint ptr %munge_address.i67 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i68 = load i8, ptr %munge_address.i67, align 4
  %bf.clear.i69 = and i8 %bf.load.i68, 127
  %bf.set.i70 = or i8 %bf.clear.i69, %31
  store i8 %bf.set.i70, ptr %munge_address.i67, align 4
  %shr8.i71 = lshr i32 %27, 8
  %conv.i72 = trunc i32 %shr8.i71 to i8
  %erase_command.i73 = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 8, i32 4
  %33 = ptrtoint ptr %erase_command.i73 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i72, ptr %erase_command.i73, align 1
  %shr10.i74 = lshr i32 %27, 16
  %and11.i75 = and i32 %shr10.i74, 31
  %shl12.i76 = shl nuw i32 1, %and11.i75
  %erase_size.i77 = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 8, i32 5
  %34 = ptrtoint ptr %erase_size.i77 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shl12.i76, ptr %erase_size.i77, align 4
  %shr13.i78 = lshr i32 %27, 24
  %and14.i79 = and i32 %shr13.i78, 31
  %shl15.i80 = shl nuw i32 1, %and14.i79
  %block_size.i81 = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 8, i32 6
  %35 = ptrtoint ptr %block_size.i81 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shl15.i80, ptr %block_size.i81, align 4
  br label %falcon_spi_device_init.exit84

falcon_spi_device_init.exit84:                    ; preds = %if.then.i82, %falcon_spi_device_init.exit.falcon_spi_device_init.exit84_crit_edge
  %shl.sink.i83 = phi i32 [ %shl.i61, %if.then.i82 ], [ 0, %falcon_spi_device_init.exit.falcon_spi_device_init.exit84_crit_edge ]
  %36 = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 8, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shl.sink.i83, ptr %36, align 4
  br label %if.end14

if.end14:                                         ; preds = %falcon_spi_device_init.exit84, %if.end5.if.end14_crit_edge
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %38 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net_dev, align 4
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 54
  %mac_address = getelementptr inbounds %struct.falcon_nvconfig, ptr %call7.i, i32 0, i32 1
  %40 = ptrtoint ptr %mac_address to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mac_address, align 8
  %42 = ptrtoint ptr %perm_addr to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %perm_addr, align 4
  %add.ptr.i = getelementptr %struct.falcon_nvconfig, ptr %call7.i, i32 0, i32 1, i32 0, i32 4
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %add.ptr.i, align 4
  %add.ptr1.i = getelementptr %struct.net_device, ptr %39, i32 0, i32 54, i32 4
  %45 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %add.ptr1.i, align 2
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %46 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msg_enable, align 8
  %and = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end14.do.end32_crit_edge, label %do.body19

if.end14.do.end32_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end32

do.body19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @falcon_probe_nvconfig.__UNIQUE_ID_ddebug548, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@falcon_probe_nvconfig, %if.then24)) #17
          to label %do.end32 [label %if.then24], !srcloc !273

if.then24:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #19
  %48 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net_dev, align 4
  %50 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %phy_type, align 4
  %52 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mdio, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @falcon_probe_nvconfig.__UNIQUE_ID_ddebug548, ptr noundef %49, ptr noundef nonnull @.str.81, i32 noundef %51, i32 noundef %53) #17
  br label %do.end32

do.end32:                                         ; preds = %if.then24, %do.body19, %if.end14.do.end32_crit_edge
  %board_revision = getelementptr inbounds %struct.falcon_nvconfig, ptr %call7.i, i32 0, i32 13, i32 6
  %54 = ptrtoint ptr %board_revision to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %board_revision, align 2
  %56 = tail call i16 @llvm.bswap.i16(i16 %55)
  %call34 = tail call i32 @falcon_probe_board(ptr noundef %efx, i16 noundef zeroext %56) #17
  br label %out

out:                                              ; preds = %do.end32, %if.end.out_crit_edge
  %rc.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ %call34, %do.end32 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @falcon_stats_timer_func(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %efx1 = getelementptr i8, ptr %t, i32 -1828
  %0 = ptrtoint ptr %efx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efx1, align 4
  %stats_lock = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 105
  tail call void @_raw_spin_lock(ptr noundef %stats_lock) #17
  %nic_data1.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 63
  %2 = ptrtoint ptr %nic_data1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data1.i, align 4
  %stats_pending.i = getelementptr inbounds %struct.falcon_nic_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %stats_pending.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stats_pending.i, align 4, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.falcon_stats_complete.exit_crit_edge, label %if.end.i

entry.falcon_stats_complete.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_stats_complete.exit

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %stats_pending.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %stats_pending.i, align 4
  %stats_buffer.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 71
  %7 = ptrtoint ptr %stats_buffer.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stats_buffer.i, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 212
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not.i = icmp eq i32 %10, 0
  br i1 %tobool3.not.i, label %do.body.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !271
  %stats.i = getelementptr inbounds %struct.falcon_nic_data, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %stats_buffer.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stats_buffer.i, align 8
  tail call void @ef4_nic_update_stats(ptr noundef nonnull @falcon_stat_desc, i32 noundef 49, ptr noundef nonnull @falcon_stat_mask, ptr noundef %stats.i, ptr noundef %12, i1 noundef zeroext true) #17
  br label %falcon_stats_complete.exit

do.body.i:                                        ; preds = %if.end.i
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %13 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %do.body.i.falcon_stats_complete.exit_crit_edge, label %if.then8.i

do.body.i.falcon_stats_complete.exit_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_stats_complete.exit

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %15 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.2) #20
  br label %falcon_stats_complete.exit

falcon_stats_complete.exit:                       ; preds = %if.then8.i, %do.body.i.falcon_stats_complete.exit_crit_edge, %if.then4.i, %entry.falcon_stats_complete.exit_crit_edge
  %stats_disable_count = getelementptr i8, ptr %t, i32 -8
  %17 = ptrtoint ptr %stats_disable_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stats_disable_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %if.then, label %falcon_stats_complete.exit.if.end_crit_edge

falcon_stats_complete.exit.if.end_crit_edge:      ; preds = %falcon_stats_complete.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %falcon_stats_complete.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @falcon_stats_request(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %falcon_stats_complete.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %stats_lock) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_nic_free_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @falcon_read_nvram(ptr noundef %efx, ptr noundef writeonly %nvconfig_out) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 4
  %spi_flash = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 7
  %size.i = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.else, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.else:                                          ; preds = %entry
  %spi_eeprom = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 8
  %size.i116 = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %size.i116 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i117.not = icmp eq i32 %5, 0
  br i1 %cmp.i117.not, label %if.else.cleanup_crit_edge, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %if.else.if.end7_crit_edge, %entry.if.end7_crit_edge
  %spi.0 = phi ptr [ %spi_flash, %entry.if.end7_crit_edge ], [ %spi_eeprom, %if.else.if.end7_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 1024) #21
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %add.ptr = getelementptr i8, ptr %call7.i, i32 768
  %spi_lock = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %spi_lock, i32 noundef 0) #17
  %munge_address.i.i = getelementptr inbounds %struct.falcon_spi_device, ptr %spi.0, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %signal_pending.exit.i.while.cond.i_crit_edge, %if.end10
  %pos.0.i = phi i32 [ 0, %if.end10 ], [ %add8.i, %signal_pending.exit.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %pos.0.i)
  %cmp.i118 = icmp ult i32 %pos.0.i, 1024
  br i1 %cmp.i118, label %while.body.i, label %if.end20

while.body.i:                                     ; preds = %while.cond.i
  %sub.i = sub nuw nsw i32 1024, %pos.0.i
  %7 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 16) #17
  %shr.i.i = lshr i32 %pos.0.i, 8
  %8 = ptrtoint ptr %munge_address.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i.i = load i8, ptr %munge_address.i.i, align 4
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 7
  %9 = trunc i32 %shr.i.i to i8
  %and.tr.i.i = and i8 %bf.lshr.i.i, %9
  %10 = shl nuw nsw i8 %and.tr.i.i, 3
  %conv1.i.i = or i8 %10, 3
  %conv3.i = zext i8 %conv1.i.i to i32
  %add.ptr.i = getelementptr i8, ptr %call7.i, i32 %pos.0.i
  %call7.i119 = tail call fastcc i32 @falcon_spi_cmd(ptr noundef %efx, ptr noundef %spi.0, i32 noundef %conv3.i, i32 noundef %pos.0.i, ptr noundef null, ptr noundef %add.ptr.i, i32 noundef %7) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i119)
  %tobool.not.i = icmp eq i32 %call7.i119, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.i.do.body_crit_edge

while.body.i.do.body_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

if.end.i:                                         ; preds = %while.body.i
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 634, i32 noundef 0) #17
  %call.i.i = tail call i32 @__cond_resched() #17
  %11 = tail call i32 @llvm.read_register.i32(metadata !255) #17
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stack.i.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %19 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end.i.do.body_crit_edge, !prof !269

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

signal_pending.exit.i:                            ; preds = %if.end.i
  %add8.i = add nuw nsw i32 %7, %pos.0.i
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %16, align 4
  %and1.i.i.i.i.i.i = and i32 %21, 1
  %tobool13.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool13.not.i, label %signal_pending.exit.i.while.cond.i_crit_edge, label %signal_pending.exit.i.do.body_crit_edge

signal_pending.exit.i.do.body_crit_edge:          ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

signal_pending.exit.i.while.cond.i_crit_edge:     ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.i

do.body:                                          ; preds = %signal_pending.exit.i.do.body_crit_edge, %if.end.i.do.body_crit_edge, %while.body.i.do.body_crit_edge
  tail call void @mutex_unlock(ptr noundef %spi_lock) #17
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %22 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable, align 8
  %and = and i32 %23, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %do.body.out_crit_edge, label %if.then16

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %24 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net_dev, align 4
  %26 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i121.not = icmp eq i32 %27, 0
  %cond = select i1 %cmp.i121.not, ptr @.str.77, ptr @.str.76
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.82, ptr noundef nonnull %cond) #20
  br label %out

if.end20:                                         ; preds = %while.cond.i
  tail call void @mutex_unlock(ptr noundef %spi_lock) #17
  %board_magic_num = getelementptr i8, ptr %call7.i, i32 928
  %28 = ptrtoint ptr %board_magic_num to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %board_magic_num, align 8
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %conv = zext i16 %30 to i32
  %board_struct_ver = getelementptr i8, ptr %call7.i, i32 930
  %31 = ptrtoint ptr %board_struct_ver to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %board_struct_ver, align 2
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  %conv21 = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 7418, i16 %29)
  %cmp.not = icmp eq i16 %29, 7418
  br i1 %cmp.not, label %if.end33, label %do.body24

do.body24:                                        ; preds = %if.end20
  %msg_enable25 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %34 = ptrtoint ptr %msg_enable25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable25, align 8
  %and26 = and i32 %35, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body24.out_crit_edge, label %if.then28

do.body24.out_crit_edge:                          ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then28:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev29 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %36 = ptrtoint ptr %net_dev29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net_dev29, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.83, i32 noundef %conv) #20
  br label %out

if.end33:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %33)
  %cmp34 = icmp ult i16 %33, 2
  br i1 %cmp34, label %do.body37, label %if.else46

do.body37:                                        ; preds = %if.end33
  %msg_enable38 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %38 = ptrtoint ptr %msg_enable38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msg_enable38, align 8
  %and39 = and i32 %39, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body37.out_crit_edge, label %if.then41

do.body37.out_crit_edge:                          ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then41:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev42 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %40 = ptrtoint ptr %net_dev42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net_dev42, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %41, ptr noundef nonnull @.str.84, i32 noundef %conv21) #20
  br label %out

if.else46:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %33)
  %cmp47 = icmp ult i16 %33, 4
  %word.0 = select i1 %cmp47, ptr %board_magic_num, ptr %call7.i
  %limit.0.v = select i1 %cmp47, i32 968, i32 1024
  %limit.0 = getelementptr i8, ptr %call7.i, i32 %limit.0.v
  %cmp56124 = icmp ult ptr %word.0, %limit.0
  br i1 %cmp56124, label %if.else46.for.body_crit_edge, label %if.else46.do.body62_crit_edge

if.else46.do.body62_crit_edge:                    ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body62

if.else46.for.body_crit_edge:                     ; preds = %if.else46
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else46.for.body_crit_edge
  %csum.0126 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.else46.for.body_crit_edge ]
  %word.1125 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %word.0, %if.else46.for.body_crit_edge ]
  %42 = ptrtoint ptr %word.1125 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %word.1125, align 2
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %conv58 = zext i16 %44 to i32
  %add = add i32 %csum.0126, %conv58
  %incdec.ptr = getelementptr i16, ptr %word.1125, i32 1
  %cmp56 = icmp ult ptr %incdec.ptr, %limit.0
  br i1 %cmp56, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body
  %phi.bo = and i32 %add, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %phi.bo)
  %phi.cmp = icmp eq i32 %phi.bo, 65535
  br i1 %phi.cmp, label %if.end71, label %for.end.do.body62_crit_edge

for.end.do.body62_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body62

do.body62:                                        ; preds = %for.end.do.body62_crit_edge, %if.else46.do.body62_crit_edge
  %msg_enable63 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %45 = ptrtoint ptr %msg_enable63 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %msg_enable63, align 8
  %and64 = and i32 %46, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.body62.out_crit_edge, label %if.then66

do.body62.out_crit_edge:                          ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then66:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev67 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %47 = ptrtoint ptr %net_dev67 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %net_dev67, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %48, ptr noundef nonnull @.str.85) #20
  br label %out

if.end71:                                         ; preds = %for.end
  %tobool72.not = icmp eq ptr %nvconfig_out, null
  br i1 %tobool72.not, label %if.end71.out_crit_edge, label %if.then73

if.end71.out_crit_edge:                           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #19
  %49 = call ptr @memcpy(ptr %nvconfig_out, ptr %add.ptr, i32 200)
  br label %out

out:                                              ; preds = %if.then73, %if.end71.out_crit_edge, %if.then66, %do.body62.out_crit_edge, %if.then41, %do.body37.out_crit_edge, %if.then28, %do.body24.out_crit_edge, %if.then16, %do.body.out_crit_edge
  %rc.0 = phi i32 [ -22, %if.then28 ], [ -22, %do.body24.out_crit_edge ], [ -22, %if.then41 ], [ -22, %do.body37.out_crit_edge ], [ -22, %if.then66 ], [ -22, %do.body62.out_crit_edge ], [ 0, %if.then73 ], [ 0, %if.end71.out_crit_edge ], [ -5, %if.then16 ], [ -5, %do.body.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ -22, %if.else.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @falcon_probe_board(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @falcon_spi_read(ptr noundef %efx, ptr nocapture noundef readonly %spi, i64 noundef %start, i32 noundef %len, ptr noundef writeonly %retlen, ptr noundef %buffer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i64 %start to i32
  %munge_address.i = getelementptr inbounds %struct.falcon_spi_device, ptr %spi, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %signal_pending.exit.while.cond_crit_edge, %entry
  %pos.0 = phi i32 [ 0, %entry ], [ %add8, %signal_pending.exit.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0, i32 %len)
  %cmp = icmp ult i32 %pos.0, %len
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %while.cond
  %sub = sub i32 %len, %pos.0
  %1 = tail call i32 @llvm.umin.i32(i32 %sub, i32 16)
  %conv2 = add i32 %pos.0, %0
  %shr.i = lshr i32 %conv2, 8
  %2 = ptrtoint ptr %munge_address.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %munge_address.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %3 = trunc i32 %shr.i to i8
  %and.tr.i = and i8 %bf.lshr.i, %3
  %4 = shl nuw nsw i8 %and.tr.i, 3
  %conv1.i = or i8 %4, 3
  %conv3 = zext i8 %conv1.i to i32
  %add.ptr = getelementptr i8, ptr %buffer, i32 %pos.0
  %call7 = tail call fastcc i32 @falcon_spi_cmd(ptr noundef %efx, ptr noundef %spi, i32 noundef %conv3, i32 noundef %conv2, ptr noundef null, ptr noundef %add.ptr, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

if.end:                                           ; preds = %while.body
  %add8 = add i32 %1, %pos.0
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 634, i32 noundef 0) #17
  %call.i = tail call i32 @__cond_resched() #17
  %5 = tail call i32 @llvm.read_register.i32(metadata !255) #17
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stack.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %13 = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end.while.end_crit_edge, !prof !269

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

signal_pending.exit:                              ; preds = %if.end
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %10, align 4
  %and1.i.i.i.i.i = and i32 %15, 1
  %tobool13.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool13.not, label %signal_pending.exit.while.cond_crit_edge, label %signal_pending.exit.while.end_crit_edge

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

signal_pending.exit.while.cond_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond

while.end:                                        ; preds = %signal_pending.exit.while.end_crit_edge, %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %rc.1 = phi i32 [ %call7, %while.body.while.end_crit_edge ], [ 0, %while.cond.while.end_crit_edge ], [ -4, %signal_pending.exit.while.end_crit_edge ], [ -4, %if.end.while.end_crit_edge ]
  %pos.1 = phi i32 [ %pos.0, %while.body.while.end_crit_edge ], [ %pos.0, %while.cond.while.end_crit_edge ], [ %add8, %signal_pending.exit.while.end_crit_edge ], [ %add8, %if.end.while.end_crit_edge ]
  %tobool16.not = icmp eq ptr %retlen, null
  br i1 %tobool16.not, label %while.end.if.end18_crit_edge, label %if.then17

while.end.if.end18_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

if.then17:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %pos.1, ptr %retlen, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %while.end.if.end18_crit_edge
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @falcon_spi_cmd(ptr noundef %efx, ptr nocapture noundef readonly %spi, i32 noundef %command, i32 noundef %address, ptr noundef readonly %in, ptr noundef writeonly %out, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %reg.sroa.0 = alloca [2 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %address)
  %cmp = icmp sgt i32 %address, -1
  %cmp1.not = icmp eq ptr %out, null
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reg.sroa.0)
  %reg.sroa.0.8..sroa_idx = getelementptr inbounds i8, ptr %reg.sroa.0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len)
  %cmp3 = icmp ugt i32 %len, 16
  %0 = call ptr @memset(ptr %reg.sroa.0, i32 255, i32 16)
  br i1 %cmp3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %biu_lock.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %membase.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %1 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %2, i32 256
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #17, !srcloc !267
  %4 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %5, i32 260
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i.i) #17, !srcloc !267
  %7 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i31.i.i = getelementptr i8, ptr %8, i32 264
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i.i) #17, !srcloc !267
  %10 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i33.i.i = getelementptr i8, ptr %11, i32 268
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call2.i.i) #17
  %13 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  br i1 %cmp, label %do.body, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

do.body:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  %14 = tail call i32 @llvm.bswap.i32(i32 %address)
  %15 = ptrtoint ptr %reg.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %reg.sroa.0, align 8
  %reg.sroa.0.4.arrayidx9.sroa_idx = getelementptr inbounds i8, ptr %reg.sroa.0, i32 4
  %16 = ptrtoint ptr %reg.sroa.0.4.arrayidx9.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %reg.sroa.0.4.arrayidx9.sroa_idx, align 4
  %17 = ptrtoint ptr %reg.sroa.0.8..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %reg.sroa.0.8..sroa_idx, align 8
  %reg.sroa.0.12.arrayidx11.sroa_idx = getelementptr inbounds i8, ptr %reg.sroa.0, i32 12
  %18 = ptrtoint ptr %reg.sroa.0.12.arrayidx11.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %reg.sroa.0.12.arrayidx11.sroa_idx, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %19 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %14) #17, !srcloc !266
  %21 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %22, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 0) #17, !srcloc !266
  %23 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %24, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #17, !srcloc !266
  %25 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %26, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i) #17
  br label %if.end12

if.end12:                                         ; preds = %do.body, %if.end5.if.end12_crit_edge
  %cmp13.not = icmp eq ptr %in, null
  br i1 %cmp13.not, label %if.end12.do.body17_crit_edge, label %if.then15

if.end12.do.body17_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  %27 = call ptr @memcpy(ptr %reg.sroa.0, ptr %in, i32 %len)
  %call3.i74 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %28 = ptrtoint ptr %reg.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %reg.sroa.0.0.reg.sroa.0.0.reg.sroa.0.0.98 = load i32, ptr %reg.sroa.0, align 8
  %29 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i76 = getelementptr i8, ptr %30, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i76, i32 %reg.sroa.0.0.reg.sroa.0.0.reg.sroa.0.0.98) #17, !srcloc !266
  %reg.sroa.0.4.arrayidx6.i77.sroa_idx = getelementptr inbounds i8, ptr %reg.sroa.0, i32 4
  %31 = ptrtoint ptr %reg.sroa.0.4.arrayidx6.i77.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %31)
  %reg.sroa.0.4.reg.sroa.0.4.reg.sroa.0.4.100 = load i32, ptr %reg.sroa.0.4.arrayidx6.i77.sroa_idx, align 4
  %32 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i78 = getelementptr i8, ptr %33, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i78, i32 %reg.sroa.0.4.reg.sroa.0.4.reg.sroa.0.4.100) #17, !srcloc !266
  %34 = ptrtoint ptr %reg.sroa.0.8..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %reg.sroa.0.8.reg.sroa.0.8.reg.sroa.0.8.102 = load i32, ptr %reg.sroa.0.8..sroa_idx, align 8
  %35 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i80 = getelementptr i8, ptr %36, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i80, i32 %reg.sroa.0.8.reg.sroa.0.8.reg.sroa.0.8.102) #17, !srcloc !266
  %reg.sroa.0.12.arrayidx10.i81.sroa_idx = getelementptr inbounds i8, ptr %reg.sroa.0, i32 12
  %37 = ptrtoint ptr %reg.sroa.0.12.arrayidx10.i81.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %37)
  %reg.sroa.0.12.reg.sroa.0.12.reg.sroa.0.12.104 = load i32, ptr %reg.sroa.0.12.arrayidx10.i81.sroa_idx, align 4
  %38 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i82 = getelementptr i8, ptr %39, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i82, i32 %reg.sroa.0.12.reg.sroa.0.12.reg.sroa.0.12.104) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i74) #17
  br label %do.body17

do.body17:                                        ; preds = %if.then15, %if.end12.do.body17_crit_edge
  %40 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %spi, align 4
  %shl = shl i32 %41, 24
  %shl20 = shl nuw nsw i32 %len, 16
  %conv26 = select i1 %cmp1.not, i32 0, i32 32768
  br i1 %cmp, label %cond.true, label %do.body17.cond.end_crit_edge

do.body17.cond.end_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #19
  %addr_len = getelementptr inbounds %struct.falcon_spi_device, ptr %spi, i32 0, i32 2
  %42 = ptrtoint ptr %addr_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr_len, align 4
  %phi.bo = shl i32 %43, 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.body17.cond.end_crit_edge
  %cond = phi i32 [ %phi.bo, %cond.true ], [ 0, %do.body17.cond.end_crit_edge ]
  %44 = or i32 %shl20, %command
  %or2272 = or i32 %44, %conv26
  %or27 = or i32 %or2272, %shl
  %or33 = or i32 %or27, %cond
  %or36 = or i32 %or33, -2147483648
  %45 = tail call i32 @llvm.bswap.i32(i32 %or36)
  %46 = ptrtoint ptr %reg.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %reg.sroa.0, align 8
  %reg.sroa.0.4.arrayidx39.sroa_idx = getelementptr inbounds i8, ptr %reg.sroa.0, i32 4
  %47 = ptrtoint ptr %reg.sroa.0.4.arrayidx39.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %reg.sroa.0.4.arrayidx39.sroa_idx, align 4
  %48 = ptrtoint ptr %reg.sroa.0.8..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %reg.sroa.0.8..sroa_idx, align 8
  %reg.sroa.0.12.arrayidx41.sroa_idx = getelementptr inbounds i8, ptr %reg.sroa.0, i32 12
  %49 = ptrtoint ptr %reg.sroa.0.12.arrayidx41.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %reg.sroa.0.12.arrayidx41.sroa_idx, align 4
  %call3.i84 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %50 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i86 = getelementptr i8, ptr %51, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i86, i32 %45) #17, !srcloc !266
  %52 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i88 = getelementptr i8, ptr %53, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i88, i32 0) #17, !srcloc !266
  %54 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i90 = getelementptr i8, ptr %55, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i90, i32 0) #17, !srcloc !266
  %56 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i92 = getelementptr i8, ptr %57, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i92, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i84) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  br label %for.body.i

for.cond2.preheader.i:                            ; preds = %if.end.i
  %add1.neg.i = sub i32 -11, %58
  br label %for.cond2.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %cond.end
  %i.029.i = phi i32 [ 0, %cond.end ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %59 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %60, i32 256
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #17, !srcloc !267
  %62 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i.i = getelementptr i8, ptr %63, i32 260
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i.i.i) #17, !srcloc !267
  %65 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i31.i.i.i = getelementptr i8, ptr %66, i32 264
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i.i.i) #17, !srcloc !267
  %68 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i33.i.i.i = getelementptr i8, ptr %69, i32 268
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i.i.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call2.i.i.i) #17
  %71 = and i32 %61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i.i = icmp eq i32 %71, 0
  br i1 %tobool.not.i.i, label %for.body.i.falcon_spi_wait.exit_crit_edge, label %if.end.i

for.body.i.falcon_spi_wait.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_spi_wait.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 2147480) #17
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %for.cond2.preheader.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.cond2.i:                                      ; preds = %if.end12.i, %for.cond2.preheader.i
  %call2.i.i20.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %73 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i22.i = getelementptr i8, ptr %74, i32 256
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i22.i) #17, !srcloc !267
  %76 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i23.i = getelementptr i8, ptr %77, i32 260
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i.i23.i) #17, !srcloc !267
  %79 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i31.i.i24.i = getelementptr i8, ptr %80, i32 264
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i.i24.i) #17, !srcloc !267
  %82 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i33.i.i25.i = getelementptr i8, ptr %83, i32 268
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i.i25.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call2.i.i20.i) #17
  %85 = and i32 %75, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i26.i = icmp eq i32 %85, 0
  br i1 %tobool.not.i26.i, label %for.cond2.i.falcon_spi_wait.exit_crit_edge, label %if.end6.i

for.cond2.i.falcon_spi_wait.exit_crit_edge:       ; preds = %for.cond2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_spi_wait.exit

if.end6.i:                                        ; preds = %for.cond2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %86 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add1.neg.i, %86
  %cmp7.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp7.i, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %if.end6.i
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %87 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %88, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %do.body.i.cleanup_crit_edge, label %if.then10.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %89 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %90, ptr noundef nonnull @.str.86) #20
  br label %cleanup

if.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #19
  %call13.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #17
  br label %for.cond2.i

falcon_spi_wait.exit:                             ; preds = %for.cond2.i.falcon_spi_wait.exit_crit_edge, %for.body.i.falcon_spi_wait.exit_crit_edge
  br i1 %cmp1.not, label %falcon_spi_wait.exit.cleanup_crit_edge, label %if.then50

falcon_spi_wait.exit.cleanup_crit_edge:           ; preds = %falcon_spi_wait.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then50:                                        ; preds = %falcon_spi_wait.exit
  call void @__sanitizer_cov_trace_pc() #19
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %91 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i95 = getelementptr i8, ptr %92, i32 288
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i95) #17, !srcloc !267
  %94 = ptrtoint ptr %reg.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %reg.sroa.0, align 8
  %95 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i96 = getelementptr i8, ptr %96, i32 292
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i96) #17, !srcloc !267
  %98 = ptrtoint ptr %reg.sroa.0.4.arrayidx39.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %reg.sroa.0.4.arrayidx39.sroa_idx, align 4
  %99 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %100, i32 296
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #17, !srcloc !267
  %102 = ptrtoint ptr %reg.sroa.0.8..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %reg.sroa.0.8..sroa_idx, align 8
  %103 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %104, i32 300
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #17, !srcloc !267
  %106 = ptrtoint ptr %reg.sroa.0.12.arrayidx41.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %reg.sroa.0.12.arrayidx41.sroa_idx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call2.i) #17
  %107 = call ptr @memcpy(ptr %out, ptr %reg.sroa.0, i32 %len)
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %falcon_spi_wait.exit.cleanup_crit_edge, %if.then10.i, %do.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %falcon_spi_wait.exit.cleanup_crit_edge ], [ 0, %if.then50 ], [ -110, %if.then10.i ], [ -110, %do.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reg.sroa.0)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @falcon_setsda(ptr noundef %data, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %data, i32 0, i32 103
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %data, i32 0, i32 13
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 528
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !267
  %3 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %4, i32 532
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #17, !srcloc !267
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %7, i32 536
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #17, !srcloc !267
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %10, i32 540
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #17
  %and = and i32 %2, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %shl = select i1 %tobool.not, i32 8, i32 0
  %or = or i32 %and, %shl
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %12 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i18 = getelementptr i8, ptr %13, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i18, i32 %or) #17, !srcloc !266
  %14 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %15, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %5) #17, !srcloc !266
  %16 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %17, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %8) #17, !srcloc !266
  %18 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i20 = getelementptr i8, ptr %19, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i20, i32 %11) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @falcon_setscl(ptr noundef %data, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %data, i32 0, i32 103
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %data, i32 0, i32 13
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 528
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !267
  %3 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %4, i32 532
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #17, !srcloc !267
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %7, i32 536
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #17, !srcloc !267
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %10, i32 540
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #17
  %and = and i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %shl = zext i1 %tobool.not to i32
  %or = or i32 %and, %shl
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %12 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i18 = getelementptr i8, ptr %13, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i18, i32 %or) #17, !srcloc !266
  %14 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %15, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %5) #17, !srcloc !266
  %16 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %17, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %8) #17, !srcloc !266
  %18 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i20 = getelementptr i8, ptr %19, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i20, i32 %11) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @falcon_getsda(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %data, i32 0, i32 103
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %data, i32 0, i32 13
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 528
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !267
  %3 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %4, i32 532
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #17, !srcloc !267
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %7, i32 536
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #17, !srcloc !267
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %10, i32 540
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #17
  %12 = lshr i32 %2, 19
  %and = and i32 %12, 1
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @falcon_getscl(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %data, i32 0, i32 103
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %data, i32 0, i32 13
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 528
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !267
  %3 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %4, i32 532
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #17, !srcloc !267
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %7, i32 536
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #17, !srcloc !267
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %10, i32 540
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #17
  %12 = lshr i32 %2, 16
  %and = and i32 %12, 1
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @falcon_reset_sram(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 528
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !267
  %3 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %4, i32 532
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #17, !srcloc !267
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %7, i32 536
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #17, !srcloc !267
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %10, i32 540
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #17
  %or17 = or i32 %2, 514
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %12 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i115 = getelementptr i8, ptr %13, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i115, i32 %or17) #17, !srcloc !266
  %14 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %15, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %5) #17, !srcloc !266
  %16 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %17, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %8) #17, !srcloc !266
  %18 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i117 = getelementptr i8, ptr %19, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i117, i32 %11) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #17
  %call3.i119 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %20 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i121 = getelementptr i8, ptr %21, i32 1584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i121, i32 134217728) #17, !srcloc !266
  %22 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i123 = getelementptr i8, ptr %23, i32 1588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i123, i32 0) #17, !srcloc !266
  %24 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i125 = getelementptr i8, ptr %25, i32 1592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i125, i32 0) #17, !srcloc !266
  %26 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i127 = getelementptr i8, ptr %27, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i127, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i119) #17
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  br label %do.body40

do.body40:                                        ; preds = %do.cond87.do.body40_crit_edge, %entry
  %count.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond87.do.body40_crit_edge ]
  %28 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msg_enable, align 8
  %and42 = and i32 %29, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool.not = icmp eq i32 %and42, 0
  br i1 %tobool.not, label %do.body40.do.end52_crit_edge, label %do.body43

do.body40.do.end52_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end52

do.body43:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @falcon_reset_sram.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@falcon_reset_sram, %if.then47)) #17
          to label %do.end52 [label %if.then47], !srcloc !273

if.then47:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #19
  %30 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @falcon_reset_sram.__UNIQUE_ID_ddebug546, ptr noundef %31, ptr noundef nonnull @.str.88, i32 noundef %count.0) #17
  br label %do.end52

do.end52:                                         ; preds = %if.then47, %do.body43, %do.body40.do.end52_crit_edge
  %call53 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 2) #17
  %call2.i129 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %32 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i131 = getelementptr i8, ptr %33, i32 1584
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i131) #17, !srcloc !267
  %35 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i132 = getelementptr i8, ptr %36, i32 1588
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i132) #17, !srcloc !267
  %38 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i134 = getelementptr i8, ptr %39, i32 1592
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i134) #17, !srcloc !267
  %41 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i136 = getelementptr i8, ptr %42, i32 1596
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i136) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i129) #17
  %44 = and i32 %34, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool59.not = icmp eq i32 %44, 0
  br i1 %tobool59.not, label %do.body61, label %do.cond87

do.body61:                                        ; preds = %do.end52
  %45 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %msg_enable, align 8
  %and63 = and i32 %46, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %do.body61.cleanup_crit_edge, label %do.body66

do.body61.cleanup_crit_edge:                      ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body66:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @falcon_reset_sram.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@falcon_reset_sram, %if.then78)) #17
          to label %cleanup [label %if.then78], !srcloc !273

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #19
  %47 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @falcon_reset_sram.__UNIQUE_ID_ddebug547, ptr noundef %48, ptr noundef nonnull @.str.89) #17
  br label %cleanup

do.cond87:                                        ; preds = %do.end52
  %inc = add nuw nsw i32 %count.0, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %do.body89, label %do.cond87.do.body40_crit_edge

do.cond87.do.body40_crit_edge:                    ; preds = %do.cond87
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body40

do.body89:                                        ; preds = %do.cond87
  %49 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable, align 8
  %and91 = and i32 %50, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %do.body89.cleanup_crit_edge, label %if.then93

do.body89.cleanup_crit_edge:                      ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then93:                                        ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #19
  %51 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %52, ptr noundef nonnull @.str.90) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then93, %do.body89.cleanup_crit_edge, %if.then78, %do.body66, %do.body61.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then78 ], [ 0, %do.body61.cleanup_crit_edge ], [ -110, %if.then93 ], [ -110, %do.body89.cleanup_crit_edge ], [ 0, %do.body66 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_farch_init_common(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ef4_reconfigure_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @falcon_loopback_link_poll(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %link_state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81
  %0 = ptrtoint ptr %link_state to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %link_state, align 8
  %old_state.sroa.5.0.extract.shift = lshr i64 %1, 48
  %old_state.sroa.5.0.extract.trunc = trunc i64 %old_state.sroa.5.0.extract.shift to i8
  %old_state.sroa.6.0.extract.shift = lshr i64 %1, 40
  %old_state.sroa.6.0.extract.trunc = trunc i64 %old_state.sroa.6.0.extract.shift to i8
  %old_state.sroa.775.0.extract.trunc = trunc i64 %1 to i32
  %mac_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 64
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mac_lock) #17
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !269

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1473, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %loopback_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %2 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %loopback_mode, align 4
  %shl = shl nuw i32 1, %3
  %and = and i32 %shl, 66600958
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %do.end43, label %if.end.if.end49_crit_edge, !prof !265

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

do.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1474, i32 noundef 9, ptr noundef null) #17
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %if.end.if.end49_crit_edge
  %fd = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81, i32 1
  %4 = ptrtoint ptr %fd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %fd, align 1
  %wanted_fc = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 85
  %5 = ptrtoint ptr %wanted_fc to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wanted_fc, align 8
  %fc = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81, i32 2
  %7 = ptrtoint ptr %fc to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %fc, align 2
  %8 = ptrtoint ptr %link_state to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %link_state, align 8
  %speed = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81, i32 3
  %9 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 10000, ptr %speed, align 4
  %old_state.sroa.0.0.extract.shift.mask = and i64 %1, -72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 72057594037927936, i64 %old_state.sroa.0.0.extract.shift.mask)
  %cmp.i = icmp eq i64 %old_state.sroa.0.0.extract.shift.mask, 72057594037927936
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end49.ef4_link_state_equal.exit_crit_edge

if.end49.ef4_link_state_equal.exit_crit_edge:     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %ef4_link_state_equal.exit

land.lhs.true.i:                                  ; preds = %if.end49
  %10 = ptrtoint ptr %fd to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fd, align 1, !range !268
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %old_state.sroa.5.0.extract.trunc)
  %cmp10.i = icmp eq i8 %11, %old_state.sroa.5.0.extract.trunc
  br i1 %cmp10.i, label %land.lhs.true12.i, label %land.lhs.true.i.ef4_link_state_equal.exit_crit_edge

land.lhs.true.i.ef4_link_state_equal.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ef4_link_state_equal.exit

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %12 = ptrtoint ptr %fc to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fc, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %old_state.sroa.6.0.extract.trunc)
  %cmp16.i = icmp eq i8 %13, %old_state.sroa.6.0.extract.trunc
  br i1 %cmp16.i, label %land.rhs.i, label %land.lhs.true12.i.ef4_link_state_equal.exit_crit_edge

land.lhs.true12.i.ef4_link_state_equal.exit_crit_edge: ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ef4_link_state_equal.exit

land.rhs.i:                                       ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %old_state.sroa.775.0.extract.trunc)
  %cmp19.i = icmp ne i32 %15, %old_state.sroa.775.0.extract.trunc
  br label %ef4_link_state_equal.exit

ef4_link_state_equal.exit:                        ; preds = %land.rhs.i, %land.lhs.true12.i.ef4_link_state_equal.exit_crit_edge, %land.lhs.true.i.ef4_link_state_equal.exit_crit_edge, %if.end49.ef4_link_state_equal.exit_crit_edge
  %16 = phi i1 [ true, %land.lhs.true12.i.ef4_link_state_equal.exit_crit_edge ], [ true, %land.lhs.true.i.ef4_link_state_equal.exit_crit_edge ], [ true, %if.end49.ef4_link_state_equal.exit_crit_edge ], [ %cmp19.i, %land.rhs.i ]
  ret i1 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @falcon_deconfigure_mac_wrapper(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.ef4_nic_type, ptr %1, i32 0, i32 79
  %2 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp slt i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 2048
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !267
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %8, i32 2052
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #17, !srcloc !267
  %10 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %11, i32 2056
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #17, !srcloc !267
  %13 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %14, i32 2060
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #17
  %and3 = and i32 %9, -8388609
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %16 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %17, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i19, i32 %6) #17, !srcloc !266
  %18 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %19, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %and3) #17, !srcloc !266
  %20 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %21, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %12) #17, !srcloc !266
  %22 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i21 = getelementptr i8, ptr %23, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i21, i32 %15) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #17
  %24 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %type.i, align 4
  %revision.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %25, i32 0, i32 79
  %26 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i = icmp slt i32 %27, 2
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %loopback_mode.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %28 = ptrtoint ptr %loopback_mode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %loopback_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp1.not.i = icmp eq i32 %29, 0
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %30 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %31, i32 3200
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #17, !srcloc !267
  %33 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %34, i32 3204
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i.i) #17, !srcloc !267
  %36 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i.i = getelementptr i8, ptr %37, i32 3208
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i.i) #17, !srcloc !267
  %39 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i.i = getelementptr i8, ptr %40, i32 3212
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %tobool.not.i = icmp sgt i32 %32, -1
  br i1 %tobool.not.i, label %if.end5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @falcon_reset_macs(ptr noundef %efx) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end5.i, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @falcon_reset_macs(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 4
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.ef4_nic_type, ptr %3, i32 0, i32 79
  %4 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp slt i32 %5, 2
  br i1 %cmp, label %do.body, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

do.body:                                          ; preds = %entry
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #17, !srcloc !266
  %8 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %9, i32 4644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 0) #17, !srcloc !266
  %10 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %11, i32 4648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #17, !srcloc !266
  %12 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %13, i32 4652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #17
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %do.body
  %count.0312 = phi i32 [ 0, %do.body ], [ %inc, %if.end.for.body_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %14 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i205 = getelementptr i8, ptr %15, i32 4640
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i205) #17, !srcloc !267
  %17 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i206 = getelementptr i8, ptr %18, i32 4644
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i206) #17, !srcloc !267
  %20 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %21, i32 4648
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #17, !srcloc !267
  %23 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %24, i32 4652
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #17
  %26 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp9 = icmp eq i32 %26, 0
  br i1 %cmp9, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 2147480) #17
  %inc = add nuw nsw i32 %count.0312, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %do.body11, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

do.body11:                                        ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %28 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msg_enable, align 8
  %and12 = and i32 %29, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %do.body11.if.end17_crit_edge, label %if.then13

do.body11.if.end17_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

if.then13:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %30 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %31, ptr noundef nonnull @.str.94) #20
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %do.body11.if.end17_crit_edge, %entry.if.end17_crit_edge
  %stats_disable_count = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %stats_disable_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stats_disable_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp18 = icmp eq i32 %33, 0
  br i1 %cmp18, label %do.end30, label %if.end17.if.end36_crit_edge, !prof !265

if.end17.if.end36_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

do.end30:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1296, i32 noundef 9, ptr noundef null) #17
  br label %if.end36

if.end36:                                         ; preds = %do.end30, %if.end17.if.end36_crit_edge
  %biu_lock.i208 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call2.i209 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i208) #17
  %membase.i.i210 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %34 = ptrtoint ptr %membase.i.i210 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i.i210, align 4
  %add.ptr.i.i211 = getelementptr i8, ptr %35, i32 3200
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i211) #17, !srcloc !267
  %37 = ptrtoint ptr %membase.i.i210 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase.i.i210, align 4
  %add.ptr.i29.i212 = getelementptr i8, ptr %38, i32 3204
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i212) #17, !srcloc !267
  %40 = ptrtoint ptr %membase.i.i210 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase.i.i210, align 4
  %add.ptr.i31.i214 = getelementptr i8, ptr %41, i32 3208
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i214) #17, !srcloc !267
  %43 = ptrtoint ptr %membase.i.i210 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i.i210, align 4
  %add.ptr.i33.i216 = getelementptr i8, ptr %44, i32 3212
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i216) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i208, i32 noundef %call2.i209) #17
  %or46 = or i32 %36, -2147483648
  %call3.i219 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i208) #17
  %46 = ptrtoint ptr %membase.i.i210 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase.i.i210, align 4
  %add.ptr.i.i221 = getelementptr i8, ptr %47, i32 3200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i221, i32 %or46) #17, !srcloc !266
  %48 = ptrtoint ptr %membase.i.i210 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase.i.i210, align 4
  %add.ptr.i25.i223 = getelementptr i8, ptr %49, i32 3204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i223, i32 %39) #17, !srcloc !266
  %50 = ptrtoint ptr %membase.i.i210 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase.i.i210, align 4
  %add.ptr.i27.i225 = getelementptr i8, ptr %51, i32 3208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i225, i32 %42) #17, !srcloc !266
  %52 = ptrtoint ptr %membase.i.i210 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase.i.i210, align 4
  %add.ptr.i29.i227 = getelementptr i8, ptr %53, i32 3212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i227, i32 %45) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i208, i32 noundef %call3.i219) #17
  %call2.i229 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i208) #17
  %54 = ptrtoint ptr %membase.i.i210 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase.i.i210, align 4
  %add.ptr.i.i231 = getelementptr i8, ptr %55, i32 544
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i231) #17, !srcloc !267
  %57 = ptrtoint ptr %membase.i.i210 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %membase.i.i210, align 4
  %add.ptr.i29.i232 = getelementptr i8, ptr %58, i32 548
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i232) #17, !srcloc !267
  %60 = ptrtoint ptr %membase.i.i210 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase.i.i210, align 4
  %add.ptr.i31.i234 = getelementptr i8, ptr %61, i32 552
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i234) #17, !srcloc !267
  %63 = ptrtoint ptr %membase.i.i210 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %membase.i.i210, align 4
  %add.ptr.i33.i236 = getelementptr i8, ptr %64, i32 556
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i236) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i208, i32 noundef %call2.i229) #17
  %or103 = or i32 %56, 49153
  %call3.i239 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i208) #17
  %66 = ptrtoint ptr %membase.i.i210 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %membase.i.i210, align 4
  %add.ptr.i.i241 = getelementptr i8, ptr %67, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i241, i32 %or103) #17, !srcloc !266
  %68 = ptrtoint ptr %membase.i.i210 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %membase.i.i210, align 4
  %add.ptr.i25.i243 = getelementptr i8, ptr %69, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i243, i32 %59) #17, !srcloc !266
  %70 = ptrtoint ptr %membase.i.i210 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %membase.i.i210, align 4
  %add.ptr.i27.i245 = getelementptr i8, ptr %71, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i245, i32 %62) #17, !srcloc !266
  %72 = ptrtoint ptr %membase.i.i210 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %membase.i.i210, align 4
  %add.ptr.i29.i247 = getelementptr i8, ptr %73, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i247, i32 %65) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i208, i32 noundef %call3.i239) #17
  br label %while.cond

while.cond:                                       ; preds = %if.end176, %if.end36
  %count.1 = phi i32 [ 0, %if.end36 ], [ %inc177, %if.end176 ]
  %call2.i249 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i208) #17
  %74 = ptrtoint ptr %membase.i.i210 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %membase.i.i210, align 4
  %add.ptr.i.i251 = getelementptr i8, ptr %75, i32 544
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i251) #17, !srcloc !267
  %77 = ptrtoint ptr %membase.i.i210 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %membase.i.i210, align 4
  %add.ptr.i29.i252 = getelementptr i8, ptr %78, i32 548
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i252) #17, !srcloc !267
  %80 = ptrtoint ptr %membase.i.i210 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %membase.i.i210, align 4
  %add.ptr.i31.i254 = getelementptr i8, ptr %81, i32 552
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i254) #17, !srcloc !267
  %83 = ptrtoint ptr %membase.i.i210 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %membase.i.i210, align 4
  %add.ptr.i33.i256 = getelementptr i8, ptr %84, i32 556
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i256) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i208, i32 noundef %call2.i249) #17
  %86 = and i32 %76, 49153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %do.body141, label %if.end164

do.body141:                                       ; preds = %while.cond
  %msg_enable142 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %88 = ptrtoint ptr %msg_enable142 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %msg_enable142, align 8
  %and143 = and i32 %89, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %do.body141.while.end_crit_edge, label %do.body146

do.body141.while.end_crit_edge:                   ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

do.body146:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @falcon_reset_macs.__UNIQUE_ID_ddebug538, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@falcon_reset_macs, %if.then156)) #17
          to label %while.end [label %if.then156], !srcloc !273

if.then156:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev157 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %90 = ptrtoint ptr %net_dev157 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %net_dev157, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @falcon_reset_macs.__UNIQUE_ID_ddebug538, ptr noundef %91, ptr noundef nonnull @.str.96, i32 noundef %count.1) #17
  br label %while.end

if.end164:                                        ; preds = %while.cond
  %exitcond314 = icmp eq i32 %count.1, 21
  br i1 %exitcond314, label %do.body167, label %if.end176

do.body167:                                       ; preds = %if.end164
  %msg_enable168 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %92 = ptrtoint ptr %msg_enable168 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %msg_enable168, align 8
  %and169 = and i32 %93, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %do.body167.while.end_crit_edge, label %if.then171

do.body167.while.end_crit_edge:                   ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

if.then171:                                       ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev172 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %94 = ptrtoint ptr %net_dev172 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %net_dev172, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %95, ptr noundef nonnull @.str.97) #20
  br label %while.end

if.end176:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #19
  %inc177 = add nuw nsw i32 %count.1, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 2147480) #17
  br label %while.cond

while.end:                                        ; preds = %if.then171, %do.body167.while.end_crit_edge, %if.then156, %do.body146, %do.body141.while.end_crit_edge
  %call3.i259 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i208) #17
  %97 = ptrtoint ptr %membase.i.i210 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %membase.i.i210, align 4
  %add.ptr.i.i261 = getelementptr i8, ptr %98, i32 3200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i261, i32 %or46) #17, !srcloc !266
  %99 = ptrtoint ptr %membase.i.i210 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %membase.i.i210, align 4
  %add.ptr.i25.i263 = getelementptr i8, ptr %100, i32 3204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i263, i32 %39) #17, !srcloc !266
  %101 = ptrtoint ptr %membase.i.i210 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %membase.i.i210, align 4
  %add.ptr.i27.i265 = getelementptr i8, ptr %102, i32 3208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i265, i32 %42) #17, !srcloc !266
  %103 = ptrtoint ptr %membase.i.i210 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %membase.i.i210, align 4
  %add.ptr.i29.i267 = getelementptr i8, ptr %104, i32 3212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i267, i32 %45) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i208, i32 noundef %call3.i259) #17
  tail call fastcc void @falcon_setup_xaui(ptr noundef %efx)
  br label %cleanup

cleanup:                                          ; preds = %while.end, %for.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_link_status_changed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @falcon_xmac_link_ok_retry(ptr noundef %efx, i32 noundef %tries) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @falcon_xmac_link_ok(ptr noundef %efx)
  %loopback_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %0 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %loopback_mode, align 4
  %shl = shl nuw i32 1, %1
  %conv39 = zext i32 %shl to i64
  %loopback_modes = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 89
  %2 = ptrtoint ptr %loopback_modes to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %loopback_modes, align 8
  %and1 = and i64 %3, 67108864
  %and2 = and i64 %and1, %conv39
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2)
  %tobool.not = icmp eq i64 %and2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %phy_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 79
  %4 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_mode, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %tobool.i = icmp ugt i32 %5, 1
  br i1 %tobool.i, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @falcon_stop_nic_stats(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tries)
  %tobool8.not41 = icmp eq i32 %tries, 0
  %or.cond42 = or i1 %call, %tobool8.not41
  br i1 %or.cond42, label %if.end.while.end_crit_edge, label %do.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

do.body.lr.ph:                                    ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  br label %do.body

do.body:                                          ; preds = %do.end22.do.body_crit_edge, %do.body.lr.ph
  %tries.addr.043 = phi i32 [ %tries, %do.body.lr.ph ], [ %dec, %do.end22.do.body_crit_edge ]
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 8
  %and9 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body.do.end22_crit_edge, label %do.body12

do.body.do.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end22

do.body12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @falcon_xmac_link_ok_retry.__UNIQUE_ID_ddebug537, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@falcon_xmac_link_ok_retry, %if.then18)) #17
          to label %do.end22 [label %if.then18], !srcloc !273

if.then18:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @falcon_xmac_link_ok_retry.__UNIQUE_ID_ddebug537, ptr noundef %9, ptr noundef nonnull @.str.99) #17
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %do.body12, %do.body.do.end22_crit_edge
  %call23 = tail call i32 @falcon_reset_xaui(ptr noundef %efx)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 42949600) #17
  %call24 = tail call fastcc zeroext i1 @falcon_xmac_link_ok(ptr noundef %efx)
  %dec = add i32 %tries.addr.043, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool8.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %call24, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %do.end22.while.end_crit_edge, label %do.end22.do.body_crit_edge

do.end22.do.body_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.end22.while.end_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %do.end22.while.end_crit_edge, %if.end.while.end_crit_edge
  %mac_up.0.in.lcssa = phi i1 [ %call, %if.end.while.end_crit_edge ], [ %call24, %do.end22.while.end_crit_edge ]
  %nic_data1.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %11 = ptrtoint ptr %nic_data1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nic_data1.i, align 4
  %stats_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 105
  tail call void @_raw_spin_lock_bh(ptr noundef %stats_lock.i) #17
  %stats_disable_count.i = getelementptr inbounds %struct.falcon_nic_data, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %stats_disable_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stats_disable_count.i, align 8
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %stats_disable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %while.end.falcon_start_nic_stats.exit_crit_edge

while.end.falcon_start_nic_stats.exit_crit_edge:  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %falcon_start_nic_stats.exit

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @falcon_stats_request(ptr noundef %efx) #17
  br label %falcon_start_nic_stats.exit

falcon_start_nic_stats.exit:                      ; preds = %if.then.i, %while.end.falcon_start_nic_stats.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock.i) #17
  br label %cleanup

cleanup:                                          ; preds = %falcon_start_nic_stats.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %mac_up.0.in.lcssa, %falcon_start_nic_stats.exit ], [ %call, %lor.lhs.false.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @falcon_xmac_link_ok(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %loopback_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %0 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %loopback_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %entry.land.rhs_crit_edge, label %lor.lhs.false

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs

lor.lhs.false:                                    ; preds = %entry
  %biu_lock.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %membase.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %2 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 4960
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #17, !srcloc !267
  %5 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %6, i32 4964
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i.i) #17, !srcloc !267
  %8 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i31.i.i = getelementptr i8, ptr %9, i32 4968
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i.i) #17, !srcloc !267
  %11 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i33.i.i = getelementptr i8, ptr %12, i32 4972
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call2.i.i) #17
  %14 = and i32 %4, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 7936, i32 %14)
  %15 = icmp eq i32 %14, 7936
  %or48.i = or i32 %4, -1048576
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #17
  %16 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i68.i = getelementptr i8, ptr %17, i32 4960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i68.i, i32 %or48.i) #17, !srcloc !266
  %18 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %19, i32 4964
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 %7) #17, !srcloc !266
  %20 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %21, i32 4968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 %10) #17, !srcloc !266
  %22 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i70.i = getelementptr i8, ptr %23, i32 4972
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i70.i, i32 %13) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #17
  br i1 %15, label %lor.lhs.false.land.rhs_crit_edge, label %lor.lhs.false.land.end_crit_edge

lor.lhs.false.land.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.end

lor.lhs.false.land.rhs_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %mmds = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 1
  %24 = ptrtoint ptr %mmds to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mmds, align 4
  %and = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.land.end_crit_edge, label %lor.lhs.false1

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.end

lor.lhs.false1:                                   ; preds = %land.rhs
  %26 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %loopback_mode, align 4
  %shl = shl nuw i32 1, %27
  %and3 = and i32 %shl, 66600958
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %lor.rhs, label %lor.lhs.false1.land.end_crit_edge

lor.lhs.false1.land.end_crit_edge:                ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.end

lor.rhs:                                          ; preds = %lor.lhs.false1
  %mdio.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %mdio_read.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 4
  %net_dev.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %28 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mdio_read.i.i, align 8
  %30 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net_dev.i.i, align 4
  %32 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mdio.i.i, align 8
  %call.i.i = tail call i32 %29(ptr noundef %31, i32 noundef %33, i32 noundef 4, i16 noundef zeroext 24) #17
  %34 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mdio_read.i.i, align 8
  %36 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net_dev.i.i, align 4
  %38 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mdio.i.i, align 8
  %call.i.1.i = tail call i32 %35(ptr noundef %37, i32 noundef %39, i32 noundef 4, i16 noundef zeroext 24) #17
  %and.i = and i32 %call.i.1.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body.i, label %lor.rhs.land.end_crit_edge

lor.rhs.land.end_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.end

do.body.i:                                        ; preds = %lor.rhs
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %40 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msg_enable.i, align 8
  %and3.i = and i32 %41, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %do.body.i.land.end_crit_edge, label %do.body6.i

do.body.i.land.end_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.end

do.body6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_mdio_phyxgxs_lane_sync.__UNIQUE_ID_ddebug522, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@falcon_xmac_link_ok, %if.then13.i)) #17
          to label %land.end [label %if.then13.i], !srcloc !273

if.then13.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #19
  %42 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net_dev.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_mdio_phyxgxs_lane_sync.__UNIQUE_ID_ddebug522, ptr noundef %43, ptr noundef nonnull @.str.102, i32 noundef %call.i.1.i) #17
  br label %land.end

land.end:                                         ; preds = %if.then13.i, %do.body6.i, %do.body.i.land.end_crit_edge, %lor.rhs.land.end_crit_edge, %lor.lhs.false1.land.end_crit_edge, %land.rhs.land.end_crit_edge, %lor.lhs.false.land.end_crit_edge
  %44 = phi i1 [ false, %lor.lhs.false.land.end_crit_edge ], [ true, %lor.lhs.false1.land.end_crit_edge ], [ true, %land.rhs.land.end_crit_edge ], [ true, %lor.rhs.land.end_crit_edge ], [ false, %do.body.i.land.end_crit_edge ], [ false, %do.body6.i ], [ false, %if.then13.i ]
  ret i1 %44
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @falcon_mdio_read(ptr noundef %net_dev, i32 noundef %prtad, i32 noundef %devad, i16 noundef zeroext %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %nic_data1 = getelementptr i8, ptr %net_dev, i32 4428
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 4
  %mdio_lock = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 0) #17
  %call2 = tail call fastcc i32 @falcon_gmii_wait(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

do.body:                                          ; preds = %entry
  %conv = zext i16 %addr to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %biu_lock.i = getelementptr i8, ptr %net_dev, i32 5092
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %membase.i.i = getelementptr i8, ptr %net_dev, i32 2428
  %3 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 3120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #17, !srcloc !266
  %5 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %6, i32 3124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 0) #17, !srcloc !266
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %8, i32 3128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #17, !srcloc !266
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %10, i32 3132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #17
  %shl = shl i32 %prtad, 11
  %shl11 = shl i32 %devad, 6
  %or1380 = or i32 %shl11, %shl
  %11 = tail call i32 @llvm.bswap.i32(i32 %or1380)
  %call3.i82 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %12 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i84 = getelementptr i8, ptr %13, i32 3136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i84, i32 %11) #17, !srcloc !266
  %14 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i86 = getelementptr i8, ptr %15, i32 3140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i86, i32 0) #17, !srcloc !266
  %16 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i88 = getelementptr i8, ptr %17, i32 3144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i88, i32 0) #17, !srcloc !266
  %18 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i90 = getelementptr i8, ptr %19, i32 3148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i90, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i82) #17
  %call3.i92 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %20 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i94 = getelementptr i8, ptr %21, i32 3104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i94, i32 33554432) #17, !srcloc !266
  %22 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i96 = getelementptr i8, ptr %23, i32 3108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i96, i32 0) #17, !srcloc !266
  %24 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i98 = getelementptr i8, ptr %25, i32 3112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i98, i32 0) #17, !srcloc !266
  %26 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i100 = getelementptr i8, ptr %27, i32 3116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i100, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i92) #17
  %call28 = tail call fastcc i32 @falcon_gmii_wait(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp = icmp eq i32 %call28, 0
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %28 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i.i, align 4
  br i1 %cmp, label %if.then30, label %do.body36

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i.i103 = getelementptr i8, ptr %29, i32 3088
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i103) #17, !srcloc !267
  %31 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i104 = getelementptr i8, ptr %32, i32 3092
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i104) #17, !srcloc !267
  %34 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %35, i32 3096
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #17, !srcloc !267
  %37 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %38, i32 3100
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #17
  %40 = and i32 %30, -65536
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  br label %out

do.body36:                                        ; preds = %do.body
  %add.ptr.i.i109 = getelementptr i8, ptr %29, i32 3104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i109, i32 268435456) #17, !srcloc !266
  %42 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i111 = getelementptr i8, ptr %43, i32 3108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i111, i32 0) #17, !srcloc !266
  %44 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i113 = getelementptr i8, ptr %45, i32 3112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i113, i32 0) #17, !srcloc !266
  %46 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i115 = getelementptr i8, ptr %47, i32 3116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i115, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #17
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2456
  %48 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %msg_enable, align 8
  %and44 = and i32 %49, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body36.out_crit_edge, label %do.body47

do.body36.out_crit_edge:                          ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

do.body47:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @falcon_mdio_read.__UNIQUE_ID_ddebug540, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@falcon_mdio_read, %if.then53)) #17
          to label %out [label %if.then53], !srcloc !273

if.then53:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev54 = getelementptr i8, ptr %net_dev, i32 4572
  %50 = ptrtoint ptr %net_dev54 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net_dev54, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @falcon_mdio_read.__UNIQUE_ID_ddebug540, ptr noundef %51, ptr noundef nonnull @.str.108, i32 noundef %prtad, i32 noundef %devad, i32 noundef %conv, i32 noundef %call28) #17
  br label %out

out:                                              ; preds = %if.then53, %do.body47, %do.body36.out_crit_edge, %if.then30, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call2, %entry.out_crit_edge ], [ %41, %if.then30 ], [ %call28, %if.then53 ], [ %call28, %do.body36.out_crit_edge ], [ %call28, %do.body47 ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock) #17
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @falcon_mdio_write(ptr noundef %net_dev, i32 noundef %prtad, i32 noundef %devad, i16 noundef zeroext %addr, i16 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %nic_data1 = getelementptr i8, ptr %net_dev, i32 4428
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 4
  %mdio_lock = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 0) #17
  %call2 = tail call fastcc i32 @falcon_gmii_wait(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

do.body:                                          ; preds = %entry
  %conv = zext i16 %addr to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %biu_lock.i = getelementptr i8, ptr %net_dev, i32 5092
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %membase.i.i = getelementptr i8, ptr %net_dev, i32 2428
  %3 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 3120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #17, !srcloc !266
  %5 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %6, i32 3124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 0) #17, !srcloc !266
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %8, i32 3128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #17, !srcloc !266
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %10, i32 3132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #17
  %shl = shl i32 %prtad, 11
  %shl11 = shl i32 %devad, 6
  %or1362 = or i32 %shl11, %shl
  %11 = tail call i32 @llvm.bswap.i32(i32 %or1362)
  %call3.i64 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %12 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i66 = getelementptr i8, ptr %13, i32 3136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i66, i32 %11) #17, !srcloc !266
  %14 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i68 = getelementptr i8, ptr %15, i32 3140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i68, i32 0) #17, !srcloc !266
  %16 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i70 = getelementptr i8, ptr %17, i32 3144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i70, i32 0) #17, !srcloc !266
  %18 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i72 = getelementptr i8, ptr %19, i32 3148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i72, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i64) #17
  %conv22 = zext i16 %value to i32
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv22)
  %call3.i74 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %21 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i76 = getelementptr i8, ptr %22, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i76, i32 %20) #17, !srcloc !266
  %23 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i78 = getelementptr i8, ptr %24, i32 3076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i78, i32 0) #17, !srcloc !266
  %25 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i80 = getelementptr i8, ptr %26, i32 3080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i80, i32 0) #17, !srcloc !266
  %27 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i82 = getelementptr i8, ptr %28, i32 3084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i82, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i74) #17
  %call3.i84 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %29 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i86 = getelementptr i8, ptr %30, i32 3104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i86, i32 16777216) #17, !srcloc !266
  %31 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i88 = getelementptr i8, ptr %32, i32 3108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i88, i32 0) #17, !srcloc !266
  %33 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i90 = getelementptr i8, ptr %34, i32 3112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i90, i32 0) #17, !srcloc !266
  %35 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i92 = getelementptr i8, ptr %36, i32 3116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i92, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i84) #17
  %call40 = tail call fastcc i32 @falcon_gmii_wait(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %do.body.out_crit_edge, label %do.body43

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

do.body43:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %call3.i94 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %37 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i96 = getelementptr i8, ptr %38, i32 3104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i96, i32 268435456) #17, !srcloc !266
  %39 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i98 = getelementptr i8, ptr %40, i32 3108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i98, i32 0) #17, !srcloc !266
  %41 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i100 = getelementptr i8, ptr %42, i32 3112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i100, i32 0) #17, !srcloc !266
  %43 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i102 = getelementptr i8, ptr %44, i32 3116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i102, i32 0) #17, !srcloc !266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i94) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 2147480) #17
  br label %out

out:                                              ; preds = %do.body43, %do.body.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call2, %entry.out_crit_edge ], [ %call40, %do.body43 ], [ 0, %do.body.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock) #17
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @falcon_gmii_wait(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end25.for.body_crit_edge, %entry
  %count.045 = phi i32 [ 0, %entry ], [ %inc, %if.end25.for.body_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #17
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 3152
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !267
  %3 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %4, i32 3156
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #17, !srcloc !267
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %7, i32 3160
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #17, !srcloc !267
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %10, i32 3164
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #17
  %12 = tail call i32 @llvm.bswap.i32(i32 %2)
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %if.then, label %if.end25

if.then:                                          ; preds = %for.body
  %13 = and i32 %12, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body:                                          ; preds = %if.then
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable, align 8
  %and18 = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool.not = icmp eq i32 %and18, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then19

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %17 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net_dev, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %11)
  %20 = tail call i32 @llvm.bswap.i32(i32 %8)
  %21 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.109, i32 noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef %12) #20
  br label %cleanup

if.end25:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 2147480) #17
  %inc = add nuw nsw i32 %count.045, 1
  %exitcond.not = icmp eq i32 %inc, 5000
  br i1 %exitcond.not, label %do.body26, label %if.end25.for.body_crit_edge

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

do.body26:                                        ; preds = %if.end25
  %msg_enable27 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %23 = ptrtoint ptr %msg_enable27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable27, align 8
  %and28 = and i32 %24, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body26.cleanup_crit_edge, label %if.then30

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then30:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev31 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %25 = ptrtoint ptr %net_dev31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net_dev31, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %26, ptr noundef nonnull @.str.110) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.body26.cleanup_crit_edge, %if.then19, %do.body.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then19 ], [ -5, %do.body.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ -110, %if.then30 ], [ -110, %do.body26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_schedule_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_nic_describe_stats(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_update_sw_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_usecs_to_ticks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_farch_filter_sync_rx_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_farch_fatal_interrupt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_mtd_add(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @falcon_spi_slow_wait(ptr noundef %part, i1 noundef zeroext %uninterruptible) #0 align 64 {
entry:
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr inbounds %struct.falcon_mtd_partition, ptr %part, i32 0, i32 1
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 8
  %priv = getelementptr inbounds %struct.ef4_mtd_partition, ptr %part, i32 0, i32 1, i32 54
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #17
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %status, align 1, !annotation !278
  %cond = select i1 %uninterruptible, i32 2, i32 1
  br label %__here

for.cond:                                         ; preds = %signal_pending.exit
  %inc = add nuw nsw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc, 40
  br i1 %exitcond.not, label %do.end76, label %for.cond.__here_crit_edge

for.cond.__here_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %for.cond.__here_crit_edge, %entry
  %i.095 = phi i32 [ 0, %entry ], [ %inc, %for.cond.__here_crit_edge ]
  %5 = call i32 @llvm.read_register.i32(metadata !255) #17
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 212
  %9 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 ptrtoint (ptr blockaddress(@falcon_spi_slow_wait, %__here) to i32), ptr %task_state_change, align 4
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %cond, ptr %10, align 128
  %call59 = call i32 @schedule_timeout(i32 noundef 10) #17
  %call60 = call fastcc i32 @falcon_spi_cmd(ptr noundef %3, ptr noundef %1, i32 noundef 5, i32 noundef -1, ptr noundef null, ptr noundef nonnull %status, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %__here.cleanup_crit_edge

__here.cleanup_crit_edge:                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end63:                                         ; preds = %__here
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %status, align 1
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool65.not = icmp eq i8 %14, 0
  br i1 %tobool65.not, label %if.end63.cleanup_crit_edge, label %if.end67

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end67:                                         ; preds = %if.end63
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stack.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %21 = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end67.cleanup_crit_edge, !prof !269

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

signal_pending.exit:                              ; preds = %if.end67
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %18, align 4
  %and1.i.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool71.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool71.not, label %for.cond, label %signal_pending.exit.cleanup_crit_edge

signal_pending.exit.cleanup_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end76:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.ef4_mtd_partition, ptr %part, i32 0, i32 4
  %dev_type_name = getelementptr inbounds %struct.ef4_mtd_partition, ptr %part, i32 0, i32 2
  %24 = ptrtoint ptr %dev_type_name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_type_name, align 8
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef %name, ptr noundef %25) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end76, %signal_pending.exit.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %__here.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end76 ], [ -4, %if.end67.cleanup_crit_edge ], [ -4, %signal_pending.exit.cleanup_crit_edge ], [ 0, %if.end63.cleanup_crit_edge ], [ %call60, %__here.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @falcon_spi_wait_write(ptr noundef %efx, ptr nocapture noundef readonly %spi) unnamed_addr #0 align 64 {
entry:
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #17
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %status, align 1, !annotation !278
  %call20 = call fastcc i32 @falcon_spi_cmd(ptr noundef %efx, ptr noundef %spi, i32 noundef 5, i32 noundef -1, ptr noundef null, ptr noundef nonnull %status, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not21 = icmp eq i32 %call20, 0
  br i1 %tobool.not21, label %if.end.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %add1.neg = sub i32 -2, %0
  br label %if.end

if.end:                                           ; preds = %if.end12.if.end_crit_edge, %if.end.lr.ph
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add1.neg, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %do.body, label %if.end12

do.body:                                          ; preds = %if.end4
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 8
  %and7 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body.cleanup_crit_edge, label %if.then9

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  %10 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %spi, align 4
  %conv10 = zext i8 %3 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.116, i32 noundef %11, i32 noundef %conv10) #20
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %call13 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #17
  %call = call fastcc i32 @falcon_spi_cmd(ptr noundef %efx, ptr noundef %spi, i32 noundef 5, i32 noundef -1, ptr noundef null, ptr noundef nonnull %status, i32 noundef 1)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end12.if.end_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end12.if.end_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

cleanup:                                          ; preds = %if.end12.cleanup_crit_edge, %if.then9, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then9 ], [ -110, %do.body.cleanup_crit_edge ], [ %call20, %entry.cleanup_crit_edge ], [ %call, %if.end12.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_reset_down(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_farch_test_registers(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_reset_up(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_farch_rx_push_indir_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind readonly }
attributes #14 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !127, !128, !129, !131, !133, !135, !137, !138, !140, !141, !142, !143, !145, !147, !149, !150, !152, !153, !155, !157, !158, !160, !161, !162, !163, !164, !166, !167, !169, !170, !172, !173, !174, !176, !178, !180, !182, !184, !186, !188, !189, !190, !192, !193, !195, !197, !198, !199, !201, !203, !204, !205, !207, !209, !210, !211, !213, !214, !215, !216, !218, !220, !221, !223, !224, !225, !227, !228, !229, !231, !233, !235, !237, !238, !240, !242, !244, !246, !248, !250, !251, !252, !253}
!llvm.named.register.sp = !{!255}
!llvm.module.flags = !{!256, !257, !258, !259, !260, !261, !262, !263}
!llvm.ident = !{!264}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 1020, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 1036, i32 2}
!4 = !{ptr @falcon_a1_nic_type, !5, !"falcon_a1_nic_type", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2708, i32 27}
!6 = !{ptr @falcon_b0_nic_type, !7, !"falcon_b0_nic_type", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2805, i32 27}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 1449, i32 3}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 196, i32 2}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 195, i32 2}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 148, i32 2}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 149, i32 2}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 150, i32 2}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 151, i32 2}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 152, i32 2}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 153, i32 2}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 154, i32 2}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 155, i32 2}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 156, i32 2}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 157, i32 2}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 158, i32 2}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 159, i32 2}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 160, i32 2}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 161, i32 2}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 162, i32 2}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 163, i32 2}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 164, i32 2}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 165, i32 2}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 166, i32 2}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 167, i32 2}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 168, i32 2}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 169, i32 2}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 170, i32 2}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 171, i32 2}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 172, i32 2}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 173, i32 2}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 174, i32 2}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 175, i32 2}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 176, i32 2}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 177, i32 2}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 178, i32 2}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 179, i32 2}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 180, i32 2}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 181, i32 2}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 182, i32 2}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 183, i32 2}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 184, i32 2}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 185, i32 2}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 186, i32 2}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 187, i32 2}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 188, i32 2}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 189, i32 2}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 190, i32 2}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 191, i32 2}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 192, i32 2}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 193, i32 2}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 194, i32 2}
!108 = !{ptr @falcon_stat_desc, !109, !"falcon_stat_desc", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 147, i32 38}
!110 = !{ptr @falcon_stat_mask, !111, !"falcon_stat_mask", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 198, i32 28}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2301, i32 3}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2312, i32 4}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2318, i32 4}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2323, i32 4}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2339, i32 4}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2349, i32 3}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2360, i32 2}
!126 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @falcon_probe_nic.__UNIQUE_ID_ddebug551, !125, !"__UNIQUE_ID_ddebug551", i1 false, i1 false}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2372, i32 4}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2390, i32 32}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2398, i32 3}
!135 = !{ptr @falcon_probe_nic.__key, !136, !"__key", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2404, i32 2}
!137 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 1983, i32 2}
!140 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @__falcon_reset_hw.__UNIQUE_ID_ddebug542, !139, !"__UNIQUE_ID_ddebug542", i1 false, i1 false}
!142 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 1990, i32 4}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 1998, i32 5}
!147 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2026, i32 2}
!149 = !{ptr @__falcon_reset_hw.__UNIQUE_ID_ddebug543, !148, !"__UNIQUE_ID_ddebug543", i1 false, i1 false}
!150 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2034, i32 3}
!152 = !{ptr @__falcon_reset_hw.__UNIQUE_ID_ddebug544, !151, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!153 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2042, i32 3}
!155 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2046, i32 2}
!157 = !{ptr @__falcon_reset_hw.__UNIQUE_ID_ddebug545, !156, !"__UNIQUE_ID_ddebug545", i1 false, i1 false}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2239, i32 3}
!160 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @falcon_probe_spi_devices.__UNIQUE_ID_ddebug549, !159, !"__UNIQUE_ID_ddebug549", i1 false, i1 false}
!162 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2246, i32 3}
!166 = !{ptr @falcon_probe_spi_devices.__UNIQUE_ID_ddebug550, !165, !"__UNIQUE_ID_ddebug550", i1 false, i1 false}
!167 = !{ptr @falcon_probe_spi_devices.__key, !168, !"__key", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2257, i32 2}
!169 = !{ptr @.str.79, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2208, i32 2}
!172 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @falcon_probe_nvconfig.__UNIQUE_ID_ddebug548, !171, !"__UNIQUE_ID_ddebug548", i1 false, i1 false}
!174 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 1807, i32 3}
!176 = !{ptr @.str.83, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 1819, i32 3}
!178 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 1824, i32 3}
!180 = !{ptr @.str.85, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 1838, i32 3}
!182 = !{ptr @.str.86, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 543, i32 4}
!184 = !{ptr @falcon_i2c_bit_operations, !185, !"falcon_i2c_bit_operations", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 364, i32 39}
!186 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2131, i32 3}
!188 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @falcon_reset_sram.__UNIQUE_ID_ddebug546, !187, !"__UNIQUE_ID_ddebug546", i1 false, i1 false}
!190 = !{ptr @.str.89, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2140, i32 4}
!192 = !{ptr @falcon_reset_sram.__UNIQUE_ID_ddebug547, !191, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!193 = !{ptr @.str.90, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2147, i32 2}
!195 = !{ptr @.str.91, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 2079, i32 3}
!197 = !{ptr @.str.92, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.93, !196, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.94, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 1291, i32 3}
!201 = !{ptr @.str.95, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 1314, i32 4}
!203 = !{ptr @.str.96, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @falcon_reset_macs.__UNIQUE_ID_ddebug538, !202, !"__UNIQUE_ID_ddebug538", i1 false, i1 false}
!205 = !{ptr @.str.97, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 1320, i32 4}
!207 = !{ptr @.str.98, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 1206, i32 3}
!209 = !{ptr @.str.99, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @falcon_xmac_link_ok_retry.__UNIQUE_ID_ddebug537, !208, !"__UNIQUE_ID_ddebug537", i1 false, i1 false}
!211 = !{ptr @.str.100, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/sfc/falcon/mdio_10g.h", i32 51, i32 3}
!213 = !{ptr @.str.101, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.102, !212, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @ef4_mdio_phyxgxs_lane_sync.__UNIQUE_ID_ddebug522, !212, !"__UNIQUE_ID_ddebug522", i1 false, i1 false}
!216 = !{ptr @.str.103, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 1694, i32 3}
!218 = !{ptr @falcon_probe_port.__key, !219, !"__key", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 1700, i32 2}
!220 = !{ptr @.str.104, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.105, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 1724, i32 2}
!223 = !{ptr @.str.106, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @falcon_probe_port.__UNIQUE_ID_ddebug541, !222, !"__UNIQUE_ID_ddebug541", i1 false, i1 false}
!225 = !{ptr @.str.107, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 1666, i32 3}
!227 = !{ptr @.str.108, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @falcon_mdio_read.__UNIQUE_ID_ddebug540, !226, !"__UNIQUE_ID_ddebug540", i1 false, i1 false}
!229 = !{ptr @.str.109, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 1557, i32 5}
!231 = !{ptr @.str.110, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 1567, i32 2}
!233 = !{ptr @.str.111, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 1761, i32 3}
!235 = distinct !{null, !236, !"__already_done", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 929, i32 2}
!237 = !{ptr @.str.112, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.113, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 942, i32 37}
!240 = !{ptr @.str.114, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 955, i32 37}
!242 = !{ptr @.str.115, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 855, i32 43}
!244 = !{ptr @.str.116, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 680, i32 4}
!246 = distinct !{null, !247, !"__already_done", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 749, i32 3}
!248 = !{ptr @.str.117, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 761, i32 2}
!250 = !{ptr @.str.118, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @falcon_spi_slow_wait._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @falcon_spi_slow_wait._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @falcon_b0_register_tests, !254, !"falcon_b0_register_tests", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/sfc/falcon/falcon.c", i32 1857, i32 45}
!255 = !{!"sp"}
!256 = !{i32 1, !"wchar_size", i32 2}
!257 = !{i32 1, !"min_enum_size", i32 4}
!258 = !{i32 8, !"branch-target-enforcement", i32 0}
!259 = !{i32 8, !"sign-return-address", i32 0}
!260 = !{i32 8, !"sign-return-address-all", i32 0}
!261 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!262 = !{i32 7, !"uwtable", i32 1}
!263 = !{i32 7, !"frame-pointer", i32 2}
!264 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!265 = !{!"branch_weights", i32 1, i32 2000}
!266 = !{i64 5072330}
!267 = !{i64 5072748}
!268 = !{i8 0, i8 2}
!269 = !{!"branch_weights", i32 2000, i32 1}
!270 = !{i64 2161392162}
!271 = !{i64 2161488672}
!272 = !{i64 2162885304, i64 2162885810, i64 2162885341, i64 2162885397, i64 2162885431, i64 2162885455, i64 2162885496, i64 2162885517, i64 2162885545, i64 2162885579}
!273 = !{i64 2148841363, i64 2148841368, i64 2148841381, i64 2148841425, i64 2148841459, i64 2148841480}
!274 = !{i64 2162605126, i64 2162605632, i64 2162605163, i64 2162605219, i64 2162605253, i64 2162605277, i64 2162605318, i64 2162605339, i64 2162605367, i64 2162605401}
!275 = !{i64 2148247252, i64 2148247278, i64 2148247307, i64 2148247341, i64 2148247372, i64 2148247395}
!276 = !{i64 2163576658}
!277 = !{i64 2159579010}
!278 = !{!"auto-init"}
!279 = !{i32 0, i32 33}
