; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/i40e/i40e_txrx.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/i40e/i40e_txrx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.130 }
%struct.atomic_t = type { i32 }
%union.anon.130 = type { i32 }
%struct.i40e_rx_ptype_decoded = type { i24 }
%struct.cpumask = type { [1 x i32] }
%struct.static_key_false = type { %struct.static_key }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.234, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.anon.234 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%struct.llist_node = type { ptr }
%union.anon.22 = type { i32 }
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.i40e_vsi = type { ptr, [128 x i32], i8, i8, i32, [1 x i32], i32, %struct.spinlock, [256 x %struct.hlist_head], i8, %struct.rtnl_link_stats64, %struct.rtnl_link_stats64, %struct.i40e_eth_stats, %struct.i40e_eth_stats, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, ptr, ptr, i16, i16, ptr, ptr, i32, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, %struct.tc_mqprio_qopt_offload, %struct.i40e_tc_configuration, %struct.i40e_aqc_vsi_properties_data, i16, i8, [8 x i8], [8 x i16], [8 x i8], ptr, i16, i16, ptr, i8, i32, i16, i16, i16, i8, i16, %struct.list_head, [8 x i16], [4 x i32], %struct.list_head, i32, ptr, ptr, ptr, [88 x i8] }
%struct.hlist_head = type { ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.i40e_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.i40e_tc_configuration = type { i8, i8, [8 x %struct.i40e_tc_info] }
%struct.i40e_tc_info = type { i16, i16, i8 }
%struct.i40e_aqc_vsi_properties_data = type { i16, i16, [2 x i8], i8, i8, i16, i16, i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, [3 x i8], i8, i8, i32, [8 x i8], [8 x i16], i16, i16, [12 x i8] }
%struct.i40e_fdir_filter = type { %struct.hlist_node, i8, i8, i32, i32, [4 x i32], [4 x i32], i16, i16, i32, i16, i16, i16, i16, i8, i16, i8, i8, i16, i8, i8, i16, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.203, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.203 = type { ptr }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
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
%struct.i40e_adminq_ring = type { %struct.i40e_virt_mem, %struct.i40e_dma_mem, %struct.i40e_virt_mem, %union.anon.204, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.i40e_dma_mem = type { ptr, i32, i32 }
%union.anon.204 = type { ptr }
%struct.i40e_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.205 }
%union.anon.205 = type { %struct.anon.206 }
%struct.anon.206 = type { i32, i32, i32, i32 }
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
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.sctphdr = type { i16, i16, i32, i32 }
%struct.i40e_ring = type { ptr, ptr, ptr, ptr, ptr, %union.anon.200, [1 x i32], i16, i8, ptr, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, %struct.i40e_queue_stats, %struct.u64_stats_sync, %union.anon.202, i32, i32, ptr, ptr, %struct.callback_head, i16, ptr, ptr, i16, [58 x i8], %struct.xdp_rxq_info, ptr, ptr, [120 x i8] }
%union.anon.200 = type { ptr }
%struct.i40e_queue_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.202 = type { %struct.i40e_tx_queue_stats }
%struct.i40e_tx_queue_stats = type { i64, i64, i64, i64, i64, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.i40e_tx_buffer = type { ptr, %union.anon.201, i32, i16, i32, i32, i32 }
%union.anon.201 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.199, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.199 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.i40e_tx_desc = type { i64, i64 }
%struct.i40e_q_vector = type { ptr, i16, i16, %struct.napi_struct, %struct.i40e_ring_container, %struct.i40e_ring_container, i8, i8, %struct.cpumask, %struct.irq_affinity_notify, %struct.callback_head, [32 x i8], i8, [123 x i8] }
%struct.i40e_ring_container = type { ptr, i32, i32, i32, i16, i16, i16 }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, ptr, ptr }
%struct.i40e_rx_buffer = type { i32, ptr, i32, i16 }
%union.i40e_16byte_rx_desc = type { %struct.anon.217 }
%struct.anon.217 = type { i64, i64 }
%struct.anon.218 = type { %struct.i40e_16b_rx_wb_qw0, %struct.anon.222 }
%struct.i40e_16b_rx_wb_qw0 = type { %struct.anon.219, %union.anon.221 }
%struct.anon.219 = type { %union.anon.220, i16 }
%union.anon.220 = type { i16 }
%union.anon.221 = type { i32 }
%struct.anon.222 = type { i64 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.163, [48 x i8], %union.anon.164, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.166, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.163 = type { i64 }
%union.anon.164 = type { %struct.anon.165 }
%struct.anon.165 = type { i32, ptr }
%union.anon.166 = type { %struct.anon.167 }
%struct.anon.167 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.168, i32, i32, i32, i16, i16, %union.anon.170, i32, %union.anon.171, %union.anon.172, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.168 = type { i32 }
%union.anon.170 = type { i32 }
%union.anon.171 = type { i32 }
%union.anon.172 = type { i16 }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.10, %union.anon.148, %struct.atomic_t, i32 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.148 = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.153, [0 x i32], %union.anon.154, i16, i16, %union.anon.155, %struct.refcount_struct, [0 x i32], %union.anon.156 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.49 }
%union.anon.49 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.153 = type { i32 }
%union.anon.154 = type { %struct.hlist_node }
%union.anon.155 = type { i32 }
%union.anon.156 = type { i32 }
%struct.vlan_hdr = type { i16, i16 }
%struct.vlan_ethhdr = type { %union.anon.226, i16, i16, i16 }
%union.anon.226 = type { %struct.anon.227 }
%struct.anon.227 = type { [6 x i8], [6 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.i40e_tx_context_desc = type { i32, i16, i16, i64 }
%struct.i40e_filter_program_desc = type { i32, i32, i32, i32 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.97 }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { %struct.anon.99, [0 x %struct.sock_filter] }
%struct.anon.99 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }

@i40e_add_del_fdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 635, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unsupported IPv4 protocol 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i40e_add_del_fdir\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/intel/i40e/i40e_txrx.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i40e_add_del_fdir._entry_ptr = internal global ptr @i40e_add_del_fdir._entry, section ".printk_index", align 4
@i40e_add_del_fdir._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 656, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unsupported IPv6 protocol 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@i40e_add_del_fdir._entry_ptr.7 = internal global ptr @i40e_add_del_fdir._entry.5, section ".printk_index", align 4
@i40e_add_del_fdir._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 662, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported flow type 0x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@i40e_add_del_fdir._entry_ptr.10 = internal global ptr @i40e_add_del_fdir._entry.8, section ".printk_index", align 4
@i40e_setup_tx_descriptors.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&tx_ring->syncp)->seq\00", [40 x i8] zeroinitializer }, align 32
@i40e_setup_tx_descriptors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1456, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Unable to allocate memory for the Tx descriptor ring, size=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"i40e_setup_tx_descriptors\00", [38 x i8] zeroinitializer }, align 32
@i40e_setup_tx_descriptors._entry_ptr = internal global ptr @i40e_setup_tx_descriptors._entry, section ".printk_index", align 4
@i40e_setup_rx_descriptors.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&rx_ring->syncp)->seq\00", [40 x i8] zeroinitializer }, align 32
@i40e_setup_rx_descriptors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1593, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Unable to allocate memory for the Rx descriptor ring, size=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"i40e_setup_rx_descriptors\00", [38 x i8] zeroinitializer }, align 32
@i40e_setup_rx_descriptors._entry_ptr = internal global ptr @i40e_setup_rx_descriptors._entry, section ".printk_index", align 4
@i40e_add_del_fdir_tcp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 470, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Forcing ATR off, sideband rules for TCP/IPv4 flow being applied\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"i40e_add_del_fdir_tcp\00", [42 x i8] zeroinitializer }, align 32
@i40e_add_del_fdir_tcp._entry_ptr = internal global ptr @i40e_add_del_fdir_tcp._entry, section ".printk_index", align 4
@i40e_create_dummy_tcp_packet.tcp_packet = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00P\11\00r\00\00\00\00", [44 x i8] zeroinitializer }, align 32
@i40e_prepare_fdir_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 332, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"PCTYPE:%d, Filter command send failed for fd_id:%d (ret = %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"i40e_prepare_fdir_filter\00", [39 x i8] zeroinitializer }, align 32
@i40e_prepare_fdir_filter._entry_ptr = internal global ptr @i40e_prepare_fdir_filter._entry, section ".printk_index", align 4
@i40e_prepare_fdir_filter._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 339, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Filter OK for PCTYPE %d loc = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@i40e_prepare_fdir_filter._entry_ptr.23 = internal global ptr @i40e_prepare_fdir_filter._entry.21, section ".printk_index", align 4
@i40e_prepare_fdir_filter._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 343, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Filter deleted for PCTYPE %d loc = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@i40e_prepare_fdir_filter._entry_ptr.26 = internal global ptr @i40e_prepare_fdir_filter._entry.24, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@i40e_fd_handle_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 703, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ntuple filter loc = %d, could not be added\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"i40e_fd_handle_status\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@i40e_fd_handle_status._entry_ptr = internal global ptr @i40e_fd_handle_status._entry, section ".printk_index", align 4
@i40e_fd_handle_status._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.2, i32 742, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"FD filter space full, new ntuple rules will not be added\0A\00", [38 x i8] zeroinitializer }, align 32
@i40e_fd_handle_status._entry_ptr.34 = internal global ptr @i40e_fd_handle_status._entry.32, section ".printk_index", align 4
@i40e_fd_handle_status._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.30, ptr @.str.2, i32 747, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ntuple filter fd_id = %d, could not be removed\0A\00", [48 x i8] zeroinitializer }, align 32
@i40e_fd_handle_status._entry_ptr.37 = internal global ptr @i40e_fd_handle_status._entry.35, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@i40e_ptype_lookup = external dso_local local_unnamed_addr global [0 x %struct.i40e_rx_ptype_decoded], align 4
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Driver BUG: missing reserved tailroom\00", [58 x i8] zeroinitializer }, align 32
@__func__.xdp_update_frame_from_buff = private unnamed_addr constant [27 x i8] c"xdp_update_frame_from_buff\00", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_i40e_clean_tx_irq = external dso_local global %struct.tracepoint, align 4
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/intel/i40e/i40e_trace.h\00", [51 x i8] zeroinitializer }, align 32
@trace_i40e_clean_tx_irq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_i40e_clean_tx_irq_unmap = external dso_local global %struct.tracepoint, align 4
@trace_i40e_clean_tx_irq_unmap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_i40e_clean_rx_irq = external dso_local global %struct.tracepoint, align 4
@trace_i40e_clean_rx_irq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bpf_master_redirect_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__tracepoint_xdp_exception = external dso_local global %struct.tracepoint, align 4
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/xdp.h\00", [37 x i8] zeroinitializer }, align 32
@trace_xdp_exception.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@__tracepoint_i40e_clean_rx_irq_rx = external dso_local global %struct.tracepoint, align 4
@trace_i40e_clean_rx_irq_rx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__tracepoint_i40e_xmit_frame_ring = external dso_local global %struct.tracepoint, align 4
@trace_i40e_xmit_frame_ring.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@i40e_tx_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 3616, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TX DMA map failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i40e_tx_map\00", [20 x i8] zeroinitializer }, align 32
@i40e_tx_map._entry_ptr = internal global ptr @i40e_tx_map._entry, section ".printk_index", align 4
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@__tracepoint_i40e_xmit_frame_ring_drop = external dso_local global %struct.tracepoint, align 4
@trace_i40e_xmit_frame_ring_drop.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 13, i64 14]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 6, i64 17, i64 132]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 6, i64 17, i64 132]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 8, i64 4, i64 17, i64 41, i64 47]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 96]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 17, i64 132]
@__sancov_gen_cov_switch_values.61 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.62 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 4, i64 16, i64 32, i64 64]
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 634, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 655, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 661, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1443, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1455, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1583, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1592, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 470, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant [11 x i8] c"tcp_packet\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 260, i32 20 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 330, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 337, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 341, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 326, i32 6 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 702, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 742, i32 6 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 746, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant [21 x i8] c"../include/net/xdp.h\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 200, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 271, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [48 x i8] c"../drivers/net/ethernet/intel/i40e/i40e_trace.h\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 95, i32 1 }
@___asan_gen_.199 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 613, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [30 x i8] c"../include/trace/events/xdp.h\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 28, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 1368, i32 10 }
@___asan_gen_.208 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 108, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 598, i32 8 }
@___asan_gen_.213 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.220 = private constant [47 x i8] c"../drivers/net/ethernet/intel/i40e/i40e_txrx.c\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 3616, i32 2 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @i40e_add_del_fdir._entry, ptr @i40e_add_del_fdir._entry.5, ptr @i40e_add_del_fdir._entry.8, ptr @i40e_add_del_fdir._entry_ptr, ptr @i40e_add_del_fdir._entry_ptr.10, ptr @i40e_add_del_fdir._entry_ptr.7, ptr @i40e_add_del_fdir_tcp._entry, ptr @i40e_add_del_fdir_tcp._entry_ptr, ptr @i40e_fd_handle_status._entry, ptr @i40e_fd_handle_status._entry.32, ptr @i40e_fd_handle_status._entry.35, ptr @i40e_fd_handle_status._entry_ptr, ptr @i40e_fd_handle_status._entry_ptr.34, ptr @i40e_fd_handle_status._entry_ptr.37, ptr @i40e_prepare_fdir_filter._entry, ptr @i40e_prepare_fdir_filter._entry.21, ptr @i40e_prepare_fdir_filter._entry.24, ptr @i40e_prepare_fdir_filter._entry_ptr, ptr @i40e_prepare_fdir_filter._entry_ptr.23, ptr @i40e_prepare_fdir_filter._entry_ptr.26, ptr @i40e_setup_rx_descriptors._entry, ptr @i40e_setup_rx_descriptors._entry_ptr, ptr @i40e_setup_tx_descriptors._entry, ptr @i40e_setup_tx_descriptors._entry_ptr, ptr @i40e_tx_map._entry, ptr @i40e_tx_map._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @i40e_setup_tx_descriptors.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @i40e_setup_rx_descriptors.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @i40e_create_dummy_tcp_packet.tcp_packet, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_add_del_fdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_add_del_fdir._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_add_del_fdir._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_setup_tx_descriptors.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_setup_tx_descriptors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_setup_rx_descriptors.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_setup_rx_descriptors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_add_del_fdir_tcp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_create_dummy_tcp_packet.tcp_packet to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_prepare_fdir_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_prepare_fdir_filter._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_prepare_fdir_filter._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_fd_handle_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_fd_handle_status._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_fd_handle_status._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_tx_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_add_del_fdir(ptr nocapture noundef readonly %vsi, ptr nocapture noundef %input, i1 noundef zeroext %add) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 57
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %flow_type = getelementptr inbounds %struct.i40e_fdir_filter, ptr %input, i32 0, i32 1
  %2 = ptrtoint ptr %flow_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flow_type, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %do.end59 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb1
    i8 3, label %sw.bb4
    i8 5, label %sw.bb7
    i8 6, label %sw.bb10
    i8 7, label %sw.bb13
    i8 13, label %sw.bb16
    i8 14, label %sw.bb32
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @i40e_add_del_fdir_tcp(ptr noundef %vsi, ptr noundef %input, i1 noundef zeroext %add, i1 noundef zeroext true)
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call fastcc i32 @i40e_add_del_fdir_udp(ptr noundef %vsi, ptr noundef %input, i1 noundef zeroext %add, i1 noundef zeroext true)
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call6 = tail call fastcc i32 @i40e_add_del_fdir_sctp(ptr noundef %vsi, ptr noundef %input, i1 noundef zeroext %add, i1 noundef zeroext true)
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call9 = tail call fastcc i32 @i40e_add_del_fdir_tcp(ptr noundef %vsi, ptr noundef %input, i1 noundef zeroext %add, i1 noundef zeroext false)
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call12 = tail call fastcc i32 @i40e_add_del_fdir_udp(ptr noundef %vsi, ptr noundef %input, i1 noundef zeroext %add, i1 noundef zeroext false)
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call15 = tail call fastcc i32 @i40e_add_del_fdir_sctp(ptr noundef %vsi, ptr noundef %input, i1 noundef zeroext %add, i1 noundef zeroext false)
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %ipl4_proto = getelementptr inbounds %struct.i40e_fdir_filter, ptr %input, i32 0, i32 2
  %5 = ptrtoint ptr %ipl4_proto to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ipl4_proto, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %6, label %do.end [
    i8 6, label %sw.bb18
    i8 17, label %sw.bb21
    i8 -124, label %sw.bb24
    i8 0, label %sw.bb27
  ]

sw.bb18:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #16
  %call20 = tail call fastcc i32 @i40e_add_del_fdir_tcp(ptr noundef %vsi, ptr noundef %input, i1 noundef zeroext %add, i1 noundef zeroext true)
  br label %cleanup

sw.bb21:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #16
  %call23 = tail call fastcc i32 @i40e_add_del_fdir_udp(ptr noundef %vsi, ptr noundef %input, i1 noundef zeroext %add, i1 noundef zeroext true)
  br label %cleanup

sw.bb24:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #16
  %call26 = tail call fastcc i32 @i40e_add_del_fdir_sctp(ptr noundef %vsi, ptr noundef %input, i1 noundef zeroext %add, i1 noundef zeroext true)
  br label %cleanup

sw.bb27:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #16
  %call29 = tail call fastcc i32 @i40e_add_del_fdir_ip(ptr noundef %vsi, ptr noundef %input, i1 noundef zeroext %add, i1 noundef zeroext true)
  br label %cleanup

do.end:                                           ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #16
  %conv17 = zext i8 %6 to i32
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %conv17) #17
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  %ipl4_proto33 = getelementptr inbounds %struct.i40e_fdir_filter, ptr %input, i32 0, i32 2
  %10 = ptrtoint ptr %ipl4_proto33 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ipl4_proto33, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %11, label %do.end50 [
    i8 6, label %sw.bb35
    i8 17, label %sw.bb38
    i8 -124, label %sw.bb41
    i8 0, label %sw.bb44
  ]

sw.bb35:                                          ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #16
  %call37 = tail call fastcc i32 @i40e_add_del_fdir_tcp(ptr noundef %vsi, ptr noundef %input, i1 noundef zeroext %add, i1 noundef zeroext false)
  br label %cleanup

sw.bb38:                                          ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #16
  %call40 = tail call fastcc i32 @i40e_add_del_fdir_udp(ptr noundef %vsi, ptr noundef %input, i1 noundef zeroext %add, i1 noundef zeroext false)
  br label %cleanup

sw.bb41:                                          ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #16
  %call43 = tail call fastcc i32 @i40e_add_del_fdir_sctp(ptr noundef %vsi, ptr noundef %input, i1 noundef zeroext %add, i1 noundef zeroext false)
  br label %cleanup

sw.bb44:                                          ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #16
  %call46 = tail call fastcc i32 @i40e_add_del_fdir_ip(ptr noundef %vsi, ptr noundef %input, i1 noundef zeroext %add, i1 noundef zeroext false)
  br label %cleanup

do.end50:                                         ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #16
  %conv34 = zext i8 %11 to i32
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %dev52 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev52, ptr noundef nonnull @.str.6, i32 noundef %conv34) #17
  br label %cleanup

do.end59:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i8 %3 to i32
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev61, ptr noundef nonnull @.str.9, i32 noundef %conv) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %do.end50, %sw.bb44, %sw.bb41, %sw.bb38, %sw.bb35, %do.end, %sw.bb27, %sw.bb24, %sw.bb21, %sw.bb18, %sw.bb13, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end59 ], [ -22, %do.end50 ], [ -22, %do.end ], [ %call46, %sw.bb44 ], [ %call43, %sw.bb41 ], [ %call40, %sw.bb38 ], [ %call37, %sw.bb35 ], [ %call29, %sw.bb27 ], [ %call26, %sw.bb24 ], [ %call23, %sw.bb21 ], [ %call20, %sw.bb18 ], [ %call15, %sw.bb13 ], [ %call12, %sw.bb10 ], [ %call9, %sw.bb7 ], [ %call6, %sw.bb4 ], [ %call3, %sw.bb1 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_add_del_fdir_tcp(ptr nocapture noundef readonly %vsi, ptr nocapture noundef %fd_data, i1 noundef zeroext %add, i1 noundef zeroext %ipv4) unnamed_addr #0 align 64 {
entry:
  %ipv6.sroa.7.i.i = alloca [17 x i8], align 1
  %ipv6.sroa.8.i.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 57
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 512) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %vlan_tag.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 11
  %3 = ptrtoint ptr %vlan_tag.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vlan_tag.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i.i = icmp eq i16 %4, 0
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %ipv6.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ipv6.sroa.8.i.i)
  %5 = call ptr @memset(ptr %ipv6.sroa.7.i.i, i32 255, i32 17)
  %6 = call ptr @memset(ptr %ipv6.sroa.8.i.i, i32 255, i32 16)
  br i1 %ipv4, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dst_ip.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 3
  %7 = ptrtoint ptr %dst_ip.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dst_ip.i.i, align 4
  %src_ip.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 4
  %9 = ptrtoint ptr %src_ip.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %src_ip.i.i, align 4
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %src_ip6.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 6
  %ipv6.sroa.7.8.in6_u.sroa_idx.i.i = getelementptr inbounds i8, ptr %ipv6.sroa.7.i.i, i32 1
  %11 = call ptr @memcpy(ptr %ipv6.sroa.7.8.in6_u.sroa_idx.i.i, ptr %src_ip6.i.i, i32 16)
  %dst_ip6.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 5
  %12 = call ptr @memcpy(ptr %ipv6.sroa.8.i.i, ptr %dst_ip6.i.i, i32 16)
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %ip.sroa.18.0.i.i = phi i32 [ %8, %if.then.i.i ], [ -1, %if.else.i.i ]
  %ip.sroa.16.0.i.i = phi i32 [ %10, %if.then.i.i ], [ -1, %if.else.i.i ]
  %eth.sroa.15.0.i.i = phi i16 [ 2048, %if.then.i.i ], [ -31011, %if.else.i.i ]
  %ip.sroa.13.0.i.i = phi i8 [ 6, %if.then.i.i ], [ -1, %if.else.i.i ]
  %ipv6.sroa.639.0.i.i = phi i8 [ -1, %if.then.i.i ], [ 6, %if.else.i.i ]
  %ipv6.sroa.0.0.i.i = phi i8 [ -1, %if.then.i.i ], [ 111, %if.else.i.i ]
  %ip.sroa.0.0.i.i = phi i8 [ 69, %if.then.i.i ], [ -1, %if.else.i.i ]
  br i1 %tobool.not.i.i, label %if.end20.i.thread.i, label %if.then22.i.i

if.end20.i.thread.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %13 = call ptr @memset(ptr %call7.i.i, i32 255, i32 12)
  br label %if.end24.i.i

if.then22.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %vlan_etype.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 10
  %14 = ptrtoint ptr %vlan_etype.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vlan_etype.i.i, align 4
  %16 = call ptr @memset(ptr %call7.i.i, i32 255, i32 12)
  %add.ptr.i.i = getelementptr i8, ptr %call7.i.i, i32 14
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %4, ptr %add.ptr.i.i, align 2
  %vlan.sroa.5.0.tmp.0.32.sroa_idx.i.i = getelementptr i8, ptr %call7.i.i, i32 16
  %18 = ptrtoint ptr %vlan.sroa.5.0.tmp.0.32.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %eth.sroa.15.0.i.i, ptr %vlan.sroa.5.0.tmp.0.32.sroa_idx.i.i, align 8
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then22.i.i, %if.end20.i.thread.i
  %.sink6.i = phi i32 [ 14, %if.end20.i.thread.i ], [ 18, %if.then22.i.i ]
  %.sink.i = phi i16 [ %eth.sroa.15.0.i.i, %if.end20.i.thread.i ], [ %15, %if.then22.i.i ]
  %add.ptr.i5.i = getelementptr i8, ptr %call7.i.i, i32 %.sink6.i
  %19 = getelementptr inbounds i8, ptr %call7.i.i, i32 12
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %.sink.i, ptr %19, align 4
  br i1 %ipv4, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %add.ptr.i5.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %ip.sroa.0.0.i.i, ptr %add.ptr.i5.i, align 2
  %ip.sroa.8.0.tmp.0.34.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 1
  %ip.sroa.13.0.tmp.0.34.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 9
  %22 = ptrtoint ptr %ip.sroa.8.0.tmp.0.34.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 -1, ptr %ip.sroa.8.0.tmp.0.34.sroa_idx.i.i, align 1
  %23 = ptrtoint ptr %ip.sroa.13.0.tmp.0.34.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %ip.sroa.13.0.i.i, ptr %ip.sroa.13.0.tmp.0.34.sroa_idx.i.i, align 1
  %ip.sroa.15.0.tmp.0.34.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 10
  %24 = ptrtoint ptr %ip.sroa.15.0.tmp.0.34.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %ip.sroa.15.0.tmp.0.34.sroa_idx.i.i, align 4
  %ip.sroa.16.0.tmp.0.34.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 12
  %25 = ptrtoint ptr %ip.sroa.16.0.tmp.0.34.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %ip.sroa.16.0.i.i, ptr %ip.sroa.16.0.tmp.0.34.sroa_idx.i.i, align 2
  %ip.sroa.18.0.tmp.0.34.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 16
  %26 = ptrtoint ptr %ip.sroa.18.0.tmp.0.34.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %ip.sroa.18.0.i.i, ptr %ip.sroa.18.0.tmp.0.34.sroa_idx.i.i, align 2
  %add.ptr29.i.i45 = getelementptr i8, ptr %add.ptr.i5.i, i32 20
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %ipv6.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ipv6.sroa.8.i.i)
  %27 = call ptr @memcpy(ptr %add.ptr29.i.i45, ptr @i40e_create_dummy_tcp_packet.tcp_packet, i32 20)
  %dst_port.i46 = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 8
  %28 = ptrtoint ptr %dst_port.i46 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %dst_port.i46, align 2
  %dest.i47 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr29.i.i45, i32 0, i32 1
  %30 = ptrtoint ptr %dest.i47 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %dest.i47, align 4
  %src_port.i48 = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 7
  %31 = ptrtoint ptr %src_port.i48 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %src_port.i48, align 4
  %33 = ptrtoint ptr %add.ptr29.i.i45 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %add.ptr29.i.i45, align 4
  %call6 = tail call fastcc i32 @i40e_prepare_fdir_filter(ptr noundef %1, ptr noundef %fd_data, i1 noundef zeroext %add, ptr noundef nonnull %call7.i.i, i32 noundef 54, i8 noundef zeroext 33)
  br label %if.end9

if.else:                                          ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %add.ptr.i5.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %ipv6.sroa.0.0.i.i, ptr %add.ptr.i5.i, align 2
  %ipv6.sroa.6.0.tmp.0.36.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 1
  %35 = call ptr @memset(ptr %ipv6.sroa.6.0.tmp.0.36.sroa_idx.i.i, i32 255, i32 5)
  %ipv6.sroa.639.0.tmp.0.36.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 6
  %36 = ptrtoint ptr %ipv6.sroa.639.0.tmp.0.36.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %ipv6.sroa.639.0.i.i, ptr %ipv6.sroa.639.0.tmp.0.36.sroa_idx.i.i, align 4
  %ipv6.sroa.7.0.tmp.0.36.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 7
  %37 = call ptr @memcpy(ptr %ipv6.sroa.7.0.tmp.0.36.sroa_idx.i.i, ptr %ipv6.sroa.7.i.i, i32 17)
  %ipv6.sroa.8.0.tmp.0.36.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 24
  %38 = call ptr @memcpy(ptr %ipv6.sroa.8.0.tmp.0.36.sroa_idx.i.i, ptr %ipv6.sroa.8.i.i, i32 16)
  %add.ptr29.i.i = getelementptr i8, ptr %add.ptr.i5.i, i32 40
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %ipv6.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ipv6.sroa.8.i.i)
  %39 = call ptr @memcpy(ptr %add.ptr29.i.i, ptr @i40e_create_dummy_tcp_packet.tcp_packet, i32 20)
  %dst_port.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 8
  %40 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %dst_port.i, align 2
  %dest.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr29.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %dest.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %dest.i, align 4
  %src_port.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 7
  %43 = ptrtoint ptr %src_port.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %src_port.i, align 4
  %45 = ptrtoint ptr %add.ptr29.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %add.ptr29.i.i, align 4
  %call8 = tail call fastcc i32 @i40e_prepare_fdir_filter(ptr noundef %1, ptr noundef %fd_data, i1 noundef zeroext %add, ptr noundef nonnull %call7.i.i, i32 noundef 74, i8 noundef zeroext 43)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %ret.0 = phi i32 [ %call6, %if.then4 ], [ %call8, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool10.not = icmp eq i32 %ret.0, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %fd_tcp4_filter_cnt = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 29
  %fd_tcp6_filter_cnt = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 33
  %..i = select i1 %add, i16 1, i16 -1
  %ipv4_filter_num.ipv6_filter_num17.i = select i1 %ipv4, ptr %fd_tcp4_filter_cnt, ptr %fd_tcp6_filter_cnt
  %46 = ptrtoint ptr %ipv4_filter_num.ipv6_filter_num17.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %ipv4_filter_num.ipv6_filter_num17.i, align 2
  %dec.i = add i16 %47, %..i
  store i16 %dec.i, ptr %ipv4_filter_num.ipv6_filter_num17.i, align 2
  br i1 %add, label %if.then16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then16:                                        ; preds = %if.end12
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 54
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags, align 8
  %and = and i32 %49, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.then16.if.end21_crit_edge, label %land.lhs.true

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

land.lhs.true:                                    ; preds = %if.then16
  %debug_mask = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 1, i32 39
  %50 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %debug_mask, align 8
  %and18 = and i32 %51, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %land.lhs.true.if.end21_crit_edge, label %do.end

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.17) #17
  br label %if.end21

if.end21:                                         ; preds = %do.end, %land.lhs.true.if.end21_crit_edge, %if.then16.if.end21_crit_edge
  %state = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 23, ptr noundef %state) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end12.cleanup_crit_edge, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.then11 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end21 ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_add_del_fdir_udp(ptr nocapture noundef readonly %vsi, ptr nocapture noundef %fd_data, i1 noundef zeroext %add, i1 noundef zeroext %ipv4) unnamed_addr #0 align 64 {
entry:
  %ipv6.sroa.7.i.i = alloca [17 x i8], align 1
  %ipv6.sroa.8.i.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 57
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 512) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %vlan_tag.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 11
  %3 = ptrtoint ptr %vlan_tag.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vlan_tag.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i.i = icmp eq i16 %4, 0
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %ipv6.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ipv6.sroa.8.i.i)
  %5 = call ptr @memset(ptr %ipv6.sroa.7.i.i, i32 255, i32 17)
  %6 = call ptr @memset(ptr %ipv6.sroa.8.i.i, i32 255, i32 16)
  br i1 %ipv4, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dst_ip.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 3
  %7 = ptrtoint ptr %dst_ip.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dst_ip.i.i, align 4
  %src_ip.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 4
  %9 = ptrtoint ptr %src_ip.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %src_ip.i.i, align 4
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %src_ip6.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 6
  %ipv6.sroa.7.8.in6_u.sroa_idx.i.i = getelementptr inbounds i8, ptr %ipv6.sroa.7.i.i, i32 1
  %11 = call ptr @memcpy(ptr %ipv6.sroa.7.8.in6_u.sroa_idx.i.i, ptr %src_ip6.i.i, i32 16)
  %dst_ip6.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 5
  %12 = call ptr @memcpy(ptr %ipv6.sroa.8.i.i, ptr %dst_ip6.i.i, i32 16)
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %ip.sroa.18.0.i.i = phi i32 [ %8, %if.then.i.i ], [ -1, %if.else.i.i ]
  %ip.sroa.16.0.i.i = phi i32 [ %10, %if.then.i.i ], [ -1, %if.else.i.i ]
  %eth.sroa.15.0.i.i = phi i16 [ 2048, %if.then.i.i ], [ -31011, %if.else.i.i ]
  %ip.sroa.13.0.i.i = phi i8 [ 17, %if.then.i.i ], [ -1, %if.else.i.i ]
  %ipv6.sroa.639.0.i.i = phi i8 [ -1, %if.then.i.i ], [ 17, %if.else.i.i ]
  %ipv6.sroa.0.0.i.i = phi i8 [ -1, %if.then.i.i ], [ 111, %if.else.i.i ]
  %ip.sroa.0.0.i.i = phi i8 [ 69, %if.then.i.i ], [ -1, %if.else.i.i ]
  br i1 %tobool.not.i.i, label %if.end20.i.thread.i, label %if.then22.i.i

if.end20.i.thread.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %13 = call ptr @memset(ptr %call7.i.i, i32 255, i32 12)
  br label %if.end24.i.i

if.then22.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %vlan_etype.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 10
  %14 = ptrtoint ptr %vlan_etype.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vlan_etype.i.i, align 4
  %16 = call ptr @memset(ptr %call7.i.i, i32 255, i32 12)
  %add.ptr.i.i = getelementptr i8, ptr %call7.i.i, i32 14
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %4, ptr %add.ptr.i.i, align 2
  %vlan.sroa.5.0.tmp.0.32.sroa_idx.i.i = getelementptr i8, ptr %call7.i.i, i32 16
  %18 = ptrtoint ptr %vlan.sroa.5.0.tmp.0.32.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %eth.sroa.15.0.i.i, ptr %vlan.sroa.5.0.tmp.0.32.sroa_idx.i.i, align 8
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then22.i.i, %if.end20.i.thread.i
  %.sink6.i = phi i32 [ 14, %if.end20.i.thread.i ], [ 18, %if.then22.i.i ]
  %.sink.i = phi i16 [ %eth.sroa.15.0.i.i, %if.end20.i.thread.i ], [ %15, %if.then22.i.i ]
  %add.ptr.i5.i = getelementptr i8, ptr %call7.i.i, i32 %.sink6.i
  %19 = getelementptr inbounds i8, ptr %call7.i.i, i32 12
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %.sink.i, ptr %19, align 4
  br i1 %ipv4, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %add.ptr.i5.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %ip.sroa.0.0.i.i, ptr %add.ptr.i5.i, align 2
  %ip.sroa.8.0.tmp.0.34.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 1
  %ip.sroa.13.0.tmp.0.34.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 9
  %22 = ptrtoint ptr %ip.sroa.8.0.tmp.0.34.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 -1, ptr %ip.sroa.8.0.tmp.0.34.sroa_idx.i.i, align 1
  %23 = ptrtoint ptr %ip.sroa.13.0.tmp.0.34.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %ip.sroa.13.0.i.i, ptr %ip.sroa.13.0.tmp.0.34.sroa_idx.i.i, align 1
  %ip.sroa.15.0.tmp.0.34.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 10
  %24 = ptrtoint ptr %ip.sroa.15.0.tmp.0.34.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %ip.sroa.15.0.tmp.0.34.sroa_idx.i.i, align 4
  %ip.sroa.16.0.tmp.0.34.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 12
  %25 = ptrtoint ptr %ip.sroa.16.0.tmp.0.34.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %ip.sroa.16.0.i.i, ptr %ip.sroa.16.0.tmp.0.34.sroa_idx.i.i, align 2
  %ip.sroa.18.0.tmp.0.34.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 16
  %26 = ptrtoint ptr %ip.sroa.18.0.tmp.0.34.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %ip.sroa.18.0.i.i, ptr %ip.sroa.18.0.tmp.0.34.sroa_idx.i.i, align 2
  %add.ptr29.i.i32 = getelementptr i8, ptr %add.ptr.i5.i, i32 20
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %ipv6.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ipv6.sroa.8.i.i)
  %dst_port.i33 = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 8
  %27 = ptrtoint ptr %dst_port.i33 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %dst_port.i33, align 2
  %dest.i34 = getelementptr inbounds %struct.udphdr, ptr %add.ptr29.i.i32, i32 0, i32 1
  %29 = ptrtoint ptr %dest.i34 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %dest.i34, align 4
  %src_port.i35 = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 7
  %30 = ptrtoint ptr %src_port.i35 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %src_port.i35, align 4
  %32 = ptrtoint ptr %add.ptr29.i.i32 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %add.ptr29.i.i32, align 2
  %call6 = tail call fastcc i32 @i40e_prepare_fdir_filter(ptr noundef %1, ptr noundef %fd_data, i1 noundef zeroext %add, ptr noundef nonnull %call7.i.i, i32 noundef 42, i8 noundef zeroext 31)
  br label %if.end9

if.else:                                          ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %add.ptr.i5.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %ipv6.sroa.0.0.i.i, ptr %add.ptr.i5.i, align 2
  %ipv6.sroa.6.0.tmp.0.36.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 1
  %34 = call ptr @memset(ptr %ipv6.sroa.6.0.tmp.0.36.sroa_idx.i.i, i32 255, i32 5)
  %ipv6.sroa.639.0.tmp.0.36.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 6
  %35 = ptrtoint ptr %ipv6.sroa.639.0.tmp.0.36.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %ipv6.sroa.639.0.i.i, ptr %ipv6.sroa.639.0.tmp.0.36.sroa_idx.i.i, align 4
  %ipv6.sroa.7.0.tmp.0.36.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 7
  %36 = call ptr @memcpy(ptr %ipv6.sroa.7.0.tmp.0.36.sroa_idx.i.i, ptr %ipv6.sroa.7.i.i, i32 17)
  %ipv6.sroa.8.0.tmp.0.36.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 24
  %37 = call ptr @memcpy(ptr %ipv6.sroa.8.0.tmp.0.36.sroa_idx.i.i, ptr %ipv6.sroa.8.i.i, i32 16)
  %add.ptr29.i.i = getelementptr i8, ptr %add.ptr.i5.i, i32 40
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %ipv6.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ipv6.sroa.8.i.i)
  %dst_port.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 8
  %38 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %dst_port.i, align 2
  %dest.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr29.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %dest.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %dest.i, align 4
  %src_port.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 7
  %41 = ptrtoint ptr %src_port.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %src_port.i, align 4
  %43 = ptrtoint ptr %add.ptr29.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %add.ptr29.i.i, align 2
  %call8 = tail call fastcc i32 @i40e_prepare_fdir_filter(ptr noundef %1, ptr noundef %fd_data, i1 noundef zeroext %add, ptr noundef nonnull %call7.i.i, i32 noundef 62, i8 noundef zeroext 41)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %ret.0 = phi i32 [ %call6, %if.then4 ], [ %call8, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool10.not = icmp eq i32 %ret.0, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %fd_udp4_filter_cnt = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 30
  %fd_udp6_filter_cnt = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 34
  %..i = select i1 %add, i16 1, i16 -1
  %ipv4_filter_num.ipv6_filter_num17.i = select i1 %ipv4, ptr %fd_udp4_filter_cnt, ptr %fd_udp6_filter_cnt
  %44 = ptrtoint ptr %ipv4_filter_num.ipv6_filter_num17.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %ipv4_filter_num.ipv6_filter_num17.i, align 2
  %dec.i = add i16 %45, %..i
  store i16 %dec.i, ptr %ipv4_filter_num.ipv6_filter_num17.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.then11 ], [ 0, %if.end12 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_add_del_fdir_sctp(ptr nocapture noundef readonly %vsi, ptr nocapture noundef %fd_data, i1 noundef zeroext %add, i1 noundef zeroext %ipv4) unnamed_addr #0 align 64 {
entry:
  %ipv6.sroa.7.i.i = alloca [17 x i8], align 1
  %ipv6.sroa.8.i.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 57
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 512) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %vlan_tag.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 11
  %3 = ptrtoint ptr %vlan_tag.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vlan_tag.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i.i = icmp eq i16 %4, 0
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %ipv6.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ipv6.sroa.8.i.i)
  %5 = call ptr @memset(ptr %ipv6.sroa.7.i.i, i32 255, i32 17)
  %6 = call ptr @memset(ptr %ipv6.sroa.8.i.i, i32 255, i32 16)
  br i1 %ipv4, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dst_ip.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 3
  %7 = ptrtoint ptr %dst_ip.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dst_ip.i.i, align 4
  %src_ip.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 4
  %9 = ptrtoint ptr %src_ip.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %src_ip.i.i, align 4
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %src_ip6.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 6
  %ipv6.sroa.7.8.in6_u.sroa_idx.i.i = getelementptr inbounds i8, ptr %ipv6.sroa.7.i.i, i32 1
  %11 = call ptr @memcpy(ptr %ipv6.sroa.7.8.in6_u.sroa_idx.i.i, ptr %src_ip6.i.i, i32 16)
  %dst_ip6.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 5
  %12 = call ptr @memcpy(ptr %ipv6.sroa.8.i.i, ptr %dst_ip6.i.i, i32 16)
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %ip.sroa.18.0.i.i = phi i32 [ %8, %if.then.i.i ], [ -1, %if.else.i.i ]
  %ip.sroa.16.0.i.i = phi i32 [ %10, %if.then.i.i ], [ -1, %if.else.i.i ]
  %eth.sroa.15.0.i.i = phi i16 [ 2048, %if.then.i.i ], [ -31011, %if.else.i.i ]
  %ip.sroa.13.0.i.i = phi i8 [ -124, %if.then.i.i ], [ -1, %if.else.i.i ]
  %ipv6.sroa.639.0.i.i = phi i8 [ -1, %if.then.i.i ], [ -124, %if.else.i.i ]
  %ipv6.sroa.0.0.i.i = phi i8 [ -1, %if.then.i.i ], [ 111, %if.else.i.i ]
  %ip.sroa.0.0.i.i = phi i8 [ 69, %if.then.i.i ], [ -1, %if.else.i.i ]
  br i1 %tobool.not.i.i, label %if.end20.i.thread.i, label %if.then22.i.i

if.end20.i.thread.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %13 = call ptr @memset(ptr %call7.i.i, i32 255, i32 12)
  br label %if.end24.i.i

if.then22.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %vlan_etype.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 10
  %14 = ptrtoint ptr %vlan_etype.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vlan_etype.i.i, align 4
  %16 = call ptr @memset(ptr %call7.i.i, i32 255, i32 12)
  %add.ptr.i.i = getelementptr i8, ptr %call7.i.i, i32 14
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %4, ptr %add.ptr.i.i, align 2
  %vlan.sroa.5.0.tmp.0.32.sroa_idx.i.i = getelementptr i8, ptr %call7.i.i, i32 16
  %18 = ptrtoint ptr %vlan.sroa.5.0.tmp.0.32.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %eth.sroa.15.0.i.i, ptr %vlan.sroa.5.0.tmp.0.32.sroa_idx.i.i, align 8
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then22.i.i, %if.end20.i.thread.i
  %.sink6.i = phi i32 [ 14, %if.end20.i.thread.i ], [ 18, %if.then22.i.i ]
  %.sink.i = phi i16 [ %eth.sroa.15.0.i.i, %if.end20.i.thread.i ], [ %15, %if.then22.i.i ]
  %add.ptr.i5.i = getelementptr i8, ptr %call7.i.i, i32 %.sink6.i
  %19 = getelementptr inbounds i8, ptr %call7.i.i, i32 12
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %.sink.i, ptr %19, align 4
  br i1 %ipv4, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %add.ptr.i5.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %ip.sroa.0.0.i.i, ptr %add.ptr.i5.i, align 2
  %ip.sroa.8.0.tmp.0.34.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 1
  %ip.sroa.13.0.tmp.0.34.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 9
  %22 = ptrtoint ptr %ip.sroa.8.0.tmp.0.34.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 -1, ptr %ip.sroa.8.0.tmp.0.34.sroa_idx.i.i, align 1
  %23 = ptrtoint ptr %ip.sroa.13.0.tmp.0.34.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %ip.sroa.13.0.i.i, ptr %ip.sroa.13.0.tmp.0.34.sroa_idx.i.i, align 1
  %ip.sroa.15.0.tmp.0.34.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 10
  %24 = ptrtoint ptr %ip.sroa.15.0.tmp.0.34.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %ip.sroa.15.0.tmp.0.34.sroa_idx.i.i, align 4
  %ip.sroa.16.0.tmp.0.34.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 12
  %25 = ptrtoint ptr %ip.sroa.16.0.tmp.0.34.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %ip.sroa.16.0.i.i, ptr %ip.sroa.16.0.tmp.0.34.sroa_idx.i.i, align 2
  %ip.sroa.18.0.tmp.0.34.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 16
  %26 = ptrtoint ptr %ip.sroa.18.0.tmp.0.34.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %ip.sroa.18.0.i.i, ptr %ip.sroa.18.0.tmp.0.34.sroa_idx.i.i, align 2
  %add.ptr29.i.i32 = getelementptr i8, ptr %add.ptr.i5.i, i32 20
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %ipv6.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ipv6.sroa.8.i.i)
  %dst_port.i33 = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 8
  %27 = ptrtoint ptr %dst_port.i33 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %dst_port.i33, align 2
  %dest.i34 = getelementptr inbounds %struct.sctphdr, ptr %add.ptr29.i.i32, i32 0, i32 1
  %29 = ptrtoint ptr %dest.i34 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %dest.i34, align 4
  %src_port.i35 = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 7
  %30 = ptrtoint ptr %src_port.i35 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %src_port.i35, align 4
  %32 = ptrtoint ptr %add.ptr29.i.i32 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %add.ptr29.i.i32, align 4
  %call6 = tail call fastcc i32 @i40e_prepare_fdir_filter(ptr noundef %1, ptr noundef %fd_data, i1 noundef zeroext %add, ptr noundef nonnull %call7.i.i, i32 noundef 46, i8 noundef zeroext 34)
  br label %if.end9

if.else:                                          ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %add.ptr.i5.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %ipv6.sroa.0.0.i.i, ptr %add.ptr.i5.i, align 2
  %ipv6.sroa.6.0.tmp.0.36.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 1
  %34 = call ptr @memset(ptr %ipv6.sroa.6.0.tmp.0.36.sroa_idx.i.i, i32 255, i32 5)
  %ipv6.sroa.639.0.tmp.0.36.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 6
  %35 = ptrtoint ptr %ipv6.sroa.639.0.tmp.0.36.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %ipv6.sroa.639.0.i.i, ptr %ipv6.sroa.639.0.tmp.0.36.sroa_idx.i.i, align 4
  %ipv6.sroa.7.0.tmp.0.36.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 7
  %36 = call ptr @memcpy(ptr %ipv6.sroa.7.0.tmp.0.36.sroa_idx.i.i, ptr %ipv6.sroa.7.i.i, i32 17)
  %ipv6.sroa.8.0.tmp.0.36.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr.i5.i, i32 24
  %37 = call ptr @memcpy(ptr %ipv6.sroa.8.0.tmp.0.36.sroa_idx.i.i, ptr %ipv6.sroa.8.i.i, i32 16)
  %add.ptr29.i.i = getelementptr i8, ptr %add.ptr.i5.i, i32 40
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %ipv6.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ipv6.sroa.8.i.i)
  %dst_port.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 8
  %38 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %dst_port.i, align 2
  %dest.i = getelementptr inbounds %struct.sctphdr, ptr %add.ptr29.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %dest.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %dest.i, align 4
  %src_port.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 7
  %41 = ptrtoint ptr %src_port.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %src_port.i, align 4
  %43 = ptrtoint ptr %add.ptr29.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %add.ptr29.i.i, align 4
  %call8 = tail call fastcc i32 @i40e_prepare_fdir_filter(ptr noundef %1, ptr noundef %fd_data, i1 noundef zeroext %add, ptr noundef nonnull %call7.i.i, i32 noundef 66, i8 noundef zeroext 44)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %ret.0 = phi i32 [ %call6, %if.then4 ], [ %call8, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool10.not = icmp eq i32 %ret.0, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %fd_sctp4_filter_cnt = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 31
  %fd_sctp6_filter_cnt = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 35
  %..i = select i1 %add, i16 1, i16 -1
  %ipv4_filter_num.ipv6_filter_num17.i = select i1 %ipv4, ptr %fd_sctp4_filter_cnt, ptr %fd_sctp6_filter_cnt
  %44 = ptrtoint ptr %ipv4_filter_num.ipv6_filter_num17.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %ipv4_filter_num.ipv6_filter_num17.i, align 2
  %dec.i = add i16 %45, %..i
  store i16 %dec.i, ptr %ipv4_filter_num.ipv6_filter_num17.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.then11 ], [ 0, %if.end12 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_add_del_fdir_ip(ptr nocapture noundef readonly %vsi, ptr nocapture noundef %fd_data, i1 noundef zeroext %add, i1 noundef zeroext %ipv4) unnamed_addr #0 align 64 {
entry:
  %ipv6.sroa.7.i = alloca [17 x i8], align 1
  %ipv6.sroa.8.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 57
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %. = select i1 %ipv4, i32 35, i32 45
  %.39 = select i1 %ipv4, i32 36, i32 46
  %vlan_tag.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 11
  %src_ip6.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 6
  %ipv6.sroa.7.8.in6_u.sroa_idx.i = getelementptr inbounds i8, ptr %ipv6.sroa.7.i, i32 1
  %dst_ip6.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 5
  %dst_ip.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 3
  %src_ip.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 4
  %vlan_etype.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 10
  br label %for.body

for.cond:                                         ; preds = %i40e_create_dummy_packet.exit
  %inc = add nuw nsw i32 %i.046, 1
  %cmp.not.not = icmp ult i32 %i.046, %.39
  br i1 %cmp.not.not, label %for.cond.for.body_crit_edge, label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.046 = phi i32 [ %., %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 512) #18
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %for.body.cleanup_crit_edge, label %if.end4

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %for.body
  %3 = ptrtoint ptr %vlan_tag.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vlan_tag.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %ipv6.sroa.7.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ipv6.sroa.8.i)
  %5 = call ptr @memset(ptr %ipv6.sroa.7.i, i32 255, i32 17)
  %6 = call ptr @memset(ptr %ipv6.sroa.8.i, i32 255, i32 16)
  br i1 %ipv4, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %dst_ip.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dst_ip.i, align 4
  %9 = ptrtoint ptr %src_ip.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %src_ip.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %11 = call ptr @memcpy(ptr %ipv6.sroa.7.8.in6_u.sroa_idx.i, ptr %src_ip6.i, i32 16)
  %12 = call ptr @memcpy(ptr %ipv6.sroa.8.i, ptr %dst_ip6.i, i32 16)
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %ip.sroa.18.0.i = phi i32 [ %8, %if.then.i ], [ -1, %if.else.i ]
  %ip.sroa.16.0.i = phi i32 [ %10, %if.then.i ], [ -1, %if.else.i ]
  %eth.sroa.15.0.i = phi i16 [ 2048, %if.then.i ], [ -31011, %if.else.i ]
  %ip.sroa.13.0.i = phi i8 [ 0, %if.then.i ], [ -1, %if.else.i ]
  %ipv6.sroa.639.0.i = phi i8 [ -1, %if.then.i ], [ 59, %if.else.i ]
  %ipv6.sroa.0.0.i = phi i8 [ -1, %if.then.i ], [ 111, %if.else.i ]
  %ip.sroa.0.0.i = phi i8 [ 69, %if.then.i ], [ -1, %if.else.i ]
  br i1 %tobool.not.i, label %if.end20.i.thread, label %if.then22.i

if.end20.i.thread:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %13 = call ptr @memset(ptr %call7.i.i, i32 255, i32 12)
  br label %if.end24.i

if.then22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %vlan_etype.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vlan_etype.i, align 4
  %16 = call ptr @memset(ptr %call7.i.i, i32 255, i32 12)
  %add.ptr.i = getelementptr i8, ptr %call7.i.i, i32 14
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %4, ptr %add.ptr.i, align 2
  %vlan.sroa.5.0.tmp.0.32.sroa_idx.i = getelementptr i8, ptr %call7.i.i, i32 16
  %18 = ptrtoint ptr %vlan.sroa.5.0.tmp.0.32.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %eth.sroa.15.0.i, ptr %vlan.sroa.5.0.tmp.0.32.sroa_idx.i, align 8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %if.end20.i.thread
  %.sink53 = phi i32 [ 14, %if.end20.i.thread ], [ 18, %if.then22.i ]
  %.sink = phi i16 [ %eth.sroa.15.0.i, %if.end20.i.thread ], [ %15, %if.then22.i ]
  %add.ptr.i44 = getelementptr i8, ptr %call7.i.i, i32 %.sink53
  %19 = getelementptr inbounds i8, ptr %call7.i.i, i32 12
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %.sink, ptr %19, align 4
  br i1 %ipv4, label %if.then26.i, label %if.else28.i

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %add.ptr.i44 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %ip.sroa.0.0.i, ptr %add.ptr.i44, align 2
  %ip.sroa.8.0.tmp.0.34.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i44, i32 1
  %ip.sroa.13.0.tmp.0.34.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i44, i32 9
  %22 = ptrtoint ptr %ip.sroa.8.0.tmp.0.34.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 -1, ptr %ip.sroa.8.0.tmp.0.34.sroa_idx.i, align 1
  %23 = ptrtoint ptr %ip.sroa.13.0.tmp.0.34.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %ip.sroa.13.0.i, ptr %ip.sroa.13.0.tmp.0.34.sroa_idx.i, align 1
  %ip.sroa.15.0.tmp.0.34.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i44, i32 10
  %24 = ptrtoint ptr %ip.sroa.15.0.tmp.0.34.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %ip.sroa.15.0.tmp.0.34.sroa_idx.i, align 4
  %ip.sroa.16.0.tmp.0.34.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i44, i32 12
  %25 = ptrtoint ptr %ip.sroa.16.0.tmp.0.34.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %ip.sroa.16.0.i, ptr %ip.sroa.16.0.tmp.0.34.sroa_idx.i, align 2
  %ip.sroa.18.0.tmp.0.34.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i44, i32 16
  %26 = ptrtoint ptr %ip.sroa.18.0.tmp.0.34.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %ip.sroa.18.0.i, ptr %ip.sroa.18.0.tmp.0.34.sroa_idx.i, align 2
  br label %i40e_create_dummy_packet.exit

if.else28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %add.ptr.i44 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %ipv6.sroa.0.0.i, ptr %add.ptr.i44, align 2
  %ipv6.sroa.6.0.tmp.0.36.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i44, i32 1
  %28 = call ptr @memset(ptr %ipv6.sroa.6.0.tmp.0.36.sroa_idx.i, i32 255, i32 5)
  %ipv6.sroa.639.0.tmp.0.36.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i44, i32 6
  %29 = ptrtoint ptr %ipv6.sroa.639.0.tmp.0.36.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %ipv6.sroa.639.0.i, ptr %ipv6.sroa.639.0.tmp.0.36.sroa_idx.i, align 4
  %ipv6.sroa.7.0.tmp.0.36.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i44, i32 7
  %30 = call ptr @memcpy(ptr %ipv6.sroa.7.0.tmp.0.36.sroa_idx.i, ptr %ipv6.sroa.7.i, i32 17)
  %ipv6.sroa.8.0.tmp.0.36.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i44, i32 24
  %31 = call ptr @memcpy(ptr %ipv6.sroa.8.0.tmp.0.36.sroa_idx.i, ptr %ipv6.sroa.8.i, i32 16)
  br label %i40e_create_dummy_packet.exit

i40e_create_dummy_packet.exit:                    ; preds = %if.else28.i, %if.then26.i
  %cond10 = phi i32 [ 34, %if.then26.i ], [ 54, %if.else28.i ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %ipv6.sroa.7.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ipv6.sroa.8.i)
  %conv12 = trunc i32 %i.046 to i8
  %call13 = tail call fastcc i32 @i40e_prepare_fdir_filter(ptr noundef %1, ptr noundef %fd_data, i1 noundef zeroext %add, ptr noundef nonnull %call7.i.i, i32 noundef %cond10, i8 noundef zeroext %conv12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.cond, label %err

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  %fd_ip4_filter_cnt = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 32
  %fd_ip6_filter_cnt = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 36
  %..i = select i1 %add, i16 1, i16 -1
  %ipv4_filter_num.ipv6_filter_num17.i = select i1 %ipv4, ptr %fd_ip4_filter_cnt, ptr %fd_ip6_filter_cnt
  %32 = ptrtoint ptr %ipv4_filter_num.ipv6_filter_num17.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ipv4_filter_num.ipv6_filter_num17.i, align 2
  %dec.i = add i16 %33, %..i
  store i16 %dec.i, ptr %ipv4_filter_num.ipv6_filter_num17.i, align 2
  br label %cleanup

err:                                              ; preds = %i40e_create_dummy_packet.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %err, %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %err ], [ 0, %for.end ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_clean_tx_ring(ptr noundef %tx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 22
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags.i, align 8
  %2 = and i16 %1, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.i.not = icmp eq i16 %2, 0
  br i1 %tobool.i.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %xsk_pool = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 37
  %3 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xsk_pool, align 128
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @i40e_xsk_clean_tx_ring(ptr noundef %tx_ring) #14
  br label %if.end5

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %5 = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 5
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else.cleanup_crit_edge, label %for.cond.preheader

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %if.else
  %count = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 11
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp29.not = icmp eq i16 %9, 0
  br i1 %cmp29.not, label %for.cond.preheader.if.end5_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end5_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %arrayidx = getelementptr %struct.i40e_tx_buffer, ptr %11, i32 %indvars.iv
  tail call fastcc void @i40e_unmap_and_free_tx_resource(ptr noundef %tx_ring, ptr noundef %arrayidx)
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %count, align 2
  %14 = zext i16 %13 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %14
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end5_crit_edge

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end5:                                          ; preds = %for.body.if.end5_crit_edge, %for.cond.preheader.if.end5_crit_edge, %if.then
  %count6 = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 11
  %15 = ptrtoint ptr %count6 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %count6, align 2
  %conv7 = zext i16 %16 to i32
  %mul = mul nuw nsw i32 %conv7, 28
  %17 = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 %mul)
  %desc = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 1
  %21 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %desc, align 4
  %size = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 26
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 32
  %25 = call ptr @memset(ptr %22, i32 0, i32 %24)
  %next_to_use = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 14
  %26 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %next_to_use, align 4
  %next_to_clean = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 15
  %27 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %next_to_clean, align 2
  %netdev = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 3
  %28 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev, align 4
  %tobool8.not = icmp eq ptr %29, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %queue_index.i = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 7
  %30 = ptrtoint ptr %queue_index.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %queue_index.i, align 4
  %conv.i = zext i16 %31 to i32
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 103
  %32 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %_tx.i.i, align 128
  %state.i = getelementptr %struct.netdev_queue, ptr %33, i32 %conv.i, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i) #14
  %dql.i = getelementptr %struct.netdev_queue, ptr %33, i32 %conv.i, i32 15
  tail call void @dql_reset(ptr noundef %dql.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end5.cleanup_crit_edge, %if.else.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_xsk_clean_tx_ring(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i40e_unmap_and_free_tx_resource(ptr nocapture noundef readonly %ring, ptr nocapture noundef %tx_buffer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.i40e_tx_buffer, ptr %tx_buffer, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.else10, label %if.then

if.then:                                          ; preds = %entry
  %tx_flags = getelementptr inbounds %struct.i40e_tx_buffer, ptr %tx_buffer, i32 0, i32 6
  %3 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_flags, align 4
  %and = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %2) #14
  br label %if.end5

if.else:                                          ; preds = %if.then
  %flags.i = getelementptr inbounds %struct.i40e_ring, ptr %ring, i32 0, i32 22
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags.i, align 8
  %7 = and i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.i.not = icmp eq i16 %7, 0
  br i1 %tobool.i.not, label %if.else4, label %if.then3

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @xdp_return_frame(ptr noundef nonnull %2) #14
  br label %if.end5

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %2, i32 noundef 1) #14
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.then3, %if.then2
  %len = getelementptr inbounds %struct.i40e_tx_buffer, ptr %tx_buffer, i32 0, i32 5
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %if.end5.if.end18_crit_edge, label %if.end5.if.end18.sink.split_crit_edge

if.end5.if.end18.sink.split_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.sink.split

if.end5.if.end18_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.else10:                                        ; preds = %entry
  %len11 = getelementptr inbounds %struct.i40e_tx_buffer, ptr %tx_buffer, i32 0, i32 5
  %10 = ptrtoint ptr %len11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.not = icmp eq i32 %11, 0
  br i1 %tobool12.not, label %if.else10.if.end18_crit_edge, label %if.else10.if.end18.sink.split_crit_edge

if.else10.if.end18.sink.split_crit_edge:          ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.sink.split

if.else10.if.end18_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.end18.sink.split:                              ; preds = %if.else10.if.end18.sink.split_crit_edge, %if.end5.if.end18.sink.split_crit_edge
  %.sink38 = phi i32 [ %9, %if.end5.if.end18.sink.split_crit_edge ], [ %11, %if.else10.if.end18.sink.split_crit_edge ]
  %dev14 = getelementptr inbounds %struct.i40e_ring, ptr %ring, i32 0, i32 2
  %12 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev14, align 8
  %dma15 = getelementptr inbounds %struct.i40e_tx_buffer, ptr %tx_buffer, i32 0, i32 4
  %14 = ptrtoint ptr %dma15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma15, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %13, i32 noundef %15, i32 noundef %.sink38, i32 noundef 1, i32 noundef 0) #14
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else10.if.end18_crit_edge, %if.end5.if.end18_crit_edge
  %16 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %tx_buffer, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %0, align 4
  %len19 = getelementptr inbounds %struct.i40e_tx_buffer, ptr %tx_buffer, i32 0, i32 5
  %18 = ptrtoint ptr %len19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %len19, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_free_tx_resources(ptr noundef %tx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @i40e_clean_tx_ring(ptr noundef %tx_ring)
  %0 = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %2) #14
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %0, align 4
  %xsk_descs = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 38
  %4 = ptrtoint ptr %xsk_descs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xsk_descs, align 4
  tail call void @kfree(ptr noundef %5) #14
  %6 = ptrtoint ptr %xsk_descs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %xsk_descs, align 4
  %desc = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 1
  %7 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %size = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 26
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 32
  %dma = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 27
  %13 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %8, i32 noundef %14, i32 noundef 0) #14
  %15 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %desc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_get_tx_pending(ptr nocapture noundef readonly %ring, i1 noundef zeroext %in_sw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %in_sw, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %desc.i = getelementptr inbounds %struct.i40e_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc.i, align 4
  %count.i = getelementptr inbounds %struct.i40e_ring, ptr %ring, i32 0, i32 11
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %count.i, align 2
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr %struct.i40e_tx_desc, ptr %1, i32 %conv.i
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %add.ptr.i, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #14
  %tail1 = getelementptr inbounds %struct.i40e_ring, ptr %ring, i32 0, i32 9
  %7 = ptrtoint ptr %tail1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail1, align 32
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #14, !srcloc !128
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !129
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %next_to_clean = getelementptr inbounds %struct.i40e_ring, ptr %ring, i32 0, i32 15
  %11 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %next_to_clean, align 2
  %conv = zext i16 %12 to i32
  %next_to_use = getelementptr inbounds %struct.i40e_ring, ptr %ring, i32 0, i32 14
  %13 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %next_to_use, align 4
  %conv4 = zext i16 %14 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tail.0 = phi i32 [ %conv4, %if.else ], [ %10, %if.then ]
  %head.0 = phi i32 [ %conv, %if.else ], [ %6, %if.then ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tail.0, i32 %head.0)
  %cmp.not = icmp eq i32 %tail.0, %head.0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %tail.0, i32 %head.0)
  %cmp7 = icmp ugt i32 %tail.0, %head.0
  br i1 %cmp7, label %if.then6.cond.end_crit_edge, label %cond.false

if.then6.cond.end_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %count = getelementptr inbounds %struct.i40e_ring, ptr %ring, i32 0, i32 11
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %count, align 2
  %conv9 = zext i16 %16 to i32
  %add = add i32 %tail.0, %conv9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then6.cond.end_crit_edge
  %tail.0.pn = phi i32 [ %add, %cond.false ], [ %tail.0, %if.then6.cond.end_crit_edge ]
  %cond = sub i32 %tail.0.pn, %head.0
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %cond.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_detect_recover_hung(ptr noundef %vsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vsi, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool1.not = icmp eq i32 %and1.i, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vsi, align 128
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %for.cond.preheader, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7
  %num_queue_pairs = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 44
  %7 = ptrtoint ptr %num_queue_pairs to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_queue_pairs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp54.not = icmp eq i16 %8, 0
  br i1 %cmp54.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tx_rings = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 21
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 57
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_rings, align 4
  %arrayidx = getelementptr ptr, ptr %10, i32 %i.055
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %desc = getelementptr inbounds %struct.i40e_ring, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %desc, align 4
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %land.lhs.true.for.inc_crit_edge, label %if.then14

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then14:                                        ; preds = %land.lhs.true
  %stats = getelementptr inbounds %struct.i40e_ring, ptr %12, i32 0, i32 23
  %15 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %stats, align 64
  %17 = trunc i64 %16 to i32
  %conv16 = and i32 %17, 2147483647
  %prev_pkt_ctr = getelementptr inbounds %struct.i40e_ring, ptr %12, i32 0, i32 25, i32 0, i32 5
  %18 = ptrtoint ptr %prev_pkt_ctr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prev_pkt_ctr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv16)
  %cmp17 = icmp eq i32 %19, %conv16
  br i1 %cmp17, label %if.then19, label %do.end

if.then19:                                        ; preds = %if.then14
  %q_vector = getelementptr inbounds %struct.i40e_ring, ptr %12, i32 0, i32 29
  %20 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %q_vector, align 4
  %22 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %back.i, align 8
  %flags.i = getelementptr inbounds %struct.i40e_pf, ptr %23, i32 0, i32 54
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i47 = icmp eq i32 %and.i, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  tail call void @arm_heavy_mb() #14
  %26 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %back.i, align 8
  %hw7.i = getelementptr inbounds %struct.i40e_pf, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %hw7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw7.i, align 8
  br i1 %tobool.not.i47, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  %reg_idx.i = getelementptr inbounds %struct.i40e_q_vector, ptr %21, i32 0, i32 2
  %30 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %reg_idx.i, align 2
  %conv.i = zext i16 %31 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 215040
  %add.ptr.i = getelementptr i8, ptr %29, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 486539265) #14, !srcloc !130
  br label %for.inc

if.else.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr9.i = getelementptr i8, ptr %29, i32 230528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 486539265) #14, !srcloc !130
  br label %for.inc

do.end:                                           ; preds = %if.then14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  %next_to_clean.i = getelementptr inbounds %struct.i40e_ring, ptr %12, i32 0, i32 15
  %32 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %next_to_clean.i, align 2
  %conv.i48 = zext i16 %33 to i32
  %next_to_use.i = getelementptr inbounds %struct.i40e_ring, ptr %12, i32 0, i32 14
  %34 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %next_to_use.i, align 4
  %conv4.i = zext i16 %35 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %33)
  %cmp.not.i = icmp eq i16 %35, %33
  br i1 %cmp.not.i, label %do.end.i40e_get_tx_pending.exit.thread_crit_edge, label %if.then6.i

do.end.i40e_get_tx_pending.exit.thread_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_get_tx_pending.exit.thread

if.then6.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %33)
  %cmp7.i = icmp ugt i16 %35, %33
  br i1 %cmp7.i, label %if.then6.i.i40e_get_tx_pending.exit_crit_edge, label %cond.false.i

if.then6.i.i40e_get_tx_pending.exit_crit_edge:    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_get_tx_pending.exit

cond.false.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  %count.i = getelementptr inbounds %struct.i40e_ring, ptr %12, i32 0, i32 11
  %36 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %count.i, align 2
  %conv9.i = zext i16 %37 to i32
  %add.i50 = add nuw nsw i32 %conv9.i, %conv4.i
  br label %i40e_get_tx_pending.exit

i40e_get_tx_pending.exit:                         ; preds = %cond.false.i, %if.then6.i.i40e_get_tx_pending.exit_crit_edge
  %tail.0.pn.i = phi i32 [ %add.i50, %cond.false.i ], [ %conv4.i, %if.then6.i.i40e_get_tx_pending.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tail.0.pn.i, i32 %conv.i48)
  %tobool25.not = icmp eq i32 %tail.0.pn.i, %conv.i48
  br i1 %tobool25.not, label %i40e_get_tx_pending.exit.i40e_get_tx_pending.exit.thread_crit_edge, label %i40e_get_tx_pending.exit._crit_edge

i40e_get_tx_pending.exit._crit_edge:              ; preds = %i40e_get_tx_pending.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %38

i40e_get_tx_pending.exit.i40e_get_tx_pending.exit.thread_crit_edge: ; preds = %i40e_get_tx_pending.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_get_tx_pending.exit.thread

i40e_get_tx_pending.exit.thread:                  ; preds = %i40e_get_tx_pending.exit.i40e_get_tx_pending.exit.thread_crit_edge, %do.end.i40e_get_tx_pending.exit.thread_crit_edge
  br label %38

38:                                               ; preds = %i40e_get_tx_pending.exit.thread, %i40e_get_tx_pending.exit._crit_edge
  %39 = phi i32 [ -1, %i40e_get_tx_pending.exit.thread ], [ %conv16, %i40e_get_tx_pending.exit._crit_edge ]
  %40 = ptrtoint ptr %prev_pkt_ctr to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %prev_pkt_ctr, align 8
  br label %for.inc

for.inc:                                          ; preds = %38, %if.else.i, %if.then.i, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.055, 1
  %41 = ptrtoint ptr %num_queue_pairs to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %num_queue_pairs, align 2
  %conv = zext i16 %42 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_force_wb(ptr nocapture noundef readonly %vsi, ptr nocapture noundef readonly %q_vector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 57
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  tail call void @arm_heavy_mb() #14
  %4 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %back, align 8
  %hw7 = getelementptr inbounds %struct.i40e_pf, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %hw7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw7, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %reg_idx = getelementptr inbounds %struct.i40e_q_vector, ptr %q_vector, i32 0, i32 2
  %8 = ptrtoint ptr %reg_idx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %reg_idx, align 2
  %conv = zext i16 %9 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 215040
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 486539265) #14, !srcloc !130
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr9 = getelementptr i8, ptr %7, i32 230528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 486539265) #14, !srcloc !130
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_clean_programming_status(ptr nocapture noundef readonly %rx_ring, i64 noundef %qword0_raw, i64 noundef %qword1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i64 %qword1, 28
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %0)
  %cmp = icmp eq i64 %0, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %qword0_raw.addr.sroa.1.0.extract.trunc.i = trunc i64 %qword0_raw to i32
  %vsi.i = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 28
  %1 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vsi.i, align 8
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %2, i32 0, i32 57
  %3 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %back.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %7 = trunc i64 %qword1 to i32
  %8 = lshr i32 %7, 19
  %conv.i = and i32 %8, 63
  %9 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %conv.i, label %if.then.if.end_crit_edge [
    i32 1, label %if.then.i
    i32 2, label %if.then53.i
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %10 = tail call i32 @llvm.bswap.i32(i32 %qword0_raw.addr.sroa.1.0.extract.trunc.i) #14
  %fd_inv.i = getelementptr inbounds %struct.i40e_pf, ptr %4, i32 0, i32 121
  %11 = ptrtoint ptr %fd_inv.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fd_inv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qword0_raw.addr.sroa.1.0.extract.trunc.i)
  %cmp4.not.i = icmp eq i32 %qword0_raw.addr.sroa.1.0.extract.trunc.i, 0
  br i1 %cmp4.not.i, label %lor.lhs.false.i, label %if.then.i.do.end.i_crit_edge

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %debug_mask.i = getelementptr inbounds %struct.i40e_pf, ptr %4, i32 0, i32 1, i32 39
  %12 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_mask.i, align 8
  %and6.i = and i32 %13, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.then.i.do.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef %10) #17
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %lor.lhs.false.i.if.end.i_crit_edge
  %state.i = getelementptr inbounds %struct.i40e_pf, ptr %4, i32 0, i32 2
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i, align 4
  %16 = and i32 %15, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool9.not.i = icmp eq i32 %16, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end11.i:                                       ; preds = %if.end.i
  %fd_add_err.i = getelementptr inbounds %struct.i40e_pf, ptr %4, i32 0, i32 27
  %17 = ptrtoint ptr %fd_add_err.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fd_add_err.i, align 8
  %inc.i = add i32 %18, 1
  store i32 %inc.i, ptr %fd_add_err.i, align 8
  %call12.i = tail call i32 @i40e_get_current_atr_cnt(ptr noundef %4) #14
  %fd_atr_cnt.i = getelementptr inbounds %struct.i40e_pf, ptr %4, i32 0, i32 28
  %19 = ptrtoint ptr %fd_atr_cnt.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call12.i, ptr %fd_atr_cnt.i, align 4
  br i1 %cmp4.not.i, label %land.lhs.true.i, label %if.end11.i.if.end25.i_crit_edge

if.end11.i.if.end25.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25.i

land.lhs.true.i:                                  ; preds = %if.end11.i
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i, align 4
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool19.not.i = icmp eq i32 %22, 0
  br i1 %tobool19.not.i, label %land.lhs.true.i.if.end25.i_crit_edge, label %if.then20.i

land.lhs.true.i.if.end25.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25.i

if.then20.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 23, ptr noundef %state.i) #14
  tail call void @_set_bit(i32 noundef 22, ptr noundef %state.i) #14
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then20.i, %land.lhs.true.i.if.end25.i_crit_edge, %if.end11.i.if.end25.i_crit_edge
  %call26.i = tail call i32 @i40e_get_global_fd_count(ptr noundef %4) #14
  %fdir_pf_filter_count.i = getelementptr inbounds %struct.i40e_pf, ptr %4, i32 0, i32 19
  %23 = ptrtoint ptr %fdir_pf_filter_count.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %fdir_pf_filter_count.i, align 8
  %conv27.i = zext i16 %24 to i32
  %sub.i = add nsw i32 %conv27.i, -10
  call void @__sanitizer_cov_trace_cmp4(i32 %call26.i, i32 %sub.i)
  %cmp28.not.i = icmp ult i32 %call26.i, %sub.i
  br i1 %cmp28.not.i, label %if.end25.i.if.end_crit_edge, label %if.then30.i

if.end25.i.if.end_crit_edge:                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then30.i:                                      ; preds = %if.end25.i
  %flags.i = getelementptr inbounds %struct.i40e_pf, ptr %4, i32 0, i32 54
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i, align 8
  %and31.i = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.then30.i.if.end_crit_edge, label %land.lhs.true33.i

if.then30.i.if.end_crit_edge:                     ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true33.i:                                ; preds = %if.then30.i
  %call36.i = tail call i32 @_test_and_set_bit(i32 noundef 24, ptr noundef %state.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.then38.i, label %land.lhs.true33.i.if.end_crit_edge

land.lhs.true33.i.if.end_crit_edge:               ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then38.i:                                      ; preds = %land.lhs.true33.i
  %debug_mask40.i = getelementptr inbounds %struct.i40e_pf, ptr %4, i32 0, i32 1, i32 39
  %27 = ptrtoint ptr %debug_mask40.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_mask40.i, align 8
  %and41.i = and i32 %28, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.then38.i.if.end_crit_edge, label %do.end46.i

if.then38.i.if.end_crit_edge:                     ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end46.i:                                       ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev47.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev47.i, ptr noundef nonnull @.str.33) #17
  br label %if.end

if.then53.i:                                      ; preds = %if.then
  %debug_mask55.i = getelementptr inbounds %struct.i40e_pf, ptr %4, i32 0, i32 1, i32 39
  %29 = ptrtoint ptr %debug_mask55.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %debug_mask55.i, align 8
  %and56.i = and i32 %30, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %if.then53.i.if.end_crit_edge, label %do.end61.i

if.then53.i.if.end_crit_edge:                     ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end61.i:                                       ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev62.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62.i, ptr noundef nonnull @.str.36, i32 noundef %qword0_raw.addr.sroa.1.0.extract.trunc.i) #17
  br label %if.end

if.end:                                           ; preds = %do.end61.i, %if.then53.i.if.end_crit_edge, %do.end46.i, %if.then38.i.if.end_crit_edge, %land.lhs.true33.i.if.end_crit_edge, %if.then30.i.if.end_crit_edge, %if.end25.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_setup_tx_descriptors(ptr noundef %tx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.if.end17_crit_edge, label %do.end, !prof !132

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1430, i32 noundef 9, ptr noundef null) #14
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end.if.end17_crit_edge
  %count = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 11
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %count, align 2
  %conv = zext i16 %6 to i32
  %mul = mul nuw nsw i32 %conv, 28
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #19
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i.i, ptr %2, align 4
  %tobool24.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool24.not, label %if.end17.err_crit_edge, label %if.end26

if.end17.err_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end26:                                         ; preds = %if.end17
  %flags.i = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 22
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags.i, align 8
  %10 = and i16 %9, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.i.not = icmp eq i16 %10, 0
  br i1 %tobool.i.not, label %if.end26.do.body35_crit_edge, label %if.then28

if.end26.do.body35_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body35

if.then28:                                        ; preds = %if.end26
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65536, i32 noundef 3520, i32 noundef 4) #19
  %xsk_descs = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 38
  %11 = ptrtoint ptr %xsk_descs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call1.i.i.i.i, ptr %xsk_descs, align 4
  %tobool31.not = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool31.not, label %if.then28.err_crit_edge, label %if.then28.do.body35_crit_edge

if.then28.do.body35_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body35

if.then28.err_crit_edge:                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

do.body35:                                        ; preds = %if.then28.do.body35_crit_edge, %if.end26.do.body35_crit_edge
  %syncp = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 24
  %dep_map.i = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 24, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @i40e_setup_tx_descriptors.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %12 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %syncp, align 4
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %count, align 2
  %conv39 = zext i16 %14 to i32
  %mul40 = shl nuw nsw i32 %conv39, 4
  %size = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 26
  %add43 = add nuw nsw i32 %mul40, 4099
  %and = and i32 %add43, 2093056
  %15 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and, ptr %size, align 32
  %dma = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 27
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef nonnull %1, i32 noundef %and, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #14
  %desc = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 1
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %desc, align 4
  %tobool48.not = icmp eq ptr %call.i, null
  br i1 %tobool48.not, label %do.end52, label %if.end54

do.end52:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %1, ptr noundef nonnull @.str.12, i32 noundef %18) #17
  br label %err

if.end54:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #16
  %next_to_use = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 14
  %19 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %next_to_use, align 4
  %next_to_clean = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 15
  %20 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %next_to_clean, align 2
  %prev_pkt_ctr = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 25, i32 0, i32 5
  %21 = ptrtoint ptr %prev_pkt_ctr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %prev_pkt_ctr, align 8
  br label %cleanup

err:                                              ; preds = %do.end52, %if.then28.err_crit_edge, %if.end17.err_crit_edge
  %xsk_descs55 = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 38
  %22 = ptrtoint ptr %xsk_descs55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xsk_descs55, align 4
  tail call void @kfree(ptr noundef %23) #14
  %24 = ptrtoint ptr %xsk_descs55 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %xsk_descs55, align 4
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %26) #14
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %2, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end54, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end54 ], [ -12, %err ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_alloc_rx_bi(ptr nocapture noundef %rx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 11
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %count, align 2
  %conv = zext i16 %1 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #19
  %2 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9.i.i, ptr %2, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  %cond = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_clean_rx_ring(ptr noundef %rx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup27_crit_edge, label %if.end

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup27

if.end:                                           ; preds = %entry
  %skb = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 32
  %3 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skb, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @consume_skb(ptr noundef nonnull %4) #14
  %5 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %skb, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %xsk_pool = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 37
  %6 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xsk_pool, align 128
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %for.cond.preheader, label %if.then7

for.cond.preheader:                               ; preds = %if.end5
  %count = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 11
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp58.not = icmp eq i16 %9, 0
  br i1 %cmp58.not, label %for.cond.preheader.skip_free_crit_edge, label %for.body.lr.ph

for.cond.preheader.skip_free_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_free

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 2
  %rx_buf_len = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 13
  br label %for.body

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @i40e_xsk_clean_rx_ring(ptr noundef %rx_ring) #14
  br label %skip_free

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cleanup.for.body_crit_edge ]
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %0, align 4
  %page = getelementptr %struct.i40e_rx_buffer, ptr %11, i32 %indvars.iv, i32 1
  %12 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %page, align 4
  %tobool12.not = icmp eq ptr %13, null
  br i1 %tobool12.not, label %for.body.cleanup_crit_edge, label %if.end14

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end14:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i = getelementptr %struct.i40e_rx_buffer, ptr %11, i32 %indvars.iv
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %page_offset = getelementptr %struct.i40e_rx_buffer, ptr %11, i32 %indvars.iv, i32 2
  %18 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %page_offset, align 4
  %20 = ptrtoint ptr %rx_buf_len to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %rx_buf_len, align 2
  %conv15 = zext i16 %21 to i32
  %add.i = add i32 %19, %17
  tail call void @dma_sync_single_for_cpu(ptr noundef %15, i32 noundef %add.i, i32 noundef %conv15, i32 noundef 2) #14
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %26 = ptrtoint ptr %rx_buf_len to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %rx_buf_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %27)
  %cmp.i = icmp ugt i16 %27, 2048
  %..i = zext i1 %cmp.i to i32
  %shl = shl nuw nsw i32 4096, %..i
  tail call void @dma_unmap_page_attrs(ptr noundef %23, i32 noundef %25, i32 noundef %shl, i32 noundef 2, i32 noundef 34) #14
  %28 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %page, align 4
  %pagecnt_bias = getelementptr %struct.i40e_rx_buffer, ptr %11, i32 %indvars.iv, i32 3
  %30 = ptrtoint ptr %pagecnt_bias to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %pagecnt_bias, align 4
  %conv20 = zext i16 %31 to i32
  tail call void @__page_frag_cache_drain(ptr noundef %29, i32 noundef %conv20) #14
  %32 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %page, align 4
  %33 = ptrtoint ptr %page_offset to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %page_offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %for.body.cleanup_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %34 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %count, align 2
  %36 = zext i16 %35 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %36
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.skip_free_crit_edge

cleanup.skip_free_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_free

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

skip_free:                                        ; preds = %cleanup.skip_free_crit_edge, %if.then7, %for.cond.preheader.skip_free_crit_edge
  %37 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xsk_pool, align 128
  %tobool24.not = icmp eq ptr %38, null
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %skip_free
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @i40e_clear_rx_bi_zc(ptr noundef %rx_ring) #14
  br label %if.end26

if.else:                                          ; preds = %skip_free
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %0, align 4
  %count.i = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 11
  %41 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %count.i, align 2
  %conv.i = zext i16 %42 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 4
  %43 = call ptr @memset(ptr %40, i32 0, i32 %mul.i)
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then25
  %desc = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 1
  %44 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %desc, align 4
  %size = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 26
  %46 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size, align 32
  %48 = call ptr @memset(ptr %45, i32 0, i32 %47)
  %next_to_alloc = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 31
  %49 = ptrtoint ptr %next_to_alloc to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %next_to_alloc, align 8
  %next_to_clean = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 15
  %50 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %next_to_clean, align 2
  %next_to_use = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 14
  %51 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %next_to_use, align 4
  br label %cleanup27

cleanup27:                                        ; preds = %if.end26, %entry.cleanup27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_xsk_clean_rx_ring(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_frag_cache_drain(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_clear_rx_bi_zc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_free_rx_resources(ptr noundef %rx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @i40e_clean_rx_ring(ptr noundef %rx_ring)
  %vsi = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 28
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 8
  %type = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %xdp_rxq = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 36
  tail call void @xdp_rxq_info_unreg(ptr noundef %xdp_rxq) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %xdp_prog = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 4
  %4 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %xdp_prog, align 16
  %5 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 5
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %7) #14
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %5, align 4
  %desc = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 1
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then1

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %size = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 26
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 32
  %dma = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 27
  %15 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %12, i32 noundef %14, ptr noundef nonnull %10, i32 noundef %16, i32 noundef 0) #14
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %desc, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_rxq_info_unreg(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_setup_rx_descriptors(ptr noundef %rx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %syncp = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 24
  %dep_map.i = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 24, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @i40e_setup_rx_descriptors.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %2 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %syncp, align 4
  %count = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 11
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %count, align 2
  %conv = zext i16 %4 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %size = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 26
  %add = add nuw nsw i32 %mul, 4095
  %and = and i32 %add, 2093056
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %size, align 32
  %dma = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 27
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %1, i32 noundef %and, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #14
  %desc = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 1
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %desc, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end8, label %if.end

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %8) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %next_to_alloc = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 31
  %9 = ptrtoint ptr %next_to_alloc to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %next_to_alloc, align 8
  %next_to_clean = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 15
  %10 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %next_to_clean, align 2
  %next_to_use = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 14
  %11 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %next_to_use, align 4
  %vsi = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 28
  %12 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vsi, align 8
  %type = getelementptr inbounds %struct.i40e_vsi, ptr %13, i32 0, i32 47
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then11, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then11:                                        ; preds = %if.end
  %xdp_rxq = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 36
  %netdev = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 3
  %16 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev, align 4
  %queue_index = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 7
  %18 = ptrtoint ptr %queue_index to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %queue_index, align 4
  %conv12 = zext i16 %19 to i32
  %q_vector = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 29
  %20 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %q_vector, align 4
  %napi_id = getelementptr inbounds %struct.i40e_q_vector, ptr %21, i32 0, i32 3, i32 15
  %22 = ptrtoint ptr %napi_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %napi_id, align 8
  %call13 = tail call i32 @xdp_rxq_info_reg(ptr noundef %xdp_rxq, ptr noundef %17, i32 noundef %conv12, i32 noundef %23) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then11.cleanup_crit_edge, label %if.then11.if.end18_crit_edge

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end18:                                         ; preds = %if.then11.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %24 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vsi, align 8
  %xdp_prog = getelementptr inbounds %struct.i40e_vsi, ptr %25, i32 0, i32 33
  %26 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xdp_prog, align 32
  %xdp_prog20 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 4
  %28 = ptrtoint ptr %xdp_prog20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %xdp_prog20, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then11.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -12, %do.end8 ], [ %call13, %if.then11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_release_rx_desc(ptr nocapture noundef %rx_ring, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %val to i16
  %next_to_use = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 14
  %0 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %next_to_use, align 4
  %next_to_alloc = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 31
  %1 = ptrtoint ptr %next_to_alloc to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %next_to_alloc, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !133
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !134
  tail call void @arm_heavy_mb() #14
  %2 = tail call i32 @llvm.bswap.i32(i32 %val)
  %tail = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 9
  %3 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail, align 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #14, !srcloc !130
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @i40e_alloc_rx_buffers(ptr nocapture noundef %rx_ring, i16 noundef zeroext %cleaned_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_use = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 14
  %netdev = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %tobool.not = icmp eq ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cleaned_count)
  %tobool1.not = icmp eq i16 %cleaned_count, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %next_to_use, align 4
  %desc = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 1
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr %union.i40e_16byte_rx_desc, ptr %5, i32 %idxprom
  %6 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 5
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %arrayidx.i = getelementptr %struct.i40e_rx_buffer, ptr %8, i32 %idxprom
  %page_reuse_count.i = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 25, i32 0, i32 3
  %rx_buf_len.i.i = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 13
  %dev.i = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 2
  %rx_offset.i = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 34
  %count = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 11
  br label %do.body

do.body:                                          ; preds = %if.end19.do.body_crit_edge, %if.end
  %cleaned_count.addr.0 = phi i16 [ %cleaned_count, %if.end ], [ %dec, %if.end19.do.body_crit_edge ]
  %ntu.0 = phi i16 [ %3, %if.end ], [ %ntu.1, %if.end19.do.body_crit_edge ]
  %rx_desc.0 = phi ptr [ %arrayidx, %if.end ], [ %rx_desc.1, %if.end19.do.body_crit_edge ]
  %bi.0 = phi ptr [ %arrayidx.i, %if.end ], [ %bi.1, %if.end19.do.body_crit_edge ]
  %page1.i = getelementptr inbounds %struct.i40e_rx_buffer, ptr %bi.0, i32 0, i32 1
  %9 = ptrtoint ptr %page1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %page1.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !135

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %page_reuse_count.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %page_reuse_count.i, align 8
  %inc.i = add i64 %12, 1
  store i64 %inc.i, ptr %page_reuse_count.i, align 8
  br label %if.end4

if.end.i:                                         ; preds = %do.body
  %13 = ptrtoint ptr %rx_buf_len.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rx_buf_len.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %14)
  %cmp.i.i = icmp ugt i16 %14, 2048
  %..i.i = zext i1 %cmp.i.i to i32
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 404000, i32 noundef %..i.i, i32 noundef 0, ptr noundef null) #14
  %tobool5.not.i = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool5.not.i, label %if.end.i.no_buffers_crit_edge, label %if.end16.i, !prof !135

if.end.i.no_buffers_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %no_buffers

if.end16.i:                                       ; preds = %if.end.i
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 8
  %17 = ptrtoint ptr %rx_buf_len.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rx_buf_len.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %18)
  %cmp.i49.i = icmp ugt i16 %18, 2048
  %..i50.i = zext i1 %cmp.i49.i to i32
  %shl.i = shl nuw nsw i32 4096, %..i50.i
  %call18.i = tail call i32 @dma_map_page_attrs(ptr noundef %16, ptr noundef nonnull %call38.i.i.i.i.i, i32 noundef 0, i32 noundef %shl.i, i32 noundef 2, i32 noundef 34) #14
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %20, i32 noundef %call18.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call18.i)
  %cmp.i51.not.i = icmp eq i32 %call18.i, -1
  br i1 %cmp.i51.not.i, label %if.then22.i, label %if.end26.i

if.then22.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %rx_buf_len.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %rx_buf_len.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %22)
  %cmp.i54.i = icmp ugt i16 %22, 2048
  %..i55.i = zext i1 %cmp.i54.i to i32
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i.i, i32 noundef %..i55.i) #14
  br label %no_buffers

if.end26.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %bi.0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call18.i, ptr %bi.0, align 4
  %24 = ptrtoint ptr %page1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call38.i.i.i.i.i, ptr %page1.i, align 4
  %25 = ptrtoint ptr %rx_offset.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rx_offset.i, align 4
  %conv.i = zext i16 %26 to i32
  %page_offset.i = getelementptr inbounds %struct.i40e_rx_buffer, ptr %bi.0, i32 0, i32 2
  %27 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv.i, ptr %page_offset.i, align 4
  tail call fastcc void @page_ref_add(ptr noundef nonnull %call38.i.i.i.i.i) #14
  %pagecnt_bias.i = getelementptr inbounds %struct.i40e_rx_buffer, ptr %bi.0, i32 0, i32 3
  %28 = ptrtoint ptr %pagecnt_bias.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %pagecnt_bias.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end26.i, %if.then.i
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 8
  %31 = ptrtoint ptr %bi.0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bi.0, align 4
  %page_offset = getelementptr inbounds %struct.i40e_rx_buffer, ptr %bi.0, i32 0, i32 2
  %33 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %page_offset, align 4
  %35 = ptrtoint ptr %rx_buf_len.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %rx_buf_len.i.i, align 2
  %conv5 = zext i16 %36 to i32
  %add.i = add i32 %34, %32
  tail call void @dma_sync_single_for_device(ptr noundef %30, i32 noundef %add.i, i32 noundef %conv5, i32 noundef 2) #14
  %37 = ptrtoint ptr %bi.0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bi.0, align 4
  %39 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %page_offset, align 4
  %add = add i32 %40, %38
  %conv8 = zext i32 %add to i64
  %41 = tail call i64 @llvm.bswap.i64(i64 %conv8)
  %42 = ptrtoint ptr %rx_desc.0 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %rx_desc.0, align 8
  %incdec.ptr = getelementptr %union.i40e_16byte_rx_desc, ptr %rx_desc.0, i32 1
  %incdec.ptr9 = getelementptr %struct.i40e_rx_buffer, ptr %bi.0, i32 1
  %inc = add i16 %ntu.0, 1
  %43 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %44)
  %cmp = icmp eq i16 %inc, %44
  br i1 %cmp, label %if.then15, label %if.end4.if.end19_crit_edge, !prof !135

if.end4.if.end19_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then15:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %desc, align 4
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %6, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end4.if.end19_crit_edge
  %ntu.1 = phi i16 [ 0, %if.then15 ], [ %inc, %if.end4.if.end19_crit_edge ]
  %rx_desc.1 = phi ptr [ %46, %if.then15 ], [ %incdec.ptr, %if.end4.if.end19_crit_edge ]
  %bi.1 = phi ptr [ %48, %if.then15 ], [ %incdec.ptr9, %if.end4.if.end19_crit_edge ]
  %qword1 = getelementptr inbounds %struct.anon.218, ptr %rx_desc.1, i32 0, i32 1
  %49 = ptrtoint ptr %qword1 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 0, ptr %qword1, align 8
  %dec = add i16 %cleaned_count.addr.0, -1
  %tobool20.not = icmp eq i16 %dec, 0
  br i1 %tobool20.not, label %do.end, label %if.end19.do.body_crit_edge

if.end19.do.body_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end:                                           ; preds = %if.end19
  %50 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %next_to_use, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %ntu.1)
  %cmp24.not = icmp eq i16 %51, %ntu.1
  br i1 %cmp24.not, label %do.end.cleanup_crit_edge, label %if.then26

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then26:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %conv23 = zext i16 %ntu.1 to i32
  %52 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %ntu.1, ptr %next_to_use, align 4
  %next_to_alloc.i = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 31
  %53 = ptrtoint ptr %next_to_alloc.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %ntu.1, ptr %next_to_alloc.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !133
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !134
  tail call void @arm_heavy_mb() #14
  %54 = tail call i32 @llvm.bswap.i32(i32 %conv23) #14
  %tail.i = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 9
  %55 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tail.i, align 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #14, !srcloc !130
  br label %cleanup

no_buffers:                                       ; preds = %if.then22.i, %if.end.i.no_buffers_crit_edge
  %alloc_page_failed24.i = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 25, i32 0, i32 1
  %57 = ptrtoint ptr %alloc_page_failed24.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %alloc_page_failed24.i, align 8
  %inc25.i = add i64 %58, 1
  store i64 %inc25.i, ptr %alloc_page_failed24.i, align 8
  %59 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %next_to_use, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %60, i16 %ntu.0)
  %cmp32.not = icmp eq i16 %60, %ntu.0
  br i1 %cmp32.not, label %no_buffers.cleanup_crit_edge, label %if.then34

no_buffers.cleanup_crit_edge:                     ; preds = %no_buffers
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then34:                                        ; preds = %no_buffers
  call void @__sanitizer_cov_trace_pc() #16
  %conv31 = zext i16 %ntu.0 to i32
  %61 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %ntu.0, ptr %next_to_use, align 4
  %next_to_alloc.i69 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 31
  %62 = ptrtoint ptr %next_to_alloc.i69 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %ntu.0, ptr %next_to_alloc.i69, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !133
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !134
  tail call void @arm_heavy_mb() #14
  %63 = tail call i32 @llvm.bswap.i32(i32 %conv31) #14
  %tail.i70 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 9
  %64 = ptrtoint ptr %tail.i70 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tail.i70, align 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #14, !srcloc !130
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %no_buffers.cleanup_crit_edge, %if.then26, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.then26 ], [ false, %do.end.cleanup_crit_edge ], [ true, %if.then34 ], [ true, %no_buffers.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_process_skb_fields(ptr nocapture noundef readonly %rx_ring, ptr nocapture noundef readonly %rx_desc, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %qword1 = getelementptr inbounds %struct.anon.218, ptr %rx_desc, i32 0, i32 1
  %0 = ptrtoint ptr %qword1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %qword1, align 8
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  %and6 = lshr i64 %2, 30
  %conv8 = trunc i64 %and6 to i32
  %conv333 = and i64 %2, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %conv333)
  %tobool.not = icmp eq i64 %conv333, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !132

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %vsi = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 28
  %3 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vsi, align 8
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %4, i32 0, i32 57
  %5 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %back, align 8
  %7 = trunc i64 %2 to i8
  %8 = lshr i8 %7, 5
  %conv11 = and i8 %8, 3
  tail call void @i40e_ptp_rx_hwtstamp(ptr noundef %6, ptr noundef %skb, i8 noundef zeroext %conv11) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %netdev.i = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 3
  %9 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev.i, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 23
  %11 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %features.i, align 16
  %and.i = and i64 %12, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i40e_rx_hash.exit_crit_edge, label %if.end.i

if.end.i40e_rx_hash.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_rx_hash.exit

if.end.i:                                         ; preds = %if.end
  %13 = ptrtoint ptr %qword1 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %qword1, align 8
  %and1.i = and i64 %14, 13510798882111488
  call void @__sanitizer_cov_trace_const_cmp8(i64 13510798882111488, i64 %and1.i)
  %cmp.i = icmp eq i64 %and1.i, 13510798882111488
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.i40e_rx_hash.exit_crit_edge

if.end.i.i40e_rx_hash.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_rx_hash.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %hi_dword.i = getelementptr inbounds %struct.i40e_16b_rx_wb_qw0, ptr %rx_desc, i32 0, i32 1
  %15 = ptrtoint ptr %hi_dword.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hi_dword.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #14
  %idxprom.i.i.i = and i32 %conv8, 255
  %arrayidx.i.i.i = getelementptr [0 x %struct.i40e_rx_ptype_decoded], ptr @i40e_ptype_lookup, i32 0, i32 %idxprom.i.i.i
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %retval.sroa.0.0.copyload.i.i.i = load i32, ptr %arrayidx.i.i.i, align 4
  %19 = and i32 %retval.sroa.0.0.copyload.i.i.i, -1073512448
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073643520, i32 %19)
  %20 = icmp eq i32 %19, -1073643520
  %..i = select i1 %20, i16 128, i16 0
  %l4_hash.i.i10.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %21 = ptrtoint ptr %l4_hash.i.i10.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load.i.i11.i = load i16, ptr %l4_hash.i.i10.i, align 8
  %bf.clear.i.i.i = and i16 %bf.load.i.i11.i, -193
  %bf.set.i.i.i = or i16 %..i, %bf.clear.i.i.i
  store i16 %bf.set.i.i.i, ptr %l4_hash.i.i10.i, align 8
  %hash10.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %22 = ptrtoint ptr %hash10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %17, ptr %hash10.i.i.i, align 4
  br label %i40e_rx_hash.exit

i40e_rx_hash.exit:                                ; preds = %if.then2.i, %if.end.i.i40e_rx_hash.exit_crit_edge, %if.end.i40e_rx_hash.exit_crit_edge
  %vsi12 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 28
  %23 = ptrtoint ptr %vsi12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vsi12, align 8
  %25 = ptrtoint ptr %qword1 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %qword1, align 8
  %27 = tail call i64 @llvm.bswap.i64(i64 %26) #14
  %and.i36 = lshr i64 %27, 30
  %conv.i = trunc i64 %and.i36 to i32
  %28 = trunc i64 %27 to i32
  %idxprom.i.i = and i32 %conv.i, 255
  %arrayidx.i.i = getelementptr [0 x %struct.i40e_rx_ptype_decoded], ptr @i40e_ptype_lookup, i32 0, i32 %idxprom.i.i
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %retval.sroa.0.0.copyload.i.i = load i32, ptr %arrayidx.i.i, align 4
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %30 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  store i16 %bf.clear.i, ptr %ip_summed.i, align 8
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %24, align 128
  %features.i37 = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 23
  %33 = ptrtoint ptr %features.i37 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %features.i37, align 16
  %and7.i = and i64 %34, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i)
  %tobool.not.i38 = icmp ne i64 %and7.i, 0
  %and8.i = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp ne i32 %and8.i, 0
  %or.cond154.i = select i1 %tobool.not.i38, i1 %tobool9.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %retval.sroa.0.0.copyload.i.i)
  %.not.i = icmp ugt i32 %retval.sroa.0.0.copyload.i.i, -1073741825
  %or.cond.i = select i1 %or.cond154.i, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %land.rhs.i, label %i40e_rx_hash.exit.i40e_rx_checksum.exit_crit_edge

i40e_rx_hash.exit.i40e_rx_checksum.exit_crit_edge: ; preds = %i40e_rx_hash.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_rx_checksum.exit

land.rhs.i:                                       ; preds = %i40e_rx_hash.exit
  %35 = and i32 %retval.sroa.0.0.copyload.i.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp27.i = icmp ne i32 %35, 0
  %36 = and i32 %28, 20971520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool46.not.i = icmp eq i32 %36, 0
  %or.cond152.i = select i1 %cmp27.i, i1 true, i1 %tobool46.not.i
  br i1 %or.cond152.i, label %if.end48.i, label %land.rhs.i.checksum_fail.i_crit_edge

land.rhs.i.checksum_fail.i_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %checksum_fail.i

if.end48.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp38.not.i = icmp eq i32 %35, 0
  %and52.i = and i32 %28, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  %or.cond153.i = select i1 %cmp38.not.i, i1 true, i1 %tobool53.not.i
  br i1 %or.cond153.i, label %if.end55.i, label %if.end48.i.i40e_rx_checksum.exit_crit_edge

if.end48.i.i40e_rx_checksum.exit_crit_edge:       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_rx_checksum.exit

if.end55.i:                                       ; preds = %if.end48.i
  %37 = and i32 %28, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool57.not.i = icmp eq i32 %37, 0
  br i1 %tobool57.not.i, label %if.end59.i, label %if.end55.i.checksum_fail.i_crit_edge

if.end55.i.checksum_fail.i_crit_edge:             ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %checksum_fail.i

if.end59.i:                                       ; preds = %if.end55.i
  %38 = and i32 %28, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool61.not.i = icmp eq i32 %38, 0
  br i1 %tobool61.not.i, label %if.end63.i, label %if.end59.i.i40e_rx_checksum.exit_crit_edge

if.end59.i.i40e_rx_checksum.exit_crit_edge:       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_rx_checksum.exit

if.end63.i:                                       ; preds = %if.end59.i
  %39 = and i32 %retval.sroa.0.0.copyload.i.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp67.not.i = icmp eq i32 %39, 0
  br i1 %cmp67.not.i, label %if.end63.i.if.end73.i_crit_edge, label %if.then69.i

if.end63.i.if.end73.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73.i

if.then69.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #16
  %csum_level.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %40 = ptrtoint ptr %csum_level.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %bf.load70.i = load i32, ptr %csum_level.i, align 2
  %bf.clear71.i = and i32 %bf.load70.i, -805306369
  %bf.set72.i = or i32 %bf.clear71.i, 268435456
  store i32 %bf.set72.i, ptr %csum_level.i, align 2
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then69.i, %if.end63.i.if.end73.i_crit_edge
  %bf.lshr75.i = lshr i32 %retval.sroa.0.0.copyload.i.i, 18
  %bf.clear76.i = and i32 %bf.lshr75.i, 15
  %bf.clear76.off.i = add nsw i32 %bf.clear76.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bf.clear76.off.i)
  %switch.i = icmp ult i32 %bf.clear76.off.i, 3
  br i1 %switch.i, label %sw.bb.i, label %if.end73.i.i40e_rx_checksum.exit_crit_edge

if.end73.i.i40e_rx_checksum.exit_crit_edge:       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_rx_checksum.exit

sw.bb.i:                                          ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set80.i = or i16 %bf.clear.i, 512
  %41 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %bf.set80.i, ptr %ip_summed.i, align 8
  br label %i40e_rx_checksum.exit

checksum_fail.i:                                  ; preds = %if.end55.i.checksum_fail.i_crit_edge, %land.rhs.i.checksum_fail.i_crit_edge
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %24, i32 0, i32 57
  %42 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %back.i, align 8
  %hw_csum_rx_error.i = getelementptr inbounds %struct.i40e_pf, ptr %43, i32 0, i32 63
  %44 = ptrtoint ptr %hw_csum_rx_error.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hw_csum_rx_error.i, align 8
  %inc.i = add i32 %45, 1
  store i32 %inc.i, ptr %hw_csum_rx_error.i, align 8
  br label %i40e_rx_checksum.exit

i40e_rx_checksum.exit:                            ; preds = %checksum_fail.i, %sw.bb.i, %if.end73.i.i40e_rx_checksum.exit_crit_edge, %if.end59.i.i40e_rx_checksum.exit_crit_edge, %if.end48.i.i40e_rx_checksum.exit_crit_edge, %i40e_rx_hash.exit.i40e_rx_checksum.exit_crit_edge
  %queue_index = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 7
  %46 = ptrtoint ptr %queue_index to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %queue_index, align 4
  %add.i = add i16 %47, 1
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %48 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %add.i, ptr %queue_mapping.i, align 8
  %and13 = and i64 %2, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and13)
  %tobool14.not = icmp eq i64 %and13, 0
  br i1 %tobool14.not, label %i40e_rx_checksum.exit.if.end16_crit_edge, label %if.then15

i40e_rx_checksum.exit.if.end16_crit_edge:         ; preds = %i40e_rx_checksum.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then15:                                        ; preds = %i40e_rx_checksum.exit
  call void @__sanitizer_cov_trace_pc() #16
  %l2tag1 = getelementptr inbounds %struct.anon.219, ptr %rx_desc, i32 0, i32 1
  %49 = ptrtoint ptr %l2tag1 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %l2tag1, align 2
  %51 = tail call i16 @llvm.bswap.i16(i16 %50)
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %52 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 -32512, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %53 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %51, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %54 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %bf.load.i39 = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i39, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %i40e_rx_checksum.exit.if.end16_crit_edge
  %55 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %netdev.i, align 4
  %call = tail call zeroext i16 @eth_type_trans(ptr noundef %skb, ptr noundef %56) #14
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %57 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %call, ptr %protocol, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_ptp_rx_hwtstamp(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_xmit_xdp_tx_ring(ptr noundef %xdp, ptr nocapture noundef %xdp_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rxq.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %0 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxq.i, align 4
  %mem.i = getelementptr inbounds %struct.xdp_rxq_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i = icmp eq i32 %3, 3
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call ptr @xdp_convert_zc_to_xdp_frame(ptr noundef %xdp) #14
  br label %xdp_convert_buff_to_frame.exit

if.end.i:                                         ; preds = %entry
  %data_hard_start.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %4 = ptrtoint ptr %data_hard_start.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_hard_start.i, align 4
  %6 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %data_meta.i.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %8 = ptrtoint ptr %data_meta.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data_meta.i.i, align 4
  %sub.ptr.rhs.cast3.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub4.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast3.i.i
  %10 = tail call i32 @llvm.smax.i32(i32 %sub.ptr.sub4.i.i, i32 0) #14
  %sub.i.i = sub i32 %sub.ptr.sub.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.i.i)
  %cmp5.i.i = icmp ult i32 %sub.i.i, 24
  br i1 %cmp5.i.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.i, !prof !135

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end.i
  %data_end.i.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %11 = ptrtoint ptr %data_end.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data_end.i.i, align 4
  %frame_sz.i.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 6
  %13 = ptrtoint ptr %frame_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frame_sz.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %14
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -256
  %cmp9.i.i = icmp ugt ptr %12, %add.ptr8.i.i
  br i1 %cmp9.i.i, label %if.then16.i.i, label %if.end5.i, !prof !135

if.then16.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @xdp_warn(ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.xdp_update_frame_from_buff, i32 noundef 200) #14
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %7, ptr %5, align 4
  %16 = ptrtoint ptr %data_end.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data_end.i.i, align 4
  %18 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast22.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast23.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub24.i.i = sub i32 %sub.ptr.lhs.cast22.i.i, %sub.ptr.rhs.cast23.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub24.i.i to i16
  %len.i.i = getelementptr inbounds %struct.xdp_frame, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i.i, ptr %len.i.i, align 4
  %21 = trunc i32 %sub.ptr.sub.i.i to i16
  %conv26.i.i = add i16 %21, -24
  %headroom27.i.i = getelementptr inbounds %struct.xdp_frame, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %headroom27.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv26.i.i, ptr %headroom27.i.i, align 2
  %metasize28.i.i = getelementptr inbounds %struct.xdp_frame, ptr %5, i32 0, i32 3
  %23 = ptrtoint ptr %metasize28.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load.i.i = load i32, ptr %metasize28.i.i, align 4
  %bf.shl.i.i = shl i32 %10, 24
  %bf.clear.i.i = and i32 %bf.load.i.i, 16777215
  %bf.set.i.i = or i32 %bf.clear.i.i, %bf.shl.i.i
  store i32 %bf.set.i.i, ptr %metasize28.i.i, align 4
  %24 = ptrtoint ptr %frame_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %frame_sz.i.i, align 4
  %bf.value32.i.i = and i32 %25, 16777215
  %bf.set34.i.i = or i32 %bf.value32.i.i, %bf.shl.i.i
  store i32 %bf.set34.i.i, ptr %metasize28.i.i, align 4
  %mem6.i = getelementptr inbounds %struct.xdp_frame, ptr %5, i32 0, i32 4
  %26 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rxq.i, align 4
  %mem8.i = getelementptr inbounds %struct.xdp_rxq_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %mem8.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %mem8.i, align 4
  %30 = ptrtoint ptr %mem6.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %mem6.i, align 4
  br label %xdp_convert_buff_to_frame.exit

xdp_convert_buff_to_frame.exit:                   ; preds = %if.end5.i, %if.then.i
  %retval.0.i = phi ptr [ %call.i, %if.then.i ], [ %5, %if.end5.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %xdp_convert_buff_to_frame.exit.cleanup_crit_edge, label %if.end, !prof !135

xdp_convert_buff_to_frame.exit.cleanup_crit_edge: ; preds = %xdp_convert_buff_to_frame.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %xdp_convert_buff_to_frame.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = tail call fastcc i32 @i40e_xmit_xdp_ring(ptr noundef nonnull %retval.0.i, ptr noundef %xdp_ring)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %xdp_convert_buff_to_frame.exit.cleanup_crit_edge, %if.then16.i.i, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ 1, %xdp_convert_buff_to_frame.exit.cleanup_crit_edge ], [ 1, %if.then16.i.i ], [ 1, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_xmit_xdp_ring(ptr noundef %xdpf, ptr nocapture noundef %xdp_ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_use = getelementptr inbounds %struct.i40e_ring, ptr %xdp_ring, i32 0, i32 14
  %0 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_use, align 4
  %2 = ptrtoint ptr %xdpf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xdpf, align 4
  %len = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len, align 4
  %conv = zext i16 %5 to i32
  %next_to_clean = getelementptr inbounds %struct.i40e_ring, ptr %xdp_ring, i32 0, i32 15
  %6 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %next_to_clean, align 2
  %conv4 = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %1)
  %cmp = icmp ugt i16 %7, %1
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %count = getelementptr inbounds %struct.i40e_ring, ptr %xdp_ring, i32 0, i32 11
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %count, align 2
  %conv6 = zext i16 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv6, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %conv8 = zext i16 %7 to i32
  %add = add nuw nsw i32 %cond, %conv8
  %.neg = add nuw nsw i32 %conv4, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %.neg)
  %tobool.not = icmp eq i32 %add, %.neg
  br i1 %tobool.not, label %if.then, label %if.end, !prof !132

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %tx_busy = getelementptr inbounds %struct.i40e_ring, ptr %xdp_ring, i32 0, i32 25, i32 0, i32 1
  %10 = ptrtoint ptr %tx_busy to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tx_busy, align 8
  %inc = add i64 %11, 1
  store i64 %inc, ptr %tx_busy, align 8
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %dev = getelementptr inbounds %struct.i40e_ring, ptr %xdp_ring, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %call = tail call fastcc i32 @dma_map_single_attrs(ptr noundef %13, ptr noundef %3, i32 noundef %conv)
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %15, i32 noundef %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp.i.not = icmp eq i32 %call, -1
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.end18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = getelementptr inbounds %struct.i40e_ring, ptr %xdp_ring, i32 0, i32 5
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %arrayidx = getelementptr %struct.i40e_tx_buffer, ptr %18, i32 %conv4
  %bytecount = getelementptr %struct.i40e_tx_buffer, ptr %18, i32 %conv4, i32 2
  %19 = ptrtoint ptr %bytecount to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv, ptr %bytecount, align 4
  %gso_segs = getelementptr %struct.i40e_tx_buffer, ptr %18, i32 %conv4, i32 3
  %20 = ptrtoint ptr %gso_segs to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %gso_segs, align 4
  %21 = getelementptr %struct.i40e_tx_buffer, ptr %18, i32 %conv4, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %xdpf, ptr %21, align 4
  %len19 = getelementptr %struct.i40e_tx_buffer, ptr %18, i32 %conv4, i32 5
  %23 = ptrtoint ptr %len19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv, ptr %len19, align 4
  %dma20 = getelementptr %struct.i40e_tx_buffer, ptr %18, i32 %conv4, i32 4
  %24 = ptrtoint ptr %dma20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call, ptr %dma20, align 4
  %desc = getelementptr inbounds %struct.i40e_ring, ptr %xdp_ring, i32 0, i32 1
  %25 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %desc, align 4
  %arrayidx22 = getelementptr %struct.i40e_tx_desc, ptr %26, i32 %conv4
  %conv23 = zext i32 %call to i64
  %27 = tail call i64 @llvm.bswap.i64(i64 %conv23)
  %28 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx22, align 8
  %conv4.i = zext i16 %5 to i64
  %shl5.i = shl nuw nsw i64 %conv4.i, 34
  %or6.i = or i64 %shl5.i, 112
  %29 = tail call i64 @llvm.bswap.i64(i64 %or6.i) #14
  %cmd_type_offset_bsz = getelementptr %struct.i40e_tx_desc, ptr %26, i32 %conv4, i32 1
  %30 = ptrtoint ptr %cmd_type_offset_bsz to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %cmd_type_offset_bsz, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  %xdp_tx_active = getelementptr inbounds %struct.i40e_ring, ptr %xdp_ring, i32 0, i32 16
  %31 = ptrtoint ptr %xdp_tx_active to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %xdp_tx_active, align 16
  %inc28 = add i16 %32, 1
  store i16 %inc28, ptr %xdp_tx_active, align 16
  %inc29 = add i16 %1, 1
  %count31 = getelementptr inbounds %struct.i40e_ring, ptr %xdp_ring, i32 0, i32 11
  %33 = ptrtoint ptr %count31 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %count31, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc29, i16 %34)
  %cmp33 = icmp eq i16 %inc29, %34
  %spec.store.select = select i1 %cmp33, i16 0, i16 %inc29
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx22, ptr %arrayidx, align 4
  %36 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %spec.store.select, ptr %next_to_use, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 2, %if.end18 ], [ 1, %if.then ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_xdp_ring_update_tail(ptr nocapture noundef readonly %xdp_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !137
  tail call void @arm_heavy_mb() #14
  %next_to_use = getelementptr inbounds %struct.i40e_ring, ptr %xdp_ring, i32 0, i32 14
  %0 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_use, align 4
  %conv = zext i16 %1 to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %tail = getelementptr inbounds %struct.i40e_ring, ptr %xdp_ring, i32 0, i32 9
  %3 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail, align 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #14, !srcloc !130
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_update_rx_stats(ptr noundef %rx_ring, i32 noundef %total_rx_bytes, i32 noundef %total_rx_packets) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %syncp = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 24
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %conv = zext i32 %total_rx_packets to i64
  %stats = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 23
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %stats, align 64
  %add = add i64 %1, %conv
  store i64 %add, ptr %stats, align 64
  %conv1 = zext i32 %total_rx_bytes to i64
  %bytes = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 23, i32 1
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bytes, align 8
  %add3 = add i64 %3, %conv1
  store i64 %add3, ptr %bytes, align 8
  %dep_map.i.i = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 24, i32 0, i32 1
  %4 = tail call ptr @llvm.returnaddress(i32 0) #14
  %5 = ptrtoint ptr %4 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %5) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !138
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %7, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  %q_vector = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 29
  %8 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %q_vector, align 4
  %total_packets = getelementptr inbounds %struct.i40e_q_vector, ptr %9, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %total_packets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total_packets, align 4
  %add5 = add i32 %11, %total_rx_packets
  store i32 %add5, ptr %total_packets, align 4
  %12 = load ptr, ptr %q_vector, align 4
  %total_bytes = getelementptr inbounds %struct.i40e_q_vector, ptr %12, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %total_bytes, align 8
  %add8 = add i32 %14, %total_rx_bytes
  store i32 %add8, ptr %total_bytes, align 8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !139
  %5 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !140
  %14 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !141
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !142
  %33 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !132

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !143
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #14
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_finalize_xdp_rx(ptr nocapture noundef readonly %rx_ring, i32 noundef %xdp_res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %xdp_res, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @xdp_do_flush() #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and1 = and i32 %xdp_res, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %vsi = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 28
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 8
  %xdp_rings = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %xdp_rings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xdp_rings, align 64
  %queue_index = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 7
  %4 = ptrtoint ptr %queue_index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %queue_index, align 4
  %idxprom = zext i16 %5 to i32
  %arrayidx = getelementptr ptr, ptr %3, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !137
  tail call void @arm_heavy_mb() #14
  %next_to_use.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %next_to_use.i, align 4
  %conv.i = zext i16 %9 to i32
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #14
  %tail.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 9
  %11 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i, align 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #14, !srcloc !130
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_do_flush() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_napi_poll(ptr noundef %napi, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  %xdp.i = alloca %struct.xdp_buff, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %state = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #14
  br label %cleanup94

if.end:                                           ; preds = %entry
  %tx = getelementptr i8, ptr %napi, i32 248
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %ring.0269 = load ptr, ptr %tx, align 128
  %cmp.not270 = icmp eq ptr %ring.0269, null
  br i1 %cmp.not270, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %work_limit.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 25
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %ring.0274 = phi ptr [ %ring.0269, %for.body.lr.ph ], [ %ring.0, %cleanup.for.body_crit_edge ]
  %arm_wb.0.off0272 = phi i1 [ false, %for.body.lr.ph ], [ %arm_wb.1.off0, %cleanup.for.body_crit_edge ]
  %clean_complete.0.off0271 = phi i1 [ true, %for.body.lr.ph ], [ %clean_complete.1.off0, %cleanup.for.body_crit_edge ]
  %xsk_pool = getelementptr inbounds %struct.i40e_ring, ptr %ring.0274, i32 0, i32 37
  %5 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xsk_pool, align 128
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body
  %call5 = tail call zeroext i1 @i40e_clean_xdp_tx_irq(ptr noundef %1, ptr noundef nonnull %ring.0274) #14
  br i1 %call5, label %cond.true.if.end11_crit_edge, label %cond.true.cleanup_crit_edge

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.true.if.end11_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

cond.false:                                       ; preds = %for.body
  %next_to_clean.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.0274, i32 0, i32 15
  %7 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %next_to_clean.i, align 2
  %conv.i = zext i16 %8 to i32
  %9 = ptrtoint ptr %work_limit.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %work_limit.i, align 4
  %conv1.i = zext i16 %10 to i32
  %11 = getelementptr inbounds %struct.i40e_ring, ptr %ring.0274, i32 0, i32 5
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %arrayidx.i = getelementptr %struct.i40e_tx_buffer, ptr %13, i32 %conv.i
  %desc.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.0274, i32 0, i32 1
  %14 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc.i, align 4
  %arrayidx2.i = getelementptr %struct.i40e_tx_desc, ptr %15, i32 %conv.i
  %count.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.0274, i32 0, i32 11
  %16 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %count.i, align 2
  %conv3.i = zext i16 %17 to i32
  %sub.i = sub nsw i32 %conv.i, %conv3.i
  %add.ptr.i.i = getelementptr %struct.i40e_tx_desc, ptr %15, i32 %conv3.i
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %add.ptr.i.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #14
  %arrayidx5.i = getelementptr %struct.i40e_tx_desc, ptr %15, i32 %20
  %flags.i.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.0274, i32 0, i32 22
  %dev.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.0274, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %cleanup.i.do.body.i_crit_edge, %cond.false
  %i.0.i = phi i32 [ %sub.i, %cond.false ], [ %i.3.i, %cleanup.i.do.body.i_crit_edge ]
  %tx_buf.0.i = phi ptr [ %arrayidx.i, %cond.false ], [ %tx_buf.3.i, %cleanup.i.do.body.i_crit_edge ]
  %tx_desc.0.i = phi ptr [ %arrayidx2.i, %cond.false ], [ %tx_desc.3.i, %cleanup.i.do.body.i_crit_edge ]
  %total_bytes.0.i = phi i32 [ 0, %cond.false ], [ %add.i, %cleanup.i.do.body.i_crit_edge ]
  %total_packets.0.i = phi i32 [ 0, %cond.false ], [ %add15.i, %cleanup.i.do.body.i_crit_edge ]
  %budget.0.i = phi i32 [ %conv1.i, %cond.false ], [ %dec.i, %cleanup.i.do.body.i_crit_edge ]
  %21 = ptrtoint ptr %tx_buf.0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_buf.0.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %do.body.i.cleanup.thread.i_crit_edge, label %do.end.i

do.body.i.cleanup.thread.i_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i

do.end.i:                                         ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !144
  tail call fastcc void @trace_i40e_clean_tx_irq(ptr noundef %ring.0274, ptr noundef %tx_desc.0.i, ptr noundef %tx_buf.0.i) #14
  %cmp.i = icmp eq ptr %arrayidx5.i, %tx_desc.0.i
  br i1 %cmp.i, label %do.end.i.cleanup.thread.i_crit_edge, label %if.end12.i

do.end.i.cleanup.thread.i_crit_edge:              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i

if.end12.i:                                       ; preds = %do.end.i
  %23 = ptrtoint ptr %tx_buf.0.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %tx_buf.0.i, align 4
  %bytecount.i = getelementptr inbounds %struct.i40e_tx_buffer, ptr %tx_buf.0.i, i32 0, i32 2
  %24 = ptrtoint ptr %bytecount.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bytecount.i, align 4
  %add.i = add i32 %25, %total_bytes.0.i
  %gso_segs.i = getelementptr inbounds %struct.i40e_tx_buffer, ptr %tx_buf.0.i, i32 0, i32 3
  %26 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %gso_segs.i, align 4
  %conv14.i = zext i16 %27 to i32
  %add15.i = add i32 %total_packets.0.i, %conv14.i
  %28 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flags.i.i, align 8
  %30 = and i16 %29, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.i.not.i = icmp eq i16 %30, 0
  %31 = getelementptr inbounds %struct.i40e_tx_buffer, ptr %tx_buf.0.i, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @xdp_return_frame(ptr noundef %33) #14
  br label %if.end18.i

if.else.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @napi_consume_skb(ptr noundef %33, i32 noundef %budget) #14
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i, %if.then17.i
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 8
  %dma.i = getelementptr inbounds %struct.i40e_tx_buffer, ptr %tx_buf.0.i, i32 0, i32 4
  %36 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma.i, align 4
  %len.i = getelementptr inbounds %struct.i40e_tx_buffer, ptr %tx_buf.0.i, i32 0, i32 5
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef 1, i32 noundef 0) #14
  %40 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %31, align 4
  %41 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %len.i, align 4
  %cmp20.not255.i = icmp eq ptr %tx_desc.0.i, %22
  br i1 %cmp20.not255.i, label %if.end18.i.while.end.i_crit_edge, label %if.end18.i.while.body.i_crit_edge

if.end18.i.while.body.i_crit_edge:                ; preds = %if.end18.i
  br label %while.body.i

if.end18.i.while.end.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.i:                                     ; preds = %if.end41.i.while.body.i_crit_edge, %if.end18.i.while.body.i_crit_edge
  %tx_desc.1258.i = phi ptr [ %tx_desc.2.i, %if.end41.i.while.body.i_crit_edge ], [ %tx_desc.0.i, %if.end18.i.while.body.i_crit_edge ]
  %tx_buf.1257.i = phi ptr [ %tx_buf.2.i, %if.end41.i.while.body.i_crit_edge ], [ %tx_buf.0.i, %if.end18.i.while.body.i_crit_edge ]
  %i.1256.i = phi i32 [ %i.2.i, %if.end41.i.while.body.i_crit_edge ], [ %i.0.i, %if.end18.i.while.body.i_crit_edge ]
  tail call fastcc void @trace_i40e_clean_tx_irq_unmap(ptr noundef %ring.0274, ptr noundef %tx_desc.1258.i, ptr noundef %tx_buf.1257.i) #14
  %incdec.ptr.i = getelementptr %struct.i40e_tx_buffer, ptr %tx_buf.1257.i, i32 1
  %incdec.ptr22.i = getelementptr %struct.i40e_tx_desc, ptr %tx_desc.1258.i, i32 1
  %inc.i = add i32 %i.1256.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool23.not.i = icmp eq i32 %inc.i, 0
  br i1 %tobool23.not.i, label %if.then27.i, label %while.body.i.if.end33.i_crit_edge, !prof !135

while.body.i.if.end33.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33.i

if.then27.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %count.i, align 2
  %conv29.i = zext i16 %43 to i32
  %sub30.i = sub nsw i32 0, %conv29.i
  %44 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %11, align 4
  %46 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %desc.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then27.i, %while.body.i.if.end33.i_crit_edge
  %i.2.i = phi i32 [ %sub30.i, %if.then27.i ], [ %inc.i, %while.body.i.if.end33.i_crit_edge ]
  %tx_buf.2.i = phi ptr [ %45, %if.then27.i ], [ %incdec.ptr.i, %while.body.i.if.end33.i_crit_edge ]
  %tx_desc.2.i = phi ptr [ %47, %if.then27.i ], [ %incdec.ptr22.i, %while.body.i.if.end33.i_crit_edge ]
  %len34.i = getelementptr inbounds %struct.i40e_tx_buffer, ptr %tx_buf.2.i, i32 0, i32 5
  %48 = ptrtoint ptr %len34.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool35.not.i = icmp eq i32 %49, 0
  br i1 %tobool35.not.i, label %if.end33.i.if.end41.i_crit_edge, label %if.then36.i

if.end33.i.if.end41.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41.i

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 8
  %dma38.i = getelementptr inbounds %struct.i40e_tx_buffer, ptr %tx_buf.2.i, i32 0, i32 4
  %52 = ptrtoint ptr %dma38.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dma38.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %51, i32 noundef %53, i32 noundef %49, i32 noundef 1, i32 noundef 0) #14
  %54 = ptrtoint ptr %len34.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %len34.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then36.i, %if.end33.i.if.end41.i_crit_edge
  %cmp20.not.i = icmp eq ptr %tx_desc.2.i, %22
  br i1 %cmp20.not.i, label %if.end41.i.while.end.i_crit_edge, label %if.end41.i.while.body.i_crit_edge

if.end41.i.while.body.i_crit_edge:                ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end41.i.while.end.i_crit_edge:                 ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %if.end41.i.while.end.i_crit_edge, %if.end18.i.while.end.i_crit_edge
  %i.1.lcssa.i = phi i32 [ %i.0.i, %if.end18.i.while.end.i_crit_edge ], [ %i.2.i, %if.end41.i.while.end.i_crit_edge ]
  %tx_buf.1.lcssa.i = phi ptr [ %tx_buf.0.i, %if.end18.i.while.end.i_crit_edge ], [ %tx_buf.2.i, %if.end41.i.while.end.i_crit_edge ]
  %tx_desc.1.lcssa.i = phi ptr [ %tx_desc.0.i, %if.end18.i.while.end.i_crit_edge ], [ %22, %if.end41.i.while.end.i_crit_edge ]
  %incdec.ptr42.i = getelementptr %struct.i40e_tx_buffer, ptr %tx_buf.1.lcssa.i, i32 1
  %incdec.ptr43.i = getelementptr %struct.i40e_tx_desc, ptr %tx_desc.1.lcssa.i, i32 1
  %inc44.i = add i32 %i.1.lcssa.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc44.i)
  %tobool45.not.i = icmp eq i32 %inc44.i, 0
  br i1 %tobool45.not.i, label %if.then54.i, label %while.end.i.cleanup.i_crit_edge, !prof !135

while.end.i.cleanup.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.then54.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %count.i, align 2
  %conv56.i = zext i16 %56 to i32
  %sub57.i = sub nsw i32 0, %conv56.i
  %57 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %11, align 4
  %59 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %desc.i, align 4
  br label %cleanup.i

cleanup.thread.i:                                 ; preds = %do.end.i.cleanup.thread.i_crit_edge, %do.body.i.cleanup.thread.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget.0.i)
  %tobool62.not244.i = icmp eq i32 %budget.0.i, 0
  br label %do.end69.i

cleanup.i:                                        ; preds = %if.then54.i, %while.end.i.cleanup.i_crit_edge
  %i.3.i = phi i32 [ %sub57.i, %if.then54.i ], [ %inc44.i, %while.end.i.cleanup.i_crit_edge ]
  %tx_buf.3.i = phi ptr [ %58, %if.then54.i ], [ %incdec.ptr42.i, %while.end.i.cleanup.i_crit_edge ]
  %tx_desc.3.i = phi ptr [ %60, %if.then54.i ], [ %incdec.ptr43.i, %while.end.i.cleanup.i_crit_edge ]
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %tx_desc.3.i) #14, !srcloc !145
  %dec.i = add i32 %budget.0.i, -1
  %tobool62.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool62.not.i, label %cleanup.i.do.end69.i_crit_edge, label %cleanup.i.do.body.i_crit_edge, !prof !146

cleanup.i.do.body.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

cleanup.i.do.end69.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end69.i

do.end69.i:                                       ; preds = %cleanup.i.do.end69.i_crit_edge, %cleanup.thread.i
  %tobool62.not250.i = phi i1 [ %tobool62.not244.i, %cleanup.thread.i ], [ true, %cleanup.i.do.end69.i_crit_edge ]
  %budget.1249.i = phi i32 [ %budget.0.i, %cleanup.thread.i ], [ 0, %cleanup.i.do.end69.i_crit_edge ]
  %total_packets.1248.i = phi i32 [ %total_packets.0.i, %cleanup.thread.i ], [ %add15.i, %cleanup.i.do.end69.i_crit_edge ]
  %total_bytes.1247.i = phi i32 [ %total_bytes.0.i, %cleanup.thread.i ], [ %add.i, %cleanup.i.do.end69.i_crit_edge ]
  %i.4246.i = phi i32 [ %i.0.i, %cleanup.thread.i ], [ %i.3.i, %cleanup.i.do.end69.i_crit_edge ]
  %61 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %count.i, align 2
  %63 = trunc i32 %i.4246.i to i16
  %conv73.i = add i16 %62, %63
  %64 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv73.i, ptr %next_to_clean.i, align 2
  %syncp.i.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.0274, i32 0, i32 24
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i.i) #14
  %conv.i220.i = zext i32 %total_bytes.1247.i to i64
  %stats.i.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.0274, i32 0, i32 23
  %bytes.i.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.0274, i32 0, i32 23, i32 1
  %65 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %bytes.i.i, align 8
  %add.i.i = add i64 %66, %conv.i220.i
  store i64 %add.i.i, ptr %bytes.i.i, align 8
  %conv1.i.i = zext i32 %total_packets.1248.i to i64
  %67 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %stats.i.i, align 64
  %add3.i.i = add i64 %68, %conv1.i.i
  store i64 %add3.i.i, ptr %stats.i.i, align 64
  %dep_map.i.i.i.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.0274, i32 0, i32 24, i32 0, i32 1
  %69 = tail call ptr @llvm.returnaddress(i32 0) #14
  %70 = ptrtoint ptr %69 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %70) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !138
  %71 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %72, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  %q_vector.i.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.0274, i32 0, i32 29
  %73 = ptrtoint ptr %q_vector.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %q_vector.i.i, align 4
  %total_bytes5.i.i = getelementptr inbounds %struct.i40e_q_vector, ptr %74, i32 0, i32 5, i32 2
  %75 = ptrtoint ptr %total_bytes5.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %total_bytes5.i.i, align 8
  %add6.i.i = add i32 %76, %total_bytes.1247.i
  store i32 %add6.i.i, ptr %total_bytes5.i.i, align 8
  %77 = load ptr, ptr %q_vector.i.i, align 4
  %total_packets9.i.i = getelementptr inbounds %struct.i40e_q_vector, ptr %77, i32 0, i32 5, i32 3
  %78 = ptrtoint ptr %total_packets9.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %total_packets9.i.i, align 4
  %add10.i.i = add i32 %79, %total_packets.1248.i
  store i32 %add10.i.i, ptr %total_packets9.i.i, align 4
  %80 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %flags.i.i, align 8
  %82 = and i16 %81, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool.not.i.i = icmp eq i16 %82, 0
  br i1 %tobool.not.i.i, label %do.end69.i.i40e_arm_wb.exit.i_crit_edge, label %if.then.i.i

do.end69.i.i40e_arm_wb.exit.i_crit_edge:          ; preds = %do.end69.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_arm_wb.exit.i

if.then.i.i:                                      ; preds = %do.end69.i
  %83 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %desc.i, align 4
  %85 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %count.i, align 2
  %conv.i.i.i.i = zext i16 %86 to i32
  %add.ptr.i.i.i.i = getelementptr %struct.i40e_tx_desc, ptr %84, i32 %conv.i.i.i.i
  %87 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %add.ptr.i.i.i.i, align 4
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #14
  %tail1.i.i.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.0274, i32 0, i32 9
  %90 = ptrtoint ptr %tail1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tail1.i.i.i, align 32
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #14, !srcloc !128
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !129
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %88)
  %cmp.not.i.i.i = icmp eq i32 %92, %88
  br i1 %cmp.not.i.i.i, label %if.then.i.i.i40e_arm_wb.exit.i_crit_edge, label %if.then6.i.i.i

if.then.i.i.i40e_arm_wb.exit.i_crit_edge:         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_arm_wb.exit.i

if.then6.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %89)
  %cmp7.i.i.i = icmp ugt i32 %93, %89
  br i1 %cmp7.i.i.i, label %if.then6.i.i.i.i40e_get_tx_pending.exit.i.i_crit_edge, label %cond.false.i.i.i

if.then6.i.i.i.i40e_get_tx_pending.exit.i.i_crit_edge: ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_get_tx_pending.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %94 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %count.i, align 2
  %conv9.i.i.i = zext i16 %95 to i32
  %add.i.i.i = add i32 %93, %conv9.i.i.i
  br label %i40e_get_tx_pending.exit.i.i

i40e_get_tx_pending.exit.i.i:                     ; preds = %cond.false.i.i.i, %if.then6.i.i.i.i40e_get_tx_pending.exit.i.i_crit_edge
  %tail.0.pn.i.i.i = phi i32 [ %add.i.i.i, %cond.false.i.i.i ], [ %93, %if.then6.i.i.i.i40e_get_tx_pending.exit.i.i_crit_edge ]
  %cond.i.i.i = sub i32 %tail.0.pn.i.i.i, %89
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cond.i.i.i)
  %cmp.i.i = icmp ugt i32 %cond.i.i.i, 3
  %or.cond.i.i = select i1 %tobool62.not250.i, i1 true, i1 %cmp.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %tail.0.pn.i.i.i, i32 %89)
  %cmp4.not.i.i = icmp eq i32 %tail.0.pn.i.i.i, %89
  %or.cond36.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp4.not.i.i
  br i1 %or.cond36.i.i, label %i40e_get_tx_pending.exit.i.i.i40e_arm_wb.exit.i_crit_edge, label %land.lhs.true6.i.i

i40e_get_tx_pending.exit.i.i.i40e_arm_wb.exit.i_crit_edge: ; preds = %i40e_get_tx_pending.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_arm_wb.exit.i

land.lhs.true6.i.i:                               ; preds = %i40e_get_tx_pending.exit.i.i
  %96 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %state, align 4
  %and1.i.i.i = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool8.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true9.i.i, label %land.lhs.true6.i.i.i40e_arm_wb.exit.i_crit_edge

land.lhs.true6.i.i.i40e_arm_wb.exit.i_crit_edge:  ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_arm_wb.exit.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true6.i.i
  %98 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %next_to_clean.i, align 2
  %next_to_use.i.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.0274, i32 0, i32 14
  %100 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %next_to_use.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %99, i16 %101)
  %cmp12.i.i = icmp ugt i16 %99, %101
  br i1 %cmp12.i.i, label %land.lhs.true9.i.i.cond.end.i.i_crit_edge, label %cond.false.i.i

land.lhs.true9.i.i.cond.end.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %102 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %count.i, align 2
  %conv14.i.i = zext i16 %103 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %land.lhs.true9.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv14.i.i, %cond.false.i.i ], [ 0, %land.lhs.true9.i.i.cond.end.i.i_crit_edge ]
  %conv16.i.i = zext i16 %99 to i32
  %conv18.i.i = zext i16 %101 to i32
  %104 = xor i32 %conv18.i.i, -1
  %add.i222.i = add nsw i32 %104, %conv16.i.i
  %sub19.i.i = add nsw i32 %add.i222.i, %cond.i.i
  %105 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %count.i, align 2
  %conv21.i.i = zext i16 %106 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub19.i.i, i32 %conv21.i.i)
  %cmp22.not.i.i = icmp eq i32 %sub19.i.i, %conv21.i.i
  br i1 %cmp22.not.i.i, label %cond.end.i.i.i40e_arm_wb.exit.i_crit_edge, label %if.then24.i.i

cond.end.i.i.i40e_arm_wb.exit.i_crit_edge:        ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_arm_wb.exit.i

if.then24.i.i:                                    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arm_wb.i.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.0274, i32 0, i32 20
  %107 = ptrtoint ptr %arm_wb.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %arm_wb.i.i, align 1
  br label %i40e_arm_wb.exit.i

i40e_arm_wb.exit.i:                               ; preds = %if.then24.i.i, %cond.end.i.i.i40e_arm_wb.exit.i_crit_edge, %land.lhs.true6.i.i.i40e_arm_wb.exit.i_crit_edge, %i40e_get_tx_pending.exit.i.i.i40e_arm_wb.exit.i_crit_edge, %if.then.i.i.i40e_arm_wb.exit.i_crit_edge, %do.end69.i.i40e_arm_wb.exit.i_crit_edge
  %108 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %flags.i.i, align 8
  %110 = and i16 %109, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool.i224.not.i = icmp eq i16 %110, 0
  br i1 %tobool.i224.not.i, label %if.end82.i, label %i40e_arm_wb.exit.i.cond.end_crit_edge

i40e_arm_wb.exit.i.cond.end_crit_edge:            ; preds = %i40e_arm_wb.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end82.i:                                       ; preds = %i40e_arm_wb.exit.i
  %netdev.i.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.0274, i32 0, i32 3
  %111 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %netdev.i.i, align 4
  %queue_index.i.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.0274, i32 0, i32 7
  %113 = ptrtoint ptr %queue_index.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %queue_index.i.i, align 4
  %conv.i225.i = zext i16 %114 to i32
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %112, i32 0, i32 103
  %115 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %_tx.i.i.i, align 128
  %arrayidx.i.i.i = getelementptr %struct.netdev_queue, ptr %116, i32 %conv.i225.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_bytes.1247.i)
  %tobool.not.i226.i = icmp eq i32 %total_bytes.1247.i, 0
  br i1 %tobool.not.i226.i, label %if.end82.i.netdev_tx_completed_queue.exit.i_crit_edge, label %if.end.i.i, !prof !135

if.end82.i.netdev_tx_completed_queue.exit.i_crit_edge: ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_tx_completed_queue.exit.i

if.end.i.i:                                       ; preds = %if.end82.i
  %dql.i.i = getelementptr %struct.netdev_queue, ptr %116, i32 %conv.i225.i, i32 15
  tail call void @dql_completed(ptr noundef %dql.i.i, i32 noundef %total_bytes.1247.i) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !147
  %adj_limit.i.i.i = getelementptr %struct.netdev_queue, ptr %116, i32 %conv.i225.i, i32 15, i32 1
  %117 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %119 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %118, %120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i227.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i227.i, label %if.end.i.i.netdev_tx_completed_queue.exit.i_crit_edge, label %if.end14.i.i, !prof !135

if.end.i.i.netdev_tx_completed_queue.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_tx_completed_queue.exit.i

if.end14.i.i:                                     ; preds = %if.end.i.i
  %state.i228.i = getelementptr %struct.netdev_queue, ptr %116, i32 %conv.i225.i, i32 13
  %call15.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i228.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end14.i.i.netdev_tx_completed_queue.exit.i_crit_edge, label %if.then17.i.i

if.end14.i.i.netdev_tx_completed_queue.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_tx_completed_queue.exit.i

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_schedule_queue(ptr noundef %arrayidx.i.i.i) #14
  br label %netdev_tx_completed_queue.exit.i

netdev_tx_completed_queue.exit.i:                 ; preds = %if.then17.i.i, %if.end14.i.i.netdev_tx_completed_queue.exit.i_crit_edge, %if.end.i.i.netdev_tx_completed_queue.exit.i_crit_edge, %if.end82.i.netdev_tx_completed_queue.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_packets.1248.i)
  %tobool84.not.i = icmp eq i32 %total_packets.1248.i, 0
  br i1 %tobool84.not.i, label %netdev_tx_completed_queue.exit.i.cond.end_crit_edge, label %land.lhs.true.i

netdev_tx_completed_queue.exit.i.cond.end_crit_edge: ; preds = %netdev_tx_completed_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

land.lhs.true.i:                                  ; preds = %netdev_tx_completed_queue.exit.i
  %121 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %netdev.i.i, align 4
  %state.i229.i = getelementptr inbounds %struct.net_device, ptr %122, i32 0, i32 6
  %123 = ptrtoint ptr %state.i229.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %state.i229.i, align 4
  %125 = and i32 %124, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.not.i230.i = icmp eq i32 %125, 0
  br i1 %tobool.not.i230.i, label %land.rhs.i, label %land.lhs.true.i.cond.end_crit_edge

land.lhs.true.i.cond.end_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %126 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %next_to_clean.i, align 2
  %next_to_use.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.0274, i32 0, i32 14
  %128 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %next_to_use.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %127, i16 %129)
  %cmp90.i = icmp ugt i16 %127, %129
  br i1 %cmp90.i, label %land.rhs.i.cond.end.i_crit_edge, label %cond.false.i

land.rhs.i.cond.end.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  %130 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %count.i, align 2
  %conv93.i = zext i16 %131 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %land.rhs.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv93.i, %cond.false.i ], [ 0, %land.rhs.i.cond.end.i_crit_edge ]
  %conv95.i = zext i16 %127 to i32
  %conv98.i = zext i16 %129 to i32
  %132 = xor i32 %conv98.i, -1
  %add96.i = add nsw i32 %132, %conv95.i
  %sub100.i = add nsw i32 %add96.i, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %sub100.i)
  %cmp101.i = icmp sgt i32 %sub100.i, 45
  br i1 %cmp101.i, label %do.end113.i, label %cond.end.i.cond.end_crit_edge, !prof !135

cond.end.i.cond.end_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

do.end113.i:                                      ; preds = %cond.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !148
  %133 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %netdev.i.i, align 4
  %135 = ptrtoint ptr %queue_index.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %queue_index.i.i, align 4
  %conv.i231.i = zext i16 %136 to i32
  %_tx.i.i232.i = getelementptr inbounds %struct.net_device, ptr %134, i32 0, i32 103
  %137 = ptrtoint ptr %_tx.i.i232.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %_tx.i.i232.i, align 128
  %state.i.i.i = getelementptr %struct.netdev_queue, ptr %138, i32 %conv.i231.i, i32 13
  %139 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %140, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %do.end113.i.cond.end_crit_edge, label %land.lhs.true119.i

do.end113.i.cond.end_crit_edge:                   ; preds = %do.end113.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

land.lhs.true119.i:                               ; preds = %do.end113.i
  %141 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %state, align 4
  %and1.i.i = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool121.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool121.not.i, label %if.then122.i, label %land.lhs.true119.i.cond.end_crit_edge

land.lhs.true119.i.cond.end_crit_edge:            ; preds = %land.lhs.true119.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.then122.i:                                     ; preds = %land.lhs.true119.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i235.i = getelementptr %struct.netdev_queue, ptr %138, i32 %conv.i231.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i235.i) #14
  %143 = getelementptr inbounds %struct.i40e_ring, ptr %ring.0274, i32 0, i32 25
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %143, align 16
  %inc125.i = add i64 %145, 1
  store i64 %inc125.i, ptr %143, align 16
  br label %cond.end

cond.end:                                         ; preds = %if.then122.i, %land.lhs.true119.i.cond.end_crit_edge, %do.end113.i.cond.end_crit_edge, %cond.end.i.cond.end_crit_edge, %land.lhs.true.i.cond.end_crit_edge, %netdev_tx_completed_queue.exit.i.cond.end_crit_edge, %i40e_arm_wb.exit.i.cond.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget.1249.i)
  %retval.0.i.not = icmp eq i32 %budget.1249.i, 0
  br i1 %retval.0.i.not, label %cond.end.cleanup_crit_edge, label %cond.end.if.end11_crit_edge

cond.end.if.end11_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %cond.end.if.end11_crit_edge, %cond.true.if.end11_crit_edge
  %arm_wb12 = getelementptr inbounds %struct.i40e_ring, ptr %ring.0274, i32 0, i32 20
  %146 = ptrtoint ptr %arm_wb12 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arm_wb12, align 1, !range !149
  %148 = zext i8 %147 to i32
  %conv16 = zext i1 %arm_wb.0.off0272 to i32
  %or = or i32 %148, %conv16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool17 = icmp ne i32 %or, 0
  %149 = ptrtoint ptr %arm_wb12 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %arm_wb12, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %cond.end.cleanup_crit_edge, %cond.true.cleanup_crit_edge
  %clean_complete.1.off0 = phi i1 [ %clean_complete.0.off0271, %if.end11 ], [ false, %cond.end.cleanup_crit_edge ], [ false, %cond.true.cleanup_crit_edge ]
  %arm_wb.1.off0 = phi i1 [ %tobool17, %if.end11 ], [ %arm_wb.0.off0272, %cond.end.cleanup_crit_edge ], [ %arm_wb.0.off0272, %cond.true.cleanup_crit_edge ]
  %150 = ptrtoint ptr %ring.0274 to i32
  call void @__asan_load4_noabort(i32 %150)
  %ring.0 = load ptr, ptr %ring.0274, align 128
  %cmp.not = icmp eq ptr %ring.0, null
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  %clean_complete.0.off0.lcssa = phi i1 [ true, %if.end.for.end_crit_edge ], [ %clean_complete.1.off0, %cleanup.for.end_crit_edge ]
  %arm_wb.0.off0.lcssa = phi i1 [ false, %if.end.for.end_crit_edge ], [ %arm_wb.1.off0, %cleanup.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %budget)
  %cmp20 = icmp slt i32 %budget, 1
  br i1 %cmp20, label %for.end.tx_only_crit_edge, label %if.end23

for.end.tx_only_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %tx_only

if.end23:                                         ; preds = %for.end
  %num_ringpairs = getelementptr i8, ptr %napi, i32 273
  %151 = ptrtoint ptr %num_ringpairs to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %num_ringpairs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %152)
  %cmp25 = icmp ugt i8 %152, 1
  br i1 %cmp25, label %if.then29, label %if.end23.if.end39_crit_edge, !prof !135

if.end23.if.end39_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %conv24 = zext i8 %152 to i32
  %div238 = udiv i32 %budget, %conv24
  %153 = tail call i32 @llvm.umax.i32(i32 %div238, i32 1)
  br label %if.end39

if.end39:                                         ; preds = %if.then29, %if.end23.if.end39_crit_edge
  %budget_per_ring.0 = phi i32 [ %153, %if.then29 ], [ %budget, %if.end23.if.end39_crit_edge ]
  %rx = getelementptr i8, ptr %napi, i32 224
  %154 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %154)
  %ring.1276 = load ptr, ptr %rx, align 8
  %cmp42.not277 = icmp eq ptr %ring.1276, null
  br i1 %cmp42.not277, label %if.end39.for.end59_crit_edge, label %for.body44.lr.ph

if.end39.for.end59_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end59

for.body44.lr.ph:                                 ; preds = %if.end39
  %155 = getelementptr inbounds %struct.xdp_buff, ptr %xdp.i, i32 0, i32 1
  %156 = getelementptr inbounds %struct.xdp_buff, ptr %xdp.i, i32 0, i32 2
  %157 = getelementptr inbounds %struct.xdp_buff, ptr %xdp.i, i32 0, i32 3
  %158 = getelementptr inbounds %struct.xdp_buff, ptr %xdp.i, i32 0, i32 4
  %159 = getelementptr inbounds %struct.xdp_buff, ptr %xdp.i, i32 0, i32 6
  br label %for.body44

for.body44:                                       ; preds = %cond.end51.for.body44_crit_edge, %for.body44.lr.ph
  %ring.1280 = phi ptr [ %ring.1276, %for.body44.lr.ph ], [ %ring.1, %cond.end51.for.body44_crit_edge ]
  %work_done.0279 = phi i32 [ 0, %for.body44.lr.ph ], [ %add, %cond.end51.for.body44_crit_edge ]
  %clean_complete.2.off0278 = phi i1 [ %clean_complete.0.off0.lcssa, %for.body44.lr.ph ], [ %spec.select, %cond.end51.for.body44_crit_edge ]
  %xsk_pool45 = getelementptr inbounds %struct.i40e_ring, ptr %ring.1280, i32 0, i32 37
  %160 = ptrtoint ptr %xsk_pool45 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %xsk_pool45, align 128
  %tobool46.not = icmp eq ptr %161, null
  br i1 %tobool46.not, label %cond.false49, label %cond.true47

cond.true47:                                      ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #16
  %call48 = call i32 @i40e_clean_rx_irq_zc(ptr noundef nonnull %ring.1280, i32 noundef %budget_per_ring.0) #14
  br label %cond.end51

cond.false49:                                     ; preds = %for.body44
  %next_to_clean.i154 = getelementptr inbounds %struct.i40e_ring, ptr %ring.1280, i32 0, i32 15
  %162 = ptrtoint ptr %next_to_clean.i154 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %next_to_clean.i154, align 2
  %next_to_use.i155 = getelementptr inbounds %struct.i40e_ring, ptr %ring.1280, i32 0, i32 14
  %164 = ptrtoint ptr %next_to_use.i155 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %next_to_use.i155, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %163, i16 %165)
  %cmp.i156 = icmp ugt i16 %163, %165
  br i1 %cmp.i156, label %cond.false49.while.body.lr.ph.i_crit_edge, label %cond.false.i158

cond.false49.while.body.lr.ph.i_crit_edge:        ; preds = %cond.false49
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.lr.ph.i

cond.false.i158:                                  ; preds = %cond.false49
  call void @__sanitizer_cov_trace_pc() #16
  %count.i157 = getelementptr inbounds %struct.i40e_ring, ptr %ring.1280, i32 0, i32 11
  %166 = ptrtoint ptr %count.i157 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %count.i157, align 2
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %cond.false.i158, %cond.false49.while.body.lr.ph.i_crit_edge
  %cond.i159 = phi i16 [ %167, %cond.false.i158 ], [ 0, %cond.false49.while.body.lr.ph.i_crit_edge ]
  %rx_offset.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.1280, i32 0, i32 34
  %168 = ptrtoint ptr %rx_offset.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %rx_offset.i, align 4
  %conv10.i = zext i16 %169 to i32
  %skb11.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.1280, i32 0, i32 32
  %170 = ptrtoint ptr %skb11.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %skb11.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xdp.i) #14
  %rx_buf_len.i.i.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.1280, i32 0, i32 13
  %172 = call ptr @memset(ptr %xdp.i, i32 255, i32 24)
  %173 = ptrtoint ptr %rx_buf_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %rx_buf_len.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %174)
  %cmp.i.i.i = icmp ugt i16 %174, 2048
  %..i.i.i = zext i1 %cmp.i.i.i to i32
  %shl.i.i = shl nuw nsw i32 4096, %..i.i.i
  %div1.i.i = lshr exact i32 %shl.i.i, 1
  %xdp_rxq.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.1280, i32 0, i32 36
  %175 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %div1.i.i, ptr %159, align 4
  %176 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %xdp_rxq.i, ptr %158, align 4
  %177 = xor i16 %165, -1
  %add.i161 = add i16 %163, %177
  %sub8.i = add i16 %add.i161, %cond.i159
  %desc.i162 = getelementptr inbounds %struct.i40e_ring, ptr %ring.1280, i32 0, i32 1
  %178 = getelementptr inbounds %struct.i40e_ring, ptr %ring.1280, i32 0, i32 5
  %dev.i.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.1280, i32 0, i32 2
  %idx.neg.i = sub nsw i32 0, %conv10.i
  %flags.i.i163 = getelementptr inbounds %struct.i40e_ring, ptr %ring.1280, i32 0, i32 22
  %q_vector.i.i164 = getelementptr inbounds %struct.i40e_ring, ptr %ring.1280, i32 0, i32 29
  %count.i251.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.1280, i32 0, i32 11
  %179 = getelementptr inbounds %struct.i40e_ring, ptr %ring.1280, i32 0, i32 25
  %next_to_alloc.i.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.1280, i32 0, i32 31
  %page_reuse_count.i.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.1280, i32 0, i32 25, i32 0, i32 3
  br label %while.body.i165

while.body.i165:                                  ; preds = %cleanup.i182.while.body.i165_crit_edge, %while.body.lr.ph.i
  %total_rx_bytes.0349.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %total_rx_bytes.2.i, %cleanup.i182.while.body.i165_crit_edge ]
  %xdp_res.0348.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %xdp_res.2.i, %cleanup.i182.while.body.i165_crit_edge ]
  %failure.0.off0347.i = phi i1 [ false, %while.body.lr.ph.i ], [ %failure.1.off0.i, %cleanup.i182.while.body.i165_crit_edge ]
  %xdp_xmit.0345.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %xdp_xmit.3.i, %cleanup.i182.while.body.i165_crit_edge ]
  %skb.0344.i = phi ptr [ %171, %while.body.lr.ph.i ], [ %skb.2.i, %cleanup.i182.while.body.i165_crit_edge ]
  %cleaned_count.0343.i = phi i16 [ %sub8.i, %while.body.lr.ph.i ], [ %cleaned_count.2.i, %cleanup.i182.while.body.i165_crit_edge ]
  %total_rx_packets.0341.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %total_rx_packets.2.i, %cleanup.i182.while.body.i165_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %cleaned_count.0343.i)
  %cmp16.i = icmp ult i16 %cleaned_count.0343.i, 32
  %brmerge.i = select i1 %cmp16.i, i1 true, i1 %failure.0.off0347.i
  %cleaned_count.0.mux.i = select i1 %cmp16.i, i16 %cleaned_count.0343.i, i16 0
  %not.cmp16.i = xor i1 %cmp16.i, true
  %failure.0.off0.mux.i = select i1 %not.cmp16.i, i1 true, i1 %failure.0.off0347.i
  br i1 %brmerge.i, label %while.body.i165.if.end.i_crit_edge, label %lor.rhs.i

while.body.i165.if.end.i_crit_edge:               ; preds = %while.body.i165
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

lor.rhs.i:                                        ; preds = %while.body.i165
  call void @__sanitizer_cov_trace_pc() #16
  %call20.i = call zeroext i1 @i40e_alloc_rx_buffers(ptr noundef %ring.1280, i16 noundef zeroext %cleaned_count.0343.i) #14
  br label %if.end.i

if.end.i:                                         ; preds = %lor.rhs.i, %while.body.i165.if.end.i_crit_edge
  %cleaned_count.1.i = phi i16 [ %cleaned_count.0.mux.i, %while.body.i165.if.end.i_crit_edge ], [ 0, %lor.rhs.i ]
  %failure.1.off0.i = phi i1 [ %failure.0.off0.mux.i, %while.body.i165.if.end.i_crit_edge ], [ %call20.i, %lor.rhs.i ]
  %180 = ptrtoint ptr %desc.i162 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %desc.i162, align 4
  %182 = ptrtoint ptr %next_to_clean.i154 to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %next_to_clean.i154, align 2
  %idxprom.i = zext i16 %183 to i32
  %arrayidx.i166 = getelementptr %union.i40e_16byte_rx_desc, ptr %181, i32 %idxprom.i
  %qword1.i = getelementptr inbounds %struct.anon.218, ptr %arrayidx.i166, i32 0, i32 1
  %184 = ptrtoint ptr %qword1.i to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %qword1.i, align 8
  %186 = call i64 @llvm.bswap.i64(i64 %185) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !150
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %186)
  %tobool.i.i = icmp slt i64 %186, 0
  br i1 %tobool.i.i, label %if.then24.i, label %if.end30.i

if.then24.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %187 = ptrtoint ptr %arrayidx.i166 to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %arrayidx.i166, align 8
  call void @i40e_clean_programming_status(ptr noundef %ring.1280, i64 noundef %188, i64 noundef %186) #14
  %189 = ptrtoint ptr %next_to_clean.i154 to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %next_to_clean.i154, align 2
  %conv28.i = zext i16 %190 to i32
  %191 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %178, align 4
  %arrayidx.i.i = getelementptr %struct.i40e_rx_buffer, ptr %192, i32 %conv28.i
  %add.i.i167 = add nuw nsw i32 %conv28.i, 1
  %193 = ptrtoint ptr %count.i251.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %count.i251.i, align 2
  %conv1.i.i168 = zext i16 %194 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i167, i32 %conv1.i.i168)
  %cmp.i.i169 = icmp ult i32 %add.i.i167, %conv1.i.i168
  %spec.select.i.i = select i1 %cmp.i.i169, i32 %add.i.i167, i32 0
  %conv3.i.i = trunc i32 %spec.select.i.i to i16
  %195 = ptrtoint ptr %next_to_clean.i154 to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %conv3.i.i, ptr %next_to_clean.i154, align 2
  %196 = ptrtoint ptr %desc.i162 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %desc.i162, align 4
  %arrayidx.i191.i = getelementptr %union.i40e_16byte_rx_desc, ptr %197, i32 %spec.select.i.i
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx.i191.i) #14, !srcloc !145
  %198 = ptrtoint ptr %next_to_alloc.i.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %next_to_alloc.i.i, align 8
  %conv.i192.i = zext i16 %199 to i32
  %200 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %178, align 4
  %arrayidx.i.i.i170 = getelementptr %struct.i40e_rx_buffer, ptr %201, i32 %conv.i192.i
  %inc.i.i = add i16 %199, 1
  %202 = ptrtoint ptr %count.i251.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %count.i251.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i.i, i16 %203)
  %cmp.i194.i = icmp ult i16 %inc.i.i, %203
  %spec.select.i195.i = select i1 %cmp.i194.i, i16 %inc.i.i, i16 0
  %204 = ptrtoint ptr %next_to_alloc.i.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %spec.select.i195.i, ptr %next_to_alloc.i.i, align 8
  %205 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx.i.i, align 4
  %207 = ptrtoint ptr %arrayidx.i.i.i170 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %arrayidx.i.i.i170, align 4
  %page.i.i = getelementptr %struct.i40e_rx_buffer, ptr %192, i32 %conv28.i, i32 1
  %208 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %page.i.i, align 4
  %page8.i.i = getelementptr %struct.i40e_rx_buffer, ptr %201, i32 %conv.i192.i, i32 1
  %210 = ptrtoint ptr %page8.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %209, ptr %page8.i.i, align 4
  %page_offset.i.i = getelementptr %struct.i40e_rx_buffer, ptr %192, i32 %conv28.i, i32 2
  %211 = ptrtoint ptr %page_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %page_offset.i.i, align 4
  %page_offset9.i.i = getelementptr %struct.i40e_rx_buffer, ptr %201, i32 %conv.i192.i, i32 2
  %213 = ptrtoint ptr %page_offset9.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %page_offset9.i.i, align 4
  %pagecnt_bias.i.i = getelementptr %struct.i40e_rx_buffer, ptr %192, i32 %conv28.i, i32 3
  %214 = ptrtoint ptr %pagecnt_bias.i.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %pagecnt_bias.i.i, align 4
  %pagecnt_bias10.i.i = getelementptr %struct.i40e_rx_buffer, ptr %201, i32 %conv.i192.i, i32 3
  %216 = ptrtoint ptr %pagecnt_bias10.i.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %215, ptr %pagecnt_bias10.i.i, align 4
  %217 = ptrtoint ptr %page_reuse_count.i.i to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %page_reuse_count.i.i, align 8
  %inc11.i.i = add i64 %218, 1
  store i64 %inc11.i.i, ptr %page_reuse_count.i.i, align 8
  store ptr null, ptr %page.i.i, align 4
  br label %cleanup.i182

if.end30.i:                                       ; preds = %if.end.i
  %and.i = lshr i64 %186, 38
  %219 = trunc i64 %and.i to i32
  %conv31.i = and i32 %219, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv31.i)
  %tobool32.not.i = icmp eq i32 %conv31.i, 0
  br i1 %tobool32.not.i, label %if.end30.i.while.end.i183_crit_edge, label %if.end34.i

if.end30.i.while.end.i183_crit_edge:              ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i183

if.end34.i:                                       ; preds = %if.end30.i
  call fastcc void @trace_i40e_clean_rx_irq(ptr noundef %ring.1280, ptr noundef %arrayidx.i166, ptr noundef %skb.0344.i) #14
  %220 = ptrtoint ptr %next_to_clean.i154 to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %next_to_clean.i154, align 2
  %conv.i197.i = zext i16 %221 to i32
  %222 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %178, align 4
  %page.i198.i = getelementptr %struct.i40e_rx_buffer, ptr %223, i32 %conv.i197.i, i32 1
  %224 = ptrtoint ptr %page.i198.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %page.i198.i, align 4
  %226 = getelementptr inbounds %struct.page, ptr %225, i32 0, i32 1
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load volatile i32, ptr %226, align 4
  %and.i.i.i.i = and i32 %228, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i, !prof !132

if.then.i.i.i.i:                                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i.i = add i32 %228, -1
  br label %i40e_get_rx_buffer.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #16
  %229 = ptrtoint ptr %225 to i32
  br label %i40e_get_rx_buffer.exit.i

i40e_get_rx_buffer.exit.i:                        ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i.i ], [ %229, %if.end.i.i.i.i ]
  %arrayidx.i.i199.i = getelementptr %struct.i40e_rx_buffer, ptr %223, i32 %conv.i197.i
  %230 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %230, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  %231 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  %233 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dev.i.i, align 8
  %235 = ptrtoint ptr %arrayidx.i.i199.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %arrayidx.i.i199.i, align 4
  %page_offset.i200.i = getelementptr %struct.i40e_rx_buffer, ptr %223, i32 %conv.i197.i, i32 2
  %237 = ptrtoint ptr %page_offset.i200.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %page_offset.i200.i, align 4
  %add.i.i.i171 = add i32 %238, %236
  call void @dma_sync_single_for_cpu(ptr noundef %234, i32 noundef %add.i.i.i171, i32 noundef %conv31.i, i32 noundef 2) #14
  %pagecnt_bias.i201.i = getelementptr %struct.i40e_rx_buffer, ptr %223, i32 %conv.i197.i, i32 3
  %239 = ptrtoint ptr %pagecnt_bias.i201.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %pagecnt_bias.i201.i, align 4
  %dec.i.i = add i16 %240, -1
  store i16 %dec.i.i, ptr %pagecnt_bias.i201.i, align 4
  %tobool36.not.i = icmp eq ptr %skb.0344.i, null
  br i1 %tobool36.not.i, label %if.end41.i173, label %if.end41.thread.i

if.end41.i173:                                    ; preds = %i40e_get_rx_buffer.exit.i
  %241 = ptrtoint ptr %page.i198.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %page.i198.i, align 4
  %call38.i = call ptr @page_address(ptr noundef %242) #14
  %243 = ptrtoint ptr %page_offset.i200.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %page_offset.i200.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call38.i, i32 %idx.neg.i
  %add.ptr39.i = getelementptr i8, ptr %add.ptr.i, i32 %244
  %add.ptr.i.i172 = getelementptr i8, ptr %add.ptr39.i, i32 %conv10.i
  %245 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %add.ptr39.i, ptr %157, align 4
  %246 = ptrtoint ptr %xdp.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %add.ptr.i.i172, ptr %xdp.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i172, i32 %conv31.i
  %247 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %add.ptr2.i.i, ptr %155, align 4
  %248 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %add.ptr.i.i172, ptr %156, align 4
  %call40.i = call fastcc i32 @i40e_run_xdp(ptr noundef %ring.1280, ptr noundef nonnull %xdp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool42.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool42.not.i, label %if.else54.i, label %if.end41.i173.if.then43.i_crit_edge

if.end41.i173.if.then43.i_crit_edge:              ; preds = %if.end41.i173
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then43.i

if.end41.thread.i:                                ; preds = %i40e_get_rx_buffer.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xdp_res.0348.i)
  %tobool42.not275.i = icmp eq i32 %xdp_res.0348.i, 0
  br i1 %tobool42.not275.i, label %if.then53.i, label %if.end41.thread.i.if.then43.i_crit_edge

if.end41.thread.i.if.then43.i_crit_edge:          ; preds = %if.end41.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then43.i

if.then43.i:                                      ; preds = %if.end41.thread.i.if.then43.i_crit_edge, %if.end41.i173.if.then43.i_crit_edge
  %xdp_res.1276.i = phi i32 [ %xdp_res.0348.i, %if.end41.thread.i.if.then43.i_crit_edge ], [ %call40.i, %if.end41.i173.if.then43.i_crit_edge ]
  %and44.i = and i32 %xdp_res.1276.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i174 = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i174, label %if.else.i175, label %if.then46.i

if.then46.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #16
  %or.i = or i32 %xdp_res.1276.i, %xdp_xmit.0345.i
  %249 = ptrtoint ptr %rx_buf_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %rx_buf_len.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %250)
  %cmp.i.i.i.i = icmp ugt i16 %250, 2048
  %..i.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %shl.i.i.i = shl nuw nsw i32 4096, %..i.i.i.i
  %div1.i.i.i = lshr exact i32 %shl.i.i.i, 1
  %251 = ptrtoint ptr %page_offset.i200.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %page_offset.i200.i, align 4
  %xor.i.i = xor i32 %div1.i.i.i, %252
  store i32 %xor.i.i, ptr %page_offset.i200.i, align 4
  br label %if.end48.i

if.else.i175:                                     ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #16
  %253 = ptrtoint ptr %pagecnt_bias.i201.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %pagecnt_bias.i201.i, align 4
  %inc47.i = add i16 %254, 1
  store i16 %inc47.i, ptr %pagecnt_bias.i201.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else.i175, %if.then46.i
  %xdp_xmit.1.i = phi i32 [ %or.i, %if.then46.i ], [ %xdp_xmit.0345.i, %if.else.i175 ]
  %add49.i = add i32 %conv31.i, %total_rx_bytes.0349.i
  %inc50.i = add nuw i32 %total_rx_packets.0341.i, 1
  br label %if.end69.i

if.then53.i:                                      ; preds = %if.end41.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  %255 = ptrtoint ptr %rx_buf_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %rx_buf_len.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %256)
  %cmp.i.i204.i = icmp ugt i16 %256, 2048
  %..i.i205.i = zext i1 %cmp.i.i204.i to i32
  %shl.i206.i = shl nuw nsw i32 4096, %..i.i205.i
  %div7.i.i = lshr exact i32 %shl.i206.i, 1
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0344.i, i32 0, i32 17
  %257 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %258, i32 0, i32 2
  %259 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %nr_frags.i.i, align 2
  %conv.i207.i = zext i8 %260 to i32
  %261 = ptrtoint ptr %page.i198.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %page.i198.i, align 4
  %263 = ptrtoint ptr %page_offset.i200.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %page_offset.i200.i, align 4
  call void @skb_add_rx_frag(ptr noundef nonnull %skb.0344.i, i32 noundef %conv.i207.i, ptr noundef %262, i32 noundef %264, i32 noundef %conv31.i, i32 noundef %div7.i.i) #14
  %265 = ptrtoint ptr %page_offset.i200.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %page_offset.i200.i, align 4
  %xor.i210.i = xor i32 %266, %div7.i.i
  store i32 %xor.i210.i, ptr %page_offset.i200.i, align 4
  br label %if.end69.i

if.else54.i:                                      ; preds = %if.end41.i173
  %267 = ptrtoint ptr %flags.i.i163 to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %flags.i.i163, align 8
  %269 = and i16 %268, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %269)
  %tobool.i211.not.i = icmp eq i16 %269, 0
  br i1 %tobool.i211.not.i, label %if.else58.i, label %if.then56.i

if.then56.i:                                      ; preds = %if.else54.i
  %270 = ptrtoint ptr %xdp.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %xdp.i, align 4
  %272 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %156, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %271 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %273 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %274 = ptrtoint ptr %rx_buf_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %rx_buf_len.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %275)
  %cmp.i.i214.i = icmp ugt i16 %275, 2048
  %..i.i215.i = zext i1 %cmp.i.i214.i to i32
  %shl.i216.i = shl nuw nsw i32 4096, %..i.i215.i
  %div34.i.i = lshr exact i32 %shl.i216.i, 1
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %273) #14, !srcloc !145
  %276 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %157, align 4
  %call2.i.i = call ptr @napi_build_skb(ptr noundef %277, i32 noundef %div34.i.i) #14
  %tobool.not.i.i176 = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i176, label %if.then56.i.if.then65.i_crit_edge, label %if.end.i.i177, !prof !135

if.then56.i.if.then65.i_crit_edge:                ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then65.i

if.end.i.i177:                                    ; preds = %if.then56.i
  %278 = ptrtoint ptr %xdp.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %xdp.i, align 4
  %280 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %157, align 4
  %sub.ptr.lhs.cast8.i.i = ptrtoint ptr %279 to i32
  %sub.ptr.rhs.cast9.i.i = ptrtoint ptr %281 to i32
  %sub.ptr.sub10.i.i = sub i32 %sub.ptr.lhs.cast8.i.i, %sub.ptr.rhs.cast9.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 19
  %282 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %283, i32 %sub.ptr.sub10.i.i
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 16
  %284 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %285, i32 %sub.ptr.sub10.i.i
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 7
  %286 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %tobool.i.not.i.i.i = icmp eq i32 %287, 0
  br i1 %tobool.i.not.i.i.i, label %__skb_put.exit.i.i, label %do.body3.i.i.i, !prof !132

do.body3.i.i.i:                                   ; preds = %if.end.i.i177
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #14, !srcloc !151
  unreachable

__skb_put.exit.i.i:                               ; preds = %if.end.i.i177
  %288 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %155, align 4
  %sub.ptr.lhs.cast12.i.i = ptrtoint ptr %289 to i32
  %sub.ptr.sub14.i.i = sub i32 %sub.ptr.lhs.cast12.i.i, %sub.ptr.lhs.cast8.i.i
  %add.ptr.i35.i.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 %sub.ptr.sub14.i.i
  %290 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr %add.ptr.i35.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 6
  %291 = ptrtoint ptr %len9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %len9.i.i.i, align 4
  %add.i.i219.i = add i32 %292, %sub.ptr.sub14.i.i
  store i32 %add.i.i219.i, ptr %len9.i.i.i, align 4
  %tobool16.not.i.i178 = icmp eq ptr %271, %273
  br i1 %tobool16.not.i.i178, label %__skb_put.exit.i.i.if.end18.i.i_crit_edge, label %if.then17.i.i180

__skb_put.exit.i.i.if.end18.i.i_crit_edge:        ; preds = %__skb_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i.i

if.then17.i.i180:                                 ; preds = %__skb_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i220.i179 = trunc i32 %sub.ptr.sub.i.i to i8
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 17
  %293 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %end.i.i.i.i, align 4
  %meta_len1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %294, i32 0, i32 1
  %295 = ptrtoint ptr %meta_len1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 %conv.i220.i179, ptr %meta_len1.i.i.i, align 1
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then17.i.i180, %__skb_put.exit.i.i.if.end18.i.i_crit_edge
  %296 = ptrtoint ptr %page_offset.i200.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %page_offset.i200.i, align 4
  %xor.i222.i = xor i32 %297, %div34.i.i
  store i32 %xor.i222.i, ptr %page_offset.i200.i, align 4
  br label %if.end69.i

if.else58.i:                                      ; preds = %if.else54.i
  %298 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %155, align 4
  %300 = ptrtoint ptr %xdp.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %xdp.i, align 4
  %sub.ptr.lhs.cast.i224.i = ptrtoint ptr %299 to i32
  %sub.ptr.rhs.cast.i225.i = ptrtoint ptr %301 to i32
  %sub.ptr.sub.i226.i = sub i32 %sub.ptr.lhs.cast.i224.i, %sub.ptr.rhs.cast.i225.i
  %302 = ptrtoint ptr %rx_buf_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %302)
  %303 = load i16, ptr %rx_buf_len.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %303)
  %cmp.i.i228.i = icmp ugt i16 %303, 2048
  %..i.i229.i = zext i1 %cmp.i.i228.i to i32
  %shl.i230.i = shl nuw nsw i32 4096, %..i.i229.i
  %div40.i.i = lshr exact i32 %shl.i230.i, 1
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %301) #14, !srcloc !145
  %304 = ptrtoint ptr %q_vector.i.i164 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %q_vector.i.i164, align 4
  %napi.i.i = getelementptr inbounds %struct.i40e_q_vector, ptr %305, i32 0, i32 3
  %call2.i231.i = call ptr @__napi_alloc_skb(ptr noundef %napi.i.i, i32 noundef 256, i32 noundef 10784) #14
  %tobool.not.i232.i = icmp eq ptr %call2.i231.i, null
  br i1 %tobool.not.i232.i, label %if.else58.i.if.then65.i_crit_edge, label %if.end.i234.i, !prof !135

if.else58.i.if.then65.i_crit_edge:                ; preds = %if.else58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then65.i

if.end.i234.i:                                    ; preds = %if.else58.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub.ptr.sub.i226.i)
  %cmp.i233.i = icmp ugt i32 %sub.ptr.sub.i226.i, 256
  br i1 %cmp.i233.i, label %if.then6.i.i, label %if.end.i234.i.if.end9.i.i_crit_edge

if.end.i234.i.if.end9.i.i_crit_edge:              ; preds = %if.end.i234.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i.i

if.then6.i.i:                                     ; preds = %if.end.i234.i
  call void @__sanitizer_cov_trace_pc() #16
  %306 = getelementptr inbounds %struct.anon.0, ptr %call2.i231.i, i32 0, i32 2
  %307 = ptrtoint ptr %306 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %306, align 8
  %309 = ptrtoint ptr %xdp.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %xdp.i, align 4
  %call8.i.i = call i32 @eth_get_headlen(ptr noundef %308, ptr noundef %310, i32 noundef 256) #14
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then6.i.i, %if.end.i234.i.if.end9.i.i_crit_edge
  %headlen.0.i.i = phi i32 [ %call8.i.i, %if.then6.i.i ], [ %sub.ptr.sub.i226.i, %if.end.i234.i.if.end9.i.i_crit_edge ]
  %data_len.i.i.i235.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i231.i, i32 0, i32 7
  %311 = ptrtoint ptr %data_len.i.i.i235.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %data_len.i.i.i235.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %312)
  %tobool.i.not.i.i236.i = icmp eq i32 %312, 0
  br i1 %tobool.i.not.i.i236.i, label %__skb_put.exit.i242.i, label %do.body3.i.i237.i, !prof !132

do.body3.i.i237.i:                                ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #14, !srcloc !151
  unreachable

__skb_put.exit.i242.i:                            ; preds = %if.end9.i.i
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i231.i, i32 0, i32 16
  %313 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr.i.i238.i = getelementptr i8, ptr %314, i32 %headlen.0.i.i
  store ptr %add.ptr.i.i238.i, ptr %tail.i.i.i.i, align 8
  %len9.i.i239.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i231.i, i32 0, i32 6
  %315 = ptrtoint ptr %len9.i.i239.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %len9.i.i239.i, align 4
  %add.i.i240.i = add i32 %316, %headlen.0.i.i
  store i32 %add.i.i240.i, ptr %len9.i.i239.i, align 4
  %317 = ptrtoint ptr %xdp.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %xdp.i, align 4
  %add.i241.i = add i32 %headlen.0.i.i, 3
  %and.i.i = and i32 %add.i241.i, -4
  %319 = call ptr @memcpy(ptr %314, ptr %318, i32 %and.i.i)
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i226.i, i32 %headlen.0.i.i)
  %tobool12.not.i.i = icmp eq i32 %sub.ptr.sub.i226.i, %headlen.0.i.i
  br i1 %tobool12.not.i.i, label %if.else.i.i, label %if.then13.i.i

if.then13.i.i:                                    ; preds = %__skb_put.exit.i242.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub i32 %sub.ptr.sub.i226.i, %headlen.0.i.i
  %320 = ptrtoint ptr %page.i198.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %page.i198.i, align 4
  %322 = ptrtoint ptr %page_offset.i200.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %page_offset.i200.i, align 4
  %add14.i.i = add i32 %323, %headlen.0.i.i
  call void @skb_add_rx_frag(ptr noundef nonnull %call2.i231.i, i32 noundef 0, ptr noundef %321, i32 noundef %add14.i.i, i32 noundef %sub.i.i, i32 noundef %div40.i.i) #14
  %324 = ptrtoint ptr %page_offset.i200.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %page_offset.i200.i, align 4
  %xor.i245.i = xor i32 %325, %div40.i.i
  store i32 %xor.i245.i, ptr %page_offset.i200.i, align 4
  br label %if.end69.i

if.else.i.i:                                      ; preds = %__skb_put.exit.i242.i
  call void @__sanitizer_cov_trace_pc() #16
  %326 = ptrtoint ptr %pagecnt_bias.i201.i to i32
  call void @__asan_load2_noabort(i32 %326)
  %327 = load i16, ptr %pagecnt_bias.i201.i, align 4
  %inc.i247.i = add i16 %327, 1
  store i16 %inc.i247.i, ptr %pagecnt_bias.i201.i, align 4
  br label %if.end69.i

if.then65.i:                                      ; preds = %if.else58.i.if.then65.i_crit_edge, %if.then56.i.if.then65.i_crit_edge
  %alloc_buff_failed.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.1280, i32 0, i32 25, i32 0, i32 2
  %328 = ptrtoint ptr %alloc_buff_failed.i to i32
  call void @__asan_load8_noabort(i32 %328)
  %329 = load i64, ptr %alloc_buff_failed.i, align 16
  %inc66.i = add i64 %329, 1
  store i64 %inc66.i, ptr %alloc_buff_failed.i, align 16
  %330 = ptrtoint ptr %pagecnt_bias.i201.i to i32
  call void @__asan_load2_noabort(i32 %330)
  %331 = load i16, ptr %pagecnt_bias.i201.i, align 4
  %inc68.i = add i16 %331, 1
  store i16 %inc68.i, ptr %pagecnt_bias.i201.i, align 4
  br label %while.end.i183

if.end69.i:                                       ; preds = %if.else.i.i, %if.then13.i.i, %if.end18.i.i, %if.then53.i, %if.end48.i
  %total_rx_bytes.1300.i = phi i32 [ %total_rx_bytes.0349.i, %if.else.i.i ], [ %total_rx_bytes.0349.i, %if.then13.i.i ], [ %total_rx_bytes.0349.i, %if.end18.i.i ], [ %total_rx_bytes.0349.i, %if.then53.i ], [ %add49.i, %if.end48.i ]
  %xdp_xmit.2299.i = phi i32 [ %xdp_xmit.0345.i, %if.else.i.i ], [ %xdp_xmit.0345.i, %if.then13.i.i ], [ %xdp_xmit.0345.i, %if.end18.i.i ], [ %xdp_xmit.0345.i, %if.then53.i ], [ %xdp_xmit.1.i, %if.end48.i ]
  %skb.1298.i = phi ptr [ %call2.i231.i, %if.else.i.i ], [ %call2.i231.i, %if.then13.i.i ], [ %call2.i.i, %if.end18.i.i ], [ %skb.0344.i, %if.then53.i ], [ %skb.0344.i, %if.end48.i ]
  %total_rx_packets.1297.i = phi i32 [ %total_rx_packets.0341.i, %if.else.i.i ], [ %total_rx_packets.0341.i, %if.then13.i.i ], [ %total_rx_packets.0341.i, %if.end18.i.i ], [ %total_rx_packets.0341.i, %if.then53.i ], [ %inc50.i, %if.end48.i ]
  %xdp_res.1277296.i = phi i32 [ 0, %if.else.i.i ], [ 0, %if.then13.i.i ], [ 0, %if.end18.i.i ], [ 0, %if.then53.i ], [ %xdp_res.1276.i, %if.end48.i ]
  %tobool42.not280295.i = phi i1 [ true, %if.else.i.i ], [ true, %if.then13.i.i ], [ true, %if.end18.i.i ], [ true, %if.then53.i ], [ false, %if.end48.i ]
  call fastcc void @i40e_put_rx_buffer(ptr noundef %ring.1280, ptr noundef %arrayidx.i.i199.i, i32 noundef %232) #14
  %332 = ptrtoint ptr %next_to_clean.i154 to i32
  call void @__asan_load2_noabort(i32 %332)
  %333 = load i16, ptr %next_to_clean.i154, align 2
  %conv.i249.i = zext i16 %333 to i32
  %add.i250.i = add nuw nsw i32 %conv.i249.i, 1
  %334 = ptrtoint ptr %count.i251.i to i32
  call void @__asan_load2_noabort(i32 %334)
  %335 = load i16, ptr %count.i251.i, align 2
  %conv1.i252.i = zext i16 %335 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i250.i, i32 %conv1.i252.i)
  %cmp.i253.i = icmp ult i32 %add.i250.i, %conv1.i252.i
  %spec.select.i254.i = select i1 %cmp.i253.i, i32 %add.i250.i, i32 0
  %conv3.i255.i = trunc i32 %spec.select.i254.i to i16
  %336 = ptrtoint ptr %next_to_clean.i154 to i32
  call void @__asan_store2_noabort(i32 %336)
  store i16 %conv3.i255.i, ptr %next_to_clean.i154, align 2
  %337 = ptrtoint ptr %desc.i162 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %desc.i162, align 4
  %arrayidx.i257.i = getelementptr %union.i40e_16byte_rx_desc, ptr %338, i32 %spec.select.i254.i
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx.i257.i) #14, !srcloc !145
  %339 = ptrtoint ptr %qword1.i to i32
  call void @__asan_load8_noabort(i32 %339)
  %340 = load i64, ptr %qword1.i, align 8
  %and.i.i.i = and i64 %340, 144115188075855872
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %i40e_is_non_eop.exit.thread.i, label %if.end73.i, !prof !135

i40e_is_non_eop.exit.thread.i:                    ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #16
  %341 = ptrtoint ptr %179 to i32
  call void @__asan_load8_noabort(i32 %341)
  %342 = load i64, ptr %179, align 16
  %inc.i258.i = add i64 %342, 1
  store i64 %inc.i258.i, ptr %179, align 16
  br label %cleanup.i182

if.end73.i:                                       ; preds = %if.end69.i
  br i1 %tobool42.not280295.i, label %lor.lhs.false.i, label %if.end73.i.cleanup.i182_crit_edge

if.end73.i.cleanup.i182_crit_edge:                ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i182

lor.lhs.false.i:                                  ; preds = %if.end73.i
  %and.i.i261.i = and i64 %340, 8796093022208
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i261.i)
  %tobool.i.not.i262.i = icmp eq i64 %and.i.i261.i, 0
  br i1 %tobool.i.not.i262.i, label %if.end.i263.i, label %if.then.i.i181, !prof !132

if.then.i.i181:                                   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__dev_kfree_skb_any(ptr noundef %skb.1298.i, i32 noundef 1) #14
  br label %cleanup.i182

if.end.i263.i:                                    ; preds = %lor.lhs.false.i
  %len1.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1298.i, i32 0, i32 6
  %343 = ptrtoint ptr %len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %len1.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %344)
  %cmp.i.i.i.i.i = icmp ult i32 %344, 60
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i263.i.if.end78.i_crit_edge, !prof !135

if.end.i263.i.if.end78.i_crit_edge:               ; preds = %if.end.i263.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78.i

if.then.i.i.i.i.i:                                ; preds = %if.end.i263.i
  %sub.i.i.i.i.i = sub nuw nsw i32 60, %344
  %call.i.i.i.i.i = call i32 @__skb_pad(ptr noundef %skb.1298.i, i32 noundef %sub.i.i.i.i.i, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.i.i.cleanup.i182_crit_edge

if.then.i.i.i.i.i.cleanup.i182_crit_edge:         ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i182

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i.i
  %data_len.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1298.i, i32 0, i32 7
  %345 = ptrtoint ptr %data_len.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %data_len.i.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %346)
  %tobool.i.not.i.i.i.i.i.i = icmp eq i32 %346, 0
  br i1 %tobool.i.not.i.i.i.i.i.i, label %__skb_put.exit.i.i.i.i.i, label %do.body3.i.i.i.i.i.i, !prof !132

do.body3.i.i.i.i.i.i:                             ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #14, !srcloc !151
  unreachable

__skb_put.exit.i.i.i.i.i:                         ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %tail.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1298.i, i32 0, i32 16
  %347 = ptrtoint ptr %tail.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %tail.i.i.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %348, i32 %sub.i.i.i.i.i
  store ptr %add.ptr.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i.i, align 8
  %349 = ptrtoint ptr %len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %len1.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %350, %sub.i.i.i.i.i
  store i32 %add.i.i.i.i.i.i, ptr %len1.i.i.i.i.i, align 4
  br label %if.end78.i

if.end78.i:                                       ; preds = %__skb_put.exit.i.i.i.i.i, %if.end.i263.i.if.end78.i_crit_edge
  %351 = ptrtoint ptr %len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %len1.i.i.i.i.i, align 4
  %add79.i = add i32 %352, %total_rx_bytes.1300.i
  call void @i40e_process_skb_fields(ptr noundef %ring.1280, ptr noundef %arrayidx.i166, ptr noundef %skb.1298.i) #14
  call fastcc void @trace_i40e_clean_rx_irq_rx(ptr noundef %ring.1280, ptr noundef %arrayidx.i166, ptr noundef %skb.1298.i) #14
  %353 = ptrtoint ptr %q_vector.i.i164 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %q_vector.i.i164, align 4
  %napi.i = getelementptr inbounds %struct.i40e_q_vector, ptr %354, i32 0, i32 3
  %call80.i = call i32 @napi_gro_receive(ptr noundef %napi.i, ptr noundef %skb.1298.i) #14
  %inc81.i = add i32 %total_rx_packets.1297.i, 1
  br label %cleanup.i182

cleanup.i182:                                     ; preds = %if.end78.i, %if.then.i.i.i.i.i.cleanup.i182_crit_edge, %if.then.i.i181, %if.end73.i.cleanup.i182_crit_edge, %i40e_is_non_eop.exit.thread.i, %if.then24.i
  %total_rx_packets.2.i = phi i32 [ %total_rx_packets.0341.i, %if.then24.i ], [ %inc81.i, %if.end78.i ], [ %total_rx_packets.1297.i, %if.end73.i.cleanup.i182_crit_edge ], [ %total_rx_packets.1297.i, %i40e_is_non_eop.exit.thread.i ], [ %total_rx_packets.1297.i, %if.then.i.i181 ], [ %total_rx_packets.1297.i, %if.then.i.i.i.i.i.cleanup.i182_crit_edge ]
  %skb.2.i = phi ptr [ %skb.0344.i, %if.then24.i ], [ null, %if.end78.i ], [ null, %if.end73.i.cleanup.i182_crit_edge ], [ %skb.1298.i, %i40e_is_non_eop.exit.thread.i ], [ null, %if.then.i.i181 ], [ null, %if.then.i.i.i.i.i.cleanup.i182_crit_edge ]
  %xdp_xmit.3.i = phi i32 [ %xdp_xmit.0345.i, %if.then24.i ], [ %xdp_xmit.2299.i, %if.end78.i ], [ %xdp_xmit.2299.i, %if.end73.i.cleanup.i182_crit_edge ], [ %xdp_xmit.2299.i, %i40e_is_non_eop.exit.thread.i ], [ %xdp_xmit.2299.i, %if.then.i.i181 ], [ %xdp_xmit.2299.i, %if.then.i.i.i.i.i.cleanup.i182_crit_edge ]
  %xdp_res.2.i = phi i32 [ %xdp_res.0348.i, %if.then24.i ], [ 0, %if.end78.i ], [ %xdp_res.1277296.i, %if.end73.i.cleanup.i182_crit_edge ], [ %xdp_res.1277296.i, %i40e_is_non_eop.exit.thread.i ], [ %xdp_res.1277296.i, %if.then.i.i181 ], [ %xdp_res.1277296.i, %if.then.i.i.i.i.i.cleanup.i182_crit_edge ]
  %total_rx_bytes.2.i = phi i32 [ %total_rx_bytes.0349.i, %if.then24.i ], [ %add79.i, %if.end78.i ], [ %total_rx_bytes.1300.i, %if.end73.i.cleanup.i182_crit_edge ], [ %total_rx_bytes.1300.i, %i40e_is_non_eop.exit.thread.i ], [ %total_rx_bytes.1300.i, %if.then.i.i181 ], [ %total_rx_bytes.1300.i, %if.then.i.i.i.i.i.cleanup.i182_crit_edge ]
  %cleaned_count.2.i = add nuw nsw i16 %cleaned_count.1.i, 1
  %cmp12.i = icmp ult i32 %total_rx_packets.2.i, %budget_per_ring.0
  br i1 %cmp12.i, label %cleanup.i182.while.body.i165_crit_edge, label %cleanup.i182.while.end.i183_crit_edge, !prof !132

cleanup.i182.while.end.i183_crit_edge:            ; preds = %cleanup.i182
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i183

cleanup.i182.while.body.i165_crit_edge:           ; preds = %cleanup.i182
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i165

while.end.i183:                                   ; preds = %cleanup.i182.while.end.i183_crit_edge, %if.then65.i, %if.end30.i.while.end.i183_crit_edge
  %total_rx_packets.0329.i = phi i32 [ %total_rx_packets.0341.i, %if.then65.i ], [ %total_rx_packets.0341.i, %if.end30.i.while.end.i183_crit_edge ], [ %total_rx_packets.2.i, %cleanup.i182.while.end.i183_crit_edge ]
  %xdp_xmit.0320.i = phi i32 [ %xdp_xmit.0345.i, %if.then65.i ], [ %xdp_xmit.0345.i, %if.end30.i.while.end.i183_crit_edge ], [ %xdp_xmit.3.i, %cleanup.i182.while.end.i183_crit_edge ]
  %total_rx_bytes.0315.i = phi i32 [ %total_rx_bytes.0349.i, %if.then65.i ], [ %total_rx_bytes.0349.i, %if.end30.i.while.end.i183_crit_edge ], [ %total_rx_bytes.2.i, %cleanup.i182.while.end.i183_crit_edge ]
  %skb.3.i = phi ptr [ null, %if.then65.i ], [ %skb.0344.i, %if.end30.i.while.end.i183_crit_edge ], [ %skb.2.i, %cleanup.i182.while.end.i183_crit_edge ]
  %and.i264.i = and i32 %xdp_xmit.0320.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i264.i)
  %tobool.not.i265.i = icmp eq i32 %and.i264.i, 0
  br i1 %tobool.not.i265.i, label %while.end.i183.if.end.i267.i_crit_edge, label %if.then.i266.i

while.end.i183.if.end.i267.i_crit_edge:           ; preds = %while.end.i183
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i267.i

if.then.i266.i:                                   ; preds = %while.end.i183
  call void @__sanitizer_cov_trace_pc() #16
  call void @xdp_do_flush() #14
  br label %if.end.i267.i

if.end.i267.i:                                    ; preds = %if.then.i266.i, %while.end.i183.if.end.i267.i_crit_edge
  %and1.i.i184 = and i32 %xdp_xmit.0320.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i184)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i184, 0
  br i1 %tobool2.not.i.i, label %if.end.i267.i.i40e_clean_rx_irq.exit_crit_edge, label %if.then3.i.i

if.end.i267.i.i40e_clean_rx_irq.exit_crit_edge:   ; preds = %if.end.i267.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_clean_rx_irq.exit

if.then3.i.i:                                     ; preds = %if.end.i267.i
  call void @__sanitizer_cov_trace_pc() #16
  %vsi.i.i = getelementptr inbounds %struct.i40e_ring, ptr %ring.1280, i32 0, i32 28
  %355 = ptrtoint ptr %vsi.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %vsi.i.i, align 8
  %xdp_rings.i.i = getelementptr inbounds %struct.i40e_vsi, ptr %356, i32 0, i32 22
  %357 = ptrtoint ptr %xdp_rings.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %xdp_rings.i.i, align 64
  %queue_index.i.i185 = getelementptr inbounds %struct.i40e_ring, ptr %ring.1280, i32 0, i32 7
  %359 = ptrtoint ptr %queue_index.i.i185 to i32
  call void @__asan_load2_noabort(i32 %359)
  %360 = load i16, ptr %queue_index.i.i185, align 4
  %idxprom.i.i = zext i16 %360 to i32
  %arrayidx.i268.i = getelementptr ptr, ptr %358, i32 %idxprom.i.i
  %361 = ptrtoint ptr %arrayidx.i268.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %arrayidx.i268.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !137
  call void @arm_heavy_mb() #14
  %next_to_use.i.i.i = getelementptr inbounds %struct.i40e_ring, ptr %362, i32 0, i32 14
  %363 = ptrtoint ptr %next_to_use.i.i.i to i32
  call void @__asan_load2_noabort(i32 %363)
  %364 = load i16, ptr %next_to_use.i.i.i, align 4
  %conv.i.i.i = zext i16 %364 to i32
  %365 = call i32 @llvm.bswap.i32(i32 %conv.i.i.i) #14
  %tail.i.i269.i = getelementptr inbounds %struct.i40e_ring, ptr %362, i32 0, i32 9
  %366 = ptrtoint ptr %tail.i.i269.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %tail.i.i269.i, align 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %367, i32 %365) #14, !srcloc !130
  br label %i40e_clean_rx_irq.exit

i40e_clean_rx_irq.exit:                           ; preds = %if.then3.i.i, %if.end.i267.i.i40e_clean_rx_irq.exit_crit_edge
  %368 = ptrtoint ptr %skb11.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store ptr %skb.3.i, ptr %skb11.i, align 4
  %syncp.i.i186 = getelementptr inbounds %struct.i40e_ring, ptr %ring.1280, i32 0, i32 24
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i.i186) #14
  %conv.i270.i = zext i32 %total_rx_packets.0329.i to i64
  %stats.i.i187 = getelementptr inbounds %struct.i40e_ring, ptr %ring.1280, i32 0, i32 23
  %369 = ptrtoint ptr %stats.i.i187 to i32
  call void @__asan_load8_noabort(i32 %369)
  %370 = load i64, ptr %stats.i.i187, align 64
  %add.i271.i = add i64 %370, %conv.i270.i
  store i64 %add.i271.i, ptr %stats.i.i187, align 64
  %conv1.i272.i = zext i32 %total_rx_bytes.0315.i to i64
  %bytes.i.i188 = getelementptr inbounds %struct.i40e_ring, ptr %ring.1280, i32 0, i32 23, i32 1
  %371 = ptrtoint ptr %bytes.i.i188 to i32
  call void @__asan_load8_noabort(i32 %371)
  %372 = load i64, ptr %bytes.i.i188, align 8
  %add3.i.i189 = add i64 %372, %conv1.i272.i
  store i64 %add3.i.i189, ptr %bytes.i.i188, align 8
  %dep_map.i.i.i.i190 = getelementptr inbounds %struct.i40e_ring, ptr %ring.1280, i32 0, i32 24, i32 0, i32 1
  %373 = call ptr @llvm.returnaddress(i32 0) #14
  %374 = ptrtoint ptr %373 to i32
  call void @lock_release(ptr noundef %dep_map.i.i.i.i190, i32 noundef %374) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !138
  %375 = ptrtoint ptr %syncp.i.i186 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %syncp.i.i186, align 4
  %inc.i.i.i.i.i191 = add i32 %376, 1
  store i32 %inc.i.i.i.i.i191, ptr %syncp.i.i186, align 4
  %377 = ptrtoint ptr %q_vector.i.i164 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %q_vector.i.i164, align 4
  %total_packets.i.i = getelementptr inbounds %struct.i40e_q_vector, ptr %378, i32 0, i32 4, i32 3
  %379 = ptrtoint ptr %total_packets.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %total_packets.i.i, align 4
  %add5.i.i = add i32 %380, %total_rx_packets.0329.i
  store i32 %add5.i.i, ptr %total_packets.i.i, align 4
  %381 = load ptr, ptr %q_vector.i.i164, align 4
  %total_bytes.i.i = getelementptr inbounds %struct.i40e_q_vector, ptr %381, i32 0, i32 4, i32 2
  %382 = ptrtoint ptr %total_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %total_bytes.i.i, align 8
  %add8.i.i = add i32 %383, %total_rx_bytes.0315.i
  store i32 %add8.i.i, ptr %total_bytes.i.i, align 8
  %spec.select.i = select i1 %failure.1.off0.i, i32 %budget_per_ring.0, i32 %total_rx_packets.0329.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xdp.i) #14
  br label %cond.end51

cond.end51:                                       ; preds = %i40e_clean_rx_irq.exit, %cond.true47
  %cond52 = phi i32 [ %call48, %cond.true47 ], [ %spec.select.i, %i40e_clean_rx_irq.exit ]
  %add = add i32 %cond52, %work_done.0279
  call void @__sanitizer_cov_trace_cmp4(i32 %cond52, i32 %budget_per_ring.0)
  %cmp53.not = icmp slt i32 %cond52, %budget_per_ring.0
  %spec.select = select i1 %cmp53.not, i1 %clean_complete.2.off0278, i1 false
  %384 = ptrtoint ptr %ring.1280 to i32
  call void @__asan_load4_noabort(i32 %384)
  %ring.1 = load ptr, ptr %ring.1280, align 8
  %cmp42.not = icmp eq ptr %ring.1, null
  br i1 %cmp42.not, label %cond.end51.for.end59_crit_edge, label %cond.end51.for.body44_crit_edge

cond.end51.for.body44_crit_edge:                  ; preds = %cond.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body44

cond.end51.for.end59_crit_edge:                   ; preds = %cond.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end59

for.end59:                                        ; preds = %cond.end51.for.end59_crit_edge, %if.end39.for.end59_crit_edge
  %clean_complete.2.off0.lcssa = phi i1 [ %clean_complete.0.off0.lcssa, %if.end39.for.end59_crit_edge ], [ %spec.select, %cond.end51.for.end59_crit_edge ]
  %work_done.0.lcssa = phi i32 [ 0, %if.end39.for.end59_crit_edge ], [ %add, %cond.end51.for.end59_crit_edge ]
  br i1 %clean_complete.2.off0.lcssa, label %if.end73, label %if.then61

if.then61:                                        ; preds = %for.end59
  %385 = call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i192 = and i32 %385, -16384
  %386 = inttoptr i32 %and.i192 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %386, i32 0, i32 3
  %387 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %cpu, align 4
  %affinity_mask = getelementptr i8, ptr %napi, i32 276
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %389 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %389, i32 %388)
  %cmp.not.i.i.i193 = icmp ugt i32 %389, %388
  br i1 %cmp.not.i.i.i193, label %if.then61.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.then61.cpumask_test_cpu.exit_crit_edge:        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.then61
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !132

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %if.then61.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %388, 5
  %arrayidx.i.i194 = getelementptr i32, ptr %affinity_mask, i32 %div3.i.i
  %390 = ptrtoint ptr %arrayidx.i.i194 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load volatile i32, ptr %arrayidx.i.i194, align 4
  %and.i.i195 = and i32 %388, 31
  %392 = shl nuw i32 1, %and.i.i195
  %393 = and i32 %391, %392
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %393)
  %tobool64.not = icmp eq i32 %393, 0
  br i1 %tobool64.not, label %if.then65, label %cpumask_test_cpu.exit.tx_only_crit_edge

cpumask_test_cpu.exit.tx_only_crit_edge:          ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %tx_only

if.then65:                                        ; preds = %cpumask_test_cpu.exit
  %call66 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.0.lcssa) #14
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %394 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %back.i, align 8
  %flags.i = getelementptr inbounds %struct.i40e_pf, ptr %395, i32 0, i32 54
  %396 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %flags.i, align 8
  %and.i197 = and i32 %397, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i197)
  %tobool.not.i198 = icmp eq i32 %and.i197, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  call void @arm_heavy_mb() #14
  %398 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %back.i, align 8
  %hw7.i = getelementptr inbounds %struct.i40e_pf, ptr %399, i32 0, i32 1
  %400 = ptrtoint ptr %hw7.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %hw7.i, align 8
  br i1 %tobool.not.i198, label %if.else.i202, label %if.then.i

if.then.i:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #16
  %reg_idx.i = getelementptr i8, ptr %napi, i32 -2
  %402 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load2_noabort(i32 %402)
  %403 = load i16, ptr %reg_idx.i, align 2
  %conv.i199 = zext i16 %403 to i32
  %mul.i = shl nuw nsw i32 %conv.i199, 2
  %add.i200 = add nuw nsw i32 %mul.i, 215040
  %add.ptr.i201 = getelementptr i8, ptr %401, i32 %add.i200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i201, i32 486539265) #14, !srcloc !130
  br label %i40e_force_wb.exit

if.else.i202:                                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr9.i = getelementptr i8, ptr %401, i32 230528
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 486539265) #14, !srcloc !130
  br label %i40e_force_wb.exit

i40e_force_wb.exit:                               ; preds = %if.else.i202, %if.then.i
  %sub = add i32 %budget, -1
  br label %cleanup94

tx_only:                                          ; preds = %cpumask_test_cpu.exit.tx_only_crit_edge, %for.end.tx_only_crit_edge
  br i1 %arm_wb.0.off0.lcssa, label %if.then69, label %tx_only.cleanup94_crit_edge

tx_only.cleanup94_crit_edge:                      ; preds = %tx_only
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup94

if.then69:                                        ; preds = %tx_only
  %404 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %tx, align 128
  %tx_force_wb = getelementptr inbounds %struct.i40e_ring, ptr %405, i32 0, i32 25, i32 0, i32 4
  %406 = ptrtoint ptr %tx_force_wb to i32
  call void @__asan_load8_noabort(i32 %406)
  %407 = load i64, ptr %tx_force_wb, align 16
  %inc = add i64 %407, 1
  store i64 %inc, ptr %tx_force_wb, align 16
  %408 = load ptr, ptr %tx, align 128
  %flags1.i = getelementptr inbounds %struct.i40e_ring, ptr %408, i32 0, i32 22
  %409 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load2_noabort(i32 %409)
  %410 = load i16, ptr %flags1.i, align 8
  %411 = and i16 %410, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %411)
  %tobool.not.i204 = icmp eq i16 %411, 0
  br i1 %tobool.not.i204, label %if.then69.cleanup94_crit_edge, label %if.end.i205

if.then69.cleanup94_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup94

if.end.i205:                                      ; preds = %if.then69
  %arm_wb_state.i = getelementptr i8, ptr %napi, i32 380
  %412 = ptrtoint ptr %arm_wb_state.i to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %arm_wb_state.i, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %413)
  %tobool2.not.i = icmp eq i8 %413, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i205.cleanup94_crit_edge

if.end.i205.cleanup94_crit_edge:                  ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup94

if.end4.i:                                        ; preds = %if.end.i205
  %back.i206 = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %414 = ptrtoint ptr %back.i206 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %back.i206, align 8
  %flags5.i = getelementptr inbounds %struct.i40e_pf, ptr %415, i32 0, i32 54
  %416 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %flags5.i, align 8
  %and6.i = and i32 %417, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  call void @arm_heavy_mb() #14
  %418 = ptrtoint ptr %back.i206 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %back.i206, align 8
  %hw15.i = getelementptr inbounds %struct.i40e_pf, ptr %419, i32 0, i32 1
  %420 = ptrtoint ptr %hw15.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %hw15.i, align 8
  br i1 %tobool7.not.i, label %if.else.i212, label %if.then8.i

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %reg_idx.i207 = getelementptr i8, ptr %napi, i32 -2
  %422 = ptrtoint ptr %reg_idx.i207 to i32
  call void @__asan_load2_noabort(i32 %422)
  %423 = load i16, ptr %reg_idx.i207, align 2
  %conv10.i208 = zext i16 %423 to i32
  %mul.i209 = shl nuw nsw i32 %conv10.i208, 2
  %add.i210 = add nuw nsw i32 %mul.i209, 215040
  %add.ptr.i211 = getelementptr i8, ptr %421, i32 %add.i210
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i211, i32 402653248) #14, !srcloc !130
  br label %if.end18.i213

if.else.i212:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr17.i = getelementptr i8, ptr %421, i32 230528
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 402653248) #14, !srcloc !130
  br label %if.end18.i213

if.end18.i213:                                    ; preds = %if.else.i212, %if.then8.i
  %424 = ptrtoint ptr %arm_wb_state.i to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 1, ptr %arm_wb_state.i, align 4
  br label %cleanup94

if.end73:                                         ; preds = %for.end59
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %425 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %back, align 8
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %426, i32 0, i32 54
  %427 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %flags, align 8
  %and = and i32 %428, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool74.not = icmp eq i32 %and, 0
  br i1 %tobool74.not, label %if.end73.if.end76_crit_edge, label %if.then75

if.end73.if.end76_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end76

if.then75:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  %arm_wb_state = getelementptr i8, ptr %napi, i32 380
  %429 = ptrtoint ptr %arm_wb_state to i32
  call void @__asan_store1_noabort(i32 %429)
  store i8 0, ptr %arm_wb_state, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.end73.if.end76_crit_edge
  %call77 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.0.lcssa) #14
  br i1 %call77, label %if.then84, label %if.end76.if.end85_crit_edge, !prof !132

if.end76.if.end85_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

if.then84:                                        ; preds = %if.end76
  %430 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %back, align 8
  %hw1.i = getelementptr inbounds %struct.i40e_pf, ptr %431, i32 0, i32 1
  %flags.i216 = getelementptr inbounds %struct.i40e_pf, ptr %431, i32 0, i32 54
  %432 = ptrtoint ptr %flags.i216 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %flags.i216, align 8
  %and.i217 = and i32 %433, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i217)
  %tobool.not.i218 = icmp eq i32 %and.i217, 0
  br i1 %tobool.not.i218, label %if.then.i219, label %if.end.i223

if.then.i219:                                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #16
  call void @i40e_irq_dynamic_enable_icr0(ptr noundef %431) #14
  br label %if.end85

if.end.i223:                                      ; preds = %if.then84
  call fastcc void @i40e_update_itr(ptr noundef %add.ptr, ptr noundef %tx) #14
  call fastcc void @i40e_update_itr(ptr noundef %add.ptr, ptr noundef %rx) #14
  %target_itr.i = getelementptr i8, ptr %napi, i32 242
  %434 = ptrtoint ptr %target_itr.i to i32
  call void @__asan_load2_noabort(i32 %434)
  %435 = load i16, ptr %target_itr.i, align 2
  %conv.i221 = zext i16 %435 to i32
  %current_itr.i = getelementptr i8, ptr %napi, i32 244
  %436 = ptrtoint ptr %current_itr.i to i32
  call void @__asan_load2_noabort(i32 %436)
  %437 = load i16, ptr %current_itr.i, align 4
  %conv6.i = zext i16 %437 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %435, i16 %437)
  %cmp.i222 = icmp ult i16 %435, %437
  br i1 %cmp.i222, label %if.then8.i224, label %if.else.i225

if.then8.i224:                                    ; preds = %if.end.i223
  call void @__sanitizer_cov_trace_pc() #16
  %438 = and i16 %435, 8190
  %conv2.i.i = zext i16 %438 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 4
  %or4.i.i = or i32 %shl3.i.i, 1
  %439 = ptrtoint ptr %current_itr.i to i32
  call void @__asan_store2_noabort(i32 %439)
  store i16 %435, ptr %current_itr.i, align 4
  %itr_countdown.i = getelementptr i8, ptr %napi, i32 272
  %440 = ptrtoint ptr %itr_countdown.i to i32
  call void @__asan_store1_noabort(i32 %440)
  store i8 3, ptr %itr_countdown.i, align 8
  br label %if.end74.i

if.else.i225:                                     ; preds = %if.end.i223
  %target_itr16.i = getelementptr i8, ptr %napi, i32 266
  %441 = ptrtoint ptr %target_itr16.i to i32
  call void @__asan_load2_noabort(i32 %441)
  %442 = load i16, ptr %target_itr16.i, align 2
  %current_itr19.i = getelementptr i8, ptr %napi, i32 268
  %443 = ptrtoint ptr %current_itr19.i to i32
  call void @__asan_load2_noabort(i32 %443)
  %444 = load i16, ptr %current_itr19.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %442, i16 %444)
  %cmp21.i = icmp ult i16 %442, %444
  br i1 %cmp21.i, label %if.else.i225.if.then38.i_crit_edge, label %lor.lhs.false.i227

if.else.i225.if.then38.i_crit_edge:               ; preds = %if.else.i225
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then38.i

lor.lhs.false.i227:                               ; preds = %if.else.i225
  %conv20.i = zext i16 %444 to i32
  %conv17.i = zext i16 %442 to i32
  %sub.i226 = sub nsw i32 %conv.i221, %conv6.i
  %sub35.i = sub nsw i32 %conv17.i, %conv20.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i226, i32 %sub35.i)
  %cmp36.i = icmp slt i32 %sub.i226, %sub35.i
  br i1 %cmp36.i, label %lor.lhs.false.i227.if.then38.i_crit_edge, label %if.else47.i

lor.lhs.false.i227.if.then38.i_crit_edge:         ; preds = %lor.lhs.false.i227
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then38.i

if.then38.i:                                      ; preds = %lor.lhs.false.i227.if.then38.i_crit_edge, %if.else.i225.if.then38.i_crit_edge
  %445 = and i16 %442, 8190
  %conv2.i112.i = zext i16 %445 to i32
  %shl3.i113.i = shl nuw nsw i32 %conv2.i112.i, 4
  %or4.i114.i = or i32 %shl3.i113.i, 9
  %446 = ptrtoint ptr %current_itr19.i to i32
  call void @__asan_store2_noabort(i32 %446)
  store i16 %442, ptr %current_itr19.i, align 4
  %itr_countdown46.i = getelementptr i8, ptr %napi, i32 272
  %447 = ptrtoint ptr %itr_countdown46.i to i32
  call void @__asan_store1_noabort(i32 %447)
  store i8 3, ptr %itr_countdown46.i, align 8
  br label %if.end74.i

if.else47.i:                                      ; preds = %lor.lhs.false.i227
  call void @__sanitizer_cov_trace_cmp2(i16 %435, i16 %437)
  %cmp54.not.i = icmp eq i16 %435, %437
  br i1 %cmp54.not.i, label %if.else65.i, label %if.then56.i228

if.then56.i228:                                   ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #16
  %448 = and i16 %435, 8190
  %conv2.i115.i = zext i16 %448 to i32
  %shl3.i116.i = shl nuw nsw i32 %conv2.i115.i, 4
  %or4.i117.i = or i32 %shl3.i116.i, 1
  %449 = ptrtoint ptr %current_itr.i to i32
  call void @__asan_store2_noabort(i32 %449)
  store i16 %435, ptr %current_itr.i, align 4
  %itr_countdown64.i = getelementptr i8, ptr %napi, i32 272
  %450 = ptrtoint ptr %itr_countdown64.i to i32
  call void @__asan_store1_noabort(i32 %450)
  store i8 3, ptr %itr_countdown64.i, align 8
  br label %if.end74.i

if.else65.i:                                      ; preds = %if.else47.i
  %itr_countdown67.i = getelementptr i8, ptr %napi, i32 272
  %451 = ptrtoint ptr %itr_countdown67.i to i32
  call void @__asan_load1_noabort(i32 %451)
  %452 = load i8, ptr %itr_countdown67.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %452)
  %tobool68.not.i = icmp eq i8 %452, 0
  br i1 %tobool68.not.i, label %if.else65.i.if.end74.i_crit_edge, label %if.then69.i

if.else65.i.if.end74.i_crit_edge:                 ; preds = %if.else65.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74.i

if.then69.i:                                      ; preds = %if.else65.i
  call void @__sanitizer_cov_trace_pc() #16
  %dec.i229 = add i8 %452, -1
  %453 = ptrtoint ptr %itr_countdown67.i to i32
  call void @__asan_store1_noabort(i32 %453)
  store i8 %dec.i229, ptr %itr_countdown67.i, align 8
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then69.i, %if.else65.i.if.end74.i_crit_edge, %if.then56.i228, %if.then38.i, %if.then8.i224
  %intval.0.i = phi i32 [ %or4.i.i, %if.then8.i224 ], [ %or4.i114.i, %if.then38.i ], [ %or4.i117.i, %if.then56.i228 ], [ 25, %if.then69.i ], [ 25, %if.else65.i.if.end74.i_crit_edge ]
  %454 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load volatile i32, ptr %state, align 4
  %and1.i.i231 = and i32 %455, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i231)
  %tobool76.not.i = icmp eq i32 %and1.i.i231, 0
  br i1 %tobool76.not.i, label %do.body.i236, label %if.end74.i.if.end85_crit_edge

if.end74.i.if.end85_crit_edge:                    ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

do.body.i236:                                     ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !152
  call void @arm_heavy_mb() #14
  %456 = call i32 @llvm.bswap.i32(i32 %intval.0.i) #14
  %457 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %hw1.i, align 8
  %reg_idx.i232 = getelementptr i8, ptr %napi, i32 -2
  %459 = ptrtoint ptr %reg_idx.i232 to i32
  call void @__asan_load2_noabort(i32 %459)
  %460 = load i16, ptr %reg_idx.i232, align 2
  %conv78.i = zext i16 %460 to i32
  %mul.i233 = shl nuw nsw i32 %conv78.i, 2
  %add.i234 = add nuw nsw i32 %mul.i233, 215040
  %add.ptr.i235 = getelementptr i8, ptr %458, i32 %add.i234
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i235, i32 %456) #14, !srcloc !130
  br label %if.end85

if.end85:                                         ; preds = %do.body.i236, %if.end74.i.if.end85_crit_edge, %if.then.i219, %if.end76.if.end85_crit_edge
  %sub86 = add i32 %budget, -1
  %461 = call i32 @llvm.smin.i32(i32 %work_done.0.lcssa, i32 %sub86)
  br label %cleanup94

cleanup94:                                        ; preds = %if.end85, %if.end18.i213, %if.end.i205.cleanup94_crit_edge, %if.then69.cleanup94_crit_edge, %tx_only.cleanup94_crit_edge, %i40e_force_wb.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %461, %if.end85 ], [ %sub, %i40e_force_wb.exit ], [ %budget, %tx_only.cleanup94_crit_edge ], [ %budget, %if.then69.cleanup94_crit_edge ], [ %budget, %if.end.i205.cleanup94_crit_edge ], [ %budget, %if.end18.i213 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @i40e_clean_xdp_tx_irq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_clean_rx_irq_zc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__i40e_maybe_stop_tx(ptr nocapture noundef %tx_ring, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %queue_index = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 7
  %2 = ptrtoint ptr %queue_index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queue_index, align 4
  %conv.i = zext i16 %3 to i32
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %5, i32 %conv.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !153
  %next_to_clean = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 15
  %6 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %next_to_clean, align 2
  %next_to_use = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 14
  %8 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %next_to_use, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp = icmp ugt i16 %7, %9
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %count = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 11
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %count, align 2
  %conv5 = zext i16 %11 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv5, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %conv7 = zext i16 %7 to i32
  %conv9 = zext i16 %9 to i32
  %12 = xor i32 %conv9, -1
  %add = add nsw i32 %12, %conv7
  %sub10 = add nsw i32 %add, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %sub10, i32 %size)
  %cmp11 = icmp slt i32 %sub10, %size
  br i1 %cmp11, label %cond.end.return_crit_edge, label %if.end, !prof !132

cond.end.return_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev, align 4
  %15 = ptrtoint ptr %queue_index to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %queue_index, align 4
  %conv.i25 = zext i16 %16 to i32
  %_tx.i.i26 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 103
  %17 = ptrtoint ptr %_tx.i.i26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i.i26, align 128
  %state.i.i27 = getelementptr %struct.netdev_queue, ptr %18, i32 %conv.i25, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i27) #14
  %19 = getelementptr inbounds %struct.i40e_ring, ptr %tx_ring, i32 0, i32 25
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %19, align 16
  %inc = add i64 %21, 1
  store i64 %inc, ptr %19, align 16
  br label %return

return:                                           ; preds = %if.end, %cond.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %cond.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__i40e_chk_linearize(ptr nocapture noundef readonly %skb) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %nr_frags1 = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr_frags1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr_frags1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %3)
  %cmp = icmp ult i8 %3, 7
  br i1 %cmp, label %entry.cleanup47_crit_edge, label %if.end

entry.cleanup47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup47

if.end:                                           ; preds = %entry
  %conv = zext i8 %3 to i32
  %sub = add nsw i32 %conv, -6
  %frags = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 12
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %gso_size, align 4
  %conv5 = zext i16 %5 to i32
  %sub6 = sub nsw i32 1, %conv5
  %bv_len.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 0, i32 1
  %6 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bv_len.i, align 4
  %add = add i32 %sub6, %7
  %bv_len.i80 = getelementptr %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 1, i32 1
  %8 = ptrtoint ptr %bv_len.i80 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bv_len.i80, align 4
  %add10 = add i32 %add, %9
  %bv_len.i81 = getelementptr %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 2, i32 1
  %10 = ptrtoint ptr %bv_len.i81 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bv_len.i81, align 4
  %add13 = add i32 %add10, %11
  %bv_len.i82 = getelementptr %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 3, i32 1
  %12 = ptrtoint ptr %bv_len.i82 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bv_len.i82, align 4
  %add16 = add i32 %add13, %13
  %incdec.ptr17 = getelementptr %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 5
  %bv_len.i83 = getelementptr %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 4, i32 1
  %14 = ptrtoint ptr %bv_len.i83 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bv_len.i83, align 4
  %add19 = add i32 %add16, %15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %frag.0 = phi ptr [ %incdec.ptr17, %if.end ], [ %incdec.ptr24, %for.inc ]
  %stale.0 = phi ptr [ %frags, %if.end ], [ %incdec.ptr46, %for.inc ]
  %nr_frags.0 = phi i32 [ %sub, %if.end ], [ %dec, %for.inc ]
  %sum.0 = phi i32 [ %add19, %if.end ], [ %sub45, %for.inc ]
  %bv_len.i85 = getelementptr inbounds %struct.bio_vec, ptr %stale.0, i32 0, i32 1
  %16 = ptrtoint ptr %bv_len.i85 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bv_len.i85, align 4
  %incdec.ptr24 = getelementptr %struct.bio_vec, ptr %frag.0, i32 1
  %bv_len.i86 = getelementptr inbounds %struct.bio_vec, ptr %frag.0, i32 0, i32 1
  %18 = ptrtoint ptr %bv_len.i86 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bv_len.i86, align 4
  %add26 = add i32 %19, %sum.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %17)
  %cmp27 = icmp sgt i32 %17, 16383
  br i1 %cmp27, label %if.then29, label %for.cond.if.end38_crit_edge

for.cond.if.end38_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then29:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  %bv_offset.i = getelementptr inbounds %struct.bio_vec, ptr %stale.0, i32 0, i32 2
  %20 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bv_offset.i, align 4
  %sub31 = sub i32 0, %21
  %and = and i32 %sub31, 4095
  %22 = add i32 %sum.0, -12288
  %23 = add i32 %22, %19
  %24 = add nsw i32 %17, -12288
  %25 = sub nuw nsw i32 %24, %and
  %umin = call i32 @llvm.umin.i32(i32 %25, i32 16383)
  %26 = xor i32 %umin, -1
  %27 = add i32 %17, %26
  %28 = sub i32 %27, %and
  %29 = urem i32 %28, 12288
  %30 = sub i32 %28, %29
  %31 = add i32 %and, %30
  %32 = sub i32 %23, %31
  %33 = sub i32 %25, %30
  br label %if.end38

if.end38:                                         ; preds = %if.then29, %for.cond.if.end38_crit_edge
  %sum.2 = phi i32 [ %add26, %for.cond.if.end38_crit_edge ], [ %32, %if.then29 ]
  %stale_size.1 = phi i32 [ %17, %for.cond.if.end38_crit_edge ], [ %33, %if.then29 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sum.2)
  %cmp39 = icmp slt i32 %sum.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_frags.0)
  %tobool.not = icmp eq i32 %nr_frags.0, 0
  %or.cond = select i1 %cmp39, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end38.cleanup47_crit_edge, label %for.inc

if.end38.cleanup47_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup47

for.inc:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %sub45 = sub i32 %sum.2, %stale_size.1
  %dec = add nsw i32 %nr_frags.0, -1
  %incdec.ptr46 = getelementptr %struct.bio_vec, ptr %stale.0, i32 1
  br label %for.cond

cleanup47:                                        ; preds = %if.end38.cleanup47_crit_edge, %entry.cleanup47_crit_edge
  %retval.2 = phi i1 [ false, %entry.cleanup47_crit_edge ], [ %cmp39, %if.end38.cleanup47_crit_edge ]
  ret i1 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @i40e_lan_select_queue(ptr noundef %netdev, ptr noundef %skb, ptr noundef %sb_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %tc_config = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %tc_config to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tc_config, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call zeroext i16 @netdev_pick_tx(ptr noundef %netdev, ptr noundef %skb, ptr noundef %sb_dev) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %4 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priority, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %6 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %back, align 8
  %idxprom = and i32 %5, 255
  %arrayidx = getelementptr %struct.i40e_pf, ptr %7, i32 0, i32 1, i32 32, i32 4, i32 3, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %enabled_tc = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 50, i32 1
  %10 = ptrtoint ptr %enabled_tc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enabled_tc, align 1
  %conv7 = zext i8 %11 to i32
  %conv8 = zext i8 %9 to i32
  %shl = shl nuw i32 1, %conv8
  %and = and i32 %shl, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then12, label %if.end.if.end13_crit_edge, !prof !135

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end.if.end13_crit_edge
  %tclass.0 = phi i8 [ 0, %if.then12 ], [ %9, %if.end.if.end13_crit_edge ]
  %idxprom15 = zext i8 %tclass.0 to i32
  %arrayidx16 = getelementptr %struct.i40e_vsi, ptr %1, i32 0, i32 50, i32 2, i32 %idxprom15
  %qcount17 = getelementptr %struct.i40e_vsi, ptr %1, i32 0, i32 50, i32 2, i32 %idxprom15, i32 1
  %12 = ptrtoint ptr %qcount17 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %qcount17, align 2
  %14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end13.if.else.i_crit_edge, label %land.lhs.true.i

if.end13.if.else.i_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end13
  %17 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool1.not.i = icmp eq i32 %19, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.i40e_swdcb_skb_tx_hash.exit_crit_edge

land.lhs.true.i.i40e_swdcb_skb_tx_hash.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_swdcb_skb_tx_hash.exit

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end13.if.else.i_crit_edge
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %20 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %protocol.i, align 8
  %conv.i = zext i16 %21 to i32
  %hash3.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %22 = ptrtoint ptr %hash3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hash3.i, align 4
  %xor.i = xor i32 %23, %conv.i
  br label %i40e_swdcb_skb_tx_hash.exit

i40e_swdcb_skb_tx_hash.exit:                      ; preds = %if.else.i, %land.lhs.true.i.i40e_swdcb_skb_tx_hash.exit_crit_edge
  %hash.0.i = phi i32 [ %xor.i, %if.else.i ], [ %19, %land.lhs.true.i.i40e_swdcb_skb_tx_hash.exit_crit_edge ]
  %add.i.i.i = add i32 %hash.0.i, -1260445634
  %xor3.i.i.i = xor i32 %add.i.i.i, 938496713
  %sub5.i.i.i = add i32 %xor3.i.i.i, 2104079937
  %xor6.i.i.i = xor i32 %sub5.i.i.i, -1260445634
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #14
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i1.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, 938496713
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #14
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i2.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #14
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i3.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #14
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i4.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #14
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i5.i.i.i
  %conv4.i = zext i32 %sub20.i.i.i to i64
  %conv5.i = zext i16 %13 to i64
  %mul.i = mul nuw nsw i64 %conv4.i, %conv5.i
  %shr.i = lshr i64 %mul.i, 32
  %conv6.i = trunc i64 %shr.i to i16
  %24 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx16, align 2
  %add = add i16 %25, %conv6.i
  br label %cleanup

cleanup:                                          ; preds = %i40e_swdcb_skb_tx_hash.exit, %if.then
  %retval.0 = phi i16 [ %call3, %if.then ], [ %add, %i40e_swdcb_skb_tx_hash.exit ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @netdev_pick_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_lan_xmit_frame(ptr noundef %skb, ptr nocapture noundef readonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  %h_offset.i.i = alloca i32, align 4
  %frag_off.i.i = alloca i16, align 2
  %l4_proto.i.i = alloca i8, align 1
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  %vhdr.i.i.i.i = alloca %struct.vlan_hdr, align 2
  %_vhdr.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %tx_rings = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_rings, align 4
  %queue_mapping = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %4 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %queue_mapping, align 8
  %idxprom = zext i16 %5 to i32
  %arrayidx = getelementptr ptr, ptr %3, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %9)
  %cmp.i.i = icmp ult i32 %9, 17
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end_crit_edge, !prof !135

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i.i:                                      ; preds = %entry
  %sub.i.i = sub nuw nsw i32 17, %9
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i.i, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i, label %if.then.i.i.cleanup_crit_edge

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i.i.i, label %__skb_put.exit.i.i, label %do.body3.i.i.i, !prof !132

do.body3.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #14, !srcloc !151
  unreachable

__skb_put.exit.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 %sub.i.i
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i.i, align 8
  %14 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len1.i.i, align 4
  %add.i.i.i = add i32 %15, %sub.i.i
  store i32 %add.i.i.i, ptr %len1.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %__skb_put.exit.i.i, %entry.if.end_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %17) #14, !srcloc !145
  tail call fastcc void @trace_i40e_xmit_frame_ring(ptr noundef %skb, ptr noundef %7) #14
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %18 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags2.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %nr_frags2.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %nr_frags2.i.i, align 2
  %22 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len1.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %24 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %23, %25
  %mul.i10.i.i = mul i32 %sub.i.i.i, 85
  %shr.i11.i.i = lshr i32 %mul.i10.i.i, 20
  %add12.i.i = add nuw nsw i32 %shr.i11.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not13.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not13.i.i, label %if.end.i40e_xmit_descriptor_count.exit.i_crit_edge, label %if.end.preheader.i.i

if.end.i40e_xmit_descriptor_count.exit.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_xmit_descriptor_count.exit.i

if.end.preheader.i.i:                             ; preds = %if.end
  %conv.i.i = zext i8 %21 to i32
  %frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 12
  br label %if.end.i.i9

if.end.i.i9:                                      ; preds = %if.end.i.i9.if.end.i.i9_crit_edge, %if.end.preheader.i.i
  %add16.i.i = phi i32 [ %add.i.i, %if.end.i.i9.if.end.i.i9_crit_edge ], [ %add12.i.i, %if.end.preheader.i.i ]
  %nr_frags.015.i.i = phi i32 [ %dec.i.i, %if.end.i.i9.if.end.i.i9_crit_edge ], [ %conv.i.i, %if.end.preheader.i.i ]
  %frag.014.i.i = phi ptr [ %incdec.ptr.i.i, %if.end.i.i9.if.end.i.i9_crit_edge ], [ %frags.i.i, %if.end.preheader.i.i ]
  %dec.i.i = add nsw i32 %nr_frags.015.i.i, -1
  %incdec.ptr.i.i = getelementptr %struct.bio_vec, ptr %frag.014.i.i, i32 1
  %bv_len.i.i.i = getelementptr inbounds %struct.bio_vec, ptr %frag.014.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bv_len.i.i.i, align 4
  %mul.i.i.i = mul i32 %27, 85
  %shr.i.i.i = lshr i32 %mul.i.i.i, 20
  %add.i.i.i8 = add i32 %add16.i.i, 1
  %add.i.i = add i32 %add.i.i.i8, %shr.i.i.i
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i9.i40e_xmit_descriptor_count.exit.i_crit_edge, label %if.end.i.i9.if.end.i.i9_crit_edge

if.end.i.i9.if.end.i.i9_crit_edge:                ; preds = %if.end.i.i9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i9

if.end.i.i9.i40e_xmit_descriptor_count.exit.i_crit_edge: ; preds = %if.end.i.i9
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_xmit_descriptor_count.exit.i

i40e_xmit_descriptor_count.exit.i:                ; preds = %if.end.i.i9.i40e_xmit_descriptor_count.exit.i_crit_edge, %if.end.i40e_xmit_descriptor_count.exit.i_crit_edge
  %add.lcssa.i.i = phi i32 [ %add12.i.i, %if.end.i40e_xmit_descriptor_count.exit.i_crit_edge ], [ %add.i.i, %if.end.i.i9.i40e_xmit_descriptor_count.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.lcssa.i.i)
  %cmp.i.i10 = icmp slt i32 %add.lcssa.i.i, 8
  br i1 %cmp.i.i10, label %i40e_xmit_descriptor_count.exit.i.if.end5.i_crit_edge, label %if.end.i110.i, !prof !132

i40e_xmit_descriptor_count.exit.i.if.end5.i_crit_edge: ; preds = %i40e_xmit_descriptor_count.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.end.i110.i:                                    ; preds = %i40e_xmit_descriptor_count.exit.i
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 4
  %28 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.i.not.i.i = icmp eq i16 %29, 0
  br i1 %tobool.i.not.i.i, label %i40e_chk_linearize.exit.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i110.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %21)
  %cmp.i54 = icmp ult i8 %21, 7
  br i1 %cmp.i54, label %if.then2.i.i.if.end5.i_crit_edge, label %if.end.i57

if.then2.i.i.if.end5.i_crit_edge:                 ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.end.i57:                                       ; preds = %if.then2.i.i
  %conv.i = zext i8 %21 to i32
  %sub.i = add nsw i32 %conv.i, -6
  %frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 12
  %conv5.i55 = zext i16 %29 to i32
  %sub6.i = sub nsw i32 1, %conv5.i55
  %bv_len.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 12, i32 0, i32 1
  %30 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bv_len.i.i, align 4
  %add.i56 = add i32 %sub6.i, %31
  %bv_len.i80.i = getelementptr %struct.skb_shared_info, ptr %19, i32 0, i32 12, i32 1, i32 1
  %32 = ptrtoint ptr %bv_len.i80.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bv_len.i80.i, align 4
  %add10.i = add i32 %add.i56, %33
  %bv_len.i81.i = getelementptr %struct.skb_shared_info, ptr %19, i32 0, i32 12, i32 2, i32 1
  %34 = ptrtoint ptr %bv_len.i81.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bv_len.i81.i, align 4
  %add13.i = add i32 %add10.i, %35
  %bv_len.i82.i = getelementptr %struct.skb_shared_info, ptr %19, i32 0, i32 12, i32 3, i32 1
  %36 = ptrtoint ptr %bv_len.i82.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bv_len.i82.i, align 4
  %add16.i = add i32 %add13.i, %37
  %incdec.ptr17.i = getelementptr %struct.skb_shared_info, ptr %19, i32 0, i32 12, i32 5
  %bv_len.i83.i = getelementptr %struct.skb_shared_info, ptr %19, i32 0, i32 12, i32 4, i32 1
  %38 = ptrtoint ptr %bv_len.i83.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bv_len.i83.i, align 4
  %add19.i = add i32 %add16.i, %39
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %if.end.i57
  %frag.0.i = phi ptr [ %incdec.ptr17.i, %if.end.i57 ], [ %incdec.ptr24.i, %for.inc.i ]
  %stale.0.i = phi ptr [ %frags.i, %if.end.i57 ], [ %incdec.ptr46.i, %for.inc.i ]
  %nr_frags.0.i = phi i32 [ %sub.i, %if.end.i57 ], [ %dec.i, %for.inc.i ]
  %sum.0.i = phi i32 [ %add19.i, %if.end.i57 ], [ %sub45.i, %for.inc.i ]
  %bv_len.i85.i = getelementptr inbounds %struct.bio_vec, ptr %stale.0.i, i32 0, i32 1
  %40 = ptrtoint ptr %bv_len.i85.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bv_len.i85.i, align 4
  %incdec.ptr24.i = getelementptr %struct.bio_vec, ptr %frag.0.i, i32 1
  %bv_len.i86.i = getelementptr inbounds %struct.bio_vec, ptr %frag.0.i, i32 0, i32 1
  %42 = ptrtoint ptr %bv_len.i86.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bv_len.i86.i, align 4
  %add26.i = add i32 %43, %sum.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %41)
  %cmp27.i = icmp sgt i32 %41, 16383
  br i1 %cmp27.i, label %if.then29.i, label %for.cond.i.if.end38.i_crit_edge

for.cond.i.if.end38.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38.i

if.then29.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %bv_offset.i.i = getelementptr inbounds %struct.bio_vec, ptr %stale.0.i, i32 0, i32 2
  %44 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bv_offset.i.i, align 4
  %sub31.i = sub i32 0, %45
  %and.i58 = and i32 %sub31.i, 4095
  %46 = add nsw i32 %41, -12288
  %47 = sub nuw nsw i32 %46, %and.i58
  %umin.i = tail call i32 @llvm.umin.i32(i32 %47, i32 16383) #14
  %48 = xor i32 %umin.i, -1
  %49 = sub nuw nsw i32 %41, %and.i58
  %50 = add i32 %49, %48
  %51 = urem i32 %50, 12288
  %52 = sub i32 %50, %51
  %53 = add i32 %add26.i, -12288
  %54 = add i32 %and.i58, %52
  %55 = sub i32 %53, %54
  %56 = sub i32 %47, %52
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then29.i, %for.cond.i.if.end38.i_crit_edge
  %sum.2.i = phi i32 [ %add26.i, %for.cond.i.if.end38.i_crit_edge ], [ %55, %if.then29.i ]
  %stale_size.1.i = phi i32 [ %41, %for.cond.i.if.end38.i_crit_edge ], [ %56, %if.then29.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sum.2.i)
  %cmp39.i = icmp slt i32 %sum.2.i, 0
  br i1 %cmp39.i, label %if.end38.i.if.then.i_crit_edge, label %if.end42.i

if.end38.i.if.then.i_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.end42.i:                                       ; preds = %if.end38.i
  %tobool.not.i = icmp eq i32 %nr_frags.0.i, 0
  br i1 %tobool.not.i, label %if.end42.i.if.end5.i_crit_edge, label %for.inc.i

if.end42.i.if.end5.i_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

for.inc.i:                                        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub45.i = sub i32 %sum.2.i, %stale_size.1.i
  %dec.i = add nsw i32 %nr_frags.0.i, -1
  %incdec.ptr46.i = getelementptr %struct.bio_vec, ptr %stale.0.i, i32 1
  br label %for.cond.i

i40e_chk_linearize.exit.i:                        ; preds = %if.end.i110.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.lcssa.i.i)
  %cmp5.i.not.i = icmp eq i32 %add.lcssa.i.i, 8
  br i1 %cmp5.i.not.i, label %i40e_chk_linearize.exit.i.if.end5.i_crit_edge, label %i40e_chk_linearize.exit.i.if.then.i_crit_edge

i40e_chk_linearize.exit.i.if.then.i_crit_edge:    ; preds = %i40e_chk_linearize.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

i40e_chk_linearize.exit.i.if.end5.i_crit_edge:    ; preds = %i40e_chk_linearize.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.then.i:                                        ; preds = %i40e_chk_linearize.exit.i.if.then.i_crit_edge, %if.end38.i.if.then.i_crit_edge
  %call.i.i11 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %25) #14
  %tobool.not.i111.not.i = icmp eq ptr %call.i.i11, null
  br i1 %tobool.not.i111.not.i, label %if.then3.i, label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %57 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len1.i.i, align 4
  %mul.i.i = mul i32 %58, 85
  %shr.i.i = lshr i32 %mul.i.i, 20
  %add.i112.i = add nuw nsw i32 %shr.i.i, 1
  %tx_linearize.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 25, i32 0, i32 3
  %59 = ptrtoint ptr %tx_linearize.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %tx_linearize.i, align 8
  %inc.i = add i64 %60, 1
  store i64 %inc.i, ptr %tx_linearize.i, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i, %i40e_chk_linearize.exit.i.if.end5.i_crit_edge, %if.end42.i.if.end5.i_crit_edge, %if.then2.i.i.if.end5.i_crit_edge, %i40e_xmit_descriptor_count.exit.i.if.end5.i_crit_edge
  %count.0.i = phi i32 [ %add.i112.i, %if.end.i ], [ 8, %i40e_chk_linearize.exit.i.if.end5.i_crit_edge ], [ %add.lcssa.i.i, %i40e_xmit_descriptor_count.exit.i.if.end5.i_crit_edge ], [ %add.lcssa.i.i, %if.then2.i.i.if.end5.i_crit_edge ], [ %add.lcssa.i.i, %if.end42.i.if.end5.i_crit_edge ]
  %add6.i = add i32 %count.0.i, 5
  %next_to_clean.i.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 15
  %61 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %next_to_clean.i.i, align 2
  %next_to_use.i.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 14
  %63 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %next_to_use.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %62, i16 %64)
  %cmp.i113.i = icmp ugt i16 %62, %64
  br i1 %cmp.i113.i, label %if.end5.i.cond.end.i.i_crit_edge, label %cond.false.i.i

if.end5.i.cond.end.i.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  %count.i.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 11
  %65 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %count.i.i, align 2
  %conv3.i.i = zext i16 %66 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.end5.i.cond.end.i.i_crit_edge
  %cond.i114.i = phi i32 [ %conv3.i.i, %cond.false.i.i ], [ 0, %if.end5.i.cond.end.i.i_crit_edge ]
  %conv5.i.i = zext i16 %62 to i32
  %conv7.i.i = zext i16 %64 to i32
  %67 = xor i32 %conv7.i.i, -1
  %add.i115.i = add nsw i32 %67, %conv5.i.i
  %sub8.i.i = add nsw i32 %add.i115.i, %cond.i114.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8.i.i, i32 %add6.i)
  %cmp9.not.i.i = icmp slt i32 %sub8.i.i, %add6.i
  br i1 %cmp9.not.i.i, label %i40e_maybe_stop_tx.exit.i, label %cond.end.i.i.if.end11.i_crit_edge, !prof !135

cond.end.i.i.if.end11.i_crit_edge:                ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

i40e_maybe_stop_tx.exit.i:                        ; preds = %cond.end.i.i
  %netdev.i29 = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 3
  %68 = ptrtoint ptr %netdev.i29 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %netdev.i29, align 4
  %queue_index.i30 = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 7
  %70 = ptrtoint ptr %queue_index.i30 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %queue_index.i30, align 4
  %conv.i.i31 = zext i16 %71 to i32
  %_tx.i.i.i32 = getelementptr inbounds %struct.net_device, ptr %69, i32 0, i32 103
  %72 = ptrtoint ptr %_tx.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %_tx.i.i.i32, align 128
  %state.i.i.i33 = getelementptr %struct.netdev_queue, ptr %73, i32 %conv.i.i31, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i33) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !153
  %74 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %next_to_clean.i.i, align 2
  %76 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %next_to_use.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %75, i16 %77)
  %cmp.i36 = icmp ugt i16 %75, %77
  br i1 %cmp.i36, label %i40e_maybe_stop_tx.exit.i.cond.end.i46_crit_edge, label %cond.false.i39

i40e_maybe_stop_tx.exit.i.cond.end.i46_crit_edge: ; preds = %i40e_maybe_stop_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i46

cond.false.i39:                                   ; preds = %i40e_maybe_stop_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %count.i37 = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 11
  %78 = ptrtoint ptr %count.i37 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %count.i37, align 2
  %conv5.i38 = zext i16 %79 to i32
  br label %cond.end.i46

cond.end.i46:                                     ; preds = %cond.false.i39, %i40e_maybe_stop_tx.exit.i.cond.end.i46_crit_edge
  %cond.i40 = phi i32 [ %conv5.i38, %cond.false.i39 ], [ 0, %i40e_maybe_stop_tx.exit.i.cond.end.i46_crit_edge ]
  %conv7.i41 = zext i16 %75 to i32
  %conv9.i42 = zext i16 %77 to i32
  %80 = xor i32 %conv9.i42, -1
  %add.i43 = add nsw i32 %80, %conv7.i41
  %sub10.i44 = add nsw i32 %add.i43, %cond.i40
  call void @__sanitizer_cov_trace_cmp4(i32 %sub10.i44, i32 %add6.i)
  %cmp11.i45 = icmp slt i32 %sub10.i44, %add6.i
  br i1 %cmp11.i45, label %if.then9.i, label %__i40e_maybe_stop_tx.exit53.thread, !prof !132

__i40e_maybe_stop_tx.exit53.thread:               ; preds = %cond.end.i46
  call void @__sanitizer_cov_trace_pc() #16
  %81 = ptrtoint ptr %netdev.i29 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %netdev.i29, align 4
  %83 = ptrtoint ptr %queue_index.i30 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %queue_index.i30, align 4
  %conv.i25.i47 = zext i16 %84 to i32
  %_tx.i.i26.i48 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 103
  %85 = ptrtoint ptr %_tx.i.i26.i48 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %_tx.i.i26.i48, align 128
  %state.i.i27.i49 = getelementptr %struct.netdev_queue, ptr %86, i32 %conv.i25.i47, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i27.i49) #14
  %87 = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 25
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %87, align 16
  %inc.i50 = add i64 %89, 1
  store i64 %inc.i50, ptr %87, align 16
  br label %if.end11.i

if.then9.i:                                       ; preds = %cond.end.i46
  call void @__sanitizer_cov_trace_pc() #16
  %tx_busy.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 25, i32 0, i32 1
  %90 = ptrtoint ptr %tx_busy.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %tx_busy.i, align 8
  %inc10.i = add i64 %91, 1
  store i64 %inc10.i, ptr %tx_busy.i, align 8
  br label %cleanup

if.end11.i:                                       ; preds = %__i40e_maybe_stop_tx.exit53.thread, %cond.end.i.i.if.end11.i_crit_edge
  %92 = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 5
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %95 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %next_to_use.i.i, align 4
  %idxprom.i = zext i16 %96 to i32
  %arrayidx.i = getelementptr %struct.i40e_tx_buffer, ptr %94, i32 %idxprom.i
  %97 = getelementptr %struct.i40e_tx_buffer, ptr %94, i32 %idxprom.i, i32 1
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %skb, ptr %97, align 4
  %99 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %len1.i.i, align 4
  %bytecount.i = getelementptr %struct.i40e_tx_buffer, ptr %94, i32 %idxprom.i, i32 2
  %101 = ptrtoint ptr %bytecount.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %bytecount.i, align 4
  %gso_segs.i = getelementptr %struct.i40e_tx_buffer, ptr %94, i32 %idxprom.i, i32 3
  %102 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 1, ptr %gso_segs.i, align 4
  %protocol1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %103 = ptrtoint ptr %protocol1.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %protocol1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %104)
  %cmp.i119.i = icmp eq i16 %104, -32512
  br i1 %cmp.i119.i, label %land.lhs.true.i.i, label %if.end.thread.i.i

land.lhs.true.i.i:                                ; preds = %if.end11.i
  %netdev.i.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 3
  %105 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %netdev.i.i, align 4
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %106, i32 0, i32 23
  %107 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %108, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i120.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i120.i, label %if.then.i.i.i.i, label %if.end.i121.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true.i.i
  %mac_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %109 = ptrtoint ptr %mac_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %mac_len.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %110 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool.not.i.i.i.i = icmp eq i16 %110, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge, label %if.then1.i.i.i.i

if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i.i.i.i

if.then1.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %110)
  %cmp.i.i.i.i = icmp ult i16 %110, 4
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end25.i.i.i.i, !prof !135

do.end.i.i.i.i:                                   ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 598, i32 noundef 9, ptr noundef null) #14
  br label %vlan_get_protocol.exit.i.i

if.end25.i.i.i.i:                                 ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -4
  br label %if.end26.i.i.i.i

if.end26.i.i.i.i:                                 ; preds = %if.end25.i.i.i.i, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge
  %vlan_depth.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.end25.i.i.i.i ], [ 14, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge ]
  %111 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i, i32 0, i32 1
  %tobool2.not.i.i.i.i.i.i = icmp eq ptr %skb, null
  br label %do.body27.i.i.i.i

do.body27.i.i.i.i:                                ; preds = %do.body27.backedge.i.i.i.i, %if.end26.i.i.i.i
  %vlan_depth.1.i.i.i.i = phi i32 [ %vlan_depth.0.i.i.i.i, %if.end26.i.i.i.i ], [ %add.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  %parse_depth.0.i.i.i.i = phi i32 [ 8, %if.end26.i.i.i.i ], [ %dec.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #14
  %112 = ptrtoint ptr %vhdr.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 -1, ptr %vhdr.i.i.i.i, align 2, !annotation !154
  %113 = ptrtoint ptr %111 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 -1, ptr %111, align 2, !annotation !154
  %114 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %len1.i.i, align 4
  %116 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %data_len.i.i.i, align 8
  %118 = add i32 %vlan_depth.1.i.i.i.i, %117
  %sub.i1.i.i.i.i.i = sub i32 %115, %118
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, !prof !132

if.then.i.i.i.i.i.i:                              ; preds = %do.body27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %119 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %120, i32 %vlan_depth.1.i.i.i.i
  br label %skb_header_pointer.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.body27.i.i.i.i
  br i1 %tobool2.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.i

if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i.i.i.i

lor.lhs.false.i.i.i.i.i.i:                        ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i, ptr noundef nonnull %vhdr.i.i.i.i, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %cmp3.i.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i.i, !prof !135
  br label %skb_header_pointer.exit.i.i.i.i

skb_header_pointer.exit.i.i.i.i:                  ; preds = %lor.lhs.false.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i ]
  %tobool29.not.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i.i, null
  %dec.i.i.i.i = add nsw i32 %parse_depth.0.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %tobool30.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  %121 = select i1 %tobool29.not.i.i.i.i, i1 true, i1 %tobool30.not.i.i.i.i, !prof !135
  br i1 %121, label %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %do.cond42.i.i.i.i, !prof !135

skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i.i.i.i

cleanup.thread.i.i.i.i:                           ; preds = %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #14
  br label %vlan_get_protocol.exit.i.i

do.cond42.i.i.i.i:                                ; preds = %skb_header_pointer.exit.i.i.i.i
  %h_vlan_encapsulated_proto.i.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i, i32 0, i32 1
  %122 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #14
  %124 = zext i16 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %123, label %do.cond42.i.i.i.i.vlan_get_protocol.exit.i.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge101
  ]

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge101: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.vlan_get_protocol.exit.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_get_protocol.exit.i.i

do.body27.backedge.i.i.i.i:                       ; preds = %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge, %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge101
  %add.i.i.i.i = add nsw i32 %vlan_depth.1.i.i.i.i, 4
  br label %do.body27.i.i.i.i

vlan_get_protocol.exit.i.i:                       ; preds = %do.cond42.i.i.i.i.vlan_get_protocol.exit.i.i_crit_edge, %cleanup.thread.i.i.i.i, %do.end.i.i.i.i
  %retval.2.i.i.i.i = phi i16 [ 0, %do.end.i.i.i.i ], [ 0, %cleanup.thread.i.i.i.i ], [ %123, %do.cond42.i.i.i.i.vlan_get_protocol.exit.i.i_crit_edge ]
  %125 = ptrtoint ptr %protocol1.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %retval.2.i.i.i.i, ptr %protocol1.i.i, align 8
  br label %if.end16.i

if.end.i121.i:                                    ; preds = %land.lhs.true.i.i
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %126 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool4.not.i.i12 = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool4.not.i.i12, label %if.then11.i.i, label %if.end.i121.i.if.then5.i.i_crit_edge

if.end.i121.i.if.then5.i.i_crit_edge:             ; preds = %if.end.i121.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5.i.i

if.end.thread.i.i:                                ; preds = %if.end11.i
  %vlan_present90.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %127 = ptrtoint ptr %vlan_present90.i.i to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %bf.load91.i.i = load i32, ptr %vlan_present90.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load91.i.i)
  %tobool4.not92.i.i = icmp sgt i32 %bf.load91.i.i, -1
  br i1 %tobool4.not92.i.i, label %if.end.thread.i.i.if.end22.i.i_crit_edge, label %if.end.thread.i.i.if.then5.i.i_crit_edge

if.end.thread.i.i.if.then5.i.i_crit_edge:         ; preds = %if.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5.i.i

if.end.thread.i.i.if.end22.i.i_crit_edge:         ; preds = %if.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.i.i

if.then5.i.i:                                     ; preds = %if.end.thread.i.i.if.then5.i.i_crit_edge, %if.end.i121.i.if.then5.i.i_crit_edge
  %vlan_tci.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %128 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %vlan_tci.i.i, align 2
  %conv6.i.i = zext i16 %129 to i32
  %shl.i.i = shl nuw i32 %conv6.i.i, 16
  %or7.i.i = or i32 %shl.i.i, 2
  br label %if.end22.i.i

if.then11.i.i:                                    ; preds = %if.end.i121.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_vhdr.i.i) #14
  %130 = ptrtoint ptr %_vhdr.i.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 -1, ptr %_vhdr.i.i, align 2, !annotation !154
  %131 = getelementptr inbounds %struct.vlan_hdr, ptr %_vhdr.i.i, i32 0, i32 1
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 -1, ptr %131, align 2, !annotation !154
  %133 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %len1.i.i, align 4
  %135 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %data_len.i.i.i, align 8
  %.neg109.i.i = add i32 %134, -14
  %sub.i1.i.i.i = sub i32 %.neg109.i.i, %136
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i)
  %cmp.i.i85.i.i = icmp sgt i32 %sub.i1.i.i.i, 3
  br i1 %cmp.i.i85.i.i, label %skb_header_pointer.exit.i.i, label %if.end.i.i.i.i, !prof !132

if.end.i.i.i.i:                                   ; preds = %if.then11.i.i
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.cleanup.thread.i.i_crit_edge:      ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 14, ptr noundef nonnull %_vhdr.i.i, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp3.i.i.i.i, label %lor.lhs.false.i.i.i.i.cleanup.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.cleanup.i.i_crit_edge

lor.lhs.false.i.i.i.i.cleanup.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i.i

lor.lhs.false.i.i.i.i.cleanup.thread.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i.i

skb_header_pointer.exit.i.i:                      ; preds = %if.then11.i.i
  %137 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %138, i32 14
  %tobool13.not.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool13.not.i.i, label %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, label %skb_header_pointer.exit.i.i.cleanup.i.i_crit_edge

skb_header_pointer.exit.i.i.cleanup.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i.i

skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, %lor.lhs.false.i.i.i.i.cleanup.thread.i.i_crit_edge, %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_vhdr.i.i) #14
  br label %out_drop.i

cleanup.i.i:                                      ; preds = %skb_header_pointer.exit.i.i.cleanup.i.i_crit_edge, %lor.lhs.false.i.i.i.i.cleanup.i.i_crit_edge
  %retval.0.i.i99.i.i = phi ptr [ %add.ptr.i.i.i.i, %skb_header_pointer.exit.i.i.cleanup.i.i_crit_edge ], [ %_vhdr.i.i, %lor.lhs.false.i.i.i.i.cleanup.i.i_crit_edge ]
  %139 = ptrtoint ptr %retval.0.i.i99.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %retval.0.i.i99.i.i, align 2
  %conv16.i.i = zext i16 %140 to i32
  %shl17.i.i = shl nuw i32 %conv16.i.i, 16
  %or19.i.i = or i32 %shl17.i.i, 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_vhdr.i.i) #14
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %cleanup.i.i, %if.then5.i.i, %if.end.thread.i.i.if.end22.i.i_crit_edge
  %tx_flags.1.i.i = phi i32 [ %or7.i.i, %if.then5.i.i ], [ %or19.i.i, %cleanup.i.i ], [ 0, %if.end.thread.i.i.if.end22.i.i_crit_edge ]
  %vsi.i.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 28
  %141 = ptrtoint ptr %vsi.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %vsi.i.i, align 8
  %back.i.i = getelementptr inbounds %struct.i40e_vsi, ptr %142, i32 0, i32 57
  %143 = ptrtoint ptr %back.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %back.i.i, align 8
  %flags23.i.i = getelementptr inbounds %struct.i40e_pf, ptr %144, i32 0, i32 54
  %145 = ptrtoint ptr %flags23.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %flags23.i.i, align 8
  %and24.i.i = and i32 %146, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end22.i.i.if.end16thread-pre-split.i_crit_edge, label %if.end27.i.i

if.end22.i.i.if.end16thread-pre-split.i_crit_edge: ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16thread-pre-split.i

if.end27.i.i:                                     ; preds = %if.end22.i.i
  %and28.i.i = and i32 %tx_flags.1.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i.i)
  %tobool29.not.i.i = icmp eq i32 %and28.i.i, 0
  br i1 %tobool29.not.i.i, label %lor.lhs.false.i.i, label %if.end27.i.i.if.then32.i.i_crit_edge

if.end27.i.i.if.then32.i.i_crit_edge:             ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then32.i.i

lor.lhs.false.i.i:                                ; preds = %if.end27.i.i
  %priority.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %147 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %priority.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %148)
  %cmp30.not.i.i = icmp eq i32 %148, 7
  br i1 %cmp30.not.i.i, label %lor.lhs.false.i.i.if.end16thread-pre-split.i_crit_edge, label %lor.lhs.false.i.i.if.then32.i.i_crit_edge

lor.lhs.false.i.i.if.then32.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then32.i.i

lor.lhs.false.i.i.if.end16thread-pre-split.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16thread-pre-split.i

if.then32.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then32.i.i_crit_edge, %if.end27.i.i.if.then32.i.i_crit_edge
  %and33.i.i = and i32 %tx_flags.1.i.i, 536870911
  %priority34.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %149 = ptrtoint ptr %priority34.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %priority34.i.i, align 4
  %shl36.i.i = shl i32 %150, 29
  %or37.i.i = or i32 %shl36.i.i, %and33.i.i
  %and38.i.i = and i32 %tx_flags.1.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i.i)
  %tobool39.not.i.i = icmp eq i32 %and38.i.i, 0
  br i1 %tobool39.not.i.i, label %if.else53.i.i, label %if.then40.i.i

if.then40.i.i:                                    ; preds = %if.then32.i.i
  %cloned.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %151 = ptrtoint ptr %cloned.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %bf.load.i.i.i.i = load i8, ptr %cloned.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i)
  %tobool.not.i.i87.i.i = icmp sgt i8 %bf.load.i.i.i.i, -1
  br i1 %tobool.not.i.i87.i.i, label %if.then40.i.i.cleanup49.i.i_crit_edge, label %skb_header_cloned.exit.i.i.i

if.then40.i.i.cleanup49.i.i_crit_edge:            ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup49.i.i

skb_header_cloned.exit.i.i.i:                     ; preds = %if.then40.i.i
  %152 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %153, i32 0, i32 10
  %call.i.i.i.i88.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i.i, i32 noundef 4) #14
  %154 = ptrtoint ptr %dataref1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %dataref1.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %155, 65535
  %shr.i.i.i.i = ashr i32 %155, 16
  %sub.i.i89.i.i = sub nsw i32 %and.i.i.i.i, %shr.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i89.i.i)
  %cmp.i.not.i.i.i = icmp eq i32 %sub.i.i89.i.i, 1
  br i1 %cmp.i.not.i.i.i, label %skb_header_cloned.exit.i.i.i.cleanup49.i.i_crit_edge, label %skb_cow_head.exit.i.i

skb_header_cloned.exit.i.i.i.cleanup49.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup49.i.i

skb_cow_head.exit.i.i:                            ; preds = %skb_header_cloned.exit.i.i.i
  %call4.i.i.i.i = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i)
  %cmp43.i.i = icmp slt i32 %call4.i.i.i.i, 0
  br i1 %cmp43.i.i, label %skb_cow_head.exit.i.i.out_drop.i_crit_edge, label %skb_cow_head.exit.i.i.cleanup49.i.i_crit_edge

skb_cow_head.exit.i.i.cleanup49.i.i_crit_edge:    ; preds = %skb_cow_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup49.i.i

skb_cow_head.exit.i.i.out_drop.i_crit_edge:       ; preds = %skb_cow_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_drop.i

cleanup49.i.i:                                    ; preds = %skb_cow_head.exit.i.i.cleanup49.i.i_crit_edge, %skb_header_cloned.exit.i.i.i.cleanup49.i.i_crit_edge, %if.then40.i.i.cleanup49.i.i_crit_edge
  %156 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %data.i, align 4
  %shr.i122.i = lshr i32 %or37.i.i, 16
  %conv47.i.i = trunc i32 %shr.i122.i to i16
  %h_vlan_TCI48.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %157, i32 0, i32 2
  %158 = ptrtoint ptr %h_vlan_TCI48.i.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %conv47.i.i, ptr %h_vlan_TCI48.i.i, align 2
  br label %if.end16thread-pre-split.i

if.else53.i.i:                                    ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %or54.i.i = or i32 %or37.i.i, 2
  br label %if.end16thread-pre-split.i

if.end16thread-pre-split.i:                       ; preds = %if.else53.i.i, %cleanup49.i.i, %lor.lhs.false.i.i.if.end16thread-pre-split.i_crit_edge, %if.end22.i.i.if.end16thread-pre-split.i_crit_edge
  %tx_flags.0.ph.ph.i = phi i32 [ %or37.i.i, %cleanup49.i.i ], [ %or54.i.i, %if.else53.i.i ], [ %tx_flags.1.i.i, %lor.lhs.false.i.i.if.end16thread-pre-split.i_crit_edge ], [ %tx_flags.1.i.i, %if.end22.i.i.if.end16thread-pre-split.i_crit_edge ]
  %159 = ptrtoint ptr %protocol1.i.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %.pr.i = load i16, ptr %protocol1.i.i, align 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end16thread-pre-split.i, %vlan_get_protocol.exit.i.i
  %160 = phi i16 [ %.pr.i, %if.end16thread-pre-split.i ], [ %retval.2.i.i.i.i, %vlan_get_protocol.exit.i.i ]
  %tx_flags.0.ph.i = phi i32 [ %tx_flags.0.ph.ph.i, %if.end16thread-pre-split.i ], [ 0, %vlan_get_protocol.exit.i.i ]
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %161 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %162 to i32
  %163 = zext i16 %160 to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %160, label %if.end16.i.vlan_get_protocol.exit.i_crit_edge [
    i16 -30552, label %if.end16.i.if.then.i.i.i_crit_edge
    i16 -32512, label %if.end16.i.if.then.i.i.i_crit_edge102
  ]

if.end16.i.if.then.i.i.i_crit_edge102:            ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

if.end16.i.if.then.i.i.i_crit_edge:               ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

if.end16.i.vlan_get_protocol.exit.i_crit_edge:    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_get_protocol.exit.i

if.then.i.i.i:                                    ; preds = %if.end16.i.if.then.i.i.i_crit_edge, %if.end16.i.if.then.i.i.i_crit_edge102
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %162)
  %tobool.not.i.i.i = icmp eq i16 %162, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %162)
  %cmp.i.i.i = icmp ult i16 %162, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !135

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 598, i32 noundef 9, ptr noundef null) #14
  br label %if.end26.i

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i123.i = add nsw i32 %conv.i.i.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i123.i, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %164 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i124.i, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #14
  %165 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !154
  %166 = ptrtoint ptr %164 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 -1, ptr %164, align 2, !annotation !154
  %167 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %len1.i.i, align 4
  %169 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %data_len.i.i.i, align 8
  %171 = add i32 %vlan_depth.1.i.i.i, %170
  %sub.i1.i.i.i.i = sub i32 %168, %171
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !132

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %172 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %173, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !135
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %174 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !135
  br i1 %174, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !135

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #14
  br label %if.end26.i

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %175 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #14
  %177 = zext i16 %176 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.56)
  switch i16 %176, label %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge103
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge103: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_get_protocol.exit.i

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge103
  %add.i.i124.i = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

vlan_get_protocol.exit.i:                         ; preds = %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge, %if.end16.i.vlan_get_protocol.exit.i_crit_edge
  %retval.2.i.i.i = phi i16 [ %160, %if.end16.i.vlan_get_protocol.exit.i_crit_edge ], [ %176, %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge ]
  %178 = zext i16 %retval.2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %178, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %retval.2.i.i.i, label %vlan_get_protocol.exit.i.if.end26.i_crit_edge [
    i16 2048, label %if.then19.i
    i16 -31011, label %if.then23.i
  ]

vlan_get_protocol.exit.i.if.end26.i_crit_edge:    ; preds = %vlan_get_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i

if.then19.i:                                      ; preds = %vlan_get_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %or.i = or i32 %tx_flags.0.ph.i, 16
  br label %if.end26.i

if.then23.i:                                      ; preds = %vlan_get_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %or24.i = or i32 %tx_flags.0.ph.i, 32
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %if.then19.i, %vlan_get_protocol.exit.i.if.end26.i_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i
  %tx_flags.1.i = phi i32 [ %tx_flags.0.ph.i, %vlan_get_protocol.exit.i.if.end26.i_crit_edge ], [ %or24.i, %if.then23.i ], [ %or.i, %if.then19.i ], [ %tx_flags.0.ph.i, %do.end.i.i.i ], [ %tx_flags.0.ph.i, %cleanup.thread.i.i.i ]
  %179 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %97, align 4
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %180, i32 0, i32 15
  %181 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %bf.load.i125.i = load i16, ptr %ip_summed.i.i, align 8
  %182 = and i16 %bf.load.i125.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %182)
  %cmp.not.i.i = icmp eq i16 %182, 1536
  br i1 %cmp.not.i.i, label %if.end.i129.i, label %if.end26.i.if.end36.i_crit_edge

if.end26.i.if.end36.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i

if.end.i129.i:                                    ; preds = %if.end26.i
  %end.i.i.i126.i = getelementptr inbounds %struct.sk_buff, ptr %180, i32 0, i32 17
  %183 = ptrtoint ptr %end.i.i.i126.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %end.i.i.i126.i, align 4
  %gso_size.i.i127.i = getelementptr inbounds %struct.skb_shared_info, ptr %184, i32 0, i32 4
  %185 = ptrtoint ptr %gso_size.i.i127.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %gso_size.i.i127.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %186)
  %tobool.i.not.i128.i = icmp eq i16 %186, 0
  br i1 %tobool.i.not.i128.i, label %if.end.i129.i.if.end36.i_crit_edge, label %if.end3.i.i

if.end.i129.i.if.end36.i_crit_edge:               ; preds = %if.end.i129.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i

if.end3.i.i:                                      ; preds = %if.end.i129.i
  %cloned.i.i.i130.i = getelementptr inbounds %struct.sk_buff, ptr %180, i32 0, i32 12
  %187 = ptrtoint ptr %cloned.i.i.i130.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %bf.load.i.i.i131.i = load i8, ptr %cloned.i.i.i130.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i131.i)
  %tobool.not.i.i.i132.i = icmp sgt i8 %bf.load.i.i.i131.i, -1
  br i1 %tobool.not.i.i.i132.i, label %if.end3.i.i.if.end8.i.i_crit_edge, label %skb_header_cloned.exit.i.i138.i

if.end3.i.i.if.end8.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

skb_header_cloned.exit.i.i138.i:                  ; preds = %if.end3.i.i
  %dataref1.i.i.i133.i = getelementptr inbounds %struct.skb_shared_info, ptr %184, i32 0, i32 10
  %call.i.i.i.i.i134.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i133.i, i32 noundef 4) #14
  %188 = ptrtoint ptr %dataref1.i.i.i133.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load volatile i32, ptr %dataref1.i.i.i133.i, align 4
  %and.i.i.i135.i = and i32 %189, 65535
  %shr.i.i157.i.i = ashr i32 %189, 16
  %sub.i.i.i136.i = sub nsw i32 %and.i.i.i135.i, %shr.i.i157.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i136.i)
  %cmp.i.not.i.i137.i = icmp eq i32 %sub.i.i.i136.i, 1
  br i1 %cmp.i.not.i.i137.i, label %skb_header_cloned.exit.i.i138.i.if.end8.i.i_crit_edge, label %skb_cow_head.exit.i141.i

skb_header_cloned.exit.i.i138.i.if.end8.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i138.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

skb_cow_head.exit.i141.i:                         ; preds = %skb_header_cloned.exit.i.i138.i
  %call4.i.i.i139.i = call i32 @pskb_expand_head(ptr noundef %180, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i139.i)
  %cmp5.i140.i = icmp slt i32 %call4.i.i.i139.i, 0
  br i1 %cmp5.i140.i, label %skb_cow_head.exit.i141.i.out_drop.i_crit_edge, label %skb_cow_head.exit.i141.i.if.end8.i.i_crit_edge

skb_cow_head.exit.i141.i.if.end8.i.i_crit_edge:   ; preds = %skb_cow_head.exit.i141.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

skb_cow_head.exit.i141.i.out_drop.i_crit_edge:    ; preds = %skb_cow_head.exit.i141.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_drop.i

if.end8.i.i:                                      ; preds = %skb_cow_head.exit.i141.i.if.end8.i.i_crit_edge, %skb_header_cloned.exit.i.i138.i.if.end8.i.i_crit_edge, %if.end3.i.i.if.end8.i.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %180, i32 0, i32 18
  %190 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %180, i32 0, i32 15, i32 0, i32 20
  %192 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i142.i = zext i16 %193 to i32
  %add.ptr.i.i.i13 = getelementptr i8, ptr %191, i32 %conv.i.i142.i
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %180, i32 0, i32 15, i32 0, i32 19
  %194 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i159.i.i = zext i16 %195 to i32
  %add.ptr.i160.i.i = getelementptr i8, ptr %191, i32 %conv.i159.i.i
  %196 = ptrtoint ptr %add.ptr.i.i.i13 to i32
  call void @__asan_load1_noabort(i32 %196)
  %bf.load11.i.i = load i8, ptr %add.ptr.i.i.i13, align 4
  %bf.lshr12.mask.i.i = and i8 %bf.load11.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr12.mask.i.i)
  %cmp14.i.i = icmp eq i8 %bf.lshr12.mask.i.i, 64
  br i1 %cmp14.i.i, label %if.then16.i.i, label %if.else.i.i

if.then16.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %tot_len.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i13, i32 0, i32 2
  %197 = ptrtoint ptr %tot_len.i.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 0, ptr %tot_len.i.i, align 2
  %check.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i13, i32 0, i32 7
  %198 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 0, ptr %check.i.i, align 2
  br label %if.end17.i.i

if.else.i.i:                                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %payload_len.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i13, i32 0, i32 2
  %199 = ptrtoint ptr %payload_len.i.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 0, ptr %payload_len.i.i, align 4
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.else.i.i, %if.then16.i.i
  %200 = ptrtoint ptr %end.i.i.i126.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %end.i.i.i126.i, align 4
  %gso_type.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %201, i32 0, i32 8
  %202 = ptrtoint ptr %gso_type.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %gso_type.i.i, align 8
  %and.i143.i = and i32 %203, 4032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i143.i)
  %tobool.not.i144.i = icmp eq i32 %and.i143.i, 0
  br i1 %tobool.not.i144.i, label %if.end17.i.i.if.end45.i.i_crit_edge, label %if.then19.i.i

if.end17.i.i.if.end45.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45.i.i

if.then19.i.i:                                    ; preds = %if.end17.i.i
  %204 = and i32 %203, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %204)
  %.not.i.i = icmp eq i32 %204, 2048
  br i1 %.not.i.i, label %if.then28.i.i, label %if.then19.i.i.if.end31.i.i_crit_edge

if.then19.i.i.if.end31.i.i_crit_edge:             ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31.i.i

if.then28.i.i:                                    ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %len.i.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i160.i.i, i32 0, i32 2
  %205 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 0, ptr %len.i.i, align 2
  %data.i145.i = getelementptr inbounds %struct.sk_buff, ptr %180, i32 0, i32 19
  %206 = ptrtoint ptr %data.i145.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %data.i145.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i160.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %207 to i32
  %sub.ptr.sub.neg.i.i = sub i32 %sub.ptr.rhs.cast.i.i, %sub.ptr.lhs.cast.i.i
  %len29.i.i = getelementptr inbounds %struct.sk_buff, ptr %180, i32 0, i32 6
  %208 = ptrtoint ptr %len29.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %len29.i.i, align 4
  %sub.i.i14 = add i32 %sub.ptr.sub.neg.i.i, %209
  %check30.i.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i160.i.i, i32 0, i32 3
  %210 = ptrtoint ptr %check30.i.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %check30.i.i, align 2
  %conv.i.i.i146.i = zext i16 %211 to i32
  %neg.i.i.i = xor i32 %conv.i.i.i146.i, -1
  %add.i.i.i147.i = add i32 %sub.i.i14, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i147.i, i32 %neg.i.i.i)
  %cmp.i.i.i148.i = icmp ult i32 %add.i.i.i147.i, %neg.i.i.i
  %conv.i4.i.i.i = zext i1 %cmp.i.i.i148.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i147.i, %conv.i4.i.i.i
  %212 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i.i.i) #20, !srcloc !155
  %neg.i.i.i.i = xor i32 %212, -1
  %shr.i.i.i149.i = lshr i32 %neg.i.i.i.i, 16
  %conv.i5.i.i.i = trunc i32 %shr.i.i.i149.i to i16
  %213 = ptrtoint ptr %check30.i.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %conv.i5.i.i.i, ptr %check30.i.i, align 2
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then28.i.i, %if.then19.i.i.if.end31.i.i_crit_edge
  %214 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %head.i.i.i, align 8
  %inner_network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %180, i32 0, i32 15, i32 0, i32 16
  %216 = ptrtoint ptr %inner_network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %inner_network_header.i.i.i, align 4
  %conv.i164.i.i = zext i16 %217 to i32
  %add.ptr.i165.i.i = getelementptr i8, ptr %215, i32 %conv.i164.i.i
  %inner_transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %180, i32 0, i32 15, i32 0, i32 15
  %218 = ptrtoint ptr %inner_transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %inner_transport_header.i.i.i, align 2
  %conv.i167.i.i = zext i16 %219 to i32
  %add.ptr.i168.i.i = getelementptr i8, ptr %215, i32 %conv.i167.i.i
  %220 = ptrtoint ptr %add.ptr.i165.i.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %bf.load34.i.i = load i8, ptr %add.ptr.i165.i.i, align 4
  %bf.lshr35.mask.i.i = and i8 %bf.load34.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr35.mask.i.i)
  %cmp37.i.i = icmp eq i8 %bf.lshr35.mask.i.i, 64
  br i1 %cmp37.i.i, label %if.then39.i.i, label %if.else42.i.i

if.then39.i.i:                                    ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %tot_len40.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i165.i.i, i32 0, i32 2
  %221 = ptrtoint ptr %tot_len40.i.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 0, ptr %tot_len40.i.i, align 2
  %check41.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i165.i.i, i32 0, i32 7
  %222 = ptrtoint ptr %check41.i.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 0, ptr %check41.i.i, align 2
  br label %if.end45.i.i

if.else42.i.i:                                    ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %payload_len43.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i165.i.i, i32 0, i32 2
  %223 = ptrtoint ptr %payload_len43.i.i to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 0, ptr %payload_len43.i.i, align 4
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.else42.i.i, %if.then39.i.i, %if.end17.i.i.if.end45.i.i_crit_edge
  %l4.sroa.0.0.i.i = phi ptr [ %add.ptr.i168.i.i, %if.then39.i.i ], [ %add.ptr.i168.i.i, %if.else42.i.i ], [ %add.ptr.i160.i.i, %if.end17.i.i.if.end45.i.i_crit_edge ]
  %data46.i.i = getelementptr inbounds %struct.sk_buff, ptr %180, i32 0, i32 19
  %224 = ptrtoint ptr %data46.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %data46.i.i, align 4
  %sub.ptr.lhs.cast47.i.i = ptrtoint ptr %l4.sroa.0.0.i.i to i32
  %sub.ptr.rhs.cast48.i.i = ptrtoint ptr %225 to i32
  %sub.ptr.sub49.i.i = sub i32 %sub.ptr.lhs.cast47.i.i, %sub.ptr.rhs.cast48.i.i
  %len50.i.i = getelementptr inbounds %struct.sk_buff, ptr %180, i32 0, i32 6
  %226 = ptrtoint ptr %len50.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %len50.i.i, align 4
  %sub51.i.i = sub i32 %227, %sub.ptr.sub49.i.i
  %228 = ptrtoint ptr %end.i.i.i126.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %end.i.i.i126.i, align 4
  %gso_type53.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %229, i32 0, i32 8
  %230 = ptrtoint ptr %gso_type53.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %gso_type53.i.i, align 8
  %and54.i.i = and i32 %231, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i.i)
  %tobool55.not.i.i = icmp eq i32 %and54.i.i, 0
  br i1 %tobool55.not.i.i, label %if.else59.i.i, label %if.then56.i.i

if.then56.i.i:                                    ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %check57.i.i = getelementptr inbounds %struct.udphdr, ptr %l4.sroa.0.0.i.i, i32 0, i32 3
  %232 = ptrtoint ptr %check57.i.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %check57.i.i, align 2
  %conv.i.i139.i.i = zext i16 %233 to i32
  %neg.i140.i.i = xor i32 %conv.i.i139.i.i, -1
  %add.i.i141.i.i = add i32 %sub51.i.i, %neg.i140.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i141.i.i, i32 %neg.i140.i.i)
  %cmp.i.i142.i.i = icmp ult i32 %add.i.i141.i.i, %neg.i140.i.i
  %conv.i4.i143.i.i = zext i1 %cmp.i.i142.i.i to i32
  %add1.i.i144.i.i = add i32 %add.i.i141.i.i, %conv.i4.i143.i.i
  %234 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i144.i.i) #20, !srcloc !155
  %neg.i.i145.i.i = xor i32 %234, -1
  %shr.i.i146.i.i = lshr i32 %neg.i.i145.i.i, 16
  %conv.i5.i147.i.i = trunc i32 %shr.i.i146.i.i to i16
  %235 = ptrtoint ptr %check57.i.i to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 %conv.i5.i147.i.i, ptr %check57.i.i, align 2
  br label %if.then33.i

if.else59.i.i:                                    ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %check60.i.i = getelementptr inbounds %struct.tcphdr, ptr %l4.sroa.0.0.i.i, i32 0, i32 6
  %236 = ptrtoint ptr %check60.i.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %check60.i.i, align 2
  %conv.i.i148.i.i = zext i16 %237 to i32
  %neg.i149.i.i = xor i32 %conv.i.i148.i.i, -1
  %add.i.i150.i.i = add i32 %sub51.i.i, %neg.i149.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i150.i.i, i32 %neg.i149.i.i)
  %cmp.i.i151.i.i = icmp ult i32 %add.i.i150.i.i, %neg.i149.i.i
  %conv.i4.i152.i.i = zext i1 %cmp.i.i151.i.i to i32
  %add1.i.i153.i.i = add i32 %add.i.i150.i.i, %conv.i4.i152.i.i
  %238 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i153.i.i) #20, !srcloc !155
  %neg.i.i154.i.i = xor i32 %238, -1
  %shr.i.i155.i.i = lshr i32 %neg.i.i154.i.i, 16
  %conv.i5.i156.i.i = trunc i32 %shr.i.i155.i.i to i16
  %239 = ptrtoint ptr %check60.i.i to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 %conv.i5.i156.i.i, ptr %check60.i.i, align 2
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %l4.sroa.0.0.i.i, i32 0, i32 4
  %240 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %240)
  %bf.load61.i.i = load i16, ptr %doff.i.i, align 4
  %241 = lshr i16 %bf.load61.i.i, 10
  %242 = and i16 %241, 60
  %mul.i150.i = zext i16 %242 to i32
  br label %if.then33.i

if.then33.i:                                      ; preds = %if.else59.i.i, %if.then56.i.i
  %mul.pn.i.i = phi i32 [ %mul.i150.i, %if.else59.i.i ], [ 8, %if.then56.i.i ]
  %storemerge.in.i.i = add i32 %mul.pn.i.i, %sub.ptr.sub49.i.i
  %243 = ptrtoint ptr %end.i.i.i126.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %end.i.i.i126.i, align 4
  %gso_size68.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %244, i32 0, i32 4
  %245 = ptrtoint ptr %gso_size68.i.i to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %gso_size68.i.i, align 4
  %gso_segs70.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %244, i32 0, i32 5
  %247 = ptrtoint ptr %gso_segs70.i.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %gso_segs70.i.i, align 2
  %249 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 %248, ptr %gso_segs.i, align 4
  %conv73.i.i = zext i16 %248 to i32
  %sub74.i.i = add nsw i32 %conv73.i.i, -1
  %conv75.i.i = and i32 %storemerge.in.i.i, 255
  %mul76.i.i = mul nsw i32 %sub74.i.i, %conv75.i.i
  %250 = ptrtoint ptr %bytecount.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %bytecount.i, align 4
  %add77.i.i = add i32 %mul76.i.i, %251
  store i32 %add77.i.i, ptr %bytecount.i, align 4
  %252 = ptrtoint ptr %len50.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %len50.i.i, align 4
  %sub80.i.i = sub i32 %253, %conv75.i.i
  %conv81.i.i = zext i32 %sub80.i.i to i64
  %conv82.i.i = zext i16 %246 to i64
  %shl83.i.i = shl nuw nsw i64 %conv81.i.i, 30
  %shl84.i.i = shl i64 %conv82.i.i, 50
  %or.i.i = or i64 %shl84.i.i, %shl83.i.i
  %or86.i.i = or i64 %or.i.i, 17
  %or34.i = or i32 %tx_flags.1.i, 8
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then33.i, %if.end.i129.i.if.end36.i_crit_edge, %if.end26.i.if.end36.i_crit_edge
  %cd_type_cmd_tso_mss.0.ph320.i = phi i64 [ %or86.i.i, %if.then33.i ], [ 1, %if.end.i129.i.if.end36.i_crit_edge ], [ 1, %if.end26.i.if.end36.i_crit_edge ]
  %tx_flags.2.i = phi i32 [ %or34.i, %if.then33.i ], [ %tx_flags.1.i, %if.end.i129.i.if.end36.i_crit_edge ], [ %tx_flags.1.i, %if.end26.i.if.end36.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off.i.i) #14
  %254 = ptrtoint ptr %frag_off.i.i to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 -1, ptr %frag_off.i.i, align 2, !annotation !154
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l4_proto.i.i) #14
  %255 = ptrtoint ptr %l4_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 0, ptr %l4_proto.i.i, align 1
  %ip_summed.i153.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %256 = ptrtoint ptr %ip_summed.i153.i to i32
  call void @__asan_load2_noabort(i32 %256)
  %bf.load.i154.i = load i16, ptr %ip_summed.i153.i, align 8
  %257 = and i16 %bf.load.i154.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %257)
  %cmp.not.i155.i = icmp eq i16 %257, 1536
  br i1 %cmp.not.i155.i, label %if.end.i165.i, label %if.end36.i.if.end41.i_crit_edge

if.end36.i.if.end41.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41.i

if.end.i165.i:                                    ; preds = %if.end36.i
  %head.i.i156.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %258 = ptrtoint ptr %head.i.i156.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %head.i.i156.i, align 8
  %network_header.i.i157.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %260 = ptrtoint ptr %network_header.i.i157.i to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %network_header.i.i157.i, align 4
  %conv.i.i158.i = zext i16 %261 to i32
  %add.ptr.i.i159.i = getelementptr i8, ptr %259, i32 %conv.i.i158.i
  %transport_header.i.i160.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %262 = ptrtoint ptr %transport_header.i.i160.i to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %transport_header.i.i160.i, align 2
  %conv.i2.i.i = zext i16 %263 to i32
  %add.ptr.i3.i.i = getelementptr i8, ptr %259, i32 %conv.i2.i.i
  %264 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i162.i = ptrtoint ptr %add.ptr.i.i159.i to i32
  %sub.ptr.rhs.cast.i163.i = ptrtoint ptr %265 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i162.i, %sub.ptr.rhs.cast.i163.i
  %div.i.i = sdiv i32 %sub.ptr.sub.i.i, 2
  %266 = and i16 %bf.load.i154.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %266)
  %tobool.not.i164.i = icmp eq i16 %266, 0
  br i1 %tobool.not.i164.i, label %if.end.i165.i.if.end95.i.i_crit_edge, label %if.then7.i.i

if.end.i165.i.if.end95.i.i_crit_edge:             ; preds = %if.end.i165.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95.i.i

if.then7.i.i:                                     ; preds = %if.end.i165.i
  %and.i166.i = and i32 %tx_flags.2.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i166.i)
  %tobool8.not.i.i = icmp eq i32 %and.i166.i, 0
  br i1 %tobool8.not.i.i, label %if.else.i170.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %and10.i.i = and i32 %tx_flags.2.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  %cond.i167.i = select i1 %tobool11.not.i.i, i32 2, i32 3
  %protocol.i168.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i159.i, i32 0, i32 6
  %267 = ptrtoint ptr %protocol.i168.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %protocol.i168.i, align 1
  %269 = ptrtoint ptr %l4_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 %268, ptr %l4_proto.i.i, align 1
  br label %if.end26.i.i

if.else.i170.i:                                   ; preds = %if.then7.i.i
  %and12.i.i = and i32 %tx_flags.2.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i169.i = icmp eq i32 %and12.i.i, 0
  br i1 %tobool13.not.i169.i, label %if.else.i170.i.if.end26thread-pre-split.i.i_crit_edge, label %if.then14.i.i

if.else.i170.i.if.end26thread-pre-split.i.i_crit_edge: ; preds = %if.else.i170.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26thread-pre-split.i.i

if.then14.i.i:                                    ; preds = %if.else.i170.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i159.i, i32 40
  %nexthdr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i159.i, i32 0, i32 3
  %270 = ptrtoint ptr %nexthdr.i.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %nexthdr.i.i, align 2
  %272 = ptrtoint ptr %l4_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 %271, ptr %l4_proto.i.i, align 1
  %sub.ptr.lhs.cast17.i.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub19.i.i = sub i32 %sub.ptr.lhs.cast17.i.i, %sub.ptr.rhs.cast.i163.i
  %call20.i.i = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef %sub.ptr.sub19.i.i, ptr noundef nonnull %l4_proto.i.i, ptr noundef nonnull %frag_off.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %cmp21.i.i = icmp slt i32 %call20.i.i, 0
  br i1 %cmp21.i.i, label %if.then14.i.i.i40e_tx_enable_csum.exit.i_crit_edge, label %if.then14.i.i.if.end26thread-pre-split.i.i_crit_edge

if.then14.i.i.if.end26thread-pre-split.i.i_crit_edge: ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26thread-pre-split.i.i

if.then14.i.i.i40e_tx_enable_csum.exit.i_crit_edge: ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_tx_enable_csum.exit.i

if.end26thread-pre-split.i.i:                     ; preds = %if.then14.i.i.if.end26thread-pre-split.i.i_crit_edge, %if.else.i170.i.if.end26thread-pre-split.i.i_crit_edge
  %tunnel.0.ph.i.i = phi i32 [ 0, %if.else.i170.i.if.end26thread-pre-split.i.i_crit_edge ], [ 1, %if.then14.i.i.if.end26thread-pre-split.i.i_crit_edge ]
  %273 = ptrtoint ptr %l4_proto.i.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %.pr.i.i = load i8, ptr %l4_proto.i.i, align 1
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end26thread-pre-split.i.i, %if.then9.i.i
  %274 = phi i8 [ %.pr.i.i, %if.end26thread-pre-split.i.i ], [ %268, %if.then9.i.i ]
  %tunnel.0.i.i = phi i32 [ %tunnel.0.ph.i.i, %if.end26thread-pre-split.i.i ], [ %cond.i167.i, %if.then9.i.i ]
  %275 = zext i8 %274 to i64
  call void @__sanitizer_cov_trace_switch(i64 %275, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %274, label %sw.default.i.i [
    i8 17, label %sw.bb.i.i
    i8 47, label %sw.bb32.i.i
    i8 4, label %if.end26.i.i.sw.bb37.i.i_crit_edge
    i8 41, label %if.end26.i.i.sw.bb37.i.i_crit_edge104
  ]

if.end26.i.i.sw.bb37.i.i_crit_edge104:            ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb37.i.i

if.end26.i.i.sw.bb37.i.i_crit_edge:               ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb37.i.i

sw.bb.i.i:                                        ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %276 = or i32 %tunnel.0.i.i, 512
  br label %sw.epilog.i.i

sw.bb32.i.i:                                      ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %277 = or i32 %tunnel.0.i.i, 1024
  br label %sw.epilog.i.i

sw.bb37.i.i:                                      ; preds = %if.end26.i.i.sw.bb37.i.i_crit_edge, %if.end26.i.i.sw.bb37.i.i_crit_edge104
  %278 = ptrtoint ptr %head.i.i156.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %head.i.i156.i, align 8
  %inner_network_header.i.i171.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %280 = ptrtoint ptr %inner_network_header.i.i171.i to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %inner_network_header.i.i171.i, align 4
  %conv.i5.i.i = zext i16 %281 to i32
  %add.ptr.i6.i.i = getelementptr i8, ptr %279, i32 %conv.i5.i.i
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %if.end26.i.i
  %and40.i.i = and i32 %tx_flags.2.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i)
  %tobool41.not.i.i = icmp eq i32 %and40.i.i, 0
  br i1 %tobool41.not.i.i, label %if.end43.i.i, label %sw.default.i.i.i40e_tx_enable_csum.exit.i_crit_edge

sw.default.i.i.i40e_tx_enable_csum.exit.i_crit_edge: ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_tx_enable_csum.exit.i

if.end43.i.i:                                     ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call44.i.i = call i32 @skb_checksum_help(ptr noundef %skb) #14
  br label %if.end41.i

sw.epilog.i.i:                                    ; preds = %sw.bb37.i.i, %sw.bb32.i.i, %sw.bb.i.i
  %l4.sroa.0.0.i172.i = phi ptr [ %add.ptr.i6.i.i, %sw.bb37.i.i ], [ %add.ptr.i3.i.i, %sw.bb32.i.i ], [ %add.ptr.i3.i.i, %sw.bb.i.i ]
  %tunnel.1.i.i = phi i32 [ %tunnel.0.i.i, %sw.bb37.i.i ], [ %277, %sw.bb32.i.i ], [ %276, %sw.bb.i.i ]
  %sub.ptr.lhs.cast45.i.i = ptrtoint ptr %l4.sroa.0.0.i172.i to i32
  %sub.ptr.sub47.i.i = sub i32 %sub.ptr.lhs.cast45.i.i, %sub.ptr.lhs.cast.i162.i
  %div48.i.i = sdiv i32 %sub.ptr.sub47.i.i, 4
  %shl49.i.i = shl nsw i32 %div48.i.i, 2
  %or50.i.i = or i32 %shl49.i.i, %tunnel.1.i.i
  %282 = ptrtoint ptr %head.i.i156.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %head.i.i156.i, align 8
  %inner_network_header.i8.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %284 = ptrtoint ptr %inner_network_header.i8.i.i to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %inner_network_header.i8.i.i, align 4
  %conv.i9.i.i = zext i16 %285 to i32
  %add.ptr.i10.i.i = getelementptr i8, ptr %283, i32 %conv.i9.i.i
  %sub.ptr.lhs.cast52.i.i = ptrtoint ptr %add.ptr.i10.i.i to i32
  %sub.ptr.sub54.i.i = sub i32 %sub.ptr.lhs.cast52.i.i, %sub.ptr.lhs.cast45.i.i
  %div55.i.i = sdiv i32 %sub.ptr.sub54.i.i, 2
  %shl56.i.i = shl i32 %div55.i.i, 12
  %or57.i.i = or i32 %or50.i.i, %shl56.i.i
  %and58.i.i = and i32 %tx_flags.2.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i.i)
  %tobool59.not.i.i = icmp eq i32 %and58.i.i, 0
  br i1 %tobool59.not.i.i, label %sw.epilog.i.i.if.end72.i.i_crit_edge, label %land.lhs.true.i175.i

sw.epilog.i.i.if.end72.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72.i.i

land.lhs.true.i175.i:                             ; preds = %sw.epilog.i.i
  %286 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %end.i.i.i, align 4
  %gso_type.i174.i = getelementptr inbounds %struct.skb_shared_info, ptr %287, i32 0, i32 8
  %288 = ptrtoint ptr %gso_type.i174.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %gso_type.i174.i, align 8
  %and61.i.i = and i32 %289, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i.i)
  %tobool62.not.i.i = icmp eq i32 %and61.i.i, 0
  br i1 %tobool62.not.i.i, label %land.lhs.true63.i.i, label %land.lhs.true.i175.i.if.end72.i.i_crit_edge

land.lhs.true.i175.i.if.end72.i.i_crit_edge:      ; preds = %land.lhs.true.i175.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72.i.i

land.lhs.true63.i.i:                              ; preds = %land.lhs.true.i175.i
  call void @__sanitizer_cov_trace_pc() #16
  %and66.i.i = shl i32 %289, 12
  %290 = and i32 %and66.i.i, 8388608
  %291 = or i32 %290, %or57.i.i
  br label %if.end72.i.i

if.end72.i.i:                                     ; preds = %land.lhs.true63.i.i, %land.lhs.true.i175.i.if.end72.i.i_crit_edge, %sw.epilog.i.i.if.end72.i.i_crit_edge
  %tunnel.2.i.i = phi i32 [ %or57.i.i, %land.lhs.true.i175.i.if.end72.i.i_crit_edge ], [ %or57.i.i, %sw.epilog.i.i.if.end72.i.i_crit_edge ], [ %291, %land.lhs.true63.i.i ]
  %inner_transport_header.i.i176.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %292 = ptrtoint ptr %inner_transport_header.i.i176.i to i32
  call void @__asan_load2_noabort(i32 %292)
  %293 = load i16, ptr %inner_transport_header.i.i176.i, align 2
  %conv.i13.i.i = zext i16 %293 to i32
  %add.ptr.i14.i.i = getelementptr i8, ptr %283, i32 %conv.i13.i.i
  %294 = ptrtoint ptr %l4_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 0, ptr %l4_proto.i.i, align 1
  %tx_flags.3.i = and i32 %tx_flags.2.i, -1073
  %and75.i.i = or i32 %tx_flags.3.i, 1024
  %295 = ptrtoint ptr %add.ptr.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %bf.load76.i.i = load i8, ptr %add.ptr.i10.i.i, align 4
  %bf.lshr77.mask.i.i = and i8 %bf.load76.i.i, -16
  %296 = zext i8 %bf.lshr77.mask.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %296, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %bf.lshr77.mask.i.i, label %if.end72.i.i.if.end95.i.i_crit_edge [
    i8 64, label %if.end83.i.thread.i
    i8 96, label %if.then89.i.i
  ]

if.end72.i.i.if.end95.i.i_crit_edge:              ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95.i.i

if.end83.i.thread.i:                              ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %or82.i.i = or i32 %tx_flags.3.i, 1040
  br label %if.end95.i.i

if.then89.i.i:                                    ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %or90.i.i = or i32 %tx_flags.3.i, 1056
  br label %if.end95.i.i

if.end95.i.i:                                     ; preds = %if.then89.i.i, %if.end83.i.thread.i, %if.end72.i.i.if.end95.i.i_crit_edge, %if.end.i165.i.if.end95.i.i_crit_edge
  %cd_tunneling.0.i = phi i32 [ 0, %if.end.i165.i.if.end95.i.i_crit_edge ], [ %tunnel.2.i.i, %if.then89.i.i ], [ %tunnel.2.i.i, %if.end83.i.thread.i ], [ %tunnel.2.i.i, %if.end72.i.i.if.end95.i.i_crit_edge ]
  %tx_flags.5.i = phi i32 [ %tx_flags.2.i, %if.end.i165.i.if.end95.i.i_crit_edge ], [ %or90.i.i, %if.then89.i.i ], [ %or82.i.i, %if.end83.i.thread.i ], [ %and75.i.i, %if.end72.i.i.if.end95.i.i_crit_edge ]
  %ip.sroa.0.1.i.i = phi ptr [ %add.ptr.i.i159.i, %if.end.i165.i.if.end95.i.i_crit_edge ], [ %add.ptr.i10.i.i, %if.then89.i.i ], [ %add.ptr.i10.i.i, %if.end83.i.thread.i ], [ %add.ptr.i10.i.i, %if.end72.i.i.if.end95.i.i_crit_edge ]
  %l4.sroa.0.2.i.i = phi ptr [ %add.ptr.i3.i.i, %if.end.i165.i.if.end95.i.i_crit_edge ], [ %add.ptr.i14.i.i, %if.then89.i.i ], [ %add.ptr.i14.i.i, %if.end83.i.thread.i ], [ %add.ptr.i14.i.i, %if.end72.i.i.if.end95.i.i_crit_edge ]
  %and96.i.i = and i32 %tx_flags.5.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.i.i)
  %tobool97.not.i.i = icmp eq i32 %and96.i.i, 0
  br i1 %tobool97.not.i.i, label %if.else104.i.i, label %if.then98.i.i

if.then98.i.i:                                    ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %protocol99.i.i = getelementptr inbounds %struct.iphdr, ptr %ip.sroa.0.1.i.i, i32 0, i32 6
  %297 = ptrtoint ptr %protocol99.i.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %protocol99.i.i, align 1
  %299 = ptrtoint ptr %l4_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 %298, ptr %l4_proto.i.i, align 1
  %and100.i.i = and i32 %tx_flags.5.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i.i)
  %tobool101.not.i.i = icmp eq i32 %and100.i.i, 0
  %cond102.i.i = select i1 %tobool101.not.i.i, i32 64, i32 96
  br label %if.end121.i.i

if.else104.i.i:                                   ; preds = %if.end95.i.i
  %and105.i.i = and i32 %tx_flags.5.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.i.i)
  %tobool106.not.i.i = icmp eq i32 %and105.i.i, 0
  br i1 %tobool106.not.i.i, label %if.else104.i.i.if.end121.i.i_crit_edge, label %if.then107.i.i

if.else104.i.i.if.end121.i.i_crit_edge:           ; preds = %if.else104.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end121.i.i

if.then107.i.i:                                   ; preds = %if.else104.i.i
  %add.ptr109.i.i = getelementptr i8, ptr %ip.sroa.0.1.i.i, i32 40
  %nexthdr110.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %ip.sroa.0.1.i.i, i32 0, i32 3
  %300 = ptrtoint ptr %nexthdr110.i.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %nexthdr110.i.i, align 2
  %302 = ptrtoint ptr %l4_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %301, ptr %l4_proto.i.i, align 1
  %cmp111.not.i.i = icmp eq ptr %l4.sroa.0.2.i.i, %add.ptr109.i.i
  br i1 %cmp111.not.i.i, label %if.then107.i.i.if.end121.i.i_crit_edge, label %if.then113.i.i

if.then107.i.i.if.end121.i.i_crit_edge:           ; preds = %if.then107.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end121.i.i

if.then113.i.i:                                   ; preds = %if.then107.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %303 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast115.i.i = ptrtoint ptr %add.ptr109.i.i to i32
  %sub.ptr.rhs.cast116.i.i = ptrtoint ptr %304 to i32
  %sub.ptr.sub117.i.i = sub i32 %sub.ptr.lhs.cast115.i.i, %sub.ptr.rhs.cast116.i.i
  %call118.i.i = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef %sub.ptr.sub117.i.i, ptr noundef nonnull %l4_proto.i.i, ptr noundef nonnull %frag_off.i.i) #14
  br label %if.end121.i.i

if.end121.i.i:                                    ; preds = %if.then113.i.i, %if.then107.i.i.if.end121.i.i_crit_edge, %if.else104.i.i.if.end121.i.i_crit_edge, %if.then98.i.i
  %cmd.0.i.i = phi i32 [ %cond102.i.i, %if.then98.i.i ], [ 32, %if.then113.i.i ], [ 32, %if.then107.i.i.if.end121.i.i_crit_edge ], [ 0, %if.else104.i.i.if.end121.i.i_crit_edge ]
  %sub.ptr.lhs.cast122.i.i = ptrtoint ptr %l4.sroa.0.2.i.i to i32
  %sub.ptr.rhs.cast123.i.i = ptrtoint ptr %ip.sroa.0.1.i.i to i32
  %sub.ptr.sub124.i.i = sub i32 %sub.ptr.lhs.cast122.i.i, %sub.ptr.rhs.cast123.i.i
  %div125.i.i = sdiv i32 %sub.ptr.sub124.i.i, 4
  %shl126.i.i = shl i32 %div125.i.i, 7
  %or127.i.i = or i32 %shl126.i.i, %div.i.i
  %305 = ptrtoint ptr %l4_proto.i.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %l4_proto.i.i, align 1
  %307 = zext i8 %306 to i64
  call void @__sanitizer_cov_trace_switch(i64 %307, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %306, label %sw.default142.i.i [
    i8 6, label %sw.bb129.i.i
    i8 -124, label %sw.bb136.i.i
    i8 17, label %sw.bb139.i.i
  ]

sw.bb129.i.i:                                     ; preds = %if.end121.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %or130.i.i = or i32 %cmd.0.i.i, 256
  %doff.i177.i = getelementptr inbounds %struct.tcphdr, ptr %l4.sroa.0.2.i.i, i32 0, i32 4
  %308 = ptrtoint ptr %doff.i177.i to i32
  call void @__asan_load2_noabort(i32 %308)
  %bf.load131.i.i = load i16, ptr %doff.i177.i, align 4
  %bf.lshr132.i.i = lshr i16 %bf.load131.i.i, 12
  %conv133.i.i = zext i16 %bf.lshr132.i.i to i32
  %shl134.i.i = shl nuw nsw i32 %conv133.i.i, 14
  %or135.i.i = or i32 %shl134.i.i, %or127.i.i
  br label %if.end41.i

sw.bb136.i.i:                                     ; preds = %if.end121.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %or137.i.i = or i32 %cmd.0.i.i, 512
  %or138.i.i = or i32 %or127.i.i, 49152
  br label %if.end41.i

sw.bb139.i.i:                                     ; preds = %if.end121.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %or140.i.i = or i32 %cmd.0.i.i, 768
  %or141.i.i = or i32 %or127.i.i, 32768
  br label %if.end41.i

sw.default142.i.i:                                ; preds = %if.end121.i.i
  %and143.i.i = and i32 %tx_flags.5.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143.i.i)
  %tobool144.not.i.i = icmp eq i32 %and143.i.i, 0
  br i1 %tobool144.not.i.i, label %if.end146.i.i, label %sw.default142.i.i.i40e_tx_enable_csum.exit.i_crit_edge

sw.default142.i.i.i40e_tx_enable_csum.exit.i_crit_edge: ; preds = %sw.default142.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_tx_enable_csum.exit.i

if.end146.i.i:                                    ; preds = %sw.default142.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call147.i.i = call i32 @skb_checksum_help(ptr noundef %skb) #14
  br label %if.end41.i

i40e_tx_enable_csum.exit.i:                       ; preds = %sw.default142.i.i.i40e_tx_enable_csum.exit.i_crit_edge, %sw.default.i.i.i40e_tx_enable_csum.exit.i_crit_edge, %if.then14.i.i.i40e_tx_enable_csum.exit.i_crit_edge
  %tx_flags.6.i = phi i32 [ %tx_flags.5.i, %sw.default142.i.i.i40e_tx_enable_csum.exit.i_crit_edge ], [ %tx_flags.2.i, %sw.default.i.i.i40e_tx_enable_csum.exit.i_crit_edge ], [ %tx_flags.2.i, %if.then14.i.i.i40e_tx_enable_csum.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l4_proto.i.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i.i) #14
  br label %out_drop.i

if.end41.i:                                       ; preds = %if.end146.i.i, %sw.bb139.i.i, %sw.bb136.i.i, %sw.bb129.i.i, %if.end43.i.i, %if.end36.i.if.end41.i_crit_edge
  %cd_tunneling.1.ph.i = phi i32 [ %cd_tunneling.0.i, %sw.bb129.i.i ], [ %cd_tunneling.0.i, %sw.bb136.i.i ], [ %cd_tunneling.0.i, %sw.bb139.i.i ], [ 0, %if.end36.i.if.end41.i_crit_edge ], [ 0, %if.end43.i.i ], [ %cd_tunneling.0.i, %if.end146.i.i ]
  %td_offset.0.ph.i = phi i32 [ %or135.i.i, %sw.bb129.i.i ], [ %or138.i.i, %sw.bb136.i.i ], [ %or141.i.i, %sw.bb139.i.i ], [ 0, %if.end36.i.if.end41.i_crit_edge ], [ 0, %if.end43.i.i ], [ 0, %if.end146.i.i ]
  %tx_flags.6.ph.i = phi i32 [ %tx_flags.5.i, %sw.bb129.i.i ], [ %tx_flags.5.i, %sw.bb136.i.i ], [ %tx_flags.5.i, %sw.bb139.i.i ], [ %tx_flags.2.i, %if.end36.i.if.end41.i_crit_edge ], [ %tx_flags.2.i, %if.end43.i.i ], [ %tx_flags.5.i, %if.end146.i.i ]
  %td_cmd.0.ph.i = phi i32 [ %or130.i.i, %sw.bb129.i.i ], [ %or137.i.i, %sw.bb136.i.i ], [ %or140.i.i, %sw.bb139.i.i ], [ 0, %if.end36.i.if.end41.i_crit_edge ], [ 0, %if.end43.i.i ], [ 0, %if.end146.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l4_proto.i.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i.i) #14
  %309 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %end.i.i.i, align 4
  %tx_flags1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %310, i32 0, i32 3
  %311 = ptrtoint ptr %tx_flags1.i.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %tx_flags1.i.i, align 1
  %313 = and i8 %312, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %313)
  %tobool.not.i180.i = icmp eq i8 %313, 0
  br i1 %tobool.not.i180.i, label %if.end41.i.if.end46.i_crit_edge, label %if.end.i181.i, !prof !132

if.end41.i.if.end46.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46.i

if.end.i181.i:                                    ; preds = %if.end41.i
  %and5.i.i = and i32 %tx_flags.6.ph.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i186.i, label %if.end.i181.i.if.end46.i_crit_edge

if.end.i181.i.if.end46.i_crit_edge:               ; preds = %if.end.i181.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46.i

if.end8.i186.i:                                   ; preds = %if.end.i181.i
  %netdev.i182.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 3
  %314 = ptrtoint ptr %netdev.i182.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %netdev.i182.i, align 4
  %add.ptr.i.i.i183.i = getelementptr i8, ptr %315, i32 2304
  %316 = ptrtoint ptr %add.ptr.i.i.i183.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %add.ptr.i.i.i183.i, align 4
  %back.i.i.i = getelementptr inbounds %struct.i40e_vsi, ptr %317, i32 0, i32 57
  %318 = ptrtoint ptr %back.i.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %back.i.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.i40e_pf, ptr %319, i32 0, i32 54
  %320 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %flags.i.i, align 8
  %and10.i184.i = and i32 %321, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i184.i)
  %tobool11.not.i185.i = icmp eq i32 %and10.i184.i, 0
  br i1 %tobool11.not.i185.i, label %if.end8.i186.i.if.end46.i_crit_edge, label %if.end13.i.i

if.end8.i186.i.if.end46.i_crit_edge:              ; preds = %if.end8.i186.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46.i

if.end13.i.i:                                     ; preds = %if.end8.i186.i
  %ptp_tx.i.i = getelementptr inbounds %struct.i40e_pf, ptr %319, i32 0, i32 114
  %322 = ptrtoint ptr %ptp_tx.i.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %ptp_tx.i.i, align 8, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %323)
  %tobool14.not.i.i = icmp eq i8 %323, 0
  br i1 %tobool14.not.i.i, label %if.end13.i.i.if.else.i188.i_crit_edge, label %land.lhs.true.i187.i

if.end13.i.i.if.else.i188.i_crit_edge:            ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i188.i

land.lhs.true.i187.i:                             ; preds = %if.end13.i.i
  %state.i.i = getelementptr inbounds %struct.i40e_pf, ptr %319, i32 0, i32 2
  %call.i.i24 = call zeroext i1 @__kasan_check_write(ptr noundef %state.i.i, i32 noundef 4) #14
  %324 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load volatile i32, ptr %state.i.i, align 4
  %and.i.i25 = and i32 %325, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i25)
  %tobool.not.i.i26 = icmp eq i32 %and.i.i25, 0
  br i1 %tobool.not.i.i26, label %test_and_set_bit_lock.exit, label %land.lhs.true.i187.i.if.else.i188.i_crit_edge

land.lhs.true.i187.i.if.else.i188.i_crit_edge:    ; preds = %land.lhs.true.i187.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i188.i

test_and_set_bit_lock.exit:                       ; preds = %land.lhs.true.i187.i
  call void @llvm.prefetch.p0(ptr %state.i.i, i32 1, i32 3, i32 1) #14
  %326 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state.i.i, ptr %state.i.i, i32 524288, ptr elementtype(i32) %state.i.i) #14, !srcloc !156
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %326, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !157
  %327 = and i32 %asmresult.i.i.i.i.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %327)
  %phi.cmp.i.not = icmp eq i32 %327, 0
  br i1 %phi.cmp.i.not, label %if.end46.thread.i, label %test_and_set_bit_lock.exit.if.else.i188.i_crit_edge

test_and_set_bit_lock.exit.if.else.i188.i_crit_edge: ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i188.i

if.else.i188.i:                                   ; preds = %test_and_set_bit_lock.exit.if.else.i188.i_crit_edge, %land.lhs.true.i187.i.if.else.i188.i_crit_edge, %if.end13.i.i.if.else.i188.i_crit_edge
  %tx_hwtstamp_skipped.i.i = getelementptr inbounds %struct.i40e_pf, ptr %319, i32 0, i32 106
  %328 = ptrtoint ptr %tx_hwtstamp_skipped.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %tx_hwtstamp_skipped.i.i, align 4
  %inc.i.i = add i32 %329, 1
  store i32 %inc.i.i, ptr %tx_hwtstamp_skipped.i.i, align 4
  br label %if.end46.i

if.end46.thread.i:                                ; preds = %test_and_set_bit_lock.exit
  %330 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %end.i.i.i, align 4
  %tx_flags19.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %331, i32 0, i32 3
  %332 = ptrtoint ptr %tx_flags19.i.i to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %tx_flags19.i.i, align 1
  %334 = or i8 %333, 4
  store i8 %334, ptr %tx_flags19.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %335 = load volatile i32, ptr @jiffies, align 128
  %ptp_tx_start.i.i = getelementptr inbounds %struct.i40e_pf, ptr %319, i32 0, i32 96
  %336 = ptrtoint ptr %ptp_tx_start.i.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %335, ptr %ptp_tx_start.i.i, align 4
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i22 = call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #14
  %337 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #14, !srcloc !158
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %337, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end46.thread.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !135

if.end46.thread.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.end46.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end46.thread.i
  %add.i.i.i.i23 = add i32 %asmresult.i.i.i.i.i.i, 1
  %338 = or i32 %add.i.i.i.i23, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %338)
  %.not.i.i.i.i = icmp sgt i32 %338, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !132

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end46.thread.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end46.thread.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #14
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %ptp_tx_skb.i.i = getelementptr inbounds %struct.i40e_pf, ptr %319, i32 0, i32 95
  %339 = ptrtoint ptr %ptp_tx_skb.i.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr %skb, ptr %ptp_tx_skb.i.i, align 8
  %or24.i.i = or i64 %cd_type_cmd_tso_mss.0.ph320.i, 32
  %or45.i = or i32 %tx_flags.6.ph.i, 256
  %or47342.i = or i32 %td_cmd.0.ph.i, 4
  br label %if.end.i198.i

if.end46.i:                                       ; preds = %if.else.i188.i, %if.end8.i186.i.if.end46.i_crit_edge, %if.end.i181.i.if.end46.i_crit_edge, %if.end41.i.if.end46.i_crit_edge
  %or47.i = or i32 %td_cmd.0.ph.i, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %cd_type_cmd_tso_mss.0.ph320.i)
  %cmp.i191.i = icmp eq i64 %cd_type_cmd_tso_mss.0.ph320.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cd_tunneling.1.ph.i)
  %tobool.not.i192.i = icmp eq i32 %cd_tunneling.1.ph.i, 0
  %or.cond.i.i = and i1 %cmp.i191.i, %tobool.not.i192.i
  br i1 %or.cond.i.i, label %if.end46.i.i40e_create_tx_ctx.exit.i_crit_edge, label %if.end46.i.if.end.i198.i_crit_edge

if.end46.i.if.end.i198.i_crit_edge:               ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i198.i

if.end46.i.i40e_create_tx_ctx.exit.i_crit_edge:   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_create_tx_ctx.exit.i

if.end.i198.i:                                    ; preds = %if.end46.i.if.end.i198.i_crit_edge, %skb_get.exit
  %or47350.i = phi i32 [ %or47342.i, %skb_get.exit ], [ %or47.i, %if.end46.i.if.end.i198.i_crit_edge ]
  %tx_flags.7347.i = phi i32 [ %or45.i, %skb_get.exit ], [ %tx_flags.6.ph.i, %if.end46.i.if.end.i198.i_crit_edge ]
  %cd_type_cmd_tso_mss.1339346.i = phi i64 [ %or24.i.i, %skb_get.exit ], [ %cd_type_cmd_tso_mss.0.ph320.i, %if.end46.i.if.end.i198.i_crit_edge ]
  %340 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %340)
  %341 = load i16, ptr %next_to_use.i.i, align 4
  %conv.i194.i = zext i16 %341 to i32
  %desc.i.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 1
  %342 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %desc.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.i40e_tx_context_desc, ptr %343, i32 %conv.i194.i
  %inc.i195.i = add nuw nsw i32 %conv.i194.i, 1
  %count.i196.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 11
  %344 = ptrtoint ptr %count.i196.i to i32
  call void @__asan_load2_noabort(i32 %344)
  %345 = load i16, ptr %count.i196.i, align 2
  %conv4.i.i = zext i16 %345 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i195.i, i32 %conv4.i.i)
  %cmp5.i197.i = icmp ult i32 %inc.i195.i, %conv4.i.i
  %phi.cast.i.i = trunc i32 %inc.i195.i to i16
  %spec.select.i.i = select i1 %cmp5.i197.i, i16 %phi.cast.i.i, i16 0
  %346 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_store2_noabort(i32 %346)
  store i16 %spec.select.i.i, ptr %next_to_use.i.i, align 4
  %347 = call i32 @llvm.bswap.i32(i32 %cd_tunneling.1.ph.i) #14
  %348 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %347, ptr %arrayidx.i.i, align 8
  %l2tag2.i.i = getelementptr %struct.i40e_tx_context_desc, ptr %343, i32 %conv.i194.i, i32 1
  %349 = ptrtoint ptr %l2tag2.i.i to i32
  call void @__asan_store2_noabort(i32 %349)
  store i16 0, ptr %l2tag2.i.i, align 4
  %rsvd.i.i = getelementptr %struct.i40e_tx_context_desc, ptr %343, i32 %conv.i194.i, i32 2
  %350 = ptrtoint ptr %rsvd.i.i to i32
  call void @__asan_store2_noabort(i32 %350)
  store i16 0, ptr %rsvd.i.i, align 2
  %351 = call i64 @llvm.bswap.i64(i64 %cd_type_cmd_tso_mss.1339346.i) #14
  %type_cmd_tso_mss.i.i = getelementptr %struct.i40e_tx_context_desc, ptr %343, i32 %conv.i194.i, i32 3
  %352 = ptrtoint ptr %type_cmd_tso_mss.i.i to i32
  call void @__asan_store8_noabort(i32 %352)
  store i64 %351, ptr %type_cmd_tso_mss.i.i, align 8
  br label %i40e_create_tx_ctx.exit.i

i40e_create_tx_ctx.exit.i:                        ; preds = %if.end.i198.i, %if.end46.i.i40e_create_tx_ctx.exit.i_crit_edge
  %or47351.i = phi i32 [ %or47.i, %if.end46.i.i40e_create_tx_ctx.exit.i_crit_edge ], [ %or47350.i, %if.end.i198.i ]
  %tx_flags.7348.i = phi i32 [ %tx_flags.6.ph.i, %if.end46.i.i40e_create_tx_ctx.exit.i_crit_edge ], [ %tx_flags.7347.i, %if.end.i198.i ]
  %vsi.i200.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 28
  %353 = ptrtoint ptr %vsi.i200.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %vsi.i200.i, align 8
  %back.i201.i = getelementptr inbounds %struct.i40e_vsi, ptr %354, i32 0, i32 57
  %355 = ptrtoint ptr %back.i201.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %back.i201.i, align 8
  %flags.i202.i = getelementptr inbounds %struct.i40e_pf, ptr %356, i32 0, i32 54
  %357 = ptrtoint ptr %flags.i202.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %flags.i202.i, align 8
  %and.i203.i = and i32 %358, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i203.i)
  %tobool.not.i204.i = icmp eq i32 %and.i203.i, 0
  br i1 %tobool.not.i204.i, label %i40e_create_tx_ctx.exit.i.i40e_atr.exit.i_crit_edge, label %if.end.i206.i

i40e_create_tx_ctx.exit.i.i40e_atr.exit.i_crit_edge: ; preds = %i40e_create_tx_ctx.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_atr.exit.i

if.end.i206.i:                                    ; preds = %i40e_create_tx_ctx.exit.i
  %state.i205.i = getelementptr inbounds %struct.i40e_pf, ptr %356, i32 0, i32 2
  %359 = ptrtoint ptr %state.i205.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load volatile i32, ptr %state.i205.i, align 4
  %361 = and i32 %360, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %361)
  %tobool1.not.i.i = icmp eq i32 %361, 0
  br i1 %tobool1.not.i.i, label %if.end3.i209.i, label %if.end.i206.i.i40e_atr.exit.i_crit_edge

if.end.i206.i.i40e_atr.exit.i_crit_edge:          ; preds = %if.end.i206.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_atr.exit.i

if.end3.i209.i:                                   ; preds = %if.end.i206.i
  %atr_sample_rate.i.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 17
  %362 = ptrtoint ptr %atr_sample_rate.i.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %atr_sample_rate.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %363)
  %tobool4.not.i207.i = icmp eq i8 %363, 0
  %and7.i.i = and i32 %tx_flags.7348.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i208.i = icmp eq i32 %and7.i.i, 0
  %or.cond204.i.i = or i1 %tobool8.not.i208.i, %tobool4.not.i207.i
  br i1 %or.cond204.i.i, label %if.end3.i209.i.i40e_atr.exit.i_crit_edge, label %if.end10.i.i

if.end3.i209.i.i40e_atr.exit.i_crit_edge:         ; preds = %if.end3.i209.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_atr.exit.i

if.end10.i.i:                                     ; preds = %if.end3.i209.i
  %and11.i.i = and i32 %tx_flags.7348.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  %head.i207.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %364 = ptrtoint ptr %head.i207.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %head.i207.i.i, align 8
  %network_header.i.i210.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %inner_network_header.i.i211.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %network_header.i.sink.i.i = select i1 %tobool12.not.i.i, ptr %network_header.i.i210.i, ptr %inner_network_header.i.i211.i
  %366 = ptrtoint ptr %network_header.i.sink.i.i to i32
  call void @__asan_load2_noabort(i32 %366)
  %367 = load i16, ptr %network_header.i.sink.i.i, align 4
  %conv.i208.i.i = zext i16 %367 to i32
  %add.ptr.i209.i.i = getelementptr i8, ptr %365, i32 %conv.i208.i.i
  %and15.i.i = and i32 %tx_flags.7348.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.else.i221.i, label %if.then17.i214.i

if.then17.i214.i:                                 ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %368 = ptrtoint ptr %add.ptr.i209.i.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %add.ptr.i209.i.i, align 1
  %370 = shl i8 %369, 2
  %371 = and i8 %370, 60
  %shl.i212.i = zext i8 %371 to i32
  %protocol.i213.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i209.i.i, i32 0, i32 6
  %372 = ptrtoint ptr %protocol.i213.i to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %protocol.i213.i, align 1
  %conv19.i.i = zext i8 %373 to i32
  br label %if.end21.i.i

if.else.i221.i:                                   ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %374 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i216.i = ptrtoint ptr %add.ptr.i209.i.i to i32
  %sub.ptr.rhs.cast.i217.i = ptrtoint ptr %375 to i32
  %sub.ptr.sub.i218.i = sub i32 %sub.ptr.lhs.cast.i216.i, %sub.ptr.rhs.cast.i217.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %h_offset.i.i) #14
  %376 = ptrtoint ptr %h_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 %sub.ptr.sub.i218.i, ptr %h_offset.i.i, align 4
  %call20.i219.i = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef nonnull %h_offset.i.i, i32 noundef 6, ptr noundef null, ptr noundef null) #14
  %377 = ptrtoint ptr %h_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %h_offset.i.i, align 4
  %sub.i220.i = sub i32 %378, %sub.ptr.sub.i218.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %h_offset.i.i) #14
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.else.i221.i, %if.then17.i214.i
  %hlen.0.i.i = phi i32 [ %shl.i212.i, %if.then17.i214.i ], [ %sub.i220.i, %if.else.i221.i ]
  %l4_proto.0.i.i = phi i32 [ %conv19.i.i, %if.then17.i214.i ], [ %call20.i219.i, %if.else.i221.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %l4_proto.0.i.i)
  %cmp.not.i222.i = icmp eq i32 %l4_proto.0.i.i, 6
  br i1 %cmp.not.i222.i, label %if.end24.i.i, label %if.end21.i.i.i40e_atr.exit.i_crit_edge

if.end21.i.i.i40e_atr.exit.i_crit_edge:           ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_atr.exit.i

if.end24.i.i:                                     ; preds = %if.end21.i.i
  %add.ptr.i223.i = getelementptr i8, ptr %add.ptr.i209.i.i, i32 %hlen.0.i.i
  %syn.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i223.i, i32 0, i32 4
  %379 = ptrtoint ptr %syn.i.i to i32
  call void @__asan_load2_noabort(i32 %379)
  %bf.load.i224.i = load i16, ptr %syn.i.i, align 4
  %380 = and i16 %bf.load.i224.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %380)
  %tobool26.not.i.i = icmp eq i16 %380, 0
  br i1 %tobool26.not.i.i, label %if.end24.i.i.if.end32.i.i_crit_edge, label %land.lhs.true.i225.i

if.end24.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i.i

land.lhs.true.i225.i:                             ; preds = %if.end24.i.i
  %381 = ptrtoint ptr %state.i205.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load volatile i32, ptr %state.i205.i, align 4
  %383 = and i32 %382, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %383)
  %tobool30.not.i.i = icmp eq i32 %383, 0
  br i1 %tobool30.not.i.i, label %land.lhs.true.i225.i.if.end32.i.i_crit_edge, label %land.lhs.true.i225.i.i40e_atr.exit.i_crit_edge

land.lhs.true.i225.i.i40e_atr.exit.i_crit_edge:   ; preds = %land.lhs.true.i225.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_atr.exit.i

land.lhs.true.i225.i.if.end32.i.i_crit_edge:      ; preds = %land.lhs.true.i225.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %land.lhs.true.i225.i.if.end32.i.i_crit_edge, %if.end24.i.i.if.end32.i.i_crit_edge
  %384 = ptrtoint ptr %flags.i202.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %flags.i202.i, align 8
  %and34.i.i = and i32 %385, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i.i)
  %tobool35.not.i.i = icmp eq i32 %and34.i.i, 0
  %386 = and i16 %bf.load.i224.i, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %386)
  %387 = icmp eq i16 %386, 0
  %or.cond.i226.i = select i1 %tobool35.not.i.i, i1 true, i1 %387
  br i1 %or.cond.i226.i, label %if.end48.i.i, label %if.end32.i.i.i40e_atr.exit.i_crit_edge

if.end32.i.i.i40e_atr.exit.i_crit_edge:           ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_atr.exit.i

if.end48.i.i:                                     ; preds = %if.end32.i.i
  %atr_count.i.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 18
  %388 = ptrtoint ptr %atr_count.i.i to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %atr_count.i.i, align 1
  %inc.i227.i = add i8 %389, 1
  store i8 %inc.i227.i, ptr %atr_count.i.i, align 1
  %390 = ptrtoint ptr %syn.i.i to i32
  call void @__asan_load2_noabort(i32 %390)
  %bf.load50.i.i = load i16, ptr %syn.i.i, align 4
  %391 = and i16 %bf.load50.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %391)
  %392 = icmp eq i16 %391, 0
  br i1 %392, label %land.lhs.true65.i.i, label %if.end48.i.i.if.end73.i.i_crit_edge

if.end48.i.i.if.end73.i.i_crit_edge:              ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73.i.i

land.lhs.true65.i.i:                              ; preds = %if.end48.i.i
  %393 = ptrtoint ptr %atr_sample_rate.i.i to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %atr_sample_rate.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %inc.i227.i, i8 %394)
  %cmp70.i.i = icmp ult i8 %inc.i227.i, %394
  br i1 %cmp70.i.i, label %land.lhs.true65.i.i.i40e_atr.exit.i_crit_edge, label %land.lhs.true65.i.i.if.end73.i.i_crit_edge

land.lhs.true65.i.i.if.end73.i.i_crit_edge:       ; preds = %land.lhs.true65.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73.i.i

land.lhs.true65.i.i.i40e_atr.exit.i_crit_edge:    ; preds = %land.lhs.true65.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_atr.exit.i

if.end73.i.i:                                     ; preds = %land.lhs.true65.i.i.if.end73.i.i_crit_edge, %if.end48.i.i.if.end73.i.i_crit_edge
  %395 = ptrtoint ptr %atr_count.i.i to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 0, ptr %atr_count.i.i, align 1
  %396 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %396)
  %397 = load i16, ptr %next_to_use.i.i, align 4
  %desc.i229.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 1
  %398 = ptrtoint ptr %desc.i229.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %desc.i229.i, align 4
  %idxprom.i.i = zext i16 %397 to i32
  %arrayidx75.i.i = getelementptr %struct.i40e_filter_program_desc, ptr %399, i32 %idxprom.i.i
  %inc76.i.i = add i16 %397, 1
  %count.i230.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 11
  %400 = ptrtoint ptr %count.i230.i to i32
  call void @__asan_load2_noabort(i32 %400)
  %401 = load i16, ptr %count.i230.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc76.i.i, i16 %401)
  %cmp79.i231.i = icmp ult i16 %inc76.i.i, %401
  %spec.select.i232.i = select i1 %cmp79.i231.i, i16 %inc76.i.i, i16 0
  %402 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_store2_noabort(i32 %402)
  store i16 %spec.select.i232.i, ptr %next_to_use.i.i, align 4
  %queue_index.i.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 7
  %403 = ptrtoint ptr %queue_index.i.i to i32
  call void @__asan_load2_noabort(i32 %403)
  %404 = load i16, ptr %queue_index.i.i, align 4
  %405 = and i16 %404, 2047
  %and90.i.i = zext i16 %405 to i32
  %cond93.i.i = select i1 %tobool16.not.i.i, i32 5636096, i32 4325376
  %or.i233.i = or i32 %cond93.i.i, %and90.i.i
  %406 = ptrtoint ptr %vsi.i200.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %vsi.i200.i, align 8
  %id.i.i = getelementptr inbounds %struct.i40e_vsi, ptr %407, i32 0, i32 39
  %408 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %408)
  %409 = load i16, ptr %id.i.i, align 4
  %conv95.i.i = zext i16 %409 to i32
  %shl96.i.i = shl i32 %conv95.i.i, 23
  %or97.i.i = or i32 %shl96.i.i, %or.i233.i
  %410 = ptrtoint ptr %syn.i.i to i32
  call void @__asan_load2_noabort(i32 %410)
  %bf.load99.i.i = load i16, ptr %syn.i.i, align 4
  %411 = and i16 %bf.load99.i.i, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %411)
  %412 = icmp eq i16 %411, 0
  %413 = select i1 %412, i32 10392, i32 10408
  %pf_id.i.i = getelementptr inbounds %struct.i40e_pf, ptr %356, i32 0, i32 1, i32 17
  %414 = ptrtoint ptr %pf_id.i.i to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %pf_id.i.i, align 2
  %conv119.i.i = zext i8 %415 to i32
  %shl120.i.i = mul nuw nsw i32 %conv119.i.i, 3145728
  %shl129.i.i = add nuw nsw i32 %shl120.i.i, 2097152
  %and130.pn.in.i.i = select i1 %tobool12.not.i.i, i32 %shl120.i.i, i32 %shl129.i.i
  %and130.pn.i.i = and i32 %and130.pn.in.i.i, 535822336
  %416 = ptrtoint ptr %flags.i202.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %flags.i202.i, align 8
  %and134.i.i = shl i32 %417, 7
  %418 = and i32 %and134.i.i, 262144
  %dtype_cmd.0.i.i = or i32 %418, %413
  %419 = or i32 %dtype_cmd.0.i.i, %and130.pn.i.i
  %420 = call i32 @llvm.bswap.i32(i32 %or97.i.i) #14
  %421 = ptrtoint ptr %arrayidx75.i.i to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 %420, ptr %arrayidx75.i.i, align 4
  %rsvd.i234.i = getelementptr %struct.i40e_filter_program_desc, ptr %399, i32 %idxprom.i.i, i32 1
  %422 = ptrtoint ptr %rsvd.i234.i to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 0, ptr %rsvd.i234.i, align 4
  %423 = call i32 @llvm.bswap.i32(i32 %419) #14
  %dtype_cmd_cntindex.i.i = getelementptr %struct.i40e_filter_program_desc, ptr %399, i32 %idxprom.i.i, i32 2
  %424 = ptrtoint ptr %dtype_cmd_cntindex.i.i to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 %423, ptr %dtype_cmd_cntindex.i.i, align 4
  %fd_id.i.i = getelementptr %struct.i40e_filter_program_desc, ptr %399, i32 %idxprom.i.i, i32 3
  %425 = ptrtoint ptr %fd_id.i.i to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 0, ptr %fd_id.i.i, align 4
  br label %i40e_atr.exit.i

i40e_atr.exit.i:                                  ; preds = %if.end73.i.i, %land.lhs.true65.i.i.i40e_atr.exit.i_crit_edge, %if.end32.i.i.i40e_atr.exit.i_crit_edge, %land.lhs.true.i225.i.i40e_atr.exit.i_crit_edge, %if.end21.i.i.i40e_atr.exit.i_crit_edge, %if.end3.i209.i.i40e_atr.exit.i_crit_edge, %if.end.i206.i.i40e_atr.exit.i_crit_edge, %i40e_create_tx_ctx.exit.i.i40e_atr.exit.i_crit_edge
  %426 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %data_len.i.i.i, align 8
  %428 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %len1.i.i, align 4
  %sub.i.i237.i = sub i32 %429, %427
  %430 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %430)
  %431 = load i16, ptr %next_to_use.i.i, align 4
  %and.i239.i = and i32 %tx_flags.7348.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i239.i)
  %tobool.not.i240.i = icmp eq i32 %and.i239.i, 0
  %shr.i241.i = lshr i32 %tx_flags.7348.i, 16
  %432 = shl nuw nsw i32 %and.i239.i, 2
  %433 = or i32 %432, %or47351.i
  %td_tag.0.i.i = select i1 %tobool.not.i240.i, i32 0, i32 %shr.i241.i
  %tx_flags3.i.i = getelementptr %struct.i40e_tx_buffer, ptr %94, i32 %idxprom.i, i32 6
  %434 = ptrtoint ptr %tx_flags3.i.i to i32
  call void @__asan_store4_noabort(i32 %434)
  store i32 %tx_flags.7348.i, ptr %tx_flags3.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 2
  %435 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %dev.i.i, align 8
  %437 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %data.i, align 4
  %call.i.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %438) #14
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %i40e_atr.exit.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge, label %if.then.i.i244.i, !prof !132

land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit.i.i

if.then.i.i244.i:                                 ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = call ptr @dev_driver_string(ptr noundef %436) #14
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %436, i32 0, i32 3
  %439 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i243.i = icmp eq ptr %440, null
  br i1 %tobool.not.i.i.i243.i, label %if.end.i.i.i245.i, label %if.then.i.i244.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i244.i.dev_name.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i244.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i.i.i

if.end.i.i.i245.i:                                ; preds = %if.then.i.i244.i
  call void @__sanitizer_cov_trace_pc() #16
  %441 = ptrtoint ptr %436 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %436, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i245.i, %if.then.i.i244.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %442, %if.end.i.i.i245.i ], [ %440, %if.then.i.i244.i.dev_name.exit.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #14
  br label %dma_map_single_attrs.exit.i.i

if.end39.i.i.i:                                   ; preds = %i40e_atr.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @debug_dma_map_single(ptr noundef %436, ptr noundef %438, i32 noundef %sub.i.i237.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %443 = load ptr, ptr @mem_map, align 4
  %444 = ptrtoint ptr %438 to i32
  %sub.i2.i.i = add i32 %444, 1073741824
  %shr.i.i246.i = lshr i32 %sub.i2.i.i, 12
  %add.ptr.i.i247.i = getelementptr %struct.page, ptr %443, i32 %shr.i.i246.i
  %and.i.i.i = and i32 %444, 4095
  %call41.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %436, ptr noundef %add.ptr.i.i247.i, i32 noundef %and.i.i.i, i32 noundef %sub.i.i237.i, i32 noundef 1, i32 noundef 0) #14
  br label %dma_map_single_attrs.exit.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge ]
  %desc.i248.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 1
  %445 = ptrtoint ptr %desc.i248.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %desc.i248.i, align 4
  %447 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %end.i.i.i, align 4
  %449 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %dev.i.i, align 8
  call void @debug_dma_mapping_error(ptr noundef %450, i32 noundef %retval.0.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i)
  %cmp.i.not83.i.i = icmp eq i32 %retval.0.i.i.i, -1
  br i1 %cmp.i.not83.i.i, label %dma_map_single_attrs.exit.do.end101_crit_edge.i.i, label %if.end11.lr.ph.i.i

dma_map_single_attrs.exit.do.end101_crit_edge.i.i: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %.pre.i.i = zext i16 %431 to i32
  br label %do.end101.i.i

if.end11.lr.ph.i.i:                               ; preds = %dma_map_single_attrs.exit.i.i
  %frags.i250.i = getelementptr inbounds %struct.skb_shared_info, ptr %448, i32 0, i32 12
  %idxprom.i251.i = zext i16 %431 to i32
  %arrayidx.i252.i = getelementptr %struct.i40e_tx_desc, ptr %446, i32 %idxprom.i251.i
  %conv.i.i253.i = zext i32 %433 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv.i.i253.i, 4
  %conv1.i.i.i = zext i32 %td_offset.0.ph.i to i64
  %shl2.i.i.i = shl nuw nsw i64 %conv1.i.i.i, 16
  %conv7.i.i.i = zext i32 %td_tag.0.i.i to i64
  %shl8.i.i.i = shl nuw i64 %conv7.i.i.i, 48
  %or3.i.i.i = or i64 %shl8.i.i.i, %shl2.i.i.i
  %or6.i.i.i = or i64 %or3.i.i.i, %shl.i.i.i
  %count.i254.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 11
  %or9.i.i.i = or i64 %or6.i.i.i, 211106232532992
  %451 = call i64 @llvm.bswap.i64(i64 %or9.i.i.i) #14
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %for.inc.i.i.if.end11.i.i_crit_edge, %if.end11.lr.ph.i.i
  %desc_count.091.i.i = phi i16 [ 1, %if.end11.lr.ph.i.i ], [ %inc46.i.i, %for.inc.i.i.if.end11.i.i_crit_edge ]
  %dma.090.i.i = phi i32 [ %retval.0.i.i.i, %if.end11.lr.ph.i.i ], [ %call2.i.i.i, %for.inc.i.i.if.end11.i.i_crit_edge ]
  %i.089.i.i = phi i16 [ %431, %if.end11.lr.ph.i.i ], [ %i.3.i.i, %for.inc.i.i.if.end11.i.i_crit_edge ]
  %tx_desc.088.i.i = phi ptr [ %arrayidx.i252.i, %if.end11.lr.ph.i.i ], [ %tx_desc.3.i.i, %for.inc.i.i.if.end11.i.i_crit_edge ]
  %tx_bi.087.i.i = phi ptr [ %arrayidx.i, %if.end11.lr.ph.i.i ], [ %arrayidx61.i.i, %for.inc.i.i.if.end11.i.i_crit_edge ]
  %frag.086.i.i = phi ptr [ %frags.i250.i, %if.end11.lr.ph.i.i ], [ %incdec.ptr62.i.i, %for.inc.i.i.if.end11.i.i_crit_edge ]
  %size.085.i.i = phi i32 [ %sub.i.i237.i, %if.end11.lr.ph.i.i ], [ %478, %for.inc.i.i.if.end11.i.i_crit_edge ]
  %data_len.084.i.i = phi i32 [ %427, %if.end11.lr.ph.i.i ], [ %sub57.i.i, %for.inc.i.i.if.end11.i.i_crit_edge ]
  %len.i255.i = getelementptr inbounds %struct.i40e_tx_buffer, ptr %tx_bi.087.i.i, i32 0, i32 5
  %452 = ptrtoint ptr %len.i255.i to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 %size.085.i.i, ptr %len.i255.i, align 4
  %dma12.i.i = getelementptr inbounds %struct.i40e_tx_buffer, ptr %tx_bi.087.i.i, i32 0, i32 4
  %453 = ptrtoint ptr %dma12.i.i to i32
  call void @__asan_store4_noabort(i32 %453)
  store i32 %dma.090.i.i, ptr %dma12.i.i, align 4
  %sub.i256.i = sub i32 0, %dma.090.i.i
  %and13.i.i = and i32 %sub.i256.i, 4095
  %add.i257.i = or i32 %and13.i.i, 12288
  %conv.i258.i = zext i32 %dma.090.i.i to i64
  %454 = call i64 @llvm.bswap.i64(i64 %conv.i258.i) #14
  %455 = ptrtoint ptr %tx_desc.088.i.i to i32
  call void @__asan_store8_noabort(i32 %455)
  store i64 %454, ptr %tx_desc.088.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %size.085.i.i)
  %cmp73.i.i = icmp ugt i32 %size.085.i.i, 16383
  br i1 %cmp73.i.i, label %while.body.preheader.i.i, label %if.end11.i.i.while.end.i.i_crit_edge, !prof !135

if.end11.i.i.while.end.i.i_crit_edge:             ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

while.body.preheader.i.i:                         ; preds = %if.end11.i.i
  %conv4.i.peel.i.i = zext i32 %add.i257.i to i64
  %shl5.i.peel.i.i = shl nuw nsw i64 %conv4.i.peel.i.i, 34
  %or9.i.peel.i.i = or i64 %shl5.i.peel.i.i, %or6.i.i.i
  %456 = call i64 @llvm.bswap.i64(i64 %or9.i.peel.i.i) #14
  %cmd_type_offset_bsz.peel.i.i = getelementptr inbounds %struct.i40e_tx_desc, ptr %tx_desc.088.i.i, i32 0, i32 1
  %457 = ptrtoint ptr %cmd_type_offset_bsz.peel.i.i to i32
  call void @__asan_store8_noabort(i32 %457)
  store i64 %456, ptr %cmd_type_offset_bsz.peel.i.i, align 8
  %incdec.ptr.peel.i.i = getelementptr %struct.i40e_tx_desc, ptr %tx_desc.088.i.i, i32 1
  %inc.peel.i.i = add i16 %i.089.i.i, 1
  %inc18.peel.i.i = add i16 %desc_count.091.i.i, 1
  %458 = ptrtoint ptr %count.i254.i to i32
  call void @__asan_load2_noabort(i32 %458)
  %459 = load i16, ptr %count.i254.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.peel.i.i, i16 %459)
  %cmp21.peel.i.i = icmp eq i16 %inc.peel.i.i, %459
  br i1 %cmp21.peel.i.i, label %if.then23.peel.i.i, label %while.body.preheader.i.i.if.end26.peel.i.i_crit_edge

while.body.preheader.i.i.if.end26.peel.i.i_crit_edge: ; preds = %while.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.peel.i.i

if.then23.peel.i.i:                               ; preds = %while.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %460 = ptrtoint ptr %desc.i248.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %desc.i248.i, align 4
  br label %if.end26.peel.i.i

if.end26.peel.i.i:                                ; preds = %if.then23.peel.i.i, %while.body.preheader.i.i.if.end26.peel.i.i_crit_edge
  %tx_desc.2.peel.i.i = phi ptr [ %461, %if.then23.peel.i.i ], [ %incdec.ptr.peel.i.i, %while.body.preheader.i.i.if.end26.peel.i.i_crit_edge ]
  %i.2.peel.i.i = phi i16 [ 0, %if.then23.peel.i.i ], [ %inc.peel.i.i, %while.body.preheader.i.i.if.end26.peel.i.i_crit_edge ]
  %add27.peel.i.i = add i32 %add.i257.i, %dma.090.i.i
  %sub28.peel.i.i = sub i32 %size.085.i.i, %add.i257.i
  %conv29.peel.i.i = zext i32 %add27.peel.i.i to i64
  %462 = call i64 @llvm.bswap.i64(i64 %conv29.peel.i.i) #14
  %463 = ptrtoint ptr %tx_desc.2.peel.i.i to i32
  call void @__asan_store8_noabort(i32 %463)
  store i64 %462, ptr %tx_desc.2.peel.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %sub28.peel.i.i)
  %cmp.peel.i.i = icmp ugt i32 %sub28.peel.i.i, 16383
  br i1 %cmp.peel.i.i, label %if.end26.peel.i.i.while.body.i.i_crit_edge, label %if.end26.peel.i.i.while.end.i.i_crit_edge, !prof !135

if.end26.peel.i.i.while.end.i.i_crit_edge:        ; preds = %if.end26.peel.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

if.end26.peel.i.i.while.body.i.i_crit_edge:       ; preds = %if.end26.peel.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end26.i263.i.while.body.i.i_crit_edge, %if.end26.peel.i.i.while.body.i.i_crit_edge
  %desc_count.178.i.i = phi i16 [ %inc18.i.i, %if.end26.i263.i.while.body.i.i_crit_edge ], [ %inc18.peel.i.i, %if.end26.peel.i.i.while.body.i.i_crit_edge ]
  %dma.177.i.i = phi i32 [ %add27.i.i, %if.end26.i263.i.while.body.i.i_crit_edge ], [ %add27.peel.i.i, %if.end26.peel.i.i.while.body.i.i_crit_edge ]
  %i.176.i.i = phi i16 [ %i.2.i.i, %if.end26.i263.i.while.body.i.i_crit_edge ], [ %i.2.peel.i.i, %if.end26.peel.i.i.while.body.i.i_crit_edge ]
  %tx_desc.175.i.i = phi ptr [ %tx_desc.2.i.i, %if.end26.i263.i.while.body.i.i_crit_edge ], [ %tx_desc.2.peel.i.i, %if.end26.peel.i.i.while.body.i.i_crit_edge ]
  %size.174.i.i = phi i32 [ %sub28.i.i, %if.end26.i263.i.while.body.i.i_crit_edge ], [ %sub28.peel.i.i, %if.end26.peel.i.i.while.body.i.i_crit_edge ]
  %cmd_type_offset_bsz.i.i = getelementptr inbounds %struct.i40e_tx_desc, ptr %tx_desc.175.i.i, i32 0, i32 1
  %464 = ptrtoint ptr %cmd_type_offset_bsz.i.i to i32
  call void @__asan_store8_noabort(i32 %464)
  store i64 %451, ptr %cmd_type_offset_bsz.i.i, align 8
  %incdec.ptr.i259.i = getelementptr %struct.i40e_tx_desc, ptr %tx_desc.175.i.i, i32 1
  %inc.i260.i = add i16 %i.176.i.i, 1
  %inc18.i.i = add i16 %desc_count.178.i.i, 1
  %465 = ptrtoint ptr %count.i254.i to i32
  call void @__asan_load2_noabort(i32 %465)
  %466 = load i16, ptr %count.i254.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i260.i, i16 %466)
  %cmp21.i261.i = icmp eq i16 %inc.i260.i, %466
  br i1 %cmp21.i261.i, label %if.then23.i.i, label %while.body.i.i.if.end26.i263.i_crit_edge

while.body.i.i.if.end26.i263.i_crit_edge:         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i263.i

if.then23.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %467 = ptrtoint ptr %desc.i248.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %desc.i248.i, align 4
  br label %if.end26.i263.i

if.end26.i263.i:                                  ; preds = %if.then23.i.i, %while.body.i.i.if.end26.i263.i_crit_edge
  %tx_desc.2.i.i = phi ptr [ %468, %if.then23.i.i ], [ %incdec.ptr.i259.i, %while.body.i.i.if.end26.i263.i_crit_edge ]
  %i.2.i.i = phi i16 [ 0, %if.then23.i.i ], [ %inc.i260.i, %while.body.i.i.if.end26.i263.i_crit_edge ]
  %add27.i.i = add i32 %dma.177.i.i, 12288
  %sub28.i.i = add i32 %size.174.i.i, -12288
  %conv29.i.i = zext i32 %add27.i.i to i64
  %469 = call i64 @llvm.bswap.i64(i64 %conv29.i.i) #14
  %470 = ptrtoint ptr %tx_desc.2.i.i to i32
  call void @__asan_store8_noabort(i32 %470)
  store i64 %469, ptr %tx_desc.2.i.i, align 8
  %cmp.i262.i = icmp ugt i32 %sub28.i.i, 16383
  br i1 %cmp.i262.i, label %if.end26.i263.i.while.body.i.i_crit_edge, label %if.end26.i263.i.while.end.i.i_crit_edge, !prof !135, !llvm.loop !159

if.end26.i263.i.while.end.i.i_crit_edge:          ; preds = %if.end26.i263.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

if.end26.i263.i.while.body.i.i_crit_edge:         ; preds = %if.end26.i263.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end26.i263.i.while.end.i.i_crit_edge, %if.end26.peel.i.i.while.end.i.i_crit_edge, %if.end11.i.i.while.end.i.i_crit_edge
  %size.1.lcssa.i.i = phi i32 [ %size.085.i.i, %if.end11.i.i.while.end.i.i_crit_edge ], [ %sub28.peel.i.i, %if.end26.peel.i.i.while.end.i.i_crit_edge ], [ %sub28.i.i, %if.end26.i263.i.while.end.i.i_crit_edge ]
  %tx_desc.1.lcssa.i.i = phi ptr [ %tx_desc.088.i.i, %if.end11.i.i.while.end.i.i_crit_edge ], [ %tx_desc.2.peel.i.i, %if.end26.peel.i.i.while.end.i.i_crit_edge ], [ %tx_desc.2.i.i, %if.end26.i263.i.while.end.i.i_crit_edge ]
  %i.1.lcssa.i.i = phi i16 [ %i.089.i.i, %if.end11.i.i.while.end.i.i_crit_edge ], [ %i.2.peel.i.i, %if.end26.peel.i.i.while.end.i.i_crit_edge ], [ %i.2.i.i, %if.end26.i263.i.while.end.i.i_crit_edge ]
  %desc_count.1.lcssa.i.i = phi i16 [ %desc_count.091.i.i, %if.end11.i.i.while.end.i.i_crit_edge ], [ %inc18.peel.i.i, %if.end26.peel.i.i.while.end.i.i_crit_edge ], [ %inc18.i.i, %if.end26.i263.i.while.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.084.i.i)
  %tobool31.not.i.i = icmp eq i32 %data_len.084.i.i, 0
  br i1 %tobool31.not.i.i, label %for.end.i.i, label %if.end41.i.i, !prof !132

if.end41.i.i:                                     ; preds = %while.end.i.i
  %conv4.i8.i.i = zext i32 %size.1.lcssa.i.i to i64
  %shl5.i9.i.i = shl nuw nsw i64 %conv4.i8.i.i, 34
  %or9.i13.i.i = or i64 %shl5.i9.i.i, %or6.i.i.i
  %471 = call i64 @llvm.bswap.i64(i64 %or9.i13.i.i) #14
  %cmd_type_offset_bsz43.i.i = getelementptr inbounds %struct.i40e_tx_desc, ptr %tx_desc.1.lcssa.i.i, i32 0, i32 1
  %472 = ptrtoint ptr %cmd_type_offset_bsz43.i.i to i32
  call void @__asan_store8_noabort(i32 %472)
  store i64 %471, ptr %cmd_type_offset_bsz43.i.i, align 8
  %incdec.ptr44.i.i = getelementptr %struct.i40e_tx_desc, ptr %tx_desc.1.lcssa.i.i, i32 1
  %inc45.i.i = add i16 %i.1.lcssa.i.i, 1
  %inc46.i.i = add i16 %desc_count.1.lcssa.i.i, 1
  %473 = ptrtoint ptr %count.i254.i to i32
  call void @__asan_load2_noabort(i32 %473)
  %474 = load i16, ptr %count.i254.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc45.i.i, i16 %474)
  %cmp50.i.i = icmp eq i16 %inc45.i.i, %474
  br i1 %cmp50.i.i, label %if.then52.i.i, label %if.end41.i.i.for.inc.i.i_crit_edge

if.end41.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then52.i.i:                                    ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %475 = ptrtoint ptr %desc.i248.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %desc.i248.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then52.i.i, %if.end41.i.i.for.inc.i.i_crit_edge
  %tx_desc.3.i.i = phi ptr [ %476, %if.then52.i.i ], [ %incdec.ptr44.i.i, %if.end41.i.i.for.inc.i.i_crit_edge ]
  %i.3.i.i = phi i16 [ 0, %if.then52.i.i ], [ %inc45.i.i, %if.end41.i.i.for.inc.i.i_crit_edge ]
  %bv_len.i.i264.i = getelementptr inbounds %struct.bio_vec, ptr %frag.086.i.i, i32 0, i32 1
  %477 = ptrtoint ptr %bv_len.i.i264.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %bv_len.i.i264.i, align 4
  %sub57.i.i = sub i32 %data_len.084.i.i, %478
  %479 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %dev.i.i, align 8
  %481 = ptrtoint ptr %frag.086.i.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %frag.086.i.i, align 4
  %bv_offset.i.i.i.i = getelementptr inbounds %struct.bio_vec, ptr %frag.086.i.i, i32 0, i32 2
  %483 = ptrtoint ptr %bv_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %bv_offset.i.i.i.i, align 4
  %call2.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %480, ptr noundef %482, i32 noundef %484, i32 noundef %478, i32 noundef 1, i32 noundef 0) #14
  %485 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %92, align 4
  %idxprom60.i.i = zext i16 %i.3.i.i to i32
  %arrayidx61.i.i = getelementptr %struct.i40e_tx_buffer, ptr %486, i32 %idxprom60.i.i
  %incdec.ptr62.i.i = getelementptr %struct.bio_vec, ptr %frag.086.i.i, i32 1
  %487 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %dev.i.i, align 8
  call void @debug_dma_mapping_error(ptr noundef %488, i32 noundef %call2.i.i.i) #14
  %cmp.i.not.i.i = icmp eq i32 %call2.i.i.i, -1
  br i1 %cmp.i.not.i.i, label %for.inc.i.i.do.end101.i.i_crit_edge, label %for.inc.i.i.if.end11.i.i_crit_edge

for.inc.i.i.if.end11.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i.i

for.inc.i.i.do.end101.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end101.i.i

for.end.i.i:                                      ; preds = %while.end.i.i
  %netdev.i.i.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 3
  %489 = ptrtoint ptr %netdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %netdev.i.i.i, align 4
  %queue_index.i.i.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 7
  %491 = ptrtoint ptr %queue_index.i.i.i to i32
  call void @__asan_load2_noabort(i32 %491)
  %492 = load i16, ptr %queue_index.i.i.i, align 4
  %conv.i14.i.i = zext i16 %492 to i32
  %_tx.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %490, i32 0, i32 103
  %493 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %_tx.i.i.i.i, align 128
  %495 = ptrtoint ptr %bytecount.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %bytecount.i, align 4
  %dql.i.i.i = getelementptr %struct.netdev_queue, ptr %494, i32 %conv.i14.i.i, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %496)
  %cmp.i.i.i266.i = icmp ugt i32 %496, 268435455
  br i1 %cmp.i.i.i266.i, label %do.body2.i.i.i.i, label %dql_queued.exit.i.i.i, !prof !135

do.body2.i.i.i.i:                                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #14, !srcloc !161
  unreachable

dql_queued.exit.i.i.i:                            ; preds = %for.end.i.i
  %last_obj_cnt.i.i.i.i = getelementptr %struct.netdev_queue, ptr %494, i32 %conv.i14.i.i, i32 15, i32 2
  %497 = ptrtoint ptr %last_obj_cnt.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %497)
  store i32 %496, ptr %last_obj_cnt.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !162
  %498 = ptrtoint ptr %dql.i.i.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %dql.i.i.i, align 128
  %add.i.i.i267.i = add i32 %499, %496
  store i32 %add.i.i.i267.i, ptr %dql.i.i.i, align 128
  %adj_limit.i.i.i.i = getelementptr %struct.netdev_queue, ptr %494, i32 %conv.i14.i.i, i32 15, i32 1
  %500 = ptrtoint ptr %adj_limit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load volatile i32, ptr %adj_limit.i.i.i.i, align 4
  %502 = load volatile i32, ptr %dql.i.i.i, align 128
  %sub.i.i.i268.i = sub i32 %501, %502
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i268.i)
  %cmp.i15.i.i = icmp sgt i32 %sub.i.i.i268.i, -1
  br i1 %cmp.i15.i.i, label %dql_queued.exit.i.i.i.netdev_tx_sent_queue.exit.i.i_crit_edge, label %if.end.i.i.i, !prof !132

dql_queued.exit.i.i.i.netdev_tx_sent_queue.exit.i.i_crit_edge: ; preds = %dql_queued.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_tx_sent_queue.exit.i.i

if.end.i.i.i:                                     ; preds = %dql_queued.exit.i.i.i
  %state.i.i.i = getelementptr %struct.netdev_queue, ptr %494, i32 %conv.i14.i.i, i32 13
  call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i.i) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !163
  %503 = ptrtoint ptr %adj_limit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load volatile i32, ptr %adj_limit.i.i.i.i, align 4
  %505 = ptrtoint ptr %dql.i.i.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load volatile i32, ptr %dql.i.i.i, align 128
  %sub.i22.i.i.i = sub i32 %504, %506
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i.i)
  %cmp7.i.i.i = icmp sgt i32 %sub.i22.i.i.i, -1
  br i1 %cmp7.i.i.i, label %if.then14.i.i.i, label %if.end.i.i.i.netdev_tx_sent_queue.exit.i.i_crit_edge, !prof !135

if.end.i.i.i.netdev_tx_sent_queue.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_tx_sent_queue.exit.i.i

if.then14.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i.i) #14
  br label %netdev_tx_sent_queue.exit.i.i

netdev_tx_sent_queue.exit.i.i:                    ; preds = %if.then14.i.i.i, %if.end.i.i.i.netdev_tx_sent_queue.exit.i.i_crit_edge, %dql_queued.exit.i.i.i.netdev_tx_sent_queue.exit.i.i_crit_edge
  %inc64.i.i = add i16 %i.1.lcssa.i.i, 1
  %507 = ptrtoint ptr %count.i254.i to i32
  call void @__asan_load2_noabort(i32 %507)
  %508 = load i16, ptr %count.i254.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc64.i.i, i16 %508)
  %cmp68.i.i = icmp eq i16 %inc64.i.i, %508
  %spec.store.select.i.i = select i1 %cmp68.i.i, i16 0, i16 %inc64.i.i
  %509 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_store2_noabort(i32 %509)
  store i16 %spec.store.select.i.i, ptr %next_to_use.i.i, align 4
  %510 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %510)
  %511 = load i16, ptr %next_to_clean.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %511, i16 %spec.store.select.i.i)
  %cmp.i16.i.i = icmp ugt i16 %511, %spec.store.select.i.i
  %narrow.i.i = select i1 %cmp.i16.i.i, i16 0, i16 %508
  %spec.select71.i.i = zext i16 %narrow.i.i to i32
  %conv5.i.i.i = zext i16 %511 to i32
  %conv7.i17.i.i = zext i16 %spec.store.select.i.i to i32
  %512 = xor i32 %conv7.i17.i.i, -1
  %add.i.i269.i = add nsw i32 %512, %conv5.i.i.i
  %sub8.i.i.i = add nsw i32 %add.i.i269.i, %spec.select71.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %sub8.i.i.i)
  %cmp9.not.i.i.i = icmp slt i32 %sub8.i.i.i, 23
  br i1 %cmp9.not.i.i.i, label %if.end.i19.i.i, label %netdev_tx_sent_queue.exit.i.i.i40e_maybe_stop_tx.exit.i.i_crit_edge, !prof !135

netdev_tx_sent_queue.exit.i.i.i40e_maybe_stop_tx.exit.i.i_crit_edge: ; preds = %netdev_tx_sent_queue.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_maybe_stop_tx.exit.i.i

if.end.i19.i.i:                                   ; preds = %netdev_tx_sent_queue.exit.i.i
  %513 = ptrtoint ptr %netdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %netdev.i.i.i, align 4
  %515 = ptrtoint ptr %queue_index.i.i.i to i32
  call void @__asan_load2_noabort(i32 %515)
  %516 = load i16, ptr %queue_index.i.i.i, align 4
  %conv.i.i17 = zext i16 %516 to i32
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %514, i32 0, i32 103
  %517 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i18 = getelementptr %struct.netdev_queue, ptr %518, i32 %conv.i.i17, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i18) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !153
  %519 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %519)
  %520 = load i16, ptr %next_to_clean.i.i, align 2
  %521 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %521)
  %522 = load i16, ptr %next_to_use.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %520, i16 %522)
  %cmp.i = icmp ugt i16 %520, %522
  br i1 %cmp.i, label %if.end.i19.i.i.cond.end.i_crit_edge, label %cond.false.i

if.end.i19.i.i.cond.end.i_crit_edge:              ; preds = %if.end.i19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end.i19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %523 = ptrtoint ptr %count.i254.i to i32
  call void @__asan_load2_noabort(i32 %523)
  %524 = load i16, ptr %count.i254.i, align 2
  %conv5.i = zext i16 %524 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end.i19.i.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv5.i, %cond.false.i ], [ 0, %if.end.i19.i.i.cond.end.i_crit_edge ]
  %conv7.i = zext i16 %520 to i32
  %conv9.i = zext i16 %522 to i32
  %525 = xor i32 %conv9.i, -1
  %add.i = add nsw i32 %525, %conv7.i
  %sub10.i = add nsw i32 %add.i, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %sub10.i)
  %cmp11.i = icmp slt i32 %sub10.i, 23
  br i1 %cmp11.i, label %cond.end.i.i40e_maybe_stop_tx.exit.i.i_crit_edge, label %if.end.i20, !prof !132

cond.end.i.i40e_maybe_stop_tx.exit.i.i_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_maybe_stop_tx.exit.i.i

if.end.i20:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %526 = ptrtoint ptr %netdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %netdev.i.i.i, align 4
  %528 = ptrtoint ptr %queue_index.i.i.i to i32
  call void @__asan_load2_noabort(i32 %528)
  %529 = load i16, ptr %queue_index.i.i.i, align 4
  %conv.i25.i = zext i16 %529 to i32
  %_tx.i.i26.i = getelementptr inbounds %struct.net_device, ptr %527, i32 0, i32 103
  %530 = ptrtoint ptr %_tx.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %_tx.i.i26.i, align 128
  %state.i.i27.i = getelementptr %struct.netdev_queue, ptr %531, i32 %conv.i25.i, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i27.i) #14
  %532 = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 25
  %533 = ptrtoint ptr %532 to i32
  call void @__asan_load8_noabort(i32 %533)
  %534 = load i64, ptr %532, align 16
  %inc.i19 = add i64 %534, 1
  store i64 %inc.i19, ptr %532, align 16
  br label %i40e_maybe_stop_tx.exit.i.i

i40e_maybe_stop_tx.exit.i.i:                      ; preds = %if.end.i20, %cond.end.i.i40e_maybe_stop_tx.exit.i.i_crit_edge, %netdev_tx_sent_queue.exit.i.i.i40e_maybe_stop_tx.exit.i.i_crit_edge
  %packet_stride.i.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 21
  %535 = ptrtoint ptr %packet_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %535)
  %536 = load i8, ptr %packet_stride.i.i, align 2
  %inc75.i.i = add i8 %536, 1
  %conv76.i.i = zext i8 %inc75.i.i to i16
  %or78.i.i = or i16 %desc_count.1.lcssa.i.i, %conv76.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %or78.i.i)
  %cmp81.i.i = icmp ugt i16 %or78.i.i, 3
  %spec.select.i270.i = select i1 %cmp81.i.i, i8 0, i8 %inc75.i.i
  %spec.select1.v.i.i = select i1 %cmp81.i.i, i32 3, i32 1
  %spec.select1.i.i = or i32 %spec.select1.v.i.i, %433
  %537 = ptrtoint ptr %packet_stride.i.i to i32
  call void @__asan_store1_noabort(i32 %537)
  store i8 %spec.select.i270.i, ptr %packet_stride.i.i, align 2
  %conv.i21.i.i = zext i32 %spec.select1.i.i to i64
  %shl.i22.i.i = shl nuw nsw i64 %conv.i21.i.i, 4
  %conv4.i26.i.i = zext i32 %size.1.lcssa.i.i to i64
  %shl5.i27.i.i = shl nuw nsw i64 %conv4.i26.i.i, 34
  %or6.i28.i.i = or i64 %shl5.i27.i.i, %or3.i.i.i
  %or9.i31.i.i = or i64 %or6.i28.i.i, %shl.i22.i.i
  %538 = call i64 @llvm.bswap.i64(i64 %or9.i31.i.i) #14
  %cmd_type_offset_bsz88.i.i = getelementptr inbounds %struct.i40e_tx_desc, ptr %tx_desc.1.lcssa.i.i, i32 0, i32 1
  %539 = ptrtoint ptr %cmd_type_offset_bsz88.i.i to i32
  call void @__asan_store8_noabort(i32 %539)
  store i64 %538, ptr %cmd_type_offset_bsz88.i.i, align 8
  call void @skb_clone_tx_timestamp(ptr noundef %skb) #14
  %540 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %end.i.i.i, align 4
  %tx_flags.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %541, i32 0, i32 3
  %542 = ptrtoint ptr %tx_flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %542)
  %543 = load i8, ptr %tx_flags.i.i.i, align 1
  %544 = and i8 %543, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %544)
  %tobool.not.i.i271.i = icmp eq i8 %544, 0
  br i1 %tobool.not.i.i271.i, label %i40e_maybe_stop_tx.exit.i.i.skb_tx_timestamp.exit.i.i_crit_edge, label %if.then.i32.i.i

i40e_maybe_stop_tx.exit.i.i.skb_tx_timestamp.exit.i.i_crit_edge: ; preds = %i40e_maybe_stop_tx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_tx_timestamp.exit.i.i

if.then.i32.i.i:                                  ; preds = %i40e_maybe_stop_tx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #14
  br label %skb_tx_timestamp.exit.i.i

skb_tx_timestamp.exit.i.i:                        ; preds = %if.then.i32.i.i, %i40e_maybe_stop_tx.exit.i.i.skb_tx_timestamp.exit.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !164
  call void @arm_heavy_mb() #14
  %545 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %545)
  store ptr %tx_desc.1.lcssa.i.i, ptr %arrayidx.i, align 4
  %546 = ptrtoint ptr %netdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %netdev.i.i.i, align 4
  %548 = ptrtoint ptr %queue_index.i.i.i to i32
  call void @__asan_load2_noabort(i32 %548)
  %549 = load i16, ptr %queue_index.i.i.i, align 4
  %conv.i36.i.i = zext i16 %549 to i32
  %_tx.i.i37.i.i = getelementptr inbounds %struct.net_device, ptr %547, i32 0, i32 103
  %550 = ptrtoint ptr %_tx.i.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %_tx.i.i37.i.i, align 128
  %state.i39.i.i = getelementptr %struct.netdev_queue, ptr %551, i32 %conv.i36.i.i, i32 13
  %552 = ptrtoint ptr %state.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %state.i39.i.i, align 4
  %and.i40.i.i = and i32 %553, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40.i.i)
  %tobool.i.not.i272.i = icmp eq i32 %and.i40.i.i, 0
  br i1 %tobool.i.not.i272.i, label %lor.lhs.false.i274.i, label %skb_tx_timestamp.exit.i.i.do.body94.i.i_crit_edge

skb_tx_timestamp.exit.i.i.do.body94.i.i_crit_edge: ; preds = %skb_tx_timestamp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body94.i.i

lor.lhs.false.i274.i:                             ; preds = %skb_tx_timestamp.exit.i.i
  %554 = call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i273.i = and i32 %554, -16384
  %555 = inttoptr i32 %and.i.i.i273.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %555, i32 0, i32 3
  %556 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %557
  %558 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i41.i.i = add i32 %559, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %560 = inttoptr i32 %add.i41.i.i to ptr
  %561 = ptrtoint ptr %560 to i32
  call void @__asan_load1_noabort(i32 %561)
  %562 = load i8, ptr %560, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %562)
  %tobool.i42.not.i.i = icmp eq i8 %562, 0
  br i1 %tobool.i42.not.i.i, label %lor.lhs.false.i274.i.do.body94.i.i_crit_edge, label %lor.lhs.false.i274.i.cleanup_crit_edge

lor.lhs.false.i274.i.cleanup_crit_edge:           ; preds = %lor.lhs.false.i274.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.i274.i.do.body94.i.i_crit_edge:     ; preds = %lor.lhs.false.i274.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body94.i.i

do.body94.i.i:                                    ; preds = %lor.lhs.false.i274.i.do.body94.i.i_crit_edge, %skb_tx_timestamp.exit.i.i.do.body94.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !165
  call void @arm_heavy_mb() #14
  %563 = call i32 @llvm.bswap.i32(i32 %conv7.i17.i.i) #14
  %tail.i.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 9
  %564 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %tail.i.i, align 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %565, i32 %563) #14, !srcloc !130
  br label %cleanup

do.end101.i.i:                                    ; preds = %for.inc.i.i.do.end101.i.i_crit_edge, %dma_map_single_attrs.exit.do.end101_crit_edge.i.i
  %idxprom10493.pre-phi.i.i = phi i32 [ %.pre.i.i, %dma_map_single_attrs.exit.do.end101_crit_edge.i.i ], [ %idxprom60.i.i, %for.inc.i.i.do.end101.i.i_crit_edge ]
  %i.0.lcssa.i.i = phi i16 [ %431, %dma_map_single_attrs.exit.do.end101_crit_edge.i.i ], [ %i.3.i.i, %for.inc.i.i.do.end101.i.i_crit_edge ]
  %566 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %567, ptr noundef nonnull @.str.48) #17
  %568 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %92, align 4
  %arrayidx10594.i.i = getelementptr %struct.i40e_tx_buffer, ptr %569, i32 %idxprom10493.pre-phi.i.i
  call fastcc void @i40e_unmap_and_free_tx_resource(ptr noundef %7, ptr noundef %arrayidx10594.i.i) #14
  %cmp10695.i.i = icmp eq ptr %arrayidx10594.i.i, %arrayidx.i
  br i1 %cmp10695.i.i, label %do.end101.i.i.i40e_tx_map.exit.i_crit_edge, label %if.end109.lr.ph.i.i

do.end101.i.i.i40e_tx_map.exit.i_crit_edge:       ; preds = %do.end101.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_tx_map.exit.i

if.end109.lr.ph.i.i:                              ; preds = %do.end101.i.i
  %count114.i.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 11
  br label %if.end109.i.i

if.end109.i.i:                                    ; preds = %if.end115.i.i.if.end109.i.i_crit_edge, %if.end109.lr.ph.i.i
  %i.596.i.i = phi i16 [ %i.0.lcssa.i.i, %if.end109.lr.ph.i.i ], [ %dec.i276.i, %if.end115.i.i.if.end109.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %i.596.i.i)
  %cmp111.i.i = icmp eq i16 %i.596.i.i, 0
  br i1 %cmp111.i.i, label %if.then113.i275.i, label %if.end109.i.i.if.end115.i.i_crit_edge

if.end109.i.i.if.end115.i.i_crit_edge:            ; preds = %if.end109.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115.i.i

if.then113.i275.i:                                ; preds = %if.end109.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %570 = ptrtoint ptr %count114.i.i to i32
  call void @__asan_load2_noabort(i32 %570)
  %571 = load i16, ptr %count114.i.i, align 2
  br label %if.end115.i.i

if.end115.i.i:                                    ; preds = %if.then113.i275.i, %if.end109.i.i.if.end115.i.i_crit_edge
  %i.6.i.i = phi i16 [ %571, %if.then113.i275.i ], [ %i.596.i.i, %if.end109.i.i.if.end115.i.i_crit_edge ]
  %dec.i276.i = add i16 %i.6.i.i, -1
  %572 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %92, align 4
  %idxprom104.i.i = zext i16 %dec.i276.i to i32
  %arrayidx105.i.i = getelementptr %struct.i40e_tx_buffer, ptr %573, i32 %idxprom104.i.i
  call fastcc void @i40e_unmap_and_free_tx_resource(ptr noundef %7, ptr noundef %arrayidx105.i.i) #14
  %cmp106.i.i = icmp eq ptr %arrayidx105.i.i, %arrayidx.i
  br i1 %cmp106.i.i, label %if.end115.i.i.i40e_tx_map.exit.i_crit_edge, label %if.end115.i.i.if.end109.i.i_crit_edge

if.end115.i.i.if.end109.i.i_crit_edge:            ; preds = %if.end115.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end109.i.i

if.end115.i.i.i40e_tx_map.exit.i_crit_edge:       ; preds = %if.end115.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_tx_map.exit.i

i40e_tx_map.exit.i:                               ; preds = %if.end115.i.i.i40e_tx_map.exit.i_crit_edge, %do.end101.i.i.i40e_tx_map.exit.i_crit_edge
  %i.5.lcssa.i.i = phi i16 [ %i.0.lcssa.i.i, %do.end101.i.i.i40e_tx_map.exit.i_crit_edge ], [ %dec.i276.i, %if.end115.i.i.i40e_tx_map.exit.i_crit_edge ]
  %574 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_store2_noabort(i32 %574)
  store i16 %i.5.lcssa.i.i, ptr %next_to_use.i.i, align 4
  br label %cleanup_tx_tstamp.i

out_drop.i:                                       ; preds = %i40e_tx_enable_csum.exit.i, %skb_cow_head.exit.i141.i.out_drop.i_crit_edge, %skb_cow_head.exit.i.i.out_drop.i_crit_edge, %cleanup.thread.i.i
  %tx_flags.8.i = phi i32 [ %tx_flags.6.i, %i40e_tx_enable_csum.exit.i ], [ 0, %cleanup.thread.i.i ], [ 0, %skb_cow_head.exit.i.i.out_drop.i_crit_edge ], [ %tx_flags.1.i, %skb_cow_head.exit.i141.i.out_drop.i_crit_edge ]
  %575 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %97, align 4
  call fastcc void @trace_i40e_xmit_frame_ring_drop(ptr noundef %576, ptr noundef %7) #14
  %577 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %97, align 4
  call void @__dev_kfree_skb_any(ptr noundef %578, i32 noundef 1) #14
  %579 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %579)
  store ptr null, ptr %97, align 4
  br label %cleanup_tx_tstamp.i

cleanup_tx_tstamp.i:                              ; preds = %out_drop.i, %i40e_tx_map.exit.i
  %tx_flags.9.i = phi i32 [ %tx_flags.8.i, %out_drop.i ], [ %tx_flags.7348.i, %i40e_tx_map.exit.i ]
  %and.i = and i32 %tx_flags.9.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool52.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool52.not.i, label %cleanup_tx_tstamp.i.cleanup_crit_edge, label %if.then55.i, !prof !132

cleanup_tx_tstamp.i.cleanup_crit_edge:            ; preds = %cleanup_tx_tstamp.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then55.i:                                      ; preds = %cleanup_tx_tstamp.i
  call void @__sanitizer_cov_trace_pc() #16
  %netdev.i = getelementptr inbounds %struct.i40e_ring, ptr %7, i32 0, i32 3
  %580 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %netdev.i, align 4
  %add.ptr.i.i278.i = getelementptr i8, ptr %581, i32 2304
  %582 = ptrtoint ptr %add.ptr.i.i278.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %add.ptr.i.i278.i, align 4
  %back.i279.i = getelementptr inbounds %struct.i40e_vsi, ptr %583, i32 0, i32 57
  %584 = ptrtoint ptr %back.i279.i to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %back.i279.i, align 8
  %ptp_tx_skb.i = getelementptr inbounds %struct.i40e_pf, ptr %585, i32 0, i32 95
  %586 = ptrtoint ptr %ptp_tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %ptp_tx_skb.i, align 8
  call void @__dev_kfree_skb_any(ptr noundef %587, i32 noundef 1) #14
  %588 = ptrtoint ptr %ptp_tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %588)
  store ptr null, ptr %ptp_tx_skb.i, align 8
  %state.i = getelementptr inbounds %struct.i40e_pf, ptr %585, i32 0, i32 2
  %call.i.i15 = call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !166
  call void @llvm.prefetch.p0(ptr %state.i, i32 1, i32 3, i32 1) #14
  %589 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state.i, ptr %state.i, i32 524288, ptr elementtype(i32) %state.i) #14, !srcloc !167
  br label %cleanup

cleanup:                                          ; preds = %if.then55.i, %cleanup_tx_tstamp.i.cleanup_crit_edge, %do.body94.i.i, %lor.lhs.false.i274.i.cleanup_crit_edge, %if.then9.i, %if.then3.i, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.i.i.cleanup_crit_edge ], [ 0, %if.then3.i ], [ 16, %if.then9.i ], [ 0, %if.then55.i ], [ 0, %cleanup_tx_tstamp.i.cleanup_crit_edge ], [ 0, %do.body94.i.i ], [ 0, %lor.lhs.false.i274.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_xdp_xmit(ptr nocapture noundef readonly %dev, i32 noundef %n, ptr nocapture noundef readonly %frames, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %5, i32 0, i32 57
  %6 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %back, align 8
  %state = getelementptr inbounds %struct.i40e_vsi, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup38_crit_edge

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup38

if.end:                                           ; preds = %entry
  %xdp_prog.i = getelementptr inbounds %struct.i40e_vsi, ptr %5, i32 0, i32 33
  %10 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %xdp_prog.i, align 32
  %tobool.i.not = icmp eq ptr %11, null
  br i1 %tobool.i.not, label %if.end.cleanup38_crit_edge, label %lor.lhs.false

if.end.cleanup38_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup38

lor.lhs.false:                                    ; preds = %if.end
  %num_queue_pairs = getelementptr inbounds %struct.i40e_vsi, ptr %5, i32 0, i32 44
  %12 = ptrtoint ptr %num_queue_pairs to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_queue_pairs, align 2
  %conv = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp ult i32 %3, %conv
  br i1 %cmp.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup38_crit_edge

lor.lhs.false.cleanup38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup38

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %state7 = getelementptr inbounds %struct.i40e_pf, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %state7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state7, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not = icmp eq i32 %16, 0
  br i1 %tobool10.not, label %if.end12, label %lor.lhs.false6.cleanup38_crit_edge

lor.lhs.false6.cleanup38_crit_edge:               ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup38

if.end12:                                         ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool13.not = icmp ult i32 %flags, 2
  br i1 %tobool13.not, label %if.end17, label %if.end12.cleanup38_crit_edge, !prof !132

if.end12.cleanup38_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup38

if.end17:                                         ; preds = %if.end12
  %xdp_rings = getelementptr inbounds %struct.i40e_vsi, ptr %5, i32 0, i32 22
  %17 = ptrtoint ptr %xdp_rings to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xdp_rings, align 64
  %arrayidx = getelementptr ptr, ptr %18, i32 %3
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp1856 = icmp sgt i32 %n, 0
  br i1 %cmp1856, label %if.end17.for.body_crit_edge, label %if.end17.for.end_crit_edge

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end17.for.body_crit_edge
  %i.058 = phi i32 [ %inc27, %for.inc.for.body_crit_edge ], [ 0, %if.end17.for.body_crit_edge ]
  %arrayidx20 = getelementptr ptr, ptr %frames, i32 %i.058
  %21 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx20, align 4
  %call21 = tail call fastcc i32 @i40e_xmit_xdp_ring(ptr noundef %22, ptr noundef %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 2
  br i1 %cmp22.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc27 = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc27, %n
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end17.for.end_crit_edge
  %nxmit.0.lcssa = phi i32 [ 0, %if.end17.for.end_crit_edge ], [ %i.058, %for.body.for.end_crit_edge ], [ %n, %for.inc.for.end_crit_edge ]
  %and28 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %for.end.cleanup38_crit_edge, label %if.then36, !prof !132

for.end.cleanup38_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup38

if.then36:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !137
  tail call void @arm_heavy_mb() #14
  %next_to_use.i = getelementptr inbounds %struct.i40e_ring, ptr %20, i32 0, i32 14
  %23 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %next_to_use.i, align 4
  %conv.i = zext i16 %24 to i32
  %25 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #14
  %tail.i = getelementptr inbounds %struct.i40e_ring, ptr %20, i32 0, i32 9
  %26 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i, align 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #14, !srcloc !130
  br label %cleanup38

cleanup38:                                        ; preds = %if.then36, %for.end.cleanup38_crit_edge, %if.end12.cleanup38_crit_edge, %lor.lhs.false6.cleanup38_crit_edge, %lor.lhs.false.cleanup38_crit_edge, %if.end.cleanup38_crit_edge, %entry.cleanup38_crit_edge
  %retval.0 = phi i32 [ -100, %entry.cleanup38_crit_edge ], [ -6, %lor.lhs.false6.cleanup38_crit_edge ], [ -6, %lor.lhs.false.cleanup38_crit_edge ], [ -6, %if.end.cleanup38_crit_edge ], [ -22, %if.end12.cleanup38_crit_edge ], [ %nxmit.0.lcssa, %if.then36 ], [ %nxmit.0.lcssa, %for.end.cleanup38_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_prepare_fdir_filter(ptr nocapture noundef readonly %pf, ptr nocapture noundef %fd_data, i1 noundef zeroext %add, ptr noundef %packet_addr, i32 noundef %payload_offset, i8 noundef zeroext %pctype) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flex_filter = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 14
  %0 = ptrtoint ptr %flex_filter to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flex_filter, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %flex_word = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 12
  %2 = ptrtoint ptr %flex_word to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flex_word, align 4
  %flex_offset = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 13
  %4 = ptrtoint ptr %flex_offset to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flex_offset, align 2
  %add.ptr = getelementptr i8, ptr %packet_addr, i32 %payload_offset
  %vlan_tag = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 11
  %6 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vlan_tag, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool1.not = icmp eq i16 %7, 0
  %spec.select.idx = select i1 %tobool1.not, i32 0, i32 4
  %spec.select = getelementptr i8, ptr %add.ptr, i32 %spec.select.idx
  %conv = zext i16 %5 to i32
  %add.ptr4 = getelementptr i8, ptr %spec.select, i32 %conv
  %8 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %3, ptr %add.ptr4, align 2
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry.if.end5_crit_edge
  %pctype6 = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 17
  %9 = ptrtoint ptr %pctype6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %pctype, ptr %pctype6, align 1
  %num_alloc_vsi.i.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 20
  %10 = ptrtoint ptr %num_alloc_vsi.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_alloc_vsi.i.i, align 2
  %conv.i.i = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp4.not.i.i = icmp eq i16 %11, 0
  br i1 %cmp4.not.i.i, label %if.end5.do.end_crit_edge, label %for.body.lr.ph.i.i

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

for.body.lr.ph.i.i:                               ; preds = %if.end5
  %vsi2.i.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 74
  %12 = ptrtoint ptr %vsi2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vsi2.i.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.05.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %13, i32 %i.05.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %type3.i.i = getelementptr inbounds %struct.i40e_vsi, ptr %15, i32 0, i32 47
  %16 = ptrtoint ptr %type3.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %17)
  %cmp5.i.i = icmp eq i32 %17, 7
  br i1 %cmp5.i.i, label %if.end.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.do.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end.i:                                         ; preds = %land.lhs.true.i.i
  %tx_rings.i = getelementptr inbounds %struct.i40e_vsi, ptr %15, i32 0, i32 21
  %18 = ptrtoint ptr %tx_rings.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_rings.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %dev1.i = getelementptr inbounds %struct.i40e_ring, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1.i, align 8
  %next_to_clean.i = getelementptr inbounds %struct.i40e_ring, ptr %21, i32 0, i32 15
  %next_to_use.i = getelementptr inbounds %struct.i40e_ring, ptr %21, i32 0, i32 14
  %count.i = getelementptr inbounds %struct.i40e_ring, ptr %21, i32 0, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end15.i, %if.end.i
  %i.0.i = phi i16 [ 10, %if.end.i ], [ %dec.i, %if.end15.i ]
  %24 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %next_to_clean.i, align 2
  %26 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %next_to_use.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp.i = icmp ugt i16 %25, %27
  br i1 %cmp.i, label %for.cond.i.cond.end.i_crit_edge, label %cond.false.i

for.cond.i.cond.end.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

cond.false.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %count.i, align 2
  %conv4.i = zext i16 %29 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %for.cond.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv4.i, %cond.false.i ], [ 0, %for.cond.i.cond.end.i_crit_edge ]
  %conv6.i = zext i16 %25 to i32
  %conv9.i = zext i16 %27 to i32
  %30 = xor i32 %conv9.i, -1
  %add7.i = add nsw i32 %30, %conv6.i
  %sub10.i = add nsw i32 %add7.i, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub10.i)
  %cmp11.i = icmp slt i32 %sub10.i, 2
  br i1 %cmp11.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %cond.end.i
  %tobool13.not.i = icmp eq i16 %i.0.i, 0
  br i1 %tobool13.not.i, label %for.body.i.do.end_crit_edge, label %if.end15.i

for.body.i.do.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end15.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %call16.i = tail call i32 @msleep_interruptible(i32 noundef 1) #14
  %dec.i = add nsw i16 %i.0.i, -1
  br label %for.cond.i

for.end.i:                                        ; preds = %cond.end.i
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %packet_addr) #14
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %for.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !132

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %23) #14
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 3
  %31 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %23, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %34, %if.end.i.i.i ], [ %32, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #14
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef -1) #14
  br label %do.end

dma_map_single_attrs.exit.i:                      ; preds = %for.end.i
  tail call void @debug_dma_map_single(ptr noundef %23, ptr noundef %packet_addr, i32 noundef 512) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %35 = load ptr, ptr @mem_map, align 4
  %36 = ptrtoint ptr %packet_addr to i32
  %sub.i.i = add i32 %36, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %35, i32 %shr.i.i
  %and.i.i = and i32 %36, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %23, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 512, i32 noundef 1, i32 noundef 0) #14
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef %call41.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.do.end_crit_edge, label %if.end21.i

dma_map_single_attrs.exit.i.do.end_crit_edge:     ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end21.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %37 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %next_to_use.i, align 4
  %39 = getelementptr inbounds %struct.i40e_ring, ptr %21, i32 0, i32 5
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %idxprom.i = zext i16 %38 to i32
  %arrayidx23.i = getelementptr %struct.i40e_tx_buffer, ptr %41, i32 %idxprom.i
  %vsi.i.i = getelementptr inbounds %struct.i40e_ring, ptr %21, i32 0, i32 28
  %42 = ptrtoint ptr %vsi.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vsi.i.i, align 8
  %back.i.i = getelementptr inbounds %struct.i40e_vsi, ptr %43, i32 0, i32 57
  %44 = ptrtoint ptr %back.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %back.i.i, align 8
  %desc.i.i = getelementptr inbounds %struct.i40e_ring, ptr %21, i32 0, i32 1
  %46 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %desc.i.i, align 4
  %inc.i92.i = add i16 %38, 1
  %48 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %count.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i92.i, i16 %49)
  %cmp.i93.i = icmp ult i16 %inc.i92.i, %49
  %spec.select.i.i = select i1 %cmp.i93.i, i16 %inc.i92.i, i16 0
  %50 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %spec.select.i.i, ptr %next_to_use.i, align 4
  %q_index.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 15
  %51 = ptrtoint ptr %q_index.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %q_index.i.i, align 2
  %flex_off.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 16
  %53 = ptrtoint ptr %flex_off.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %flex_off.i.i, align 4
  %55 = ptrtoint ptr %pctype6 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %pctype6, align 1
  %dest_vsi.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 18
  %57 = ptrtoint ptr %dest_vsi.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %dest_vsi.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool.not.i94.i = icmp eq i16 %58, 0
  br i1 %tobool.not.i94.i, label %cond.false16.i.i, label %if.end21.i.if.else_crit_edge

if.end21.i.if.else_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

cond.false16.i.i:                                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  %vsi17.i.i = getelementptr inbounds %struct.i40e_pf, ptr %45, i32 0, i32 74
  %59 = ptrtoint ptr %vsi17.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vsi17.i.i, align 8
  %lan_vsi.i.i = getelementptr inbounds %struct.i40e_pf, ptr %45, i32 0, i32 71
  %61 = ptrtoint ptr %lan_vsi.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %lan_vsi.i.i, align 8
  %idxprom18.i.i = zext i16 %62 to i32
  %arrayidx19.i.i = getelementptr ptr, ptr %60, i32 %idxprom18.i.i
  %63 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx19.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.i40e_vsi, ptr %64, i32 0, i32 39
  %65 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %id.i.i, align 4
  br label %if.else

do.end:                                           ; preds = %dma_map_single_attrs.exit.i.do.end_crit_edge, %dma_map_single_attrs.exit.thread.i, %for.body.i.do.end_crit_edge, %for.inc.i.i.do.end_crit_edge, %if.end5.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -2, %if.end5.do.end_crit_edge ], [ -1, %dma_map_single_attrs.exit.thread.i ], [ -1, %dma_map_single_attrs.exit.i.do.end_crit_edge ], [ -11, %for.body.i.do.end_crit_edge ], [ -2, %for.inc.i.i.do.end_crit_edge ]
  %67 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  %69 = ptrtoint ptr %pctype6 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %pctype6, align 1
  %conv11 = zext i8 %70 to i32
  %fd_id = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 22
  %71 = ptrtoint ptr %fd_id to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fd_id, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %conv11, i32 noundef %72, i32 noundef %retval.0.i.ph) #17
  br label %cleanup

if.else:                                          ; preds = %cond.false16.i.i, %if.end21.i.if.else_crit_edge
  %cond22.in.i.i = phi i16 [ %66, %cond.false16.i.i ], [ %58, %if.end21.i.if.else_crit_edge ]
  %dest_ctl.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 19
  %73 = ptrtoint ptr %dest_ctl.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %dest_ctl.i.i, align 4
  %conv30.i.i = zext i8 %74 to i32
  %shl31.i.i = shl nuw nsw i32 %conv30.i.i, 7
  %75 = and i32 %shl31.i.i, 384
  %conv34.i.i = select i1 %add, i32 24, i32 40
  %or35.i.i = or i32 %75, %conv34.i.i
  %fd_status.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 20
  %76 = ptrtoint ptr %fd_status.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %fd_status.i.i, align 1
  %conv37.i.i = zext i8 %77 to i32
  %shl38.i.i = shl nuw nsw i32 %conv37.i.i, 13
  %78 = and i32 %shl38.i.i, 24576
  %or4281.i.i = or i32 %or35.i.i, %78
  %cnt_index.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 21
  %79 = ptrtoint ptr %cnt_index.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %cnt_index.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool44.not.i.i = icmp eq i16 %80, 0
  %conv49.i.i = zext i16 %80 to i32
  %shl50.i.i = shl i32 %conv49.i.i, 20
  %and51.i.i = and i32 %shl50.i.i, 535822336
  %81 = or i32 %and51.i.i, %or4281.i.i
  %or52.i.i = or i32 %81, 2048
  %dtype_cmd.0.i.i = select i1 %tobool44.not.i.i, i32 %or4281.i.i, i32 %or52.i.i
  %conv7.i.i = zext i8 %54 to i32
  %shl8.i.i = shl nuw nsw i32 %conv7.i.i, 11
  %and9.i.i = and i32 %shl8.i.i, 14336
  %82 = and i16 %52, 2047
  %and.i95.i = zext i16 %82 to i32
  %or.i.i = or i32 %and9.i.i, %and.i95.i
  %conv10.i.i = zext i8 %56 to i32
  %shl11.i.i = shl nuw nsw i32 %conv10.i.i, 17
  %and12.i.i = and i32 %shl11.i.i, 8257536
  %or13.i.i = or i32 %or.i.i, %and12.i.i
  %cond22.i.i = zext i16 %cond22.in.i.i to i32
  %shl23.i.i = shl i32 %cond22.i.i, 23
  %or25.i.i = or i32 %or13.i.i, %shl23.i.i
  %arrayidx.i96.i = getelementptr %struct.i40e_filter_program_desc, ptr %47, i32 %idxprom.i
  %83 = tail call i32 @llvm.bswap.i32(i32 %or25.i.i) #14
  %84 = ptrtoint ptr %arrayidx.i96.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %arrayidx.i96.i, align 4
  %rsvd.i.i = getelementptr %struct.i40e_filter_program_desc, ptr %47, i32 %idxprom.i, i32 1
  %85 = ptrtoint ptr %rsvd.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %rsvd.i.i, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %dtype_cmd.0.i.i) #14
  %dtype_cmd_cntindex.i.i = getelementptr %struct.i40e_filter_program_desc, ptr %47, i32 %idxprom.i, i32 2
  %87 = ptrtoint ptr %dtype_cmd_cntindex.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %dtype_cmd_cntindex.i.i, align 4
  %fd_id.i.i = getelementptr inbounds %struct.i40e_fdir_filter, ptr %fd_data, i32 0, i32 22
  %88 = ptrtoint ptr %fd_id.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %fd_id.i.i, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #14
  %fd_id53.i.i = getelementptr %struct.i40e_filter_program_desc, ptr %47, i32 %idxprom.i, i32 3
  %91 = ptrtoint ptr %fd_id53.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %fd_id53.i.i, align 4
  %92 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %next_to_use.i, align 4
  %94 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %desc.i.i, align 4
  %idxprom26.i = zext i16 %93 to i32
  %arrayidx27.i = getelementptr %struct.i40e_tx_desc, ptr %95, i32 %idxprom26.i
  %96 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %39, align 4
  %arrayidx29.i = getelementptr %struct.i40e_tx_buffer, ptr %97, i32 %idxprom26.i
  %add31.i = add nuw nsw i32 %idxprom26.i, 1
  %98 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %count.i, align 2
  %conv33.i = zext i16 %99 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add31.i, i32 %conv33.i)
  %cmp34.i = icmp ult i32 %add31.i, %conv33.i
  %phi.cast.i = trunc i32 %add31.i to i16
  %spec.select.i = select i1 %cmp34.i, i16 %phi.cast.i, i16 0
  %100 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %spec.select.i, ptr %next_to_use.i, align 4
  %101 = call ptr @memset(ptr %arrayidx29.i, i32 0, i32 28)
  %len.i = getelementptr %struct.i40e_tx_buffer, ptr %97, i32 %idxprom26.i, i32 5
  %102 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 512, ptr %len.i, align 4
  %dma44.i = getelementptr %struct.i40e_tx_buffer, ptr %97, i32 %idxprom26.i, i32 4
  %103 = ptrtoint ptr %dma44.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call41.i.i, ptr %dma44.i, align 4
  %conv45.i = zext i32 %call41.i.i to i64
  %104 = tail call i64 @llvm.bswap.i64(i64 %conv45.i) #14
  %105 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %104, ptr %arrayidx27.i, align 8
  %tx_flags.i = getelementptr %struct.i40e_tx_buffer, ptr %97, i32 %idxprom26.i, i32 6
  %106 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 512, ptr %tx_flags.i, align 4
  %107 = getelementptr %struct.i40e_tx_buffer, ptr %97, i32 %idxprom26.i, i32 1
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %packet_addr, ptr %107, align 4
  %cmd_type_offset_bsz.i = getelementptr %struct.i40e_tx_desc, ptr %95, i32 %idxprom26.i, i32 1
  %109 = ptrtoint ptr %cmd_type_offset_bsz.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 3459045988797775872, ptr %cmd_type_offset_bsz.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !168
  tail call void @arm_heavy_mb() #14
  %110 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %arrayidx27.i, ptr %arrayidx23.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !169
  tail call void @arm_heavy_mb() #14
  %111 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %next_to_use.i, align 4
  %conv51.i = zext i16 %112 to i32
  %113 = tail call i32 @llvm.bswap.i32(i32 %conv51.i) #14
  %tail.i = getelementptr inbounds %struct.i40e_ring, ptr %21, i32 0, i32 9
  %114 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %tail.i, align 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %113) #14, !srcloc !130
  %debug_mask = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 39
  %116 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %debug_mask, align 8
  %and = and i32 %117, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.else.cleanup_crit_edge, label %if.then13

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then13:                                        ; preds = %if.else
  %118 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pf, align 8
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %119, i32 0, i32 44
  %120 = ptrtoint ptr %pctype6 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %pctype6, align 1
  %conv22 = zext i8 %121 to i32
  %122 = ptrtoint ptr %fd_id.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %fd_id.i.i, align 4
  br i1 %add, label %do.end18, label %do.end27

do.end18:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20, ptr noundef nonnull @.str.22, i32 noundef %conv22, i32 noundef %123) #17
  br label %cleanup

do.end27:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20, ptr noundef nonnull @.str.25, i32 noundef %conv22, i32 noundef %123) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %do.end18, %if.else.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %do.end27 ], [ 0, %do.end18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_map_single_attrs(ptr noundef %dev, ptr noundef %ptr, i32 noundef %size) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %ptr) #14
  br i1 %call, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b1 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1, label %land.rhs.return_crit_edge, label %if.then, !prof !132

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16 = tail call ptr @dev_driver_string(ptr noundef %dev) #14
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef %call16, ptr noundef %retval.0.i) #14
  br label %return

if.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %ptr, i32 noundef %size) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %5 = ptrtoint ptr %ptr to i32
  %sub = add i32 %5, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %4, i32 %shr
  %and = and i32 %5, 4095
  %call41 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr, i32 noundef %and, i32 noundef %size, i32 noundef 1, i32 noundef 0) #14
  br label %return

return:                                           ; preds = %if.end39, %dev_name.exit, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ %call41, %if.end39 ], [ -1, %dev_name.exit ], [ -1, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_get_current_atr_cnt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_get_global_fd_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @page_ref_add(ptr noundef %page) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %_refcount = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %_refcount, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount, ptr %_refcount, i32 65534, ptr elementtype(i32) %_refcount) #14, !srcloc !170
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@page_ref_add, %if.then)) #14
          to label %if.end [label %if.then], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__page_ref_mod(ptr noundef %page, i32 noundef 65534) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdp_convert_zc_to_xdp_frame(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_warn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_i40e_clean_tx_irq(ptr noundef %ring, ptr noundef %desc, ptr noundef %buf) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i40e_clean_tx_irq, i32 0, i32 1), ptr blockaddress(@trace_i40e_clean_tx_irq, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !132

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !172
  %call42 = tail call i32 @__traceiter_i40e_clean_tx_irq(ptr noundef null, ptr noundef %ring, ptr noundef %desc, ptr noundef %buf) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !173
  %13 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !132

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i40e_clean_tx_irq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i40e_clean_tx_irq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_i40e_clean_tx_irq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_i40e_clean_tx_irq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 101, ptr noundef nonnull @.str.42) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
declare dso_local void @napi_consume_skb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_i40e_clean_tx_irq_unmap(ptr noundef %ring, ptr noundef %desc, ptr noundef %buf) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i40e_clean_tx_irq_unmap, i32 0, i32 1), ptr blockaddress(@trace_i40e_clean_tx_irq_unmap, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !132

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !176
  %call42 = tail call i32 @__traceiter_i40e_clean_tx_irq_unmap(ptr noundef null, ptr noundef %ring, ptr noundef %desc, ptr noundef %buf) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !177
  %13 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !132

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i40e_clean_tx_irq_unmap, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i40e_clean_tx_irq_unmap, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_i40e_clean_tx_irq_unmap.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_i40e_clean_tx_irq_unmap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 109, ptr noundef nonnull @.str.42) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
declare dso_local i32 @__traceiter_i40e_clean_tx_irq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_i40e_clean_tx_irq_unmap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_i40e_clean_rx_irq(ptr noundef %ring, ptr noundef %desc, ptr noundef %skb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i40e_clean_rx_irq, i32 0, i32 1), ptr blockaddress(@trace_i40e_clean_rx_irq, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !132

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !178
  %call42 = tail call i32 @__traceiter_i40e_clean_rx_irq(ptr noundef null, ptr noundef %ring, ptr noundef %desc, ptr noundef %skb) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  %13 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !132

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i40e_clean_rx_irq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i40e_clean_rx_irq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_i40e_clean_rx_irq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_i40e_clean_rx_irq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 146, ptr noundef nonnull @.str.42) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_run_xdp(ptr noundef %rx_ring, ptr noundef %xdp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %xdp_prog1 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 4
  %0 = ptrtoint ptr %xdp_prog1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %xdp_prog1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.xdp_out_crit_edge, label %if.end

entry.xdp_out_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %xdp_out

if.end:                                           ; preds = %entry
  %data_hard_start = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %2 = ptrtoint ptr %data_hard_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_hard_start, align 4
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1)
  tail call void @__cant_migrate(ptr noundef nonnull @.str.43, i32 noundef 613) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@i40e_run_xdp, %if.then.i.i)) #14
          to label %if.else.i.i [label %if.then.i.i], !srcloc !171

if.then.i.i:                                      ; preds = %if.end
  %call3.i.i = tail call i64 @sched_clock() #14
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bpf_func.i.i, align 4
  %call4.i.i = tail call i32 @bpf_dispatcher_xdp_func(ptr noundef %xdp, ptr noundef %insnsi.i.i, ptr noundef %5) #14
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stats9.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %14, %8
  %15 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %15, i32 0, i32 3
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !180
  %and.i.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %17 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !139
  %22 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %27, ptrtoint (ptr @lockdep_recursion to i32)
  %28 = inttoptr i32 %add.i.i.i.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !140
  %31 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i7.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool20.not.i.i.i.i = icmp eq i32 %30, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %35 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i.i.i = icmp eq i32 %38, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %39 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i9.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %42, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !141
  %43 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %46, ptrtoint (ptr @hardirqs_enabled to i32)
  %47 = inttoptr i32 %add47.i.i.i.i to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !142
  %50 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i12.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %53, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool54.not.i.i.i.i = icmp eq i32 %49, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !132

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %54 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %55, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !143
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %15, i32 0, i32 3, i32 0, i32 1
  %56 = tail call ptr @llvm.returnaddress(i32 0) #14
  %57 = ptrtoint ptr %56 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %57) #14
  %58 = ptrtoint ptr %15 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %15, align 8
  %inc.i.i.i = add i64 %59, 1
  store i64 %inc.i.i.i, ptr %15, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %15, i32 0, i32 1
  %call13.i.i = tail call i64 @sched_clock() #14
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %60 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %61
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %57) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !138
  %62 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %63, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_on() #14
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %64 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !181
  %and.i.i.i3.i.i = and i32 %64, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i3.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i3.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !135

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #14, !srcloc !182
  br label %__bpf_prog_run.exit.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 9
  %65 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bpf_func17.i.i, align 4
  %call18.i.i = tail call i32 @bpf_dispatcher_xdp_func(ptr noundef %xdp, ptr noundef %insnsi15.i.i, ptr noundef %66) #14
  br label %__bpf_prog_run.exit.i

__bpf_prog_run.exit.i:                            ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call4.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call18.i.i, %if.else.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_master_redirect_enabled_key, ptr blockaddress(@i40e_run_xdp, %l_yes.i.i)) #14
          to label %arch_static_branch.exit.i [label %l_yes.i.i], !srcloc !171

l_yes.i.i:                                        ; preds = %__bpf_prog_run.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arch_static_branch.exit.i

arch_static_branch.exit.i:                        ; preds = %l_yes.i.i, %__bpf_prog_run.exit.i
  %retval.0.i.i = phi i1 [ true, %l_yes.i.i ], [ false, %__bpf_prog_run.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ret.0.i.i)
  %cmp.i = icmp eq i32 %ret.0.i.i, 3
  %or.cond.i = select i1 %retval.0.i.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i, label %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge

arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge: ; preds = %arch_static_branch.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bpf_prog_run_xdp.exit

land.lhs.true.i:                                  ; preds = %arch_static_branch.exit.i
  %rxq.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %67 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rxq.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 128
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 14
  %71 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %72, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.sw.bb_crit_edge, label %netif_is_bond_slave.exit.i

land.lhs.true.i.sw.bb_crit_edge:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

netif_is_bond_slave.exit.i:                       ; preds = %land.lhs.true.i
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 15
  %73 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %74, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_slave.exit.i.sw.bb_crit_edge, label %if.then5.i

netif_is_bond_slave.exit.i.sw.bb_crit_edge:       ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.then5.i:                                       ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %call6.i = tail call i32 @xdp_master_redirect(ptr noundef %xdp) #14
  br label %bpf_prog_run_xdp.exit

bpf_prog_run_xdp.exit:                            ; preds = %if.then5.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge
  %act.0.i = phi i32 [ %call6.i, %if.then5.i ], [ %ret.0.i.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge ]
  %75 = zext i32 %act.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %act.0.i, label %sw.default [
    i32 2, label %bpf_prog_run_xdp.exit.xdp_out_crit_edge
    i32 3, label %bpf_prog_run_xdp.exit.sw.bb_crit_edge
    i32 4, label %sw.bb5
    i32 0, label %bpf_prog_run_xdp.exit.out_failure_crit_edge
    i32 1, label %bpf_prog_run_xdp.exit.sw.bb13_crit_edge
  ]

bpf_prog_run_xdp.exit.sw.bb13_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb13

bpf_prog_run_xdp.exit.out_failure_crit_edge:      ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_failure

bpf_prog_run_xdp.exit.sw.bb_crit_edge:            ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

bpf_prog_run_xdp.exit.xdp_out_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %xdp_out

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
  %call2 = tail call i32 @i40e_xmit_xdp_tx_ring(ptr noundef %xdp, ptr noundef %83)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp eq i32 %call2, 1
  br i1 %cmp, label %sw.bb.out_failure_crit_edge, label %sw.bb.xdp_out_crit_edge

sw.bb.xdp_out_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %xdp_out

sw.bb.out_failure_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_failure

sw.bb5:                                           ; preds = %bpf_prog_run_xdp.exit
  %netdev = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 3
  %84 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %netdev, align 4
  %call6 = tail call i32 @xdp_do_redirect(ptr noundef %85, ptr noundef %xdp, ptr noundef nonnull %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %sw.bb5.xdp_out_crit_edge, label %sw.bb5.out_failure_crit_edge

sw.bb5.out_failure_crit_edge:                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_failure

sw.bb5.xdp_out_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #16
  br label %xdp_out

sw.default:                                       ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #16
  %netdev10 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 3
  %86 = ptrtoint ptr %netdev10 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %netdev10, align 4
  tail call void @bpf_warn_invalid_xdp_action(ptr noundef %87, ptr noundef nonnull %1, i32 noundef %act.0.i) #14
  br label %out_failure

out_failure:                                      ; preds = %sw.default, %sw.bb5.out_failure_crit_edge, %sw.bb.out_failure_crit_edge, %bpf_prog_run_xdp.exit.out_failure_crit_edge
  %act.0.i30 = phi i32 [ %act.0.i, %sw.default ], [ %act.0.i, %bpf_prog_run_xdp.exit.out_failure_crit_edge ], [ 4, %sw.bb5.out_failure_crit_edge ], [ 3, %sw.bb.out_failure_crit_edge ]
  %netdev12 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 3
  %88 = ptrtoint ptr %netdev12 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %netdev12, align 4
  tail call fastcc void @trace_xdp_exception(ptr noundef %89, ptr noundef nonnull %1, i32 noundef %act.0.i30)
  br label %sw.bb13

sw.bb13:                                          ; preds = %out_failure, %bpf_prog_run_xdp.exit.sw.bb13_crit_edge
  br label %xdp_out

xdp_out:                                          ; preds = %sw.bb13, %sw.bb5.xdp_out_crit_edge, %sw.bb.xdp_out_crit_edge, %bpf_prog_run_xdp.exit.xdp_out_crit_edge, %entry.xdp_out_crit_edge
  %result.0 = phi i32 [ 1, %sw.bb13 ], [ 2, %sw.bb.xdp_out_crit_edge ], [ 0, %bpf_prog_run_xdp.exit.xdp_out_crit_edge ], [ 0, %entry.xdp_out_crit_edge ], [ 4, %sw.bb5.xdp_out_crit_edge ]
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i40e_put_rx_buffer(ptr nocapture noundef %rx_ring, ptr nocapture noundef %rx_buffer, i32 noundef %rx_buffer_pgcnt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pagecnt_bias1.i = getelementptr inbounds %struct.i40e_rx_buffer, ptr %rx_buffer, i32 0, i32 3
  %0 = ptrtoint ptr %pagecnt_bias1.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pagecnt_bias1.i, align 4
  %page2.i = getelementptr inbounds %struct.i40e_rx_buffer, ptr %rx_buffer, i32 0, i32 1
  %2 = ptrtoint ptr %page2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page2.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i.not.i.i.i = icmp eq i32 %5, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %dev_page_is_reusable.exit.i, !prof !135

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %3, ptr noundef nonnull @.str.45) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #14, !srcloc !183
  unreachable

dev_page_is_reusable.exit.i:                      ; preds = %entry
  %6 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %8 to i32
  %and.i.i.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  %conv.i = zext i16 %1 to i32
  %sub.i = sub i32 %rx_buffer_pgcnt, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i)
  %cmp.i = icmp ult i32 %sub.i, 2
  %or.cond.i = select i1 %tobool.i.not.i.i, i1 %cmp.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp7.i = icmp eq i16 %1, 1
  %or.cond23.i = select i1 %or.cond.i, i1 %cmp7.i, i1 false
  br i1 %or.cond23.i, label %if.then15.i, label %dev_page_is_reusable.exit.i.i40e_can_reuse_rx_page.exit_crit_edge, !prof !184

dev_page_is_reusable.exit.i.i40e_can_reuse_rx_page.exit_crit_edge: ; preds = %dev_page_is_reusable.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i40e_can_reuse_rx_page.exit

if.then15.i:                                      ; preds = %dev_page_is_reusable.exit.i
  %_refcount.i = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #14
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 65534, ptr elementtype(i32) %_refcount.i) #14, !srcloc !170
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@i40e_put_rx_buffer, %if.then.i)) #14
          to label %page_ref_add.exit [label %if.then.i], !srcloc !171

if.then.i:                                        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__page_ref_mod(ptr noundef %3, i32 noundef 65534) #14
  br label %page_ref_add.exit

page_ref_add.exit:                                ; preds = %if.then.i, %if.then15.i
  %11 = ptrtoint ptr %pagecnt_bias1.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %pagecnt_bias1.i, align 4
  br label %i40e_can_reuse_rx_page.exit

i40e_can_reuse_rx_page.exit:                      ; preds = %page_ref_add.exit, %dev_page_is_reusable.exit.i.i40e_can_reuse_rx_page.exit_crit_edge
  br i1 %or.cond.i, label %if.then, label %if.else

if.then:                                          ; preds = %i40e_can_reuse_rx_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  %next_to_alloc.i = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 31
  %12 = ptrtoint ptr %next_to_alloc.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %next_to_alloc.i, align 8
  %conv.i10 = zext i16 %13 to i32
  %14 = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 5
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %arrayidx.i.i = getelementptr %struct.i40e_rx_buffer, ptr %16, i32 %conv.i10
  %inc.i = add i16 %13, 1
  %count.i = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 11
  %17 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %count.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %18)
  %cmp.i11 = icmp ult i16 %inc.i, %18
  %spec.select.i = select i1 %cmp.i11, i16 %inc.i, i16 0
  %19 = ptrtoint ptr %next_to_alloc.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %spec.select.i, ptr %next_to_alloc.i, align 8
  %20 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_buffer, align 4
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i.i, align 4
  %23 = ptrtoint ptr %page2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %page2.i, align 4
  %page8.i = getelementptr %struct.i40e_rx_buffer, ptr %16, i32 %conv.i10, i32 1
  %25 = ptrtoint ptr %page8.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %page8.i, align 4
  %page_offset.i = getelementptr inbounds %struct.i40e_rx_buffer, ptr %rx_buffer, i32 0, i32 2
  %26 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %page_offset.i, align 4
  %page_offset9.i = getelementptr %struct.i40e_rx_buffer, ptr %16, i32 %conv.i10, i32 2
  %28 = ptrtoint ptr %page_offset9.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %page_offset9.i, align 4
  %29 = ptrtoint ptr %pagecnt_bias1.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %pagecnt_bias1.i, align 4
  %pagecnt_bias10.i = getelementptr %struct.i40e_rx_buffer, ptr %16, i32 %conv.i10, i32 3
  %31 = ptrtoint ptr %pagecnt_bias10.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %pagecnt_bias10.i, align 4
  %page_reuse_count.i = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 25, i32 0, i32 3
  %32 = ptrtoint ptr %page_reuse_count.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %page_reuse_count.i, align 8
  %inc11.i = add i64 %33, 1
  store i64 %inc11.i, ptr %page_reuse_count.i, align 8
  br label %if.end

if.else:                                          ; preds = %i40e_can_reuse_rx_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 2
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 8
  %36 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_buffer, align 4
  %rx_buf_len.i = getelementptr inbounds %struct.i40e_ring, ptr %rx_ring, i32 0, i32 13
  %38 = ptrtoint ptr %rx_buf_len.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %rx_buf_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %39)
  %cmp.i12 = icmp ugt i16 %39, 2048
  %..i = zext i1 %cmp.i12 to i32
  %shl = shl nuw nsw i32 4096, %..i
  tail call void @dma_unmap_page_attrs(ptr noundef %35, i32 noundef %37, i32 noundef %shl, i32 noundef 2, i32 noundef 34) #14
  %40 = ptrtoint ptr %page2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %page2.i, align 4
  %42 = ptrtoint ptr %pagecnt_bias1.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %pagecnt_bias1.i, align 4
  %conv = zext i16 %43 to i32
  tail call void @__page_frag_cache_drain(ptr noundef %41, i32 noundef %conv) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %44 = ptrtoint ptr %page2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %page2.i, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_i40e_clean_rx_irq_rx(ptr noundef %ring, ptr noundef %desc, ptr noundef %skb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i40e_clean_rx_irq_rx, i32 0, i32 1), ptr blockaddress(@trace_i40e_clean_rx_irq_rx, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !132

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !185
  %call42 = tail call i32 @__traceiter_i40e_clean_rx_irq_rx(ptr noundef null, ptr noundef %ring, ptr noundef %desc, ptr noundef %skb) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !186
  %13 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !132

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i40e_clean_rx_irq_rx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i40e_clean_rx_irq_rx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_i40e_clean_rx_irq_rx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_i40e_clean_rx_irq_rx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 154, ptr noundef nonnull @.str.42) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_i40e_clean_rx_irq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_do_redirect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_warn_invalid_xdp_action(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xdp_exception(ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 1), ptr blockaddress(@trace_xdp_exception, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !132

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !187
  %call42 = tail call i32 @__traceiter_xdp_exception(ptr noundef null, ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !188
  %13 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !132

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xdp_exception.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_xdp_exception.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 51, ptr noundef nonnull @.str.42) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
declare dso_local i32 @bpf_dispatcher_xdp_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_master_redirect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xdp_exception(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @napi_build_skb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_get_headlen(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_i40e_clean_rx_irq_rx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_irq_dynamic_enable_icr0(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @i40e_update_itr(ptr noundef readonly %q_vector, ptr noundef %rc) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rc, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %itr_setting = getelementptr inbounds %struct.i40e_ring, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %itr_setting to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %itr_setting, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %tobool2.not = icmp sgt i16 %4, -1
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rx.i = getelementptr inbounds %struct.i40e_q_vector, ptr %q_vector, i32 0, i32 4
  %cmp.i = icmp eq ptr %rx.i, %rc
  %cond = select i1 %cmp.i, i32 32770, i32 32894
  %next_update4 = getelementptr inbounds %struct.i40e_ring_container, ptr %rc, i32 0, i32 1
  %5 = ptrtoint ptr %next_update4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %next_update4, align 4
  %sub = sub i32 %6, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.clear_counts_crit_edge, label %if.end7

if.end.clear_counts_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %clear_counts

if.end7:                                          ; preds = %if.end
  %itr_countdown = getelementptr inbounds %struct.i40e_q_vector, ptr %q_vector, i32 0, i32 6
  %7 = ptrtoint ptr %itr_countdown to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %itr_countdown, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %target_itr = getelementptr inbounds %struct.i40e_ring_container, ptr %rc, i32 0, i32 5
  %9 = ptrtoint ptr %target_itr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %target_itr, align 2
  %conv10 = zext i16 %10 to i32
  br label %clear_counts

if.end11:                                         ; preds = %if.end7
  %total_packets = getelementptr inbounds %struct.i40e_ring_container, ptr %rc, i32 0, i32 3
  %11 = ptrtoint ptr %total_packets to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total_packets, align 4
  %total_bytes = getelementptr inbounds %struct.i40e_ring_container, ptr %rc, i32 0, i32 2
  %13 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %total_bytes, align 4
  br i1 %cmp.i, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  %15 = add i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %16 = icmp ult i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9000, i32 %14)
  %cmp18 = icmp ult i32 %14, 9000
  %or.cond204 = select i1 %16, i1 %cmp18, i1 false
  br i1 %or.cond204, label %land.lhs.true20, label %if.then13.if.end52_crit_edge

if.then13.if.end52_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

land.lhs.true20:                                  ; preds = %if.then13
  %target_itr21 = getelementptr inbounds %struct.i40e_q_vector, ptr %q_vector, i32 0, i32 5, i32 5
  %17 = ptrtoint ptr %target_itr21 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %target_itr21, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %18)
  %tobool24.not = icmp sgt i16 %18, -1
  br i1 %tobool24.not, label %land.lhs.true20.if.then55_crit_edge, label %land.lhs.true20.adjust_by_size_crit_edge

land.lhs.true20.adjust_by_size_crit_edge:         ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #16
  br label %adjust_by_size

land.lhs.true20.if.then55_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then55

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp27 = icmp ult i32 %12, 4
  br i1 %cmp27, label %if.then29, label %if.else42

if.then29:                                        ; preds = %if.else
  %target_itr30 = getelementptr inbounds %struct.i40e_ring_container, ptr %rc, i32 0, i32 5
  %19 = ptrtoint ptr %target_itr30 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %target_itr30, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 126, i16 %20)
  %cmp32 = icmp eq i16 %20, 126
  br i1 %cmp32, label %land.lhs.true34, label %if.then29.if.then55_crit_edge

if.then29.if.then55_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then55

land.lhs.true34:                                  ; preds = %if.then29
  %target_itr35 = getelementptr inbounds %struct.i40e_q_vector, ptr %q_vector, i32 0, i32 4, i32 5
  %21 = ptrtoint ptr %target_itr35 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %target_itr35, align 2
  %23 = and i16 %22, 8190
  call void @__sanitizer_cov_trace_const_cmp2(i16 126, i16 %23)
  %cmp38 = icmp eq i16 %23, 126
  br i1 %cmp38, label %land.lhs.true34.clear_counts_crit_edge, label %land.lhs.true34.if.then55_crit_edge

land.lhs.true34.if.then55_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then55

land.lhs.true34.clear_counts_crit_edge:           ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #16
  br label %clear_counts

if.else42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp43 = icmp ugt i32 %12, 32
  br i1 %cmp43, label %if.then45, label %if.else42.if.then55_crit_edge

if.else42.if.then55_crit_edge:                    ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then55

if.then45:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #16
  %target_itr46 = getelementptr inbounds %struct.i40e_ring_container, ptr %rc, i32 0, i32 5
  %24 = ptrtoint ptr %target_itr46 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %target_itr46, align 2
  %26 = and i16 %25, 32767
  store i16 %26, ptr %target_itr46, align 2
  br label %if.end52

if.end52:                                         ; preds = %if.then45, %if.then13.if.end52_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %12)
  %cmp53 = icmp ult i32 %12, 56
  br i1 %cmp53, label %if.end52.if.then55_crit_edge, label %if.end65

if.end52.if.then55_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then55

if.then55:                                        ; preds = %if.end52.if.then55_crit_edge, %if.else42.if.then55_crit_edge, %land.lhs.true34.if.then55_crit_edge, %if.then29.if.then55_crit_edge, %land.lhs.true20.if.then55_crit_edge
  %target_itr56 = getelementptr inbounds %struct.i40e_ring_container, ptr %rc, i32 0, i32 5
  %27 = ptrtoint ptr %target_itr56 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %target_itr56, align 2
  %conv57 = zext i16 %28 to i32
  %add = add nuw nsw i32 %conv57, 2
  %and58 = and i32 %add, 8190
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %and58)
  %cmp59 = icmp ugt i32 %and58, 126
  br i1 %cmp59, label %if.then61, label %if.then55.clear_counts_crit_edge

if.then55.clear_counts_crit_edge:                 ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #16
  br label %clear_counts

if.then61:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #16
  %and62 = and i32 %add, 32768
  %add63 = or i32 %and62, 126
  br label %clear_counts

if.end65:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %12)
  %cmp66 = icmp ult i32 %12, 257
  br i1 %cmp66, label %if.then68, label %if.end65.adjust_by_size_crit_edge

if.end65.adjust_by_size_crit_edge:                ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %adjust_by_size

if.then68:                                        ; preds = %if.end65
  %current_itr = getelementptr inbounds %struct.i40e_q_vector, ptr %q_vector, i32 0, i32 5, i32 6
  %29 = ptrtoint ptr %current_itr to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %current_itr, align 4
  %current_itr71 = getelementptr inbounds %struct.i40e_q_vector, ptr %q_vector, i32 0, i32 4, i32 6
  %31 = ptrtoint ptr %current_itr71 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %current_itr71, align 4
  %33 = tail call i16 @llvm.umin.i16(i16 %30, i16 %32)
  %34 = and i16 %33, 8190
  %and79 = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 113, i32 %12)
  %cmp80 = icmp ult i32 %12, 113
  br i1 %cmp80, label %if.then68.clear_counts_crit_edge, label %if.end83

if.then68.clear_counts_crit_edge:                 ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #16
  br label %clear_counts

if.end83:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #16
  %div203 = lshr exact i32 %and79, 1
  %and84 = and i32 %div203, 4094
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %cmp85 = icmp eq i32 %and84, 0
  %spec.store.select = select i1 %cmp85, i32 2, i32 %and84
  br label %clear_counts

adjust_by_size:                                   ; preds = %if.end65.adjust_by_size_crit_edge, %land.lhs.true20.adjust_by_size_crit_edge
  %tobool117.not = phi i32 [ 1, %land.lhs.true20.adjust_by_size_crit_edge ], [ 0, %if.end65.adjust_by_size_crit_edge ]
  %itr.0 = phi i32 [ 32768, %land.lhs.true20.adjust_by_size_crit_edge ], [ 0, %if.end65.adjust_by_size_crit_edge ]
  %div90 = udiv i32 %14, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %div90)
  %cmp91 = icmp ult i32 %div90, 61
  br i1 %cmp91, label %adjust_by_size.if.end115_crit_edge, label %if.else94

adjust_by_size.if.end115_crit_edge:               ; preds = %adjust_by_size
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115

if.else94:                                        ; preds = %adjust_by_size
  call void @__sanitizer_cov_trace_const_cmp4(i32 381, i32 %div90)
  %cmp95 = icmp ult i32 %div90, 381
  br i1 %cmp95, label %if.then97, label %if.else99

if.then97:                                        ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #16
  %mul = mul nuw nsw i32 %div90, 40
  %add98 = add nuw nsw i32 %mul, 1696
  br label %if.end115

if.else99:                                        ; preds = %if.else94
  call void @__sanitizer_cov_trace_const_cmp4(i32 1085, i32 %div90)
  %cmp100 = icmp ult i32 %div90, 1085
  br i1 %cmp100, label %if.then102, label %if.else105

if.then102:                                       ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #16
  %mul103 = mul nuw nsw i32 %div90, 15
  %add104 = add nuw nsw i32 %mul103, 11452
  br label %if.end115

if.else105:                                       ; preds = %if.else99
  call void @__sanitizer_cov_trace_const_cmp4(i32 1981, i32 %div90)
  %cmp106 = icmp ult i32 %div90, 1981
  br i1 %cmp106, label %if.then108, label %if.else105.if.end115_crit_edge

if.else105.if.end115_crit_edge:                   ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115

if.then108:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #16
  %mul109 = mul nuw nsw i32 %div90, 5
  %add110 = add nuw nsw i32 %mul109, 22420
  br label %if.end115

if.end115:                                        ; preds = %if.then108, %if.else105.if.end115_crit_edge, %if.then102, %if.then97, %adjust_by_size.if.end115_crit_edge
  %avg_wire_size.0 = phi i32 [ %add98, %if.then97 ], [ %add104, %if.then102 ], [ %add110, %if.then108 ], [ 4096, %adjust_by_size.if.end115_crit_edge ], [ 32256, %if.else105.if.end115_crit_edge ]
  %spec.select = lshr i32 %avg_wire_size.0, %tobool117.not
  %call121 = tail call fastcc i32 @i40e_itr_divisor(ptr noundef %q_vector)
  %add122 = add i32 %call121, -1
  %sub123 = add i32 %add122, %spec.select
  %div125 = udiv i32 %sub123, %call121
  %mul126 = shl i32 %div125, 1
  %add127 = add i32 %mul126, %itr.0
  %and128 = and i32 %add127, 8190
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %and128)
  %cmp129 = icmp ugt i32 %and128, 126
  br i1 %cmp129, label %if.then131, label %if.end115.clear_counts_crit_edge

if.end115.clear_counts_crit_edge:                 ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  br label %clear_counts

if.then131:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  %and132 = and i32 %add127, 32768
  %add133 = or i32 %and132, 126
  br label %clear_counts

clear_counts:                                     ; preds = %if.then131, %if.end115.clear_counts_crit_edge, %if.end83, %if.then68.clear_counts_crit_edge, %if.then61, %if.then55.clear_counts_crit_edge, %land.lhs.true34.clear_counts_crit_edge, %if.then9, %if.end.clear_counts_crit_edge
  %itr.1 = phi i32 [ %cond, %if.end.clear_counts_crit_edge ], [ %conv10, %if.then9 ], [ %add133, %if.then131 ], [ %add127, %if.end115.clear_counts_crit_edge ], [ %add63, %if.then61 ], [ %add, %if.then55.clear_counts_crit_edge ], [ %and79, %if.then68.clear_counts_crit_edge ], [ %spec.store.select, %if.end83 ], [ 32894, %land.lhs.true34.clear_counts_crit_edge ]
  %conv135 = trunc i32 %itr.1 to i16
  %target_itr136 = getelementptr inbounds %struct.i40e_ring_container, ptr %rc, i32 0, i32 5
  %35 = ptrtoint ptr %target_itr136 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv135, ptr %target_itr136, align 2
  %add137 = add i32 %0, 1
  %36 = ptrtoint ptr %next_update4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add137, ptr %next_update4, align 4
  %total_bytes139 = getelementptr inbounds %struct.i40e_ring_container, ptr %rc, i32 0, i32 2
  %37 = ptrtoint ptr %total_bytes139 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %total_bytes139, align 4
  %total_packets140 = getelementptr inbounds %struct.i40e_ring_container, ptr %rc, i32 0, i32 3
  %38 = ptrtoint ptr %total_packets140 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %total_packets140, align 4
  br label %cleanup

cleanup:                                          ; preds = %clear_counts, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @i40e_itr_divisor(ptr nocapture noundef readonly %q_vector) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_vector, align 128
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %link_speed = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_speed, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %5, label %sw.bb2 [
    i32 16, label %entry.sw.epilog_crit_edge
    i32 64, label %entry.sw.bb1_crit_edge
    i32 32, label %entry.sw.bb1_crit_edge4
    i32 2, label %entry.sw.bb3_crit_edge
    i32 4, label %entry.sw.bb3_crit_edge5
  ]

entry.sw.bb3_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb3

entry.sw.bb1_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %divisor.0 = phi i32 [ 512, %sw.bb2 ], [ 64, %sw.bb3 ], [ 1024, %sw.bb1 ], [ 2048, %entry.sw.epilog_crit_edge ]
  ret i32 %divisor.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_i40e_xmit_frame_ring(ptr noundef %skb, ptr noundef %ring) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i40e_xmit_frame_ring, i32 0, i32 1), ptr blockaddress(@trace_i40e_xmit_frame_ring, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !132

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !189
  %call42 = tail call i32 @__traceiter_i40e_xmit_frame_ring(ptr noundef null, ptr noundef %skb, ptr noundef %ring) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !190
  %13 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !132

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i40e_xmit_frame_ring, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i40e_xmit_frame_ring, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_i40e_xmit_frame_ring.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_i40e_xmit_frame_ring.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 187, ptr noundef nonnull @.str.42) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_i40e_xmit_frame_ring_drop(ptr noundef %skb, ptr noundef %ring) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i40e_xmit_frame_ring_drop, i32 0, i32 1), ptr blockaddress(@trace_i40e_xmit_frame_ring_drop, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !132

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !191
  %call42 = tail call i32 @__traceiter_i40e_xmit_frame_ring_drop(ptr noundef null, ptr noundef %skb, ptr noundef %ring) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !192
  %13 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !132

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i40e_xmit_frame_ring_drop, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_i40e_xmit_frame_ring_drop, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_i40e_xmit_frame_ring_drop.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_i40e_xmit_frame_ring_drop.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 194, ptr noundef nonnull @.str.42) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
declare dso_local i32 @__traceiter_i40e_xmit_frame_ring(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_hdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_i40e_xmit_frame_ring_drop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !75, !77, !78, !80, !81, !82, !83, !85, !86, !88, !89, !91, !93, !94, !95, !97, !99, !100, !102, !103, !105, !106, !108, !110, !111, !112, !113, !115, !117}
!llvm.named.register.sp = !{!118}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/i40e/i40e_txrx.c", i32 634, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @i40e_add_del_fdir._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @i40e_add_del_fdir._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/i40e/i40e_txrx.c", i32 655, i32 4}
!10 = !{ptr @i40e_add_del_fdir._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @i40e_add_del_fdir._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/i40e/i40e_txrx.c", i32 661, i32 3}
!14 = !{ptr @i40e_add_del_fdir._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @i40e_add_del_fdir._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @i40e_setup_tx_descriptors.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/i40e/i40e_txrx.c", i32 1443, i32 2}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/intel/i40e/i40e_txrx.c", i32 1455, i32 3}
!21 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @i40e_setup_tx_descriptors._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @i40e_setup_tx_descriptors._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @i40e_setup_rx_descriptors.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/i40e/i40e_txrx.c", i32 1583, i32 2}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/intel/i40e/i40e_txrx.c", i32 1592, i32 3}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @i40e_setup_rx_descriptors._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @i40e_setup_rx_descriptors._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/i40e/i40e_txrx.c", i32 470, i32 4}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @i40e_add_del_fdir_tcp._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @i40e_add_del_fdir_tcp._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @i40e_create_dummy_tcp_packet.tcp_packet, !38, !"tcp_packet", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/intel/i40e/i40e_txrx.c", i32 260, i32 20}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/intel/i40e/i40e_txrx.c", i32 330, i32 3}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @i40e_prepare_fdir_filter._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @i40e_prepare_fdir_filter._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/i40e/i40e_txrx.c", i32 337, i32 4}
!46 = !{ptr @i40e_prepare_fdir_filter._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @i40e_prepare_fdir_filter._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/i40e/i40e_txrx.c", i32 341, i32 4}
!50 = !{ptr @i40e_prepare_fdir_filter._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @i40e_prepare_fdir_filter._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/i40e/i40e_txrx.c", i32 702, i32 4}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @i40e_fd_handle_status._entry, !57, !"_entry", i1 false, i1 false}
!61 = !{ptr @i40e_fd_handle_status._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/i40e/i40e_txrx.c", i32 742, i32 6}
!64 = !{ptr @i40e_fd_handle_status._entry.32, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @i40e_fd_handle_status._entry_ptr.34, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/intel/i40e/i40e_txrx.c", i32 746, i32 4}
!68 = !{ptr @i40e_fd_handle_status._entry.35, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @i40e_fd_handle_status._entry_ptr.37, !67, !"_entry_ptr", i1 false, i1 false}
!70 = distinct !{null, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/net/xdp.h", i32 200, i32 3}
!74 = !{ptr @__func__.xdp_update_frame_from_buff, !73, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!77 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/intel/i40e/i40e_trace.h", i32 95, i32 1}
!80 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!81 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!82 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/intel/i40e/i40e_trace.h", i32 103, i32 1}
!85 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/intel/i40e/i40e_trace.h", i32 140, i32 1}
!88 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/linux/filter.h", i32 613, i32 2}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../include/trace/events/xdp.h", i32 28, i32 1}
!93 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!94 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/intel/i40e/i40e_trace.h", i32 148, i32 1}
!99 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!102 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/intel/i40e/i40e_trace.h", i32 182, i32 1}
!105 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/intel/i40e/i40e_txrx.c", i32 3616, i32 2}
!110 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @i40e_tx_map._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @i40e_tx_map._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = distinct !{null, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../include/linux/netdevice.h", i32 4690, i32 9}
!115 = distinct !{null, !116, !"__already_done", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/intel/i40e/i40e_trace.h", i32 189, i32 1}
!117 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!118 = !{!"sp"}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{i64 6646814}
!129 = !{i64 2161013693}
!130 = !{i64 6646396}
!131 = !{i64 2161013902}
!132 = !{!"branch_weights", i32 2000, i32 1}
!133 = !{i64 2161029513}
!134 = !{i64 2161029723}
!135 = !{!"branch_weights", i32 1, i32 2000}
!136 = !{i64 2161064550}
!137 = !{i64 2161040084}
!138 = !{i64 2150459797}
!139 = !{i64 2150351399}
!140 = !{i64 2150356333}
!141 = !{i64 2150378051}
!142 = !{i64 2150382945}
!143 = !{i64 2150459472}
!144 = !{i64 2161014198}
!145 = !{i64 600583}
!146 = !{!"branch_weights", i32 2002, i32 2000}
!147 = !{i64 2155876260}
!148 = !{i64 2161015983}
!149 = !{i8 0, i8 2}
!150 = !{i64 2161041237}
!151 = !{i64 2155056117, i64 2155056605, i64 2155056154, i64 2155056210, i64 2155056244, i64 2155056268, i64 2155056309, i64 2155056330, i64 2155056358, i64 2155056392}
!152 = !{i64 2161042931}
!153 = !{i64 2161059251}
!154 = !{!"auto-init"}
!155 = !{i64 7004094}
!156 = !{i64 2148609935, i64 2148609967, i64 2148609996, i64 2148610030, i64 2148610061, i64 2148610084}
!157 = !{i64 2148699040}
!158 = !{i64 2148602607, i64 2148602639, i64 2148602668, i64 2148602702, i64 2148602733, i64 2148602756}
!159 = distinct !{!159, !160}
!160 = !{!"llvm.loop.peeled.count", i32 1}
!161 = !{i64 2150737855, i64 2150738355, i64 2150737892, i64 2150737948, i64 2150737982, i64 2150738006, i64 2150738047, i64 2150738068, i64 2150738096, i64 2150738130}
!162 = !{i64 2150739199}
!163 = !{i64 2155875189}
!164 = !{i64 2161061352}
!165 = !{i64 2161061560}
!166 = !{i64 2148697927}
!167 = !{i64 2148608322, i64 2148608354, i64 2148608383, i64 2148608417, i64 2148608448, i64 2148608471}
!168 = !{i64 2160991381}
!169 = !{i64 2160991608}
!170 = !{i64 2148601077, i64 2148601103, i64 2148601132, i64 2148601166, i64 2148601197, i64 2148601220}
!171 = !{i64 2149158342, i64 2149158347, i64 2149158360, i64 2149158404, i64 2149158438, i64 2149158459}
!172 = !{i64 2160872838}
!173 = !{i64 2160873065}
!174 = !{i64 2149715661}
!175 = !{i64 2149716697}
!176 = !{i64 2160894574}
!177 = !{i64 2160894813}
!178 = !{i64 2160912331}
!179 = !{i64 2160912558}
!180 = !{i64 1027688, i64 1027749}
!181 = !{i64 1030420}
!182 = !{i64 1030705}
!183 = !{i64 2153932692, i64 2153933176, i64 2153932729, i64 2153932785, i64 2153932819, i64 2153932843, i64 2153932884, i64 2153932905, i64 2153932933, i64 2153932967}
!184 = !{!"branch_weights", i32 2000, i32 8006002}
!185 = !{i64 2160929876}
!186 = !{i64 2160930109}
!187 = !{i64 2157195848}
!188 = !{i64 2157196063}
!189 = !{i64 2160951086}
!190 = !{i64 2160951307}
!191 = !{i64 2160968305}
!192 = !{i64 2160968536}
