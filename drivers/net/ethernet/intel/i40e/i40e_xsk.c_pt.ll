; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/i40e/i40e_xsk.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/i40e/i40e_xsk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.175 }
%struct.atomic_t = type { i32 }
%union.anon.175 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.i40e_ring = type { ptr, ptr, ptr, ptr, ptr, %union.anon.201, [1 x i32], i16, i8, ptr, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, %struct.i40e_queue_stats, %struct.u64_stats_sync, %union.anon.203, i32, i32, ptr, ptr, %struct.callback_head, i16, ptr, ptr, i16, [58 x i8], %struct.xdp_rxq_info, ptr, ptr, [120 x i8] }
%union.anon.201 = type { ptr }
%struct.i40e_queue_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.203 = type { %struct.i40e_tx_queue_stats }
%struct.i40e_tx_queue_stats = type { i64, i64, i64, i64, i64, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.i40e_vsi = type { ptr, [128 x i32], i8, i8, i32, [1 x i32], i32, %struct.spinlock, [256 x %struct.hlist_head], i8, %struct.rtnl_link_stats64, %struct.rtnl_link_stats64, %struct.i40e_eth_stats, %struct.i40e_eth_stats, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, ptr, ptr, i16, i16, ptr, ptr, i32, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, %struct.tc_mqprio_qopt_offload, %struct.i40e_tc_configuration, %struct.i40e_aqc_vsi_properties_data, i16, i8, [8 x i8], [8 x i16], [8 x i8], ptr, i16, i16, ptr, i8, i32, i16, i16, i16, i8, i16, %struct.list_head, [8 x i16], [4 x i32], %struct.list_head, i32, ptr, ptr, ptr, [88 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.i40e_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.i40e_tc_configuration = type { i8, i8, [8 x %struct.i40e_tc_info] }
%struct.i40e_tc_info = type { i16, i16, i8 }
%struct.i40e_aqc_vsi_properties_data = type { i16, i16, [2 x i8], i8, i8, i16, i16, i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, [3 x i8], i8, i8, i32, [8 x i8], [8 x i16], i16, i16, [12 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.179, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.200, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.179 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.200 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.204, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.204 = type { ptr }
%struct.xsk_buff_pool = type { ptr, ptr, %struct.list_head, %struct.spinlock, %struct.refcount_struct, ptr, %struct.work_struct, %struct.list_head, i32, i16, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, %struct.spinlock, [0 x ptr], [16 x i8] }
%struct.xdp_umem = type { ptr, i64, i32, i32, i32, i32, ptr, %struct.refcount_struct, i8, i8, ptr, i32, %struct.list_head, %struct.work_struct }
%union.i40e_16byte_rx_desc = type { %struct.anon.217 }
%struct.anon.217 = type { i64, i64 }
%struct.xdp_buff_xsk = type { %struct.xdp_buff, i32, i32, ptr, i64, %struct.list_head }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.anon.218 = type { %struct.i40e_16b_rx_wb_qw0, %struct.anon.222 }
%struct.i40e_16b_rx_wb_qw0 = type { %struct.anon.219, %union.anon.221 }
%struct.anon.219 = type { %union.anon.220, i16 }
%union.anon.220 = type { i16 }
%union.anon.221 = type { i32 }
%struct.anon.222 = type { i64 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.i40e_q_vector = type { ptr, i16, i16, %struct.napi_struct, %struct.i40e_ring_container, %struct.i40e_ring_container, i8, i8, %struct.cpumask, %struct.irq_affinity_notify, %struct.callback_head, [32 x i8], i8, [123 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.i40e_ring_container = type { ptr, i32, i32, i32, i16, i16, i16 }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, ptr, ptr }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.113 }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { %struct.anon.115, [0 x %struct.sock_filter] }
%struct.anon.115 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.i40e_tx_desc = type { i64, i64 }
%struct.i40e_tx_buffer = type { ptr, %union.anon.202, i32, i16, i32, i32, i32 }
%union.anon.202 = type { ptr }
%struct.xdp_desc = type { i64, i32, i32 }
%struct.i40e_pf = type { ptr, %struct.i40e_hw, [2 x i32], ptr, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i8, i8, %struct.hlist_head, i16, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.list_head, %struct.list_head, %struct.udp_tunnel_nic_shared, %struct.udp_tunnel_nic_info, %struct.hlist_head, i16, i32, i16, i16, i32, [32 x i8], i16, i32, i32, %struct.timer_list, %struct.work_struct, i32, i32, ptr, i8, %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, %struct.mutex, i16, i16, i16, ptr, [16 x ptr], ptr, ptr, i16, i16, i16, ptr, ptr, i8, i16, ptr, i32, i32, i32, i16, %struct.i40e_filter_control_settings, %struct.i40e_rx_pb_config, %struct.i40e_dcbx_config, ptr, %struct.ptp_clock_info, ptr, i32, %struct.hwtstamp_config, %struct.timespec64, %struct.work_struct, %struct.work_struct, %struct.work_struct, i64, %struct.mutex, i32, i32, i32, i32, i32, i64, i32, %struct.spinlock, [3 x %struct.ptp_pin_desc], [4 x i32], i8, i8, ptr, i16, i32, i32, i32, i32, i16, i16, i16, i16, %struct.list_head }
%struct.i40e_hw = type { ptr, ptr, %struct.i40e_phy_info, %struct.i40e_mac_info, %struct.i40e_bus_info, %struct.i40e_nvm_info, %struct.i40e_fc_info, i16, i16, i16, i16, i8, i8, i8, %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities, i16, i8, i16, i16, i16, i16, i16, %struct.i40e_adminq_info, i32, %struct.i40e_aq_desc, %struct.i40e_aq_desc, %struct.i40e_virt_mem, i8, i16, %struct.i40e_hmc_info, i16, %struct.i40e_dcbx_config, %struct.i40e_dcbx_config, %struct.i40e_dcbx_config, i64, i16, i16, i16, i32, [16 x i8] }
%struct.i40e_phy_info = type { %struct.i40e_link_status, %struct.i40e_link_status, i8, i32, i64 }
%struct.i40e_link_status = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, [3 x i8] }
%struct.i40e_mac_info = type { i32, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.i40e_bus_info = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.i40e_nvm_info = type { i64, i32, i16, i8, i16, i32, i32 }
%struct.i40e_fc_info = type { i32, i32 }
%struct.i40e_hw_capabilities = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, [30 x i8], [30 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i64 }
%struct.i40e_adminq_info = type { %struct.i40e_adminq_ring, %struct.i40e_adminq_ring, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, %struct.mutex, %struct.mutex, i32, i32 }
%struct.i40e_adminq_ring = type { %struct.i40e_virt_mem, %struct.i40e_dma_mem, %struct.i40e_virt_mem, %union.anon.205, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.i40e_dma_mem = type { ptr, i32, i32 }
%union.anon.205 = type { ptr }
%struct.i40e_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.206 }
%union.anon.206 = type { %struct.anon.207 }
%struct.anon.207 = type { i32, i32, i32, i32 }
%struct.i40e_virt_mem = type { ptr, i32 }
%struct.i40e_hmc_info = type { i32, i8, i16, ptr, %struct.i40e_virt_mem, %struct.i40e_hmc_sd_table }
%struct.i40e_hmc_sd_table = type { %struct.i40e_virt_mem, i32, i32, ptr }
%struct.udp_tunnel_nic_shared = type { ptr, %struct.list_head }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.i40e_hw_port_stats = type { %struct.i40e_eth_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], i64, i64, [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64 }
%struct.i40e_filter_control_settings = type { i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.i40e_rx_pb_config = type { i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32] }
%struct.i40e_dcbx_config = type { i8, i8, i32, i32, %struct.i40e_dcb_ets_config, %struct.i40e_dcb_ets_config, %struct.i40e_dcb_pfc_config, [32 x %struct.i40e_dcb_app_priority_table] }
%struct.i40e_dcb_ets_config = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8] }
%struct.i40e_dcb_pfc_config = type { i8, i8, i8, i8 }
%struct.i40e_dcb_app_priority_table = type { i8, i8, i16 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@bpf_master_redirect_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xdp_exception = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/xdp.h\00", [37 x i8] zeroinitializer }, align 32
@trace_xdp_exception.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@i40e_handle_xdp_result_zc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/intel/i40e/i40e_xsk.c\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.6 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.8 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 613, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 271, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [30 x i8] c"../include/trace/events/xdp.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 28, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 108, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [46 x i8] c"../drivers/net/ethernet/intel/i40e/i40e_xsk.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 314, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_alloc_rx_bi_zc(ptr nocapture noundef %rx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 11
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %count, align 2
  %conv = zext i16 %1 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #13
  %2 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9.i.i, ptr %2, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  %cond = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @i40e_clear_rx_bi_zc(ptr nocapture noundef readonly %rx_ring) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %count = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 11
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %count, align 2
  %conv = zext i16 %4 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %5 = call ptr @memset(ptr %2, i32 0, i32 %mul)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_xsk_pool_setup(ptr noundef %vsi, ptr noundef %pool, i16 noundef zeroext %qid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pool, null
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 128
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %type.i = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 47
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %if.end.i, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i:                                         ; preds = %cond.true
  %conv.i = zext i16 %qid to i32
  %num_queue_pairs.i = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 44
  %4 = ptrtoint ptr %num_queue_pairs.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_queue_pairs.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %qid)
  %cmp3.not.i = icmp ugt i16 %5, %qid
  br i1 %cmp3.not.i, label %if.end6.i, label %if.end.i.cond.end_crit_edge

if.end.i.cond.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end6.i:                                        ; preds = %if.end.i
  %real_num_rx_queues.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 89
  %6 = ptrtoint ptr %real_num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %real_num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i)
  %cmp8.not.i = icmp ugt i32 %7, %conv.i
  br i1 %cmp8.not.i, label %lor.lhs.false.i, label %if.end6.i.cond.end_crit_edge

if.end6.i.cond.end_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %if.end6.i
  %real_num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 105
  %8 = ptrtoint ptr %real_num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %real_num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv.i)
  %cmp11.not.i = icmp ugt i32 %9, %conv.i
  br i1 %cmp11.not.i, label %if.end14.i, label %lor.lhs.false.i.cond.end_crit_edge

lor.lhs.false.i.cond.end_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end14.i:                                       ; preds = %lor.lhs.false.i
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 57
  %10 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %back.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %umem1.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 5
  %14 = ptrtoint ptr %umem1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %umem1.i.i, align 64
  %pgs.i.i = getelementptr inbounds %struct.xdp_umem, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %pgs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pgs.i.i, align 4
  %npgs.i.i = getelementptr inbounds %struct.xdp_umem, ptr %15, i32 0, i32 5
  %18 = ptrtoint ptr %npgs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %npgs.i.i, align 4
  %call.i.i = tail call i32 @xp_dma_map(ptr noundef nonnull %pool, ptr noundef %dev.i, i32 noundef 34, ptr noundef %17, i32 noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end16.i, label %if.end14.i.cond.end_crit_edge

if.end14.i.cond.end_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end16.i:                                       ; preds = %if.end14.i
  %af_xdp_zc_qps.i = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 75
  %20 = ptrtoint ptr %af_xdp_zc_qps.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %af_xdp_zc_qps.i, align 4
  tail call void @_set_bit(i32 noundef %conv.i, ptr noundef %21) #10
  %22 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vsi, align 128
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end16.i.if.end41.i_crit_edge, label %land.rhs.i

if.end16.i.if.end41.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

land.rhs.i:                                       ; preds = %if.end16.i
  %xdp_prog.i.i = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 33
  %26 = ptrtoint ptr %xdp_prog.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %xdp_prog.i.i, align 32
  %tobool.i67.not.i = icmp eq ptr %27, null
  br i1 %tobool.i67.not.i, label %land.rhs.i.if.end41.i_crit_edge, label %if.then24.i

land.rhs.i.if.end41.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

if.then24.i:                                      ; preds = %land.rhs.i
  %call26.i = tail call i32 @i40e_queue_pair_disable(ptr noundef %vsi, i32 noundef %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.then24.i.cond.end_crit_edge

if.then24.i.cond.end_crit_edge:                   ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end29.i:                                       ; preds = %if.then24.i
  %call31.i = tail call i32 @i40e_queue_pair_enable(ptr noundef %vsi, i32 noundef %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.end29.i.cond.end_crit_edge

if.end29.i.cond.end_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end34.i:                                       ; preds = %if.end29.i
  %28 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vsi, align 128
  %call37.i = tail call i32 @i40e_xsk_wakeup(ptr noundef %29, i32 noundef %conv.i, i32 undef) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end34.i.if.end41.i_crit_edge, label %if.end34.i.cond.end_crit_edge

if.end34.i.cond.end_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end34.i.if.end41.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.end34.i.if.end41.i_crit_edge, %land.rhs.i.if.end41.i_crit_edge, %if.end16.i.if.end41.i_crit_edge
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call.i = tail call ptr @xsk_get_pool_from_qid(ptr noundef %1, i16 noundef zeroext %qid) #10
  %tobool.not.i5 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i5, label %cond.false.cond.end_crit_edge, label %if.end.i9

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i9:                                        ; preds = %cond.false
  %30 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vsi, align 128
  %state.i.i6 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %state.i.i6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %state.i.i6, align 4
  %and1.i.i.i7 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i7)
  %tobool.i.not.i8 = icmp eq i32 %and1.i.i.i7, 0
  br i1 %tobool.i.not.i8, label %if.end.i9.if.end11.i_crit_edge, label %land.end.i

if.end.i9.if.end11.i_crit_edge:                   ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

land.end.i:                                       ; preds = %if.end.i9
  %xdp_prog.i.i10 = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 33
  %34 = ptrtoint ptr %xdp_prog.i.i10 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %xdp_prog.i.i10, align 32
  %tobool.i37.not.i = icmp eq ptr %35, null
  br i1 %tobool.i37.not.i, label %land.end.i.if.end11.i_crit_edge, label %if.then6.i

land.end.i.if.end11.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then6.i:                                       ; preds = %land.end.i
  %conv.i11 = zext i16 %qid to i32
  %call7.i = tail call i32 @i40e_queue_pair_disable(ptr noundef %vsi, i32 noundef %conv.i11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then6.i.if.end11.i_crit_edge, label %if.then6.i.cond.end_crit_edge

if.then6.i.cond.end_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.then6.i.if.end11.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then6.i.if.end11.i_crit_edge, %land.end.i.if.end11.i_crit_edge, %if.end.i9.if.end11.i_crit_edge
  %36 = phi i1 [ true, %if.then6.i.if.end11.i_crit_edge ], [ false, %land.end.i.if.end11.i_crit_edge ], [ false, %if.end.i9.if.end11.i_crit_edge ]
  %conv12.i = zext i16 %qid to i32
  %af_xdp_zc_qps.i12 = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 75
  %37 = ptrtoint ptr %af_xdp_zc_qps.i12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %af_xdp_zc_qps.i12, align 4
  tail call void @_clear_bit(i32 noundef %conv12.i, ptr noundef %38) #10
  tail call void @xp_dma_unmap(ptr noundef nonnull %call.i, i32 noundef 34) #10
  br i1 %36, label %if.then14.i, label %if.end11.i.if.end20.i_crit_edge

if.end11.i.if.end20.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then14.i:                                      ; preds = %if.end11.i
  %call16.i = tail call i32 @i40e_queue_pair_enable(ptr noundef %vsi, i32 noundef %conv12.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.then14.i.if.end20.i_crit_edge, label %if.then14.i.cond.end_crit_edge

if.then14.i.cond.end_crit_edge:                   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.then14.i.if.end20.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then14.i.if.end20.i_crit_edge, %if.end11.i.if.end20.i_crit_edge
  br label %cond.end

cond.end:                                         ; preds = %if.end20.i, %if.then14.i.cond.end_crit_edge, %if.then6.i.cond.end_crit_edge, %cond.false.cond.end_crit_edge, %if.end41.i, %if.end34.i.cond.end_crit_edge, %if.end29.i.cond.end_crit_edge, %if.then24.i.cond.end_crit_edge, %if.end14.i.cond.end_crit_edge, %lor.lhs.false.i.cond.end_crit_edge, %if.end6.i.cond.end_crit_edge, %if.end.i.cond.end_crit_edge, %cond.true.cond.end_crit_edge
  %cond = phi i32 [ 0, %if.end41.i ], [ -22, %cond.true.cond.end_crit_edge ], [ -22, %if.end.i.cond.end_crit_edge ], [ -22, %lor.lhs.false.i.cond.end_crit_edge ], [ -22, %if.end6.i.cond.end_crit_edge ], [ %call.i.i, %if.end14.i.cond.end_crit_edge ], [ %call26.i, %if.then24.i.cond.end_crit_edge ], [ %call31.i, %if.end29.i.cond.end_crit_edge ], [ %call37.i, %if.end34.i.cond.end_crit_edge ], [ 0, %if.end20.i ], [ -22, %cond.false.cond.end_crit_edge ], [ %call7.i, %if.then6.i.cond.end_crit_edge ], [ %call16.i, %if.then14.i.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @i40e_alloc_rx_buffers_zc(ptr noundef %rx_ring, i16 noundef zeroext %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_use = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 14
  %0 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_use, align 4
  %desc = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 1
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %idxprom = zext i16 %1 to i32
  %4 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %arrayidx.i = getelementptr ptr, ptr %6, i32 %idxprom
  %count1 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 11
  %7 = ptrtoint ptr %count1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %count1, align 2
  %sub = sub i16 %8, %1
  %conv5 = zext i16 %count to i32
  %9 = tail call i16 @llvm.umin.i16(i16 %sub, i16 %count)
  %10 = zext i16 %9 to i32
  %xsk_pool = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 37
  %11 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xsk_pool, align 128
  %call.i = tail call i32 @xp_alloc_batch(ptr noundef %12, ptr noundef %arrayidx.i, i32 noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  %arrayidx = getelementptr %union.i40e_16byte_rx_desc, ptr %3, i32 %idxprom
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %i.065 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %call.i, %while.body.preheader ]
  %xdp.064 = phi ptr [ %incdec.ptr14, %while.body.while.body_crit_edge ], [ %arrayidx.i, %while.body.preheader ]
  %rx_desc.063 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %arrayidx, %while.body.preheader ]
  %dec = add i32 %i.065, -1
  %13 = ptrtoint ptr %xdp.064 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xdp.064, align 4
  %dma.i.i = getelementptr inbounds %struct.xdp_buff_xsk, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma.i.i, align 4
  %conv13 = zext i32 %16 to i64
  %17 = tail call i64 @llvm.bswap.i64(i64 %conv13)
  %18 = ptrtoint ptr %rx_desc.063 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %rx_desc.063, align 8
  %hdr_addr = getelementptr inbounds %struct.anon.217, ptr %rx_desc.063, i32 0, i32 1
  %19 = ptrtoint ptr %hdr_addr to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %hdr_addr, align 8
  %incdec.ptr = getelementptr %union.i40e_16byte_rx_desc, ptr %rx_desc.063, i32 1
  %incdec.ptr14 = getelementptr ptr, ptr %xdp.064, i32 1
  %tobool11.not = icmp eq i32 %dec, 0
  br i1 %tobool11.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.body
  %20 = trunc i32 %call.i to i16
  %conv16 = add i16 %1, %20
  %21 = ptrtoint ptr %count1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %count1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv16, i16 %22)
  %cmp20 = icmp eq i16 %conv16, %22
  br i1 %cmp20, label %if.then22, label %while.end.if.end26_crit_edge

while.end.if.end26_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then22:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %desc, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %while.end.if.end26_crit_edge
  %ntu.0 = phi i16 [ 0, %if.then22 ], [ %conv16, %while.end.if.end26_crit_edge ]
  %rx_desc.1 = phi ptr [ %24, %if.then22 ], [ %incdec.ptr, %while.end.if.end26_crit_edge ]
  %qword1 = getelementptr inbounds %struct.anon.218, ptr %rx_desc.1, i32 0, i32 1
  %25 = ptrtoint ptr %qword1 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %qword1, align 8
  %conv27 = zext i16 %ntu.0 to i32
  tail call void @i40e_release_rx_desc(ptr noundef %rx_ring, i32 noundef %conv27) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %conv5)
  %cmp29 = icmp eq i32 %call.i, %conv5
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp29, %if.end26 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_release_rx_desc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_clean_rx_irq_zc(ptr noundef %rx_ring, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_clean = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 15
  %0 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_clean, align 2
  %next_to_use = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 14
  %count12 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 11
  %2 = ptrtoint ptr %count12 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %count12, align 2
  %sub14 = add i16 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp16155.not = icmp eq i32 %budget, 0
  br i1 %cmp16155.not, label %entry.while.end_crit_edge, label %while.body.lr.ph, !prof !26

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %desc = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 1
  %4 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 5
  %xsk_pool = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 37
  %q_vector.i = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 29
  %alloc_buff_failed.i = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 25, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %xdp_xmit.0160 = phi i32 [ 0, %while.body.lr.ph ], [ %xdp_xmit.1, %cleanup.while.body_crit_edge ]
  %next_to_clean10.0158 = phi i16 [ %1, %while.body.lr.ph ], [ %next_to_clean10.1, %cleanup.while.body_crit_edge ]
  %total_rx_packets.0157 = phi i32 [ 0, %while.body.lr.ph ], [ %total_rx_packets.1, %cleanup.while.body_crit_edge ]
  %total_rx_bytes.0156 = phi i32 [ 0, %while.body.lr.ph ], [ %total_rx_bytes.1, %cleanup.while.body_crit_edge ]
  %5 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc, align 4
  %idxprom = zext i16 %next_to_clean10.0158 to i32
  %arrayidx = getelementptr %union.i40e_16byte_rx_desc, ptr %6, i32 %idxprom
  %qword1 = getelementptr inbounds %struct.anon.218, ptr %arrayidx, i32 0, i32 1
  %7 = ptrtoint ptr %qword1 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %qword1, align 8
  %9 = tail call i64 @llvm.bswap.i64(i64 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.i = icmp slt i64 %9, 0
  br i1 %tobool.i, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx, align 8
  tail call void @i40e_clean_programming_status(ptr noundef %rx_ring, i64 noundef %11, i64 noundef %9) #10
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %4, align 4
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  tail call void @xp_free(ptr noundef %15) #10
  br label %cleanup

if.end:                                           ; preds = %while.body
  %and27 = lshr i64 %9, 38
  %16 = trunc i64 %and27 to i32
  %conv28 = and i32 %16, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv28)
  %tobool29.not = icmp eq i32 %conv28, 0
  br i1 %tobool29.not, label %if.end.while.end_crit_edge, label %if.end31

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end31:                                         ; preds = %if.end
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %4, align 4
  %arrayidx.i145 = getelementptr ptr, ptr %18, i32 %idxprom
  %19 = ptrtoint ptr %arrayidx.i145 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i145, align 4
  %data_hard_start.i = getelementptr inbounds %struct.xdp_buff, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %data_hard_start.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data_hard_start.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 256
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i, ptr %20, align 4
  %data_meta.i = getelementptr inbounds %struct.xdp_buff, ptr %20, i32 0, i32 2
  %24 = ptrtoint ptr %data_meta.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i, ptr %data_meta.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %conv28
  %data_end.i = getelementptr inbounds %struct.xdp_buff, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %data_end.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr3.i, ptr %data_end.i, align 4
  %26 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xsk_pool, align 128
  %dma_need_sync.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %27, i32 0, i32 25
  %28 = ptrtoint ptr %dma_need_sync.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dma_need_sync.i, align 2, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %if.end31.xsk_buff_dma_sync_for_cpu.exit_crit_edge, label %if.end.i

if.end31.xsk_buff_dma_sync_for_cpu.exit_crit_edge: ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %xsk_buff_dma_sync_for_cpu.exit

if.end.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @xp_dma_sync_for_cpu_slow(ptr noundef %20) #10
  br label %xsk_buff_dma_sync_for_cpu.exit

xsk_buff_dma_sync_for_cpu.exit:                   ; preds = %if.end.i, %if.end31.xsk_buff_dma_sync_for_cpu.exit_crit_edge
  %call34 = tail call fastcc i32 @i40e_run_xdp_zc(ptr noundef %rx_ring, ptr noundef %20)
  %30 = zext i32 %call34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call34, label %land.end.i [
    i32 4, label %xsk_buff_dma_sync_for_cpu.exit.i40e_handle_xdp_result_zc.exit_crit_edge
    i32 2, label %xsk_buff_dma_sync_for_cpu.exit.i40e_handle_xdp_result_zc.exit_crit_edge168
    i32 1, label %if.then4.i
    i32 0, label %if.then7.i
  ], !prof !29

xsk_buff_dma_sync_for_cpu.exit.i40e_handle_xdp_result_zc.exit_crit_edge168: ; preds = %xsk_buff_dma_sync_for_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_handle_xdp_result_zc.exit

xsk_buff_dma_sync_for_cpu.exit.i40e_handle_xdp_result_zc.exit_crit_edge: ; preds = %xsk_buff_dma_sync_for_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_handle_xdp_result_zc.exit

if.then4.i:                                       ; preds = %xsk_buff_dma_sync_for_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @xp_free(ptr noundef %20) #10
  br label %i40e_handle_xdp_result_zc.exit

if.then7.i:                                       ; preds = %xsk_buff_dma_sync_for_cpu.exit
  %call.i = tail call fastcc ptr @i40e_construct_skb_zc(ptr noundef %rx_ring, ptr noundef %20) #10
  %tobool8.not.i = icmp eq ptr %call.i, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %alloc_buff_failed.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %alloc_buff_failed.i, align 16
  %inc.i = add i64 %32, 1
  store i64 %inc.i, ptr %alloc_buff_failed.i, align 16
  br label %i40e_handle_xdp_result_zc.exit

if.end10.i:                                       ; preds = %if.then7.i
  %call11.i = tail call fastcc i32 @eth_skb_pad(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.i40e_handle_xdp_result_zc.exit_crit_edge

if.end10.i.i40e_handle_xdp_result_zc.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_handle_xdp_result_zc.exit

if.end14.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %33 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i, align 4
  tail call void @i40e_process_skb_fields(ptr noundef %rx_ring, ptr noundef %arrayidx, ptr noundef nonnull %call.i) #10
  %35 = ptrtoint ptr %q_vector.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %q_vector.i, align 4
  %napi.i = getelementptr inbounds %struct.i40e_q_vector, ptr %36, i32 0, i32 3
  %call15.i = tail call i32 @napi_gro_receive(ptr noundef %napi.i, ptr noundef nonnull %call.i) #10
  br label %i40e_handle_xdp_result_zc.exit

land.end.i:                                       ; preds = %xsk_buff_dma_sync_for_cpu.exit
  %.b75.i = load i1, ptr @i40e_handle_xdp_result_zc.__already_done, align 1
  br i1 %.b75.i, label %land.end.i.i40e_handle_xdp_result_zc.exit_crit_edge, label %if.then27.i, !prof !30

land.end.i.i40e_handle_xdp_result_zc.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_handle_xdp_result_zc.exit

if.then27.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @i40e_handle_xdp_result_zc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 314, i32 noundef 9, ptr noundef null) #10
  br label %i40e_handle_xdp_result_zc.exit

i40e_handle_xdp_result_zc.exit:                   ; preds = %if.then27.i, %land.end.i.i40e_handle_xdp_result_zc.exit_crit_edge, %if.end14.i, %if.end10.i.i40e_handle_xdp_result_zc.exit_crit_edge, %if.then9.i, %if.then4.i, %xsk_buff_dma_sync_for_cpu.exit.i40e_handle_xdp_result_zc.exit_crit_edge, %xsk_buff_dma_sync_for_cpu.exit.i40e_handle_xdp_result_zc.exit_crit_edge168
  %rx_packets.0 = phi i32 [ 1, %land.end.i.i40e_handle_xdp_result_zc.exit_crit_edge ], [ 1, %if.then27.i ], [ 0, %if.then9.i ], [ 1, %if.end14.i ], [ 1, %if.then4.i ], [ 1, %xsk_buff_dma_sync_for_cpu.exit.i40e_handle_xdp_result_zc.exit_crit_edge ], [ 1, %xsk_buff_dma_sync_for_cpu.exit.i40e_handle_xdp_result_zc.exit_crit_edge168 ], [ 0, %if.end10.i.i40e_handle_xdp_result_zc.exit_crit_edge ]
  %rx_bytes.0 = phi i32 [ %conv28, %land.end.i.i40e_handle_xdp_result_zc.exit_crit_edge ], [ %conv28, %if.then27.i ], [ 0, %if.then9.i ], [ %34, %if.end14.i ], [ %conv28, %if.then4.i ], [ %conv28, %xsk_buff_dma_sync_for_cpu.exit.i40e_handle_xdp_result_zc.exit_crit_edge ], [ %conv28, %xsk_buff_dma_sync_for_cpu.exit.i40e_handle_xdp_result_zc.exit_crit_edge168 ], [ 0, %if.end10.i.i40e_handle_xdp_result_zc.exit_crit_edge ]
  %add35 = add nuw i32 %rx_packets.0, %total_rx_packets.0157
  %add36 = add i32 %rx_bytes.0, %total_rx_bytes.0156
  %and37 = and i32 %call34, 6
  %or = or i32 %and37, %xdp_xmit.0160
  br label %cleanup

cleanup:                                          ; preds = %i40e_handle_xdp_result_zc.exit, %if.then
  %total_rx_bytes.1 = phi i32 [ %total_rx_bytes.0156, %if.then ], [ %add36, %i40e_handle_xdp_result_zc.exit ]
  %total_rx_packets.1 = phi i32 [ %total_rx_packets.0157, %if.then ], [ %add35, %i40e_handle_xdp_result_zc.exit ]
  %xdp_xmit.1 = phi i32 [ %xdp_xmit.0160, %if.then ], [ %or, %i40e_handle_xdp_result_zc.exit ]
  %add24.pn = add i16 %next_to_clean10.0158, 1
  %next_to_clean10.1 = and i16 %add24.pn, %sub14
  %cmp16 = icmp ult i32 %total_rx_packets.1, %budget
  br i1 %cmp16, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge, !prof !30

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %total_rx_bytes.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %total_rx_bytes.0156, %if.end.while.end_crit_edge ], [ %total_rx_bytes.1, %cleanup.while.end_crit_edge ]
  %total_rx_packets.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %total_rx_packets.0157, %if.end.while.end_crit_edge ], [ %total_rx_packets.1, %cleanup.while.end_crit_edge ]
  %next_to_clean10.0.lcssa = phi i16 [ %1, %entry.while.end_crit_edge ], [ %next_to_clean10.0158, %if.end.while.end_crit_edge ], [ %next_to_clean10.1, %cleanup.while.end_crit_edge ]
  %xdp_xmit.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %xdp_xmit.0160, %if.end.while.end_crit_edge ], [ %xdp_xmit.1, %cleanup.while.end_crit_edge ]
  %37 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %next_to_clean10.0.lcssa, ptr %next_to_clean, align 2
  %38 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %next_to_use, align 4
  %40 = xor i16 %39, -1
  %sub53 = add i16 %next_to_clean10.0.lcssa, %40
  %and55 = and i16 %sub53, %sub14
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %and55)
  %cmp58 = icmp ugt i16 %and55, 31
  br i1 %cmp58, label %if.then60, label %while.end.if.end64_crit_edge

while.end.if.end64_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then60:                                        ; preds = %while.end
  %desc.i = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 1
  %41 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %desc.i, align 4
  %idxprom.i = zext i16 %39 to i32
  %43 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 5
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %45, i32 %idxprom.i
  %46 = ptrtoint ptr %count12 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %count12, align 2
  %sub.i = sub i16 %47, %39
  %conv5.i = zext i16 %and55 to i32
  %48 = tail call i16 @llvm.umin.i16(i16 %sub.i, i16 %and55) #10
  %49 = zext i16 %48 to i32
  %xsk_pool.i = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 37
  %50 = ptrtoint ptr %xsk_pool.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %xsk_pool.i, align 128
  %call.i.i = tail call i32 @xp_alloc_batch(ptr noundef %51, ptr noundef %arrayidx.i.i, i32 noundef %49) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i146 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i146, label %if.then60.if.end64_crit_edge, label %while.body.preheader.i

if.then60.if.end64_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

while.body.preheader.i:                           ; preds = %if.then60
  %arrayidx.i147 = getelementptr %union.i40e_16byte_rx_desc, ptr %42, i32 %idxprom.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %i.065.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %call.i.i, %while.body.preheader.i ]
  %xdp.064.i = phi ptr [ %incdec.ptr14.i, %while.body.i.while.body.i_crit_edge ], [ %arrayidx.i.i, %while.body.preheader.i ]
  %rx_desc.063.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %arrayidx.i147, %while.body.preheader.i ]
  %dec.i = add i32 %i.065.i, -1
  %52 = ptrtoint ptr %xdp.064.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %xdp.064.i, align 4
  %dma.i.i.i = getelementptr inbounds %struct.xdp_buff_xsk, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma.i.i.i, align 4
  %conv13.i = zext i32 %55 to i64
  %56 = tail call i64 @llvm.bswap.i64(i64 %conv13.i) #10
  %57 = ptrtoint ptr %rx_desc.063.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %rx_desc.063.i, align 8
  %hdr_addr.i = getelementptr inbounds %struct.anon.217, ptr %rx_desc.063.i, i32 0, i32 1
  %58 = ptrtoint ptr %hdr_addr.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 0, ptr %hdr_addr.i, align 8
  %incdec.ptr.i = getelementptr %union.i40e_16byte_rx_desc, ptr %rx_desc.063.i, i32 1
  %incdec.ptr14.i = getelementptr ptr, ptr %xdp.064.i, i32 1
  %tobool11.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool11.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  %59 = trunc i32 %call.i.i to i16
  %conv16.i = add i16 %39, %59
  %60 = ptrtoint ptr %count12 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %count12, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv16.i, i16 %61)
  %cmp20.i = icmp eq i16 %conv16.i, %61
  br i1 %cmp20.i, label %if.then22.i, label %while.end.i.if.end26.i_crit_edge

while.end.i.if.end26.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then22.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %desc.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then22.i, %while.end.i.if.end26.i_crit_edge
  %ntu.0.i = phi i16 [ 0, %if.then22.i ], [ %conv16.i, %while.end.i.if.end26.i_crit_edge ]
  %rx_desc.1.i = phi ptr [ %63, %if.then22.i ], [ %incdec.ptr.i, %while.end.i.if.end26.i_crit_edge ]
  %qword1.i = getelementptr inbounds %struct.anon.218, ptr %rx_desc.1.i, i32 0, i32 1
  %64 = ptrtoint ptr %qword1.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 0, ptr %qword1.i, align 8
  %conv27.i = zext i16 %ntu.0.i to i32
  tail call void @i40e_release_rx_desc(ptr noundef %rx_ring, i32 noundef %conv27.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %conv5.i)
  %cmp29.i = icmp ne i32 %call.i.i, %conv5.i
  br label %if.end64

if.end64:                                         ; preds = %if.end26.i, %if.then60.if.end64_crit_edge, %while.end.if.end64_crit_edge
  %failure.0.off0 = phi i1 [ false, %while.end.if.end64_crit_edge ], [ %cmp29.i, %if.end26.i ], [ true, %if.then60.if.end64_crit_edge ]
  tail call void @i40e_finalize_xdp_rx(ptr noundef %rx_ring, i32 noundef %xdp_xmit.0.lcssa) #10
  tail call void @i40e_update_rx_stats(ptr noundef %rx_ring, i32 noundef %total_rx_bytes.0.lcssa, i32 noundef %total_rx_packets.0.lcssa) #10
  %xsk_pool65 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 37
  %65 = ptrtoint ptr %xsk_pool65 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %xsk_pool65, align 128
  %call66 = tail call zeroext i1 @xsk_uses_need_wakeup(ptr noundef %66) #10
  br i1 %call66, label %if.then67, label %if.end79

if.then67:                                        ; preds = %if.end64
  br i1 %failure.0.off0, label %if.then67.if.then75_crit_edge, label %lor.lhs.false

if.then67.if.then75_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75

lor.lhs.false:                                    ; preds = %if.then67
  %67 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %next_to_use, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %next_to_clean10.0.lcssa, i16 %68)
  %cmp73 = icmp eq i16 %next_to_clean10.0.lcssa, %68
  br i1 %cmp73, label %lor.lhs.false.if.then75_crit_edge, label %if.else

lor.lhs.false.if.then75_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75

if.then75:                                        ; preds = %lor.lhs.false.if.then75_crit_edge, %if.then67.if.then75_crit_edge
  %69 = ptrtoint ptr %xsk_pool65 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %xsk_pool65, align 128
  tail call void @xsk_set_rx_need_wakeup(ptr noundef %70) #10
  br label %cleanup86

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %xsk_pool65 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %xsk_pool65, align 128
  tail call void @xsk_clear_rx_need_wakeup(ptr noundef %72) #10
  br label %cleanup86

if.end79:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %budget.total_rx_packets.2 = select i1 %failure.0.off0, i32 %budget, i32 %total_rx_packets.0.lcssa
  br label %cleanup86

cleanup86:                                        ; preds = %if.end79, %if.else, %if.then75
  %retval.0 = phi i32 [ %budget.total_rx_packets.2, %if.end79 ], [ %total_rx_packets.0.lcssa, %if.else ], [ %total_rx_packets.0.lcssa, %if.then75 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_clean_programming_status(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_run_xdp_zc(ptr noundef %rx_ring, ptr noundef %xdp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xdp_prog1 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 4
  %0 = ptrtoint ptr %xdp_prog1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %xdp_prog1, align 16
  tail call void @__cant_migrate(ptr noundef nonnull @.str, i32 noundef 613) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@i40e_run_xdp_zc, %if.then.i.i)) #10
          to label %if.else.i.i [label %if.then.i.i], !srcloc !31

if.then.i.i:                                      ; preds = %entry
  %call3.i.i = tail call i64 @sched_clock() #10
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bpf_func.i.i, align 4
  %call4.i.i = tail call i32 @bpf_dispatcher_xdp_func(ptr noundef %xdp, ptr noundef %insnsi.i.i, ptr noundef %3) #10
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats9.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !16) #10
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %13, i32 0, i32 3
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !32
  %and.i.i.i.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %15 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %16 = tail call i32 @llvm.read_register.i32(metadata !16) #10
  %and.i.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %20 = tail call i32 @llvm.read_register.i32(metadata !16) #10
  %and.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %25, ptrtoint (ptr @lockdep_recursion to i32)
  %26 = inttoptr i32 %add.i.i.i.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  %29 = tail call i32 @llvm.read_register.i32(metadata !16) #10
  %and.i.i.i7.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool20.not.i.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %33 = tail call i32 @llvm.read_register.i32(metadata !16) #10
  %and.i.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.i.i.i = icmp eq i32 %36, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %37 = tail call i32 @llvm.read_register.i32(metadata !16) #10
  %and.i.i.i9.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %40, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !35
  %41 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %44, ptrtoint (ptr @hardirqs_enabled to i32)
  %45 = inttoptr i32 %add47.i.i.i.i to ptr
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !36
  %48 = tail call i32 @llvm.read_register.i32(metadata !16) #10
  %and.i.i.i12.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %51, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool54.not.i.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !30

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %52 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %53, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !37
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %13, i32 0, i32 3, i32 0, i32 1
  %54 = tail call ptr @llvm.returnaddress(i32 0) #10
  %55 = ptrtoint ptr %54 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %55) #10
  %56 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %13, align 8
  %inc.i.i.i = add i64 %57, 1
  store i64 %inc.i.i.i, ptr %13, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %13, i32 0, i32 1
  %call13.i.i = tail call i64 @sched_clock() #10
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %58 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %59
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %55) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !38
  %60 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %61, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_on() #10
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !39
  %and.i.i.i3.i.i = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i3.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i3.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !26

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #10, !srcloc !40
  br label %__bpf_prog_run.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 9
  %63 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bpf_func17.i.i, align 4
  %call18.i.i = tail call i32 @bpf_dispatcher_xdp_func(ptr noundef %xdp, ptr noundef %insnsi15.i.i, ptr noundef %64) #10
  br label %__bpf_prog_run.exit.i

__bpf_prog_run.exit.i:                            ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call4.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call18.i.i, %if.else.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_master_redirect_enabled_key, ptr blockaddress(@i40e_run_xdp_zc, %l_yes.i.i)) #10
          to label %arch_static_branch.exit.i [label %l_yes.i.i], !srcloc !31

l_yes.i.i:                                        ; preds = %__bpf_prog_run.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %arch_static_branch.exit.i

arch_static_branch.exit.i:                        ; preds = %l_yes.i.i, %__bpf_prog_run.exit.i
  %retval.0.i.i = phi i1 [ true, %l_yes.i.i ], [ false, %__bpf_prog_run.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ret.0.i.i)
  %cmp.i = icmp eq i32 %ret.0.i.i, 3
  %or.cond.i = select i1 %retval.0.i.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i, label %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge

arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge: ; preds = %arch_static_branch.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bpf_prog_run_xdp.exit

land.lhs.true.i:                                  ; preds = %arch_static_branch.exit.i
  %rxq.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %65 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rxq.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 128
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 14
  %69 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %70, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.sw.bb_crit_edge, label %netif_is_bond_slave.exit.i

land.lhs.true.i.sw.bb_crit_edge:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

netif_is_bond_slave.exit.i:                       ; preds = %land.lhs.true.i
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 15
  %71 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %72, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_slave.exit.i.sw.bb_crit_edge, label %if.then5.i

netif_is_bond_slave.exit.i.sw.bb_crit_edge:       ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then5.i:                                       ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i = tail call i32 @xdp_master_redirect(ptr noundef %xdp) #10
  br label %bpf_prog_run_xdp.exit

bpf_prog_run_xdp.exit:                            ; preds = %if.then5.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge
  %act.0.i = phi i32 [ %call6.i, %if.then5.i ], [ %ret.0.i.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge ]
  %73 = zext i32 %act.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %act.0.i, label %sw.default [
    i32 4, label %if.then
    i32 2, label %bpf_prog_run_xdp.exit.cleanup_crit_edge
    i32 3, label %bpf_prog_run_xdp.exit.sw.bb_crit_edge
    i32 0, label %bpf_prog_run_xdp.exit.out_failure_crit_edge
    i32 1, label %bpf_prog_run_xdp.exit.sw.bb14_crit_edge
  ], !prof !41

bpf_prog_run_xdp.exit.sw.bb14_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb14

bpf_prog_run_xdp.exit.out_failure_crit_edge:      ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_failure

bpf_prog_run_xdp.exit.sw.bb_crit_edge:            ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

bpf_prog_run_xdp.exit.cleanup_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %bpf_prog_run_xdp.exit
  %netdev = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 3
  %74 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %netdev, align 4
  %call3 = tail call i32 @xdp_do_redirect(ptr noundef %75, ptr noundef %xdp, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.then.out_failure_crit_edge

if.then.out_failure_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_failure

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %bpf_prog_run_xdp.exit.sw.bb_crit_edge, %netif_is_bond_slave.exit.i.sw.bb_crit_edge, %land.lhs.true.i.sw.bb_crit_edge
  %vsi = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 28
  %76 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vsi, align 8
  %xdp_rings = getelementptr inbounds %struct.i40e_vsi, ptr %77, i32 0, i32 22
  %78 = ptrtoint ptr %xdp_rings to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %xdp_rings, align 64
  %queue_index = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 7
  %80 = ptrtoint ptr %queue_index to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %queue_index, align 4
  %idxprom = zext i16 %81 to i32
  %arrayidx = getelementptr ptr, ptr %79, i32 %idxprom
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx, align 4
  %call7 = tail call i32 @i40e_xmit_xdp_tx_ring(ptr noundef %xdp, ptr noundef %83) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 1
  br i1 %cmp8, label %sw.bb.out_failure_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.out_failure_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_failure

sw.default:                                       ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #12
  %netdev11 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 3
  %84 = ptrtoint ptr %netdev11 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %netdev11, align 4
  tail call void @bpf_warn_invalid_xdp_action(ptr noundef %85, ptr noundef %1, i32 noundef %act.0.i) #10
  br label %out_failure

out_failure:                                      ; preds = %sw.default, %sw.bb.out_failure_crit_edge, %if.then.out_failure_crit_edge, %bpf_prog_run_xdp.exit.out_failure_crit_edge
  %act.0.i34 = phi i32 [ %act.0.i, %bpf_prog_run_xdp.exit.out_failure_crit_edge ], [ %act.0.i, %sw.default ], [ 3, %sw.bb.out_failure_crit_edge ], [ 4, %if.then.out_failure_crit_edge ]
  %netdev13 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 3
  %86 = ptrtoint ptr %netdev13 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %netdev13, align 4
  tail call fastcc void @trace_xdp_exception(ptr noundef %87, ptr noundef %1, i32 noundef %act.0.i34)
  br label %sw.bb14

sw.bb14:                                          ; preds = %out_failure, %bpf_prog_run_xdp.exit.sw.bb14_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.bb14, %sw.bb.cleanup_crit_edge, %if.then.cleanup_crit_edge, %bpf_prog_run_xdp.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %if.then.cleanup_crit_edge ], [ 1, %sw.bb14 ], [ %call7, %sw.bb.cleanup_crit_edge ], [ 0, %bpf_prog_run_xdp.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_finalize_xdp_rx(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_update_rx_stats(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xsk_uses_need_wakeup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xsk_set_rx_need_wakeup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xsk_clear_rx_need_wakeup(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @i40e_clean_xdp_tx_irq(ptr noundef %vsi, ptr noundef %tx_ring) local_unnamed_addr #0 align 64 {
entry:
  %total_bytes.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xsk_pool = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 37
  %0 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xsk_pool, align 128
  %desc.i = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 1
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc.i, align 4
  %count.i = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 11
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %count.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr %struct.i40e_tx_desc, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %add.ptr.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  %next_to_clean = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 15
  %9 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %next_to_clean, align 2
  %conv = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp = icmp ult i32 %8, %conv
  %add = select i1 %cmp, i32 %conv.i, i32 0
  %spec.select = sub i32 %8, %conv
  %sub = add i32 %spec.select, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp5 = icmp eq i32 %sub, 0
  br i1 %cmp5, label %entry.out_xmit_crit_edge, label %if.end8

entry.out_xmit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_xmit

if.end8:                                          ; preds = %entry
  %xdp_tx_active = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 16
  %11 = ptrtoint ptr %xdp_tx_active to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %xdp_tx_active, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %if.end8.skip_crit_edge, label %for.body.preheader, !prof !30

if.end8.skip_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip

for.body.preheader:                               ; preds = %if.end8
  %13 = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end20.for.body_crit_edge, %for.body.preheader
  %ntc.0121 = phi i32 [ %spec.store.select, %if.end20.for.body_crit_edge ], [ %conv, %for.body.preheader ]
  %xsk_frames.0120 = phi i32 [ %xsk_frames.1, %if.end20.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.0119 = phi i32 [ %inc28, %if.end20.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = getelementptr %struct.i40e_tx_buffer, ptr %15, i32 %ntc.0121, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool18.not = icmp eq ptr %18, null
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.i40e_tx_buffer, ptr %15, i32 %ntc.0121
  tail call fastcc void @i40e_clean_xdp_tx_buffer(ptr noundef %tx_ring, ptr noundef %arrayidx)
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %16, align 4
  br label %if.end20

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %xsk_frames.0120, 1
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then19
  %xsk_frames.1 = phi i32 [ %xsk_frames.0120, %if.then19 ], [ %inc, %if.else ]
  %inc21 = add i32 %ntc.0121, 1
  %20 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %count.i, align 2
  %conv23 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc21, i32 %conv23)
  %cmp24.not = icmp ult i32 %inc21, %conv23
  %spec.store.select = select i1 %cmp24.not, i32 %inc21, i32 0
  %inc28 = add nuw i32 %i.0119, 1
  %exitcond.not = icmp eq i32 %inc28, %sub
  br i1 %exitcond.not, label %if.end20.skip_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end20.skip_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip

skip:                                             ; preds = %if.end20.skip_crit_edge, %if.end8.skip_crit_edge
  %xsk_frames.2 = phi i32 [ %sub, %if.end8.skip_crit_edge ], [ %xsk_frames.1, %if.end20.skip_crit_edge ]
  %22 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %next_to_clean, align 2
  %24 = trunc i32 %sub to i16
  %conv32 = add i16 %23, %24
  store i16 %conv32, ptr %next_to_clean, align 2
  %25 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %count.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv32, i16 %26)
  %cmp37.not = icmp ult i16 %conv32, %26
  br i1 %cmp37.not, label %skip.if.end52_crit_edge, label %if.then45, !prof !30

skip.if.end52_crit_edge:                          ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then45:                                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  %sub50 = sub i16 %conv32, %26
  %27 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %sub50, ptr %next_to_clean, align 2
  br label %if.end52

if.end52:                                         ; preds = %if.then45, %skip.if.end52_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xsk_frames.2)
  %tobool53.not = icmp eq i32 %xsk_frames.2, 0
  br i1 %tobool53.not, label %if.end52.if.end55_crit_edge, label %if.then54

if.end52.if.end55_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @xsk_tx_completed(ptr noundef %1, i32 noundef %xsk_frames.2) #10
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end52.if.end55_crit_edge
  %flags.i = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 22
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flags.i, align 8
  %30 = and i16 %29, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.not.i = icmp eq i16 %30, 0
  br i1 %tobool.not.i, label %if.end55.out_xmit_crit_edge, label %if.then.i

if.end55.out_xmit_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_xmit

if.then.i:                                        ; preds = %if.end55
  %call.i = tail call i32 @i40e_get_tx_pending(ptr noundef %tx_ring, i1 noundef zeroext false) #10
  %31 = add i32 %call.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %31)
  %32 = icmp ult i32 %31, -3
  br i1 %32, label %if.then.i.out_xmit_crit_edge, label %land.lhs.true6.i

if.then.i.out_xmit_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_xmit

land.lhs.true6.i:                                 ; preds = %if.then.i
  %state.i = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 5
  %33 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool8.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true9.i, label %land.lhs.true6.i.out_xmit_crit_edge

land.lhs.true6.i.out_xmit_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_xmit

land.lhs.true9.i:                                 ; preds = %land.lhs.true6.i
  %35 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %next_to_clean, align 2
  %next_to_use.i = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 14
  %37 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %next_to_use.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %38)
  %cmp12.i = icmp ugt i16 %36, %38
  br i1 %cmp12.i, label %land.lhs.true9.i.cond.end.i_crit_edge, label %cond.false.i

land.lhs.true9.i.cond.end.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %count.i, align 2
  %conv14.i = zext i16 %40 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %land.lhs.true9.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv14.i, %cond.false.i ], [ 0, %land.lhs.true9.i.cond.end.i_crit_edge ]
  %conv16.i = zext i16 %36 to i32
  %conv18.i = zext i16 %38 to i32
  %41 = xor i32 %conv18.i, -1
  %add.i = add nsw i32 %41, %conv16.i
  %sub19.i = add nsw i32 %add.i, %cond.i
  %42 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %count.i, align 2
  %conv21.i = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub19.i, i32 %conv21.i)
  %cmp22.not.i = icmp eq i32 %sub19.i, %conv21.i
  br i1 %cmp22.not.i, label %cond.end.i.out_xmit_crit_edge, label %if.then24.i

cond.end.i.out_xmit_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_xmit

if.then24.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arm_wb.i = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 20
  %44 = ptrtoint ptr %arm_wb.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %arm_wb.i, align 1
  br label %out_xmit

out_xmit:                                         ; preds = %if.then24.i, %cond.end.i.out_xmit_crit_edge, %land.lhs.true6.i.out_xmit_crit_edge, %if.then.i.out_xmit_crit_edge, %if.end55.out_xmit_crit_edge, %entry.out_xmit_crit_edge
  %45 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %xsk_pool, align 128
  %call57 = tail call zeroext i1 @xsk_uses_need_wakeup(ptr noundef %46) #10
  br i1 %call57, label %if.then58, label %out_xmit.if.end60_crit_edge

out_xmit.if.end60_crit_edge:                      ; preds = %out_xmit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then58:                                        ; preds = %out_xmit
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %xsk_pool, align 128
  tail call void @xsk_set_tx_need_wakeup(ptr noundef %48) #10
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %out_xmit.if.end60_crit_edge
  %49 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %next_to_clean, align 2
  %next_to_use = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 14
  %51 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %next_to_use, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %50, i16 %52)
  %cmp64 = icmp ugt i16 %50, %52
  br i1 %cmp64, label %if.end60.cond.end_crit_edge, label %cond.false

if.end60.cond.end_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %count.i, align 2
  %conv67 = zext i16 %54 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end60.cond.end_crit_edge
  %cond = phi i32 [ %conv67, %cond.false ], [ 0, %if.end60.cond.end_crit_edge ]
  %conv69 = zext i16 %50 to i32
  %conv72 = zext i16 %52 to i32
  %55 = xor i32 %conv72, -1
  %add70 = add nsw i32 %55, %conv69
  %sub74 = add nsw i32 %add70, %cond
  %xsk_descs.i = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 38
  %56 = ptrtoint ptr %xsk_descs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %xsk_descs.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %total_bytes.i) #10
  %58 = ptrtoint ptr %total_bytes.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %total_bytes.i, align 4
  %59 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %xsk_pool, align 128
  %call.i112 = tail call i32 @xsk_tx_peek_release_desc_batch(ptr noundef %60, ptr noundef %57, i32 noundef %sub74) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool.not.i113 = icmp eq i32 %call.i112, 0
  br i1 %tobool.not.i113, label %cond.end.i40e_xmit_zc.exit_crit_edge, label %if.end.i

cond.end.i40e_xmit_zc.exit_crit_edge:             ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_xmit_zc.exit

if.end.i:                                         ; preds = %cond.end
  %61 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %next_to_use, align 4
  %conv.i115 = zext i16 %62 to i32
  %add.i116 = add i32 %call.i112, %conv.i115
  %63 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %count.i, align 2
  %conv1.i = zext i16 %64 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i116, i32 %conv1.i)
  %cmp.not.i = icmp ult i32 %add.i116, %conv1.i
  br i1 %cmp.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then3.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub nsw i32 %conv1.i, %conv.i115
  call fastcc void @i40e_fill_tx_hw_ring(ptr noundef %tx_ring, ptr noundef %57, i32 noundef %sub.i, ptr noundef nonnull %total_bytes.i) #10
  %65 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %next_to_use, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then3.i, %if.end.i.if.end9.i_crit_edge
  %nb_processed.0.i = phi i32 [ %sub.i, %if.then3.i ], [ 0, %if.end.i.if.end9.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xdp_desc, ptr %57, i32 %nb_processed.0.i
  %sub10.i = sub i32 %call.i112, %nb_processed.0.i
  call fastcc void @i40e_fill_tx_hw_ring(ptr noundef %tx_ring, ptr noundef %arrayidx.i, i32 noundef %sub10.i, ptr noundef nonnull %total_bytes.i) #10
  %66 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %next_to_use, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool.not.i.i = icmp eq i16 %67, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %if.end9.i.i40e_set_rs_bit.exit.i_crit_edge

if.end9.i.i40e_set_rs_bit.exit.i_crit_edge:       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_set_rs_bit.exit.i

cond.false.i.i:                                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %count.i, align 2
  br label %i40e_set_rs_bit.exit.i

i40e_set_rs_bit.exit.i:                           ; preds = %cond.false.i.i, %if.end9.i.i40e_set_rs_bit.exit.i_crit_edge
  %cond.in.i.i = phi i16 [ %69, %cond.false.i.i ], [ %67, %if.end9.i.i40e_set_rs_bit.exit.i_crit_edge ]
  %cond.i.i = add i16 %cond.in.i.i, -1
  %70 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %desc.i, align 4
  %idxprom.i.i = zext i16 %cond.i.i to i32
  %cmd_type_offset_bsz.i.i = getelementptr %struct.i40e_tx_desc, ptr %71, i32 %idxprom.i.i, i32 1
  %72 = ptrtoint ptr %cmd_type_offset_bsz.i.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %cmd_type_offset_bsz.i.i, align 8
  %or.i.i = or i64 %73, 2305843009213693952
  store i64 %or.i.i, ptr %cmd_type_offset_bsz.i.i, align 8
  tail call void @i40e_xdp_ring_update_tail(ptr noundef %tx_ring) #10
  %74 = ptrtoint ptr %total_bytes.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %total_bytes.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %76 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i.i.i.i = icmp eq i32 %76, 0
  br i1 %tobool.not.i.i.i.i, label %i40e_set_rs_bit.exit.i.i40e_update_tx_stats.exit.i_crit_edge, label %land.lhs.true.i.i.i.i

i40e_set_rs_bit.exit.i.i40e_update_tx_stats.exit.i_crit_edge: ; preds = %i40e_set_rs_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_update_tx_stats.exit.i

land.lhs.true.i.i.i.i:                            ; preds = %i40e_set_rs_bit.exit.i
  %77 = tail call i32 @llvm.read_register.i32(metadata !16) #10
  %and.i.i.i.i.i.i.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %80, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %81 = tail call i32 @llvm.read_register.i32(metadata !16) #10
  %and.i.i.i.i.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %84
  %85 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %86, ptrtoint (ptr @lockdep_recursion to i32)
  %87 = inttoptr i32 %add.i.i.i.i to ptr
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %87, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  %90 = tail call i32 @llvm.read_register.i32(metadata !16) #10
  %and.i.i.i7.i.i.i.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %93, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool20.not.i.i.i.i = icmp eq i32 %89, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.i40e_update_tx_stats.exit.i_crit_edge

land.lhs.true.i.i.i.i.i40e_update_tx_stats.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_update_tx_stats.exit.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %94 = tail call i32 @llvm.read_register.i32(metadata !16) #10
  %and.i.i.i.i.i.i = and i32 %94, -16384
  %95 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp.i.i.i.i = icmp eq i32 %97, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.i40e_update_tx_stats.exit.i_crit_edge

land.rhs.i.i.i.i.i40e_update_tx_stats.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_update_tx_stats.exit.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %98 = tail call i32 @llvm.read_register.i32(metadata !16) #10
  %and.i.i.i9.i.i.i.i = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %101, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !35
  %102 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %103
  %104 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %105, ptrtoint (ptr @hardirqs_enabled to i32)
  %106 = inttoptr i32 %add47.i.i.i.i to ptr
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %106, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !36
  %109 = tail call i32 @llvm.read_register.i32(metadata !16) #10
  %and.i.i.i12.i.i.i.i = and i32 %109, -16384
  %110 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %112, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool54.not.i.i.i.i = icmp eq i32 %108, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.i40e_update_tx_stats.exit.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.i40e_update_tx_stats.exit.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_update_tx_stats.exit.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.i40e_update_tx_stats.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !30

land.rhs58.i.i.i.i.i40e_update_tx_stats.exit.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_update_tx_stats.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %i40e_update_tx_stats.exit.i

i40e_update_tx_stats.exit.i:                      ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.i40e_update_tx_stats.exit.i_crit_edge, %land.rhs22.i.i.i.i.i40e_update_tx_stats.exit.i_crit_edge, %land.rhs.i.i.i.i.i40e_update_tx_stats.exit.i_crit_edge, %land.lhs.true.i.i.i.i.i40e_update_tx_stats.exit.i_crit_edge, %i40e_set_rs_bit.exit.i.i40e_update_tx_stats.exit.i_crit_edge
  %syncp.i.i = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 24
  %113 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %114, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !37
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 24, i32 0, i32 1
  %115 = tail call ptr @llvm.returnaddress(i32 0) #10
  %116 = ptrtoint ptr %115 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %116) #10
  %conv.i.i = zext i32 %75 to i64
  %stats.i.i = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 23
  %bytes.i.i = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 23, i32 1
  %117 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %bytes.i.i, align 8
  %add.i.i = add i64 %118, %conv.i.i
  store i64 %add.i.i, ptr %bytes.i.i, align 8
  %conv1.i.i = zext i32 %call.i112 to i64
  %119 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %stats.i.i, align 64
  %add3.i.i = add i64 %120, %conv1.i.i
  store i64 %add3.i.i, ptr %stats.i.i, align 64
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %116) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !38
  %121 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %122, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  %q_vector.i.i = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 29
  %123 = ptrtoint ptr %q_vector.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %q_vector.i.i, align 4
  %total_bytes5.i.i = getelementptr inbounds %struct.i40e_q_vector, ptr %124, i32 0, i32 5, i32 2
  %125 = ptrtoint ptr %total_bytes5.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %total_bytes5.i.i, align 8
  %add6.i.i = add i32 %126, %75
  store i32 %add6.i.i, ptr %total_bytes5.i.i, align 8
  %127 = load ptr, ptr %q_vector.i.i, align 4
  %total_packets9.i.i = getelementptr inbounds %struct.i40e_q_vector, ptr %127, i32 0, i32 5, i32 3
  %128 = ptrtoint ptr %total_packets9.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %total_packets9.i.i, align 4
  %add10.i.i = add i32 %129, %call.i112
  store i32 %add10.i.i, ptr %total_packets9.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i112, i32 %sub74)
  %cmp11.i = icmp ult i32 %call.i112, %sub74
  br label %i40e_xmit_zc.exit

i40e_xmit_zc.exit:                                ; preds = %i40e_update_tx_stats.exit.i, %cond.end.i40e_xmit_zc.exit_crit_edge
  %retval.0.i = phi i1 [ %cmp11.i, %i40e_update_tx_stats.exit.i ], [ true, %cond.end.i40e_xmit_zc.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %total_bytes.i) #10
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i40e_clean_xdp_tx_buffer(ptr nocapture noundef %tx_ring, ptr nocapture noundef %tx_bi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.i40e_tx_buffer, ptr %tx_bi, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @xdp_return_frame(ptr noundef %2) #10
  %xdp_tx_active = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 16
  %3 = ptrtoint ptr %xdp_tx_active to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %xdp_tx_active, align 16
  %dec = add i16 %4, -1
  store i16 %dec, ptr %xdp_tx_active, align 16
  %dev = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %dma = getelementptr inbounds %struct.i40e_tx_buffer, ptr %tx_bi, i32 0, i32 4
  %7 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma, align 4
  %len = getelementptr inbounds %struct.i40e_tx_buffer, ptr %tx_bi, i32 0, i32 5
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef 1, i32 noundef 0) #10
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %len, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xsk_tx_completed(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xsk_set_tx_need_wakeup(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_xsk_wakeup(ptr nocapture noundef readonly %dev, i32 noundef %queue_id, i32 %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %state = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %state3 = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state3, align 4
  %and1.i36 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i36)
  %tobool6.not = icmp eq i32 %and1.i36, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %xdp_prog.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 33
  %9 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %xdp_prog.i, align 32
  %tobool.i.not = icmp eq ptr %10, null
  br i1 %tobool.i.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %num_queue_pairs = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 44
  %11 = ptrtoint ptr %num_queue_pairs to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_queue_pairs, align 2
  %conv = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %queue_id)
  %cmp.not = icmp ugt i32 %conv, %queue_id
  br i1 %cmp.not, label %if.end14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %xdp_rings = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 22
  %13 = ptrtoint ptr %xdp_rings to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xdp_rings, align 64
  %arrayidx = getelementptr ptr, ptr %14, i32 %queue_id
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %xsk_pool = getelementptr inbounds %struct.i40e_ring, ptr %16, i32 0, i32 37
  %17 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xsk_pool, align 128
  %tobool15.not = icmp eq ptr %18, null
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %q_vector = getelementptr inbounds %struct.i40e_ring, ptr %16, i32 0, i32 29
  %19 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %q_vector, align 4
  %state.i = getelementptr inbounds %struct.i40e_q_vector, ptr %20, i32 0, i32 3, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %__cmpxchg.exit.i.do.body.i_crit_edge, %if.end17
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state.i, align 8
  %and.i = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %do.body.i
  %and2.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.then21, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  %or.i = or i32 %22, 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %state.i, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end5.i
  %23 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state.i, i32 %22, i32 %or.i) #10, !srcloc !43
  %asmresult.i.i = extractvalue { i32, i32 } %23, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %23, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !44
  %cmp.not.i = icmp eq i32 %asmresult1.i.i, %22
  br i1 %cmp.not.i, label %__cmpxchg.exit.i.cleanup_crit_edge, label %__cmpxchg.exit.i.do.body.i_crit_edge

__cmpxchg.exit.i.do.body.i_crit_edge:             ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

__cmpxchg.exit.i.cleanup_crit_edge:               ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %q_vector, align 4
  tail call void @i40e_force_wb(ptr noundef %1, ptr noundef %25) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %__cmpxchg.exit.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %entry.cleanup_crit_edge ], [ -100, %if.end.cleanup_crit_edge ], [ -6, %if.end8.cleanup_crit_edge ], [ -6, %if.end11.cleanup_crit_edge ], [ -6, %if.end14.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %do.body.i.cleanup_crit_edge ], [ 0, %__cmpxchg.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_force_wb(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_xsk_clean_rx_ring(ptr nocapture noundef readonly %rx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 11
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %count, align 2
  %sub = add i16 %1, -1
  %next_to_clean = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 15
  %2 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %next_to_clean, align 2
  %next_to_use = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 14
  %4 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %next_to_use, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp.not14 = icmp eq i16 %3, %5
  br i1 %cmp.not14, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %6 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ntc.015 = phi i16 [ %3, %for.body.lr.ph ], [ %and, %for.body.for.body_crit_edge ]
  %conv2 = zext i16 %ntc.015 to i32
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %arrayidx.i = getelementptr ptr, ptr %8, i32 %conv2
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  tail call void @xp_free(ptr noundef %10) #10
  %add = add i16 %ntc.015, 1
  %and = and i16 %add, %sub
  %cmp.not = icmp eq i16 %and, %5
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_xsk_clean_tx_ring(ptr nocapture noundef %tx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_clean = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 15
  %0 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_clean, align 2
  %next_to_use = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 14
  %2 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %next_to_use, align 4
  %xsk_pool = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 37
  %4 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xsk_pool, align 128
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.not25 = icmp eq i16 %1, %3
  br i1 %cmp.not25, label %entry.if.end12_crit_edge, label %while.body.lr.ph

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

while.body.lr.ph:                                 ; preds = %entry
  %6 = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 5
  %xdp_tx_active.i = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 16
  %dev.i = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 2
  %count = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %xsk_frames.027 = phi i32 [ 0, %while.body.lr.ph ], [ %xsk_frames.1, %if.end.while.body_crit_edge ]
  %ntc.026 = phi i16 [ %1, %while.body.lr.ph ], [ %spec.store.select, %if.end.while.body_crit_edge ]
  %conv = zext i16 %ntc.026 to i32
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr %struct.i40e_tx_buffer, ptr %8, i32 %conv, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  tail call void @xdp_return_frame(ptr noundef %13) #10
  %14 = ptrtoint ptr %xdp_tx_active.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %xdp_tx_active.i, align 16
  %dec.i = add i16 %15, -1
  store i16 %dec.i, ptr %xdp_tx_active.i, align 16
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 8
  %dma.i = getelementptr %struct.i40e_tx_buffer, ptr %8, i32 %conv, i32 4
  %18 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma.i, align 4
  %len.i = getelementptr %struct.i40e_tx_buffer, ptr %8, i32 %conv, i32 5
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef 1, i32 noundef 0) #10
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %len.i, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %xsk_frames.027, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %xsk_frames.1 = phi i32 [ %xsk_frames.027, %if.then ], [ %inc, %if.else ]
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %9, align 4
  %inc3 = add i16 %ntc.026, 1
  %24 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc3, i16 %25)
  %cmp6.not = icmp ult i16 %inc3, %25
  %spec.store.select = select i1 %cmp6.not, i16 %inc3, i16 0
  %cmp.not = icmp eq i16 %spec.store.select, %3
  br i1 %cmp.not, label %while.end, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xsk_frames.1)
  %tobool10.not = icmp eq i32 %xsk_frames.1, 0
  br i1 %tobool10.not, label %while.end.if.end12_crit_edge, label %if.then11

while.end.if.end12_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @xsk_tx_completed(ptr noundef %5, i32 noundef %xsk_frames.1) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %while.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @i40e_xsk_any_rx_ring_enabled(ptr nocapture noundef readonly %vsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 128
  %num_queue_pairs = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 44
  %2 = ptrtoint ptr %num_queue_pairs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_queue_pairs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp9.not = icmp eq i16 %3, 0
  br i1 %cmp9.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.010, 1
  %4 = ptrtoint ptr %num_queue_pairs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_queue_pairs, align 2
  %conv = zext i16 %5 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup.loopexit_crit_edge

for.cond.cleanup.loopexit_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.loopexit

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %conv3 = trunc i32 %i.010 to i16
  %call = tail call ptr @xsk_get_pool_from_qid(ptr noundef %1, i16 noundef zeroext %conv3) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup.loopexit_crit_edge

for.body.cleanup.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %for.body.cleanup.loopexit_crit_edge, %for.cond.cleanup.loopexit_crit_edge
  %6 = xor i1 %tobool.not, true
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ %6, %cleanup.loopexit ]
  ret i1 %cmp.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xsk_get_pool_from_qid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_queue_pair_disable(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_queue_pair_enable(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xp_dma_map(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_dma_unmap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xp_alloc_batch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_dma_sync_for_cpu_slow(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_do_redirect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_xmit_xdp_tx_ring(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_warn_invalid_xdp_action(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xdp_exception(ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 1), ptr blockaddress(@trace_xdp_exception, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !31

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !16) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !30

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !16) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !45
  %call42 = tail call i32 @__traceiter_xdp_exception(ptr noundef null, ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !46
  %13 = tail call i32 @llvm.read_register.i32(metadata !16) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !16) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !30

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !16) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xdp_exception.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xdp_exception.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 51, ptr noundef nonnull @.str.3) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !48
  %31 = tail call i32 @llvm.read_register.i32(metadata !16) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_dispatcher_xdp_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_master_redirect(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xdp_exception(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @i40e_construct_skb_zc(ptr nocapture noundef readonly %rx_ring, ptr noundef %xdp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xdp, align 4
  %data_meta = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %2 = ptrtoint ptr %data_meta to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_meta, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %data_end = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %4 = ptrtoint ptr %data_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_end, align 4
  %sub.ptr.lhs.cast2 = ptrtoint ptr %5 to i32
  %q_vector = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 29
  %6 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %q_vector, align 4
  %napi = getelementptr inbounds %struct.i40e_q_vector, ptr %7, i32 0, i32 3
  %data_hard_start = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %8 = ptrtoint ptr %data_hard_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data_hard_start, align 4
  %sub.ptr.rhs.cast7 = ptrtoint ptr %9 to i32
  %sub.ptr.sub8 = sub i32 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast7
  %call = tail call ptr @__napi_alloc_skb(ptr noundef %napi, i32 noundef %sub.ptr.sub8, i32 noundef 10784) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end, !prof !26

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xdp, align 4
  %12 = ptrtoint ptr %data_hard_start to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data_hard_start, align 4
  %sub.ptr.lhs.cast14 = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast15 = ptrtoint ptr %13 to i32
  %sub.ptr.sub16 = sub i32 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast15
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %sub.ptr.sub16
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %17, i32 %sub.ptr.sub16
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 7
  %18 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not.i = icmp eq i32 %19, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !30

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !49
  unreachable

__skb_put.exit:                                   ; preds = %if.end
  %sub.ptr.sub4 = sub i32 %sub.ptr.lhs.cast2, %sub.ptr.lhs.cast
  %add.ptr.i37 = getelementptr i8, ptr %add.ptr1.i, i32 %sub.ptr.sub4
  %20 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i37, ptr %tail.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %21 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len9.i, align 4
  %add.i = add i32 %22, %sub.ptr.sub4
  store i32 %add.i, ptr %len9.i, align 4
  %23 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xdp, align 4
  %25 = call ptr @memcpy(ptr %add.ptr1.i, ptr %24, i32 %sub.ptr.sub4)
  %tobool19.not = icmp eq ptr %1, %3
  br i1 %tobool19.not, label %__skb_put.exit.out_crit_edge, label %if.then20

__skb_put.exit.out_crit_edge:                     ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then20:                                        ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i32 %sub.ptr.sub to i8
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 17
  %26 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %end.i.i, align 4
  %meta_len1.i = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %meta_len1.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %meta_len1.i, align 1
  br label %out

out:                                              ; preds = %if.then20, %__skb_put.exit.out_crit_edge, %entry.out_crit_edge
  tail call void @xp_free(ptr noundef %xdp) #10
  ret ptr %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @eth_skb_pad(ptr noundef %skb) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %1)
  %cmp.i.i = icmp ult i32 %1, 60
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.skb_put_padto.exit_crit_edge, !prof !26

entry.skb_put_padto.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_put_padto.exit

if.then.i.i:                                      ; preds = %entry
  %sub.i.i = sub nuw nsw i32 60, %1
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i, label %if.then.i.i.skb_put_padto.exit_crit_edge

if.then.i.i.skb_put_padto.exit_crit_edge:         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_put_padto.exit

if.end.i.i:                                       ; preds = %if.then.i.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i.i.i, label %__skb_put.exit.i.i, label %do.body3.i.i.i, !prof !30

do.body3.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !49
  unreachable

__skb_put.exit.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %sub.i.i
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i.i, align 8
  %6 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len1.i.i, align 4
  %add.i.i.i = add i32 %7, %sub.i.i
  store i32 %add.i.i.i, ptr %len1.i.i, align 4
  br label %skb_put_padto.exit

skb_put_padto.exit:                               ; preds = %__skb_put.exit.i.i, %if.then.i.i.skb_put_padto.exit_crit_edge, %entry.skb_put_padto.exit_crit_edge
  %retval.0.i.i = phi i32 [ -12, %if.then.i.i.skb_put_padto.exit_crit_edge ], [ 0, %__skb_put.exit.i.i ], [ 0, %entry.skb_put_padto.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_process_skb_fields(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_get_tx_pending(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xsk_tx_peek_release_desc_batch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i40e_fill_tx_hw_ring(ptr nocapture noundef %xdp_ring, ptr nocapture noundef readonly %descs, i32 noundef %nb_pkts, ptr nocapture noundef %total_bytes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %nb_pkts, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp36.not = icmp eq i32 %and, 0
  br i1 %cmp36.not, label %entry.for.cond2.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond2.preheader

for.body.lr.ph:                                   ; preds = %entry
  %next_to_use.i = getelementptr inbounds %struct.i40e_ring, ptr %xdp_ring, i32 0, i32 14
  %xsk_pool.i = getelementptr inbounds %struct.i40e_ring, ptr %xdp_ring, i32 0, i32 37
  %desc3.i = getelementptr inbounds %struct.i40e_ring, ptr %xdp_ring, i32 0, i32 1
  br label %for.body

for.cond2.preheader:                              ; preds = %i40e_xmit_pkt_batch.exit.for.cond2.preheader_crit_edge, %entry.for.cond2.preheader_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %nb_pkts)
  %cmp438 = icmp ult i32 %and, %nb_pkts
  br i1 %cmp438, label %for.body5.lr.ph, label %for.cond2.preheader.for.end8_crit_edge

for.cond2.preheader.for.end8_crit_edge:           ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end8

for.body5.lr.ph:                                  ; preds = %for.cond2.preheader
  %xsk_pool.i20 = getelementptr inbounds %struct.i40e_ring, ptr %xdp_ring, i32 0, i32 37
  %desc2.i = getelementptr inbounds %struct.i40e_ring, ptr %xdp_ring, i32 0, i32 1
  %next_to_use.i26 = getelementptr inbounds %struct.i40e_ring, ptr %xdp_ring, i32 0, i32 14
  br label %for.body5

for.body:                                         ; preds = %i40e_xmit_pkt_batch.exit.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %i40e_xmit_pkt_batch.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xdp_desc, ptr %descs, i32 %i.037
  %0 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_use.i, align 4
  %2 = ptrtoint ptr %xsk_pool.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xsk_pool.i, align 128
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx, align 8
  %call.i.i = tail call i32 @xp_raw_get_dma(ptr noundef %3, i64 noundef %5) #10
  %6 = ptrtoint ptr %xsk_pool.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xsk_pool.i, align 128
  %len.i = getelementptr %struct.xdp_desc, ptr %descs, i32 %i.037, i32 1
  %dma_need_sync.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %dma_need_sync.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dma_need_sync.i.i.i, align 2, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i.i.i, label %for.body.xsk_buff_raw_dma_sync_for_device.exit.i_crit_edge, label %if.end.i.i.i

for.body.xsk_buff_raw_dma_sync_for_device.exit.i_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %xsk_buff_raw_dma_sync_for_device.exit.i

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 8
  tail call void @xp_dma_sync_for_device_slow(ptr noundef %7, i32 noundef %call.i.i, i32 noundef %11) #10
  br label %xsk_buff_raw_dma_sync_for_device.exit.i

xsk_buff_raw_dma_sync_for_device.exit.i:          ; preds = %if.end.i.i.i, %for.body.xsk_buff_raw_dma_sync_for_device.exit.i_crit_edge
  %12 = ptrtoint ptr %desc3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc3.i, align 4
  %inc.i = add i16 %1, 1
  %idxprom.i = zext i16 %1 to i32
  %arrayidx4.i = getelementptr %struct.i40e_tx_desc, ptr %13, i32 %idxprom.i
  %conv.i = zext i32 %call.i.i to i64
  %14 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #10
  %15 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %arrayidx4.i, align 8
  %16 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i, align 8
  %conv4.i.i = zext i32 %17 to i64
  %shl5.i.i = shl i64 %conv4.i.i, 34
  %or6.i.i = or i64 %shl5.i.i, 80
  %18 = tail call i64 @llvm.bswap.i64(i64 %or6.i.i) #10
  %cmd_type_offset_bsz.i = getelementptr %struct.i40e_tx_desc, ptr %13, i32 %idxprom.i, i32 1
  %19 = ptrtoint ptr %cmd_type_offset_bsz.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %cmd_type_offset_bsz.i, align 8
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 8
  %22 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %total_bytes, align 4
  %add.i = add i32 %23, %21
  store i32 %add.i, ptr %total_bytes, align 4
  %24 = ptrtoint ptr %xsk_pool.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xsk_pool.i, align 128
  %arrayidx.1.i = getelementptr %struct.xdp_desc, ptr %arrayidx, i32 1
  %26 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.1.i, align 8
  %call.i.1.i = tail call i32 @xp_raw_get_dma(ptr noundef %25, i64 noundef %27) #10
  %28 = ptrtoint ptr %xsk_pool.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xsk_pool.i, align 128
  %len.1.i = getelementptr %struct.xdp_desc, ptr %arrayidx, i32 1, i32 1
  %dma_need_sync.i.i.1.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %29, i32 0, i32 25
  %30 = ptrtoint ptr %dma_need_sync.i.i.1.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dma_need_sync.i.i.1.i, align 2, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i.1.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i.i.1.i, label %xsk_buff_raw_dma_sync_for_device.exit.i.xsk_buff_raw_dma_sync_for_device.exit.1.i_crit_edge, label %if.end.i.i.1.i

xsk_buff_raw_dma_sync_for_device.exit.i.xsk_buff_raw_dma_sync_for_device.exit.1.i_crit_edge: ; preds = %xsk_buff_raw_dma_sync_for_device.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xsk_buff_raw_dma_sync_for_device.exit.1.i

if.end.i.i.1.i:                                   ; preds = %xsk_buff_raw_dma_sync_for_device.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %len.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.1.i, align 8
  tail call void @xp_dma_sync_for_device_slow(ptr noundef %29, i32 noundef %call.i.1.i, i32 noundef %33) #10
  br label %xsk_buff_raw_dma_sync_for_device.exit.1.i

xsk_buff_raw_dma_sync_for_device.exit.1.i:        ; preds = %if.end.i.i.1.i, %xsk_buff_raw_dma_sync_for_device.exit.i.xsk_buff_raw_dma_sync_for_device.exit.1.i_crit_edge
  %34 = ptrtoint ptr %desc3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc3.i, align 4
  %inc.1.i = add i16 %1, 2
  %idxprom.1.i = zext i16 %inc.i to i32
  %arrayidx4.1.i = getelementptr %struct.i40e_tx_desc, ptr %35, i32 %idxprom.1.i
  %conv.1.i = zext i32 %call.i.1.i to i64
  %36 = tail call i64 @llvm.bswap.i64(i64 %conv.1.i) #10
  %37 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %arrayidx4.1.i, align 8
  %38 = ptrtoint ptr %len.1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.1.i, align 8
  %conv4.i.1.i = zext i32 %39 to i64
  %shl5.i.1.i = shl i64 %conv4.i.1.i, 34
  %or6.i.1.i = or i64 %shl5.i.1.i, 80
  %40 = tail call i64 @llvm.bswap.i64(i64 %or6.i.1.i) #10
  %cmd_type_offset_bsz.1.i = getelementptr %struct.i40e_tx_desc, ptr %35, i32 %idxprom.1.i, i32 1
  %41 = ptrtoint ptr %cmd_type_offset_bsz.1.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %cmd_type_offset_bsz.1.i, align 8
  %42 = ptrtoint ptr %len.1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.1.i, align 8
  %44 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %total_bytes, align 4
  %add.1.i = add i32 %45, %43
  store i32 %add.1.i, ptr %total_bytes, align 4
  %46 = ptrtoint ptr %xsk_pool.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %xsk_pool.i, align 128
  %arrayidx.2.i = getelementptr %struct.xdp_desc, ptr %arrayidx, i32 2
  %48 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx.2.i, align 8
  %call.i.2.i = tail call i32 @xp_raw_get_dma(ptr noundef %47, i64 noundef %49) #10
  %50 = ptrtoint ptr %xsk_pool.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %xsk_pool.i, align 128
  %len.2.i = getelementptr %struct.xdp_desc, ptr %arrayidx, i32 2, i32 1
  %dma_need_sync.i.i.2.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %51, i32 0, i32 25
  %52 = ptrtoint ptr %dma_need_sync.i.i.2.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %dma_need_sync.i.i.2.i, align 2, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i.i.2.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i.i.2.i, label %xsk_buff_raw_dma_sync_for_device.exit.1.i.xsk_buff_raw_dma_sync_for_device.exit.2.i_crit_edge, label %if.end.i.i.2.i

xsk_buff_raw_dma_sync_for_device.exit.1.i.xsk_buff_raw_dma_sync_for_device.exit.2.i_crit_edge: ; preds = %xsk_buff_raw_dma_sync_for_device.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xsk_buff_raw_dma_sync_for_device.exit.2.i

if.end.i.i.2.i:                                   ; preds = %xsk_buff_raw_dma_sync_for_device.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %len.2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len.2.i, align 8
  tail call void @xp_dma_sync_for_device_slow(ptr noundef %51, i32 noundef %call.i.2.i, i32 noundef %55) #10
  br label %xsk_buff_raw_dma_sync_for_device.exit.2.i

xsk_buff_raw_dma_sync_for_device.exit.2.i:        ; preds = %if.end.i.i.2.i, %xsk_buff_raw_dma_sync_for_device.exit.1.i.xsk_buff_raw_dma_sync_for_device.exit.2.i_crit_edge
  %56 = ptrtoint ptr %desc3.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %desc3.i, align 4
  %idxprom.2.i = zext i16 %inc.1.i to i32
  %arrayidx4.2.i = getelementptr %struct.i40e_tx_desc, ptr %57, i32 %idxprom.2.i
  %conv.2.i = zext i32 %call.i.2.i to i64
  %58 = tail call i64 @llvm.bswap.i64(i64 %conv.2.i) #10
  %59 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %arrayidx4.2.i, align 8
  %60 = ptrtoint ptr %len.2.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len.2.i, align 8
  %conv4.i.2.i = zext i32 %61 to i64
  %shl5.i.2.i = shl i64 %conv4.i.2.i, 34
  %or6.i.2.i = or i64 %shl5.i.2.i, 80
  %62 = tail call i64 @llvm.bswap.i64(i64 %or6.i.2.i) #10
  %cmd_type_offset_bsz.2.i = getelementptr %struct.i40e_tx_desc, ptr %57, i32 %idxprom.2.i, i32 1
  %63 = ptrtoint ptr %cmd_type_offset_bsz.2.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %cmd_type_offset_bsz.2.i, align 8
  %64 = ptrtoint ptr %len.2.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len.2.i, align 8
  %66 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %total_bytes, align 4
  %add.2.i = add i32 %67, %65
  store i32 %add.2.i, ptr %total_bytes, align 4
  %68 = ptrtoint ptr %xsk_pool.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %xsk_pool.i, align 128
  %arrayidx.3.i = getelementptr %struct.xdp_desc, ptr %arrayidx, i32 3
  %70 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx.3.i, align 8
  %call.i.3.i = tail call i32 @xp_raw_get_dma(ptr noundef %69, i64 noundef %71) #10
  %72 = ptrtoint ptr %xsk_pool.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %xsk_pool.i, align 128
  %len.3.i = getelementptr %struct.xdp_desc, ptr %arrayidx, i32 3, i32 1
  %dma_need_sync.i.i.3.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %73, i32 0, i32 25
  %74 = ptrtoint ptr %dma_need_sync.i.i.3.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %dma_need_sync.i.i.3.i, align 2, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i.i.3.i = icmp eq i8 %75, 0
  br i1 %tobool.not.i.i.3.i, label %xsk_buff_raw_dma_sync_for_device.exit.2.i.i40e_xmit_pkt_batch.exit_crit_edge, label %if.end.i.i.3.i

xsk_buff_raw_dma_sync_for_device.exit.2.i.i40e_xmit_pkt_batch.exit_crit_edge: ; preds = %xsk_buff_raw_dma_sync_for_device.exit.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_xmit_pkt_batch.exit

if.end.i.i.3.i:                                   ; preds = %xsk_buff_raw_dma_sync_for_device.exit.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %len.3.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len.3.i, align 8
  tail call void @xp_dma_sync_for_device_slow(ptr noundef %73, i32 noundef %call.i.3.i, i32 noundef %77) #10
  br label %i40e_xmit_pkt_batch.exit

i40e_xmit_pkt_batch.exit:                         ; preds = %if.end.i.i.3.i, %xsk_buff_raw_dma_sync_for_device.exit.2.i.i40e_xmit_pkt_batch.exit_crit_edge
  %inc.2.i = add i16 %1, 3
  %78 = ptrtoint ptr %desc3.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %desc3.i, align 4
  %inc.3.i = add i16 %1, 4
  %idxprom.3.i = zext i16 %inc.2.i to i32
  %arrayidx4.3.i = getelementptr %struct.i40e_tx_desc, ptr %79, i32 %idxprom.3.i
  %conv.3.i = zext i32 %call.i.3.i to i64
  %80 = tail call i64 @llvm.bswap.i64(i64 %conv.3.i) #10
  %81 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %arrayidx4.3.i, align 8
  %82 = ptrtoint ptr %len.3.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len.3.i, align 8
  %conv4.i.3.i = zext i32 %83 to i64
  %shl5.i.3.i = shl i64 %conv4.i.3.i, 34
  %or6.i.3.i = or i64 %shl5.i.3.i, 80
  %84 = tail call i64 @llvm.bswap.i64(i64 %or6.i.3.i) #10
  %cmd_type_offset_bsz.3.i = getelementptr %struct.i40e_tx_desc, ptr %79, i32 %idxprom.3.i, i32 1
  %85 = ptrtoint ptr %cmd_type_offset_bsz.3.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %cmd_type_offset_bsz.3.i, align 8
  %86 = ptrtoint ptr %len.3.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len.3.i, align 8
  %88 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %total_bytes, align 4
  %add.3.i = add i32 %89, %87
  store i32 %add.3.i, ptr %total_bytes, align 4
  %90 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %inc.3.i, ptr %next_to_use.i, align 4
  %add = add nuw i32 %i.037, 4
  %cmp = icmp ult i32 %add, %and
  br i1 %cmp, label %i40e_xmit_pkt_batch.exit.for.body_crit_edge, label %i40e_xmit_pkt_batch.exit.for.cond2.preheader_crit_edge

i40e_xmit_pkt_batch.exit.for.cond2.preheader_crit_edge: ; preds = %i40e_xmit_pkt_batch.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond2.preheader

i40e_xmit_pkt_batch.exit.for.body_crit_edge:      ; preds = %i40e_xmit_pkt_batch.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body5:                                        ; preds = %i40e_xmit_pkt.exit.for.body5_crit_edge, %for.body5.lr.ph
  %i.139 = phi i32 [ %and, %for.body5.lr.ph ], [ %inc, %i40e_xmit_pkt.exit.for.body5_crit_edge ]
  %arrayidx6 = getelementptr %struct.xdp_desc, ptr %descs, i32 %i.139
  %91 = ptrtoint ptr %xsk_pool.i20 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %xsk_pool.i20, align 128
  %93 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx6, align 8
  %call.i.i21 = tail call i32 @xp_raw_get_dma(ptr noundef %92, i64 noundef %94) #10
  %95 = ptrtoint ptr %xsk_pool.i20 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %xsk_pool.i20, align 128
  %len.i22 = getelementptr %struct.xdp_desc, ptr %descs, i32 %i.139, i32 1
  %dma_need_sync.i.i.i23 = getelementptr inbounds %struct.xsk_buff_pool, ptr %96, i32 0, i32 25
  %97 = ptrtoint ptr %dma_need_sync.i.i.i23 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %dma_need_sync.i.i.i23, align 2, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i.i.i24 = icmp eq i8 %98, 0
  br i1 %tobool.not.i.i.i24, label %for.body5.i40e_xmit_pkt.exit_crit_edge, label %if.end.i.i.i25

for.body5.i40e_xmit_pkt.exit_crit_edge:           ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_xmit_pkt.exit

if.end.i.i.i25:                                   ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %len.i22 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %len.i22, align 8
  tail call void @xp_dma_sync_for_device_slow(ptr noundef %96, i32 noundef %call.i.i21, i32 noundef %100) #10
  br label %i40e_xmit_pkt.exit

i40e_xmit_pkt.exit:                               ; preds = %if.end.i.i.i25, %for.body5.i40e_xmit_pkt.exit_crit_edge
  %101 = ptrtoint ptr %desc2.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %desc2.i, align 4
  %103 = ptrtoint ptr %next_to_use.i26 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %next_to_use.i26, align 4
  %inc.i27 = add i16 %104, 1
  store i16 %inc.i27, ptr %next_to_use.i26, align 4
  %idxprom.i28 = zext i16 %104 to i32
  %arrayidx.i = getelementptr %struct.i40e_tx_desc, ptr %102, i32 %idxprom.i28
  %conv.i29 = zext i32 %call.i.i21 to i64
  %105 = tail call i64 @llvm.bswap.i64(i64 %conv.i29) #10
  %106 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %105, ptr %arrayidx.i, align 8
  %107 = ptrtoint ptr %len.i22 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %len.i22, align 8
  %conv4.i.i30 = zext i32 %108 to i64
  %shl5.i.i31 = shl i64 %conv4.i.i30, 34
  %or6.i.i32 = or i64 %shl5.i.i31, 80
  %109 = tail call i64 @llvm.bswap.i64(i64 %or6.i.i32) #10
  %cmd_type_offset_bsz.i33 = getelementptr %struct.i40e_tx_desc, ptr %102, i32 %idxprom.i28, i32 1
  %110 = ptrtoint ptr %cmd_type_offset_bsz.i33 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %109, ptr %cmd_type_offset_bsz.i33, align 8
  %111 = ptrtoint ptr %len.i22 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %len.i22, align 8
  %113 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %total_bytes, align 4
  %add.i34 = add i32 %114, %112
  store i32 %add.i34, ptr %total_bytes, align 4
  %inc = add i32 %i.139, 1
  %exitcond.not = icmp eq i32 %inc, %nb_pkts
  br i1 %exitcond.not, label %i40e_xmit_pkt.exit.for.end8_crit_edge, label %i40e_xmit_pkt.exit.for.body5_crit_edge

i40e_xmit_pkt.exit.for.body5_crit_edge:           ; preds = %i40e_xmit_pkt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body5

i40e_xmit_pkt.exit.for.end8_crit_edge:            ; preds = %i40e_xmit_pkt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end8

for.end8:                                         ; preds = %i40e_xmit_pkt.exit.for.end8_crit_edge, %for.cond2.preheader.for.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_xdp_ring_update_tail(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xp_raw_get_dma(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_dma_sync_for_device_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !12, !13, !15}
!llvm.named.register.sp = !{!16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../include/linux/filter.h", i32 613, i32 2}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../include/trace/events/xdp.h", i32 28, i32 1}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !6, !"__warned", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/i40e/i40e_xsk.c", i32 314, i32 2}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{!"sp"}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i64 2160786277}
!28 = !{i8 0, i8 2}
!29 = !{!"branch_weights", i32 1, i32 16000, i32 4, i32 2, i32 1}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{i64 2149064768, i64 2149064773, i64 2149064786, i64 2149064830, i64 2149064864, i64 2149064885}
!32 = !{i64 911203, i64 911264}
!33 = !{i64 2150257825}
!34 = !{i64 2150262759}
!35 = !{i64 2150284477}
!36 = !{i64 2150289371}
!37 = !{i64 2150365898}
!38 = !{i64 2150366223}
!39 = !{i64 913935}
!40 = !{i64 914220}
!41 = !{!"branch_weights", i32 1, i32 10000, i32 1, i32 1, i32 1, i32 1}
!42 = !{i64 2155621617}
!43 = !{i64 1016995, i64 1017016, i64 1017039, i64 1017058, i64 1017077}
!44 = !{i64 2155622022}
!45 = !{i64 2157102274}
!46 = !{i64 2157102489}
!47 = !{i64 2149622087}
!48 = !{i64 2149623123}
!49 = !{i64 2154962543, i64 2154963031, i64 2154962580, i64 2154962636, i64 2154962670, i64 2154962694, i64 2154962735, i64 2154962756, i64 2154962784, i64 2154962818}
