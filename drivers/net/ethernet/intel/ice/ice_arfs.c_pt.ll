; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_arfs.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_arfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.ice_hw = type { ptr, ptr, ptr, ptr, i32, i64, i32, i16, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, [9 x i16], %struct.list_head, [768 x ptr], i8, i8, %struct.ice_bus_info, %struct.ice_flash_info, %struct.ice_hw_dev_caps, %struct.ice_hw_func_caps, ptr, %struct.ice_ctl_q_info, %struct.ice_ctl_q_info, %struct.ice_ctl_q_info, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ice_fw_log_cfg, i8, i8, i8, %struct.ice_pkg_ver, i32, [32 x i8], i8, %struct.ice_pkg_ver, [32 x i8], %struct.ice_pkg_ver, [28 x i8], ptr, ptr, i32, %struct.mutex, %struct.ice_tunnel_table, %struct.udp_tunnel_nic_shared, %struct.udp_tunnel_nic_info, [5 x %struct.ice_blk_info], [5 x %struct.mutex], [5 x %struct.list_head], i32, %struct.mutex, %struct.list_head, [28 x i16], ptr, [1 x i32], %struct.mutex, %struct.list_head, %struct.ice_mbx_snapshot, [32 x i32], i16 }
%struct.ice_bus_info = type { i16, i8 }
%struct.ice_flash_info = type { %struct.ice_orom_info, %struct.ice_nvm_info, %struct.ice_netlist_info, %struct.ice_bank_info, i16, i32, i8 }
%struct.ice_orom_info = type { i8, i8, i16 }
%struct.ice_nvm_info = type { i32, i8, i8 }
%struct.ice_netlist_info = type { i32, i32, i32, i32, i32, i16 }
%struct.ice_bank_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_hw_dev_caps = type { %struct.ice_hw_common_caps, i32, i32, i32, %struct.ice_ts_dev_info, i32 }
%struct.ice_hw_common_caps = type { i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ice_ts_dev_info = type { i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.ice_hw_func_caps = type { %struct.ice_hw_common_caps, i32, i32, i32, i32, i32, %struct.ice_ts_func_info }
%struct.ice_ts_func_info = type { i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.ice_ctl_q_info = type { i32, %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring, i32, i16, i16, i16, i16, i32, %struct.mutex, %struct.mutex }
%struct.ice_ctl_q_ring = type { ptr, %struct.ice_dma_mem, ptr, %union.anon.1, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_dma_mem = type { ptr, i32, i32 }
%union.anon.1 = type { ptr }
%struct.ice_fw_log_cfg = type { i8, i8, [27 x %struct.ice_fw_log_evnt] }
%struct.ice_fw_log_evnt = type { i8 }
%struct.ice_pkg_ver = type { i8, i8, i8, i8 }
%struct.ice_tunnel_table = type { [16 x %struct.ice_tunnel_entry], i16, [3 x i16] }
%struct.ice_tunnel_entry = type { i32, i16, i16, ptr, i8 }
%struct.udp_tunnel_nic_shared = type { ptr, %struct.list_head }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.ice_blk_info = type { %struct.ice_xlt1, %struct.ice_xlt2, %struct.ice_prof_tcam, %struct.ice_prof_redir, %struct.ice_es, %struct.ice_masks, i8, i8 }
%struct.ice_xlt1 = type { ptr, ptr, ptr, i32, i16 }
%struct.ice_xlt2 = type { ptr, ptr, ptr, i32, i16 }
%struct.ice_prof_tcam = type { i32, i16, i16, ptr, i8 }
%struct.ice_prof_redir = type { ptr, i32, i16 }
%struct.ice_es = type { i32, i16, i16, ptr, ptr, %struct.list_head, ptr, %struct.mutex, ptr, i8 }
%struct.ice_masks = type { %struct.mutex, i16, i16, [32 x %struct.ice_mask] }
%struct.ice_mask = type { i16, i16, i16, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ice_mbx_snapshot = type { %struct.ice_mbx_snap_buffer_data, %struct.ice_mbx_vf_counter }
%struct.ice_mbx_snap_buffer_data = type { i32, i32, i32, i32, i16, i16, i16 }
%struct.ice_mbx_vf_counter = type { ptr, i32 }
%struct.ice_pf = type { ptr, ptr, ptr, ptr, %struct.devlink_port, ptr, ptr, i16, i16, ptr, ptr, i16, ptr, i16, i16, i16, i16, i32, [8 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, i32, i32, %struct.timer_list, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.ice_ptp, i16, i16, %struct.spinlock, %struct.hlist_head, %struct.wait_queue_head, i8, %struct.wait_queue_head, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, %struct.ice_hw_port_stats, %struct.ice_hw_port_stats, %struct.ice_hw, i8, i8, i16, i32, i32, i32, [32 x i8], ptr, i32, i32, i16, %struct.hlist_head, i64, i64, %struct.ice_link_default_override_tlv, ptr, %struct.ice_switchdev_info, [32 x %struct.ice_agg_node], [32 x %struct.ice_agg_node] }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.180 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.180 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ice_ptp = type { %struct.ice_ptp_port, %struct.kthread_delayed_work, %struct.kthread_work, i64, i8, i8, ptr, [4 x %struct.ice_perout_channel], %struct.ptp_clock_info, ptr, %struct.hwtstamp_config, i64 }
%struct.ice_ptp_port = type { %struct.ice_ptp_tx, %struct.kthread_delayed_work, %struct.mutex, i8, i8, i8 }
%struct.ice_ptp_tx = type { %struct.kthread_work, %struct.spinlock, ptr, ptr, i8, i8, i8, i8, i8 }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.ice_perout_channel = type { i8, i32, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.spinlock = type { %union.anon.16 }
%union.anon.16 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ice_hw_port_stats = type { %struct.ice_eth_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64 }
%struct.ice_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.hlist_head = type { ptr }
%struct.ice_link_default_override_tlv = type { i8, i8, i8, i8, i64, i64 }
%struct.ice_switchdev_info = type { ptr, ptr, i8 }
%struct.ice_agg_node = type { i32, i32, i8 }
%struct.ice_vsi = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [1 x i32], i32, i32, i32, i32, i32, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i8, ptr, ptr, %struct.spinlock, ptr, i16, i16, %struct.ice_aqc_vsi_props, %struct.rtnl_link_stats64, %struct.ice_eth_stats, %struct.ice_eth_stats, %struct.list_head, %struct.list_head, i8, i16, i8, i8, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [8 x i16], %struct.ice_tc_cfg, ptr, ptr, ptr, i16, i8, ptr, %struct.tc_mqprio_qopt_offload, [16 x ptr], i16, i16, %struct.list_head, i16, i16, i16, i16, i16, i8, i16, i8, i16, ptr, ptr }
%struct.ice_aqc_vsi_props = type { i16, i8, i8, i8, i8, i8, i8, i16, [2 x i8], i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, i8, i8, [3 x i8], i32, i16, i16, i16, i16, i16, i16, i32, [24 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ice_tc_cfg = type { i8, i16, [8 x %struct.ice_tc_info] }
%struct.ice_tc_info = type { i16, i16, i16, i8 }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.ice_arfs_active_fltr_cntrs = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.202, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.202 = type { ptr }
%struct.ice_arfs_entry = type { %struct.ice_fdir_fltr, %struct.hlist_node, i64, i32, i8 }
%struct.ice_fdir_fltr = type { %struct.list_head, i32, %union.anon.217, %union.anon.217, %struct.ice_fdir_udp_gtp, %struct.ice_fdir_udp_gtp, %struct.ice_fdir_l2tpv3, %struct.ice_fdir_l2tpv3, %struct.ice_fdir_extra, %struct.ice_fdir_extra, i16, i8, i16, i16, i16, i16, i16, i8, i8, i8, i16, i32, i8, i8 }
%union.anon.217 = type { %struct.ice_fdir_v6 }
%struct.ice_fdir_v6 = type { [4 x i32], [4 x i32], i16, i16, i32, i32, i8, i8, i8 }
%struct.ice_fdir_udp_gtp = type <{ i8, i8, i16, i32, i16, i8, i8, i8, i16, i8, i32, i8, [3 x i8] }>
%struct.ice_fdir_l2tpv3 = type { i32 }
%struct.ice_fdir_extra = type { [6 x i8], [6 x i8], i16, [2 x i32], i16, i16 }
%struct.ice_arfs_entry_ptr = type { ptr, %struct.hlist_node }
%struct.flow_keys = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_tags, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_keyid, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_icmp, %struct.flow_dissector_key_addrs, [4 x i8] }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_tags = type { i32 }
%struct.flow_dissector_key_vlan = type { %union.anon.218, i16 }
%union.anon.218 = type { %struct.anon.219 }
%struct.anon.219 = type { i16 }
%struct.flow_dissector_key_keyid = type { i32 }
%struct.flow_dissector_key_ports = type { %union.anon.220 }
%union.anon.220 = type { i32 }
%struct.flow_dissector_key_icmp = type { %struct.anon.222, i16 }
%struct.anon.222 = type { i8, i8 }
%struct.flow_dissector_key_addrs = type { %union.anon.223 }
%union.anon.223 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.50 }
%union.anon.50 = type { [4 x i32] }
%struct.sk_buff = type { %union.anon.3, %union.anon.6, %union.anon.124, [48 x i8], %union.anon.125, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.127, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.6 = type { ptr }
%union.anon.124 = type { i64 }
%union.anon.125 = type { %struct.anon.126 }
%struct.anon.126 = type { i32, ptr }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.129, i32, i32, i32, i16, i16, %union.anon.131, i32, %union.anon.132, %union.anon.133, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.129 = type { i32 }
%union.anon.131 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ice_fdir_v4 = type { i32, i32, i16, i16, i32, i32, i8, i8, i8, i8 }
%struct.anon.221 = type { i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.196, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.196 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.msix_entry = type { i32, i16 }

@ice_init_arfs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&vsi->arfs_lock\00", [16 x i8] zeroinitializer }, align 32
@ice_set_cpu_rx_rmap.__UNIQUE_ID_ddebug615 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ice\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ice_set_cpu_rx_rmap\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/intel/ice/ice_arfs.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Setup CPU RMAP: vsi type 0x%x, ifname %s, q_vectors %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ice_rebuild_arfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 657, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to rebuild aRFS\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ice_rebuild_arfs\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ice_rebuild_arfs._entry_ptr = internal global ptr @ice_rebuild_arfs._entry, section ".printk_index", align 4
@ice_arfs_del_flow_rules.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ice_arfs_del_flow_rules\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"Unable to delete aRFS entry, err %d fltr_state %d fltr_id %d flow_id %d Q %d\0A\00", [50 x i8] zeroinitializer }, align 32
@ice_arfs_add_flow_rules.__UNIQUE_ID_ddebug614 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ice_arfs_add_flow_rules\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Unable to add aRFS entry, err %d fltr_state %d fltr_id %d flow_id %d Q %d\0A\00", [53 x i8] zeroinitializer }, align 32
@flow_keys_dissector = external dso_local global %struct.flow_dissector, align 4
@ice_arfs_update_active_fltr_cntrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 91, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"aRFS: Failed to update filter counters, invalid filter type %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ice_arfs_update_active_fltr_cntrs\00", [62 x i8] zeroinitializer }, align 32
@ice_arfs_update_active_fltr_cntrs._entry_ptr = internal global ptr @ice_arfs_update_active_fltr_cntrs._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 24, i64 25]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 24]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 24]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 24, i64 25]
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 527, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 609, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 657, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 121, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 160, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [45 x i8] c"../drivers/net/ethernet/intel/ice/ice_arfs.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 90, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @ice_arfs_update_active_fltr_cntrs._entry, ptr @ice_arfs_update_active_fltr_cntrs._entry_ptr, ptr @ice_rebuild_arfs._entry, ptr @ice_rebuild_arfs._entry_ptr, ptr @ice_init_arfs.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_init_arfs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_rebuild_arfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_arfs_update_active_fltr_cntrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ice_is_arfs_using_perfect_flow(ptr nocapture noundef readonly %hw, i32 noundef %flow_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  %vsi.i = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vsi.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %ice_get_main_vsi.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ice_get_main_vsi.exit:                            ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %ice_get_main_vsi.exit.cleanup_crit_edge, label %if.end

ice_get_main_vsi.exit.cleanup_crit_edge:          ; preds = %ice_get_main_vsi.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ice_get_main_vsi.exit
  %arfs_fltr_cntrs1 = getelementptr inbounds %struct.ice_vsi, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %arfs_fltr_cntrs1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arfs_fltr_cntrs1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !38
  %8 = zext i32 %flow_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %flow_type, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 24, label %sw.bb6
    i32 2, label %if.end.cleanup.sink.split_crit_edge
    i32 25, label %sw.bb12
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %active_udpv4_cnt = getelementptr inbounds %struct.ice_arfs_active_fltr_cntrs, ptr %7, i32 0, i32 2
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %active_udpv6_cnt = getelementptr inbounds %struct.ice_arfs_active_fltr_cntrs, ptr %7, i32 0, i32 3
  br label %cleanup.sink.split

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %active_tcpv6_cnt = getelementptr inbounds %struct.ice_arfs_active_fltr_cntrs, ptr %7, i32 0, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb12, %sw.bb6, %sw.bb, %if.end.cleanup.sink.split_crit_edge
  %active_tcpv6_cnt.sink26 = phi ptr [ %active_tcpv6_cnt, %sw.bb12 ], [ %active_udpv6_cnt, %sw.bb6 ], [ %active_udpv4_cnt, %sw.bb ], [ %7, %if.end.cleanup.sink.split_crit_edge ]
  %call.i.i23 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_tcpv6_cnt.sink26, i32 noundef 4) #6
  %9 = ptrtoint ptr %active_tcpv6_cnt.sink26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %active_tcpv6_cnt.sink26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp14 = icmp sgt i32 %10, 0
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %ice_get_main_vsi.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %ice_get_main_vsi.exit.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ %cmp14, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_sync_arfs_fltrs(ptr nocapture noundef readonly %pf) local_unnamed_addr #0 align 64 {
entry:
  %tmp_del_list = alloca %struct.hlist_head, align 4
  %tmp_add_list = alloca %struct.hlist_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_del_list) #6
  %0 = ptrtoint ptr %tmp_del_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tmp_del_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_add_list) #6
  %1 = ptrtoint ptr %tmp_add_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %tmp_add_list, align 4
  %vsi.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  %2 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vsi.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %ice_get_main_vsi.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ice_get_main_vsi.exit:                            ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %ice_get_main_vsi.exit.cleanup_crit_edge, label %if.end

ice_get_main_vsi.exit.cleanup_crit_edge:          ; preds = %ice_get_main_vsi.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ice_get_main_vsi.exit
  %arfs_fltr_list.i = getelementptr inbounds %struct.ice_vsi, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %arfs_fltr_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arfs_fltr_list.i, align 4
  %tobool.i.not = icmp eq ptr %7, null
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arfs_lock = getelementptr inbounds %struct.ice_vsi, ptr %5, i32 0, i32 31
  tail call void @_raw_spin_lock_bh(ptr noundef %arfs_lock) #6
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %5, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %ice_arfs_update_flow_rules.exit.for.body_crit_edge, %if.end3
  %i.021 = phi i32 [ 0, %if.end3 ], [ %inc, %ice_arfs_update_flow_rules.exit.for.body_crit_edge ]
  %8 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %back.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %arfs_fltr_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arfs_fltr_list.i, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %13, i32 %i.021
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i17 = icmp eq ptr %15, null
  %add.ptr.i = getelementptr i8, ptr %15, i32 -248
  %tobool3.not7880.i = icmp eq ptr %add.ptr.i, null
  %tobool3.not78.i = or i1 %tobool.not.i17, %tobool3.not7880.i
  br i1 %tobool3.not78.i, label %for.body.ice_arfs_update_flow_rules.exit_crit_edge, label %for.body.land.rhs.i_crit_edge

for.body.land.rhs.i_crit_edge:                    ; preds = %for.body
  br label %land.rhs.i

for.body.ice_arfs_update_flow_rules.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_arfs_update_flow_rules.exit

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %for.body.land.rhs.i_crit_edge
  %e.079.i = phi ptr [ %add.ptr40.i, %for.inc.i.land.rhs.i_crit_edge ], [ %add.ptr.i, %for.body.land.rhs.i_crit_edge ]
  %list_entry.i = getelementptr inbounds %struct.ice_arfs_entry, ptr %e.079.i, i32 0, i32 1
  %16 = ptrtoint ptr %list_entry.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %list_entry.i, align 8
  %fltr_state.i = getelementptr inbounds %struct.ice_arfs_entry, ptr %e.079.i, i32 0, i32 4
  %18 = ptrtoint ptr %fltr_state.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %fltr_state.i, align 4
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %19, label %land.rhs.i.for.inc.i_crit_edge [
    i8 0, label %if.then.i18
    i8 1, label %if.then25.i
  ]

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i18:                                      ; preds = %land.rhs.i
  %flow_type7.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %e.079.i, i32 0, i32 1
  %21 = ptrtoint ptr %flow_type7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flow_type7.i, align 8
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 12, i32 noundef 2848) #6
  %tobool8.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool8.not.i, label %if.then.i18.for.inc.i_crit_edge, label %if.end.i

if.then.i18.for.inc.i_crit_edge:                  ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %if.then.i18
  %list_entry10.i = getelementptr inbounds %struct.ice_arfs_entry_ptr, ptr %call.i.i, i32 0, i32 1
  %pprev.i.i = getelementptr inbounds %struct.ice_arfs_entry_ptr, ptr %call.i.i, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %e.079.i, ptr %call.i.i, align 4
  %24 = ptrtoint ptr %tmp_add_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tmp_add_list, align 4
  %26 = ptrtoint ptr %list_entry10.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %25, ptr %list_entry10.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end.i.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

if.end.i.hlist_add_head.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i66.i = getelementptr inbounds %struct.hlist_node, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %pprev.i66.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %list_entry10.i, ptr %pprev.i66.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %if.end.i.hlist_add_head.exit.i_crit_edge
  %28 = ptrtoint ptr %tmp_add_list to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %list_entry10.i, ptr %tmp_add_list, align 4
  %29 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %tmp_add_list, ptr %pprev.i.i, align 4
  %30 = ptrtoint ptr %fltr_state.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %fltr_state.i, align 4
  %31 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %22, label %hlist_add_head.exit.i.for.inc.i_crit_edge [
    i32 1, label %hlist_add_head.exit.i.if.then17.i_crit_edge
    i32 24, label %hlist_add_head.exit.i.if.then17.i_crit_edge22
  ]

hlist_add_head.exit.i.if.then17.i_crit_edge22:    ; preds = %hlist_add_head.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17.i

hlist_add_head.exit.i.if.then17.i_crit_edge:      ; preds = %hlist_add_head.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17.i

hlist_add_head.exit.i.for.inc.i_crit_edge:        ; preds = %hlist_add_head.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then17.i:                                      ; preds = %hlist_add_head.exit.i.if.then17.i_crit_edge, %hlist_add_head.exit.i.if.then17.i_crit_edge22
  %call18.i = call i64 @get_jiffies_64() #6
  %time_activated.i = getelementptr inbounds %struct.ice_arfs_entry, ptr %e.079.i, i32 0, i32 2
  %32 = ptrtoint ptr %time_activated.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %call18.i, ptr %time_activated.i, align 8
  br label %for.inc.i

if.then25.i:                                      ; preds = %land.rhs.i
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %5, align 128
  %q_index.i.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %e.079.i, i32 0, i32 14
  %35 = ptrtoint ptr %q_index.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %q_index.i.i, align 4
  %flow_id.i.i = getelementptr inbounds %struct.ice_arfs_entry, ptr %e.079.i, i32 0, i32 3
  %37 = ptrtoint ptr %flow_id.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flow_id.i.i, align 8
  %fltr_id.i.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %e.079.i, i32 0, i32 21
  %39 = ptrtoint ptr %fltr_id.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fltr_id.i.i, align 8
  %conv.i.i = trunc i32 %40 to i16
  %call.i67.i = call zeroext i1 @rps_may_expire_flow(ptr noundef %34, i16 noundef zeroext %36, i32 noundef %38, i16 noundef zeroext %conv.i.i) #6
  br i1 %call.i67.i, label %if.then25.i.if.then27.i_crit_edge, label %if.end.i.i

if.then25.i.if.then27.i_crit_edge:                ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27.i

if.end.i.i:                                       ; preds = %if.then25.i
  %flow_type.i.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %e.079.i, i32 0, i32 1
  %41 = ptrtoint ptr %flow_type.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flow_type.i.i, align 8
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %42, label %if.end.i.i.for.inc.i_crit_edge [
    i32 1, label %if.end.i.i.ice_arfs_is_flow_expired.exit.i_crit_edge
    i32 24, label %if.end.i.i.ice_arfs_is_flow_expired.exit.i_crit_edge23
  ]

if.end.i.i.ice_arfs_is_flow_expired.exit.i_crit_edge23: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_arfs_is_flow_expired.exit.i

if.end.i.i.ice_arfs_is_flow_expired.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_arfs_is_flow_expired.exit.i

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

ice_arfs_is_flow_expired.exit.i:                  ; preds = %if.end.i.i.ice_arfs_is_flow_expired.exit.i_crit_edge, %if.end.i.i.ice_arfs_is_flow_expired.exit.i_crit_edge23
  %time_activated.i.i = getelementptr inbounds %struct.ice_arfs_entry, ptr %e.079.i, i32 0, i32 2
  %call15.i.i = call i64 @get_jiffies_64() #6
  %44 = ptrtoint ptr %time_activated.i.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %time_activated.i.i, align 8
  %add19.neg.i.i = add i64 %call15.i.i, -500
  %sub20.i.i = sub i64 %add19.neg.i.i, %45
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub20.i.i)
  %cmp21.i.i = icmp sgt i64 %sub20.i.i, -1
  br i1 %cmp21.i.i, label %ice_arfs_is_flow_expired.exit.i.if.then27.i_crit_edge, label %ice_arfs_is_flow_expired.exit.i.for.inc.i_crit_edge

ice_arfs_is_flow_expired.exit.i.for.inc.i_crit_edge: ; preds = %ice_arfs_is_flow_expired.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

ice_arfs_is_flow_expired.exit.i.if.then27.i_crit_edge: ; preds = %ice_arfs_is_flow_expired.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27.i

if.then27.i:                                      ; preds = %ice_arfs_is_flow_expired.exit.i.if.then27.i_crit_edge, %if.then25.i.if.then27.i_crit_edge
  %46 = ptrtoint ptr %list_entry.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %list_entry.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.ice_arfs_entry, ptr %e.079.i, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pprev2.i.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %47, ptr %49, align 4
  %tobool.not.i.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i.i, label %if.then27.i.hlist_del.exit.i_crit_edge, label %do.body13.i.i.i

if.then27.i.hlist_del.exit.i_crit_edge:           ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_del.exit.i

do.body13.i.i.i:                                  ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %47, i32 0, i32 1
  %51 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %pprev14.i.i.i, align 4
  br label %hlist_del.exit.i

hlist_del.exit.i:                                 ; preds = %do.body13.i.i.i, %if.then27.i.hlist_del.exit.i_crit_edge
  %52 = ptrtoint ptr %fltr_state.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 2, ptr %fltr_state.i, align 4
  %53 = ptrtoint ptr %tmp_del_list to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tmp_del_list, align 4
  %55 = ptrtoint ptr %list_entry.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %54, ptr %list_entry.i, align 4
  %tobool.not.i68.i = icmp eq ptr %54, null
  br i1 %tobool.not.i68.i, label %hlist_del.exit.i.hlist_add_head.exit72.i_crit_edge, label %do.body12.i70.i

hlist_del.exit.i.hlist_add_head.exit72.i_crit_edge: ; preds = %hlist_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_add_head.exit72.i

do.body12.i70.i:                                  ; preds = %hlist_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i69.i = getelementptr inbounds %struct.hlist_node, ptr %54, i32 0, i32 1
  %56 = ptrtoint ptr %pprev.i69.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %list_entry.i, ptr %pprev.i69.i, align 4
  br label %hlist_add_head.exit72.i

hlist_add_head.exit72.i:                          ; preds = %do.body12.i70.i, %hlist_del.exit.i.hlist_add_head.exit72.i_crit_edge
  %57 = ptrtoint ptr %tmp_del_list to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %list_entry.i, ptr %tmp_del_list, align 4
  %58 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %tmp_del_list, ptr %pprev2.i.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %hlist_add_head.exit72.i, %ice_arfs_is_flow_expired.exit.i.for.inc.i_crit_edge, %if.end.i.i.for.inc.i_crit_edge, %if.then17.i, %hlist_add_head.exit.i.for.inc.i_crit_edge, %if.then.i18.for.inc.i_crit_edge, %land.rhs.i.for.inc.i_crit_edge
  %tobool36.not.i = icmp eq ptr %17, null
  %add.ptr40.i = getelementptr i8, ptr %17, i32 -248
  %tobool3.not81.i = icmp eq ptr %add.ptr40.i, null
  %tobool3.not.i = or i1 %tobool36.not.i, %tobool3.not81.i
  br i1 %tobool3.not.i, label %for.inc.i.ice_arfs_update_flow_rules.exit_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

for.inc.i.ice_arfs_update_flow_rules.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_arfs_update_flow_rules.exit

ice_arfs_update_flow_rules.exit:                  ; preds = %for.inc.i.ice_arfs_update_flow_rules.exit_crit_edge, %for.body.ice_arfs_update_flow_rules.exit_crit_edge
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end, label %ice_arfs_update_flow_rules.exit.for.body_crit_edge

ice_arfs_update_flow_rules.exit.for.body_crit_edge: ; preds = %ice_arfs_update_flow_rules.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %ice_arfs_update_flow_rules.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock_bh(ptr noundef %arfs_lock) #6
  call fastcc void @ice_arfs_del_flow_rules(ptr noundef nonnull %5, ptr noundef nonnull %tmp_del_list)
  call fastcc void @ice_arfs_add_flow_rules(ptr noundef nonnull %5, ptr noundef nonnull %tmp_add_list)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %ice_get_main_vsi.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_add_list) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_del_list) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_arfs_del_flow_rules(ptr nocapture noundef readonly %vsi, ptr nocapture noundef readonly %del_list_head) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %del_list_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %del_list_head, align 4
  %tobool.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -248
  %tobool3.not4951 = icmp eq ptr %add.ptr, null
  %tobool3.not49 = or i1 %tobool.not, %tobool3.not4951
  br i1 %tobool3.not49, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.rhs:                                         ; preds = %hlist_del.exit.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %e.050 = phi ptr [ %add.ptr25, %hlist_del.exit.land.rhs_crit_edge ], [ %add.ptr, %entry.land.rhs_crit_edge ]
  %list_entry = getelementptr inbounds %struct.ice_arfs_entry, ptr %e.050, i32 0, i32 1
  %6 = ptrtoint ptr %list_entry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list_entry, align 8
  %8 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %back, align 8
  %call = tail call i32 @ice_fdir_write_fltr(ptr noundef %9, ptr noundef nonnull %e.050, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.then, label %do.body

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ice_arfs_update_active_fltr_cntrs(ptr noundef %vsi, ptr noundef nonnull %e.050, i1 noundef zeroext false)
  br label %if.end17

do.body:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_arfs_del_flow_rules.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_arfs_del_flow_rules, %if.then13)) #6
          to label %if.end17 [label %if.then13], !srcloc !39

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %fltr_state = getelementptr inbounds %struct.ice_arfs_entry, ptr %e.050, i32 0, i32 4
  %10 = ptrtoint ptr %fltr_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fltr_state, align 4
  %conv = zext i8 %11 to i32
  %fltr_id = getelementptr inbounds %struct.ice_fdir_fltr, ptr %e.050, i32 0, i32 21
  %12 = ptrtoint ptr %fltr_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fltr_id, align 8
  %flow_id = getelementptr inbounds %struct.ice_arfs_entry, ptr %e.050, i32 0, i32 3
  %14 = ptrtoint ptr %flow_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flow_id, align 8
  %q_index = getelementptr inbounds %struct.ice_fdir_fltr, ptr %e.050, i32 0, i32 14
  %16 = ptrtoint ptr %q_index to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %q_index, align 4
  %conv16 = zext i16 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_arfs_del_flow_rules.__UNIQUE_ID_ddebug613, ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call, i32 noundef %conv, i32 noundef %13, i32 noundef %15, i32 noundef %conv16) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %do.body, %if.then
  %18 = ptrtoint ptr %list_entry to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %list_entry, align 4
  %pprev2.i.i = getelementptr inbounds %struct.ice_arfs_entry, ptr %e.050, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pprev2.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %19, ptr %21, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.end17.hlist_del.exit_crit_edge, label %do.body13.i.i

if.end17.hlist_del.exit_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.end17.hlist_del.exit_crit_edge
  %24 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %list_entry, align 4
  %25 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call void @devm_kfree(ptr noundef %dev1, ptr noundef nonnull %e.050) #6
  %tobool21.not = icmp eq ptr %7, null
  %add.ptr25 = getelementptr i8, ptr %7, i32 -248
  %tobool3.not52 = icmp eq ptr %add.ptr25, null
  %tobool3.not = or i1 %tobool21.not, %tobool3.not52
  br i1 %tobool3.not, label %hlist_del.exit.for.end_crit_edge, label %hlist_del.exit.land.rhs_crit_edge

hlist_del.exit.land.rhs_crit_edge:                ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

hlist_del.exit.for.end_crit_edge:                 ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %hlist_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_arfs_add_flow_rules(ptr nocapture noundef readonly %vsi, ptr nocapture noundef readonly %add_list_head) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %add_list_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add_list_head, align 4
  %tobool.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -4
  %tobool3.not5456 = icmp eq ptr %add.ptr, null
  %tobool3.not54 = or i1 %tobool.not, %tobool3.not5456
  br i1 %tobool3.not54, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.rhs:                                         ; preds = %hlist_del.exit.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %ep.055 = phi ptr [ %add.ptr30, %hlist_del.exit.land.rhs_crit_edge ], [ %add.ptr, %entry.land.rhs_crit_edge ]
  %list_entry = getelementptr inbounds %struct.ice_arfs_entry_ptr, ptr %ep.055, i32 0, i32 1
  %6 = ptrtoint ptr %list_entry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list_entry, align 4
  %8 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %back, align 8
  %10 = ptrtoint ptr %ep.055 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep.055, align 4
  %call = tail call i32 @ice_fdir_write_fltr(ptr noundef %9, ptr noundef %11, i1 noundef zeroext true, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.then, label %do.body

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %ep.055 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ep.055, align 4
  tail call fastcc void @ice_arfs_update_active_fltr_cntrs(ptr noundef %vsi, ptr noundef %13, i1 noundef zeroext true)
  br label %if.end22

do.body:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_arfs_add_flow_rules.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_arfs_add_flow_rules, %if.then14)) #6
          to label %if.end22 [label %if.then14], !srcloc !39

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %ep.055 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ep.055, align 4
  %fltr_state = getelementptr inbounds %struct.ice_arfs_entry, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %fltr_state to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fltr_state, align 4
  %conv = zext i8 %17 to i32
  %fltr_id = getelementptr inbounds %struct.ice_fdir_fltr, ptr %15, i32 0, i32 21
  %18 = ptrtoint ptr %fltr_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fltr_id, align 8
  %flow_id = getelementptr inbounds %struct.ice_arfs_entry, ptr %15, i32 0, i32 3
  %20 = ptrtoint ptr %flow_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flow_id, align 8
  %q_index = getelementptr inbounds %struct.ice_fdir_fltr, ptr %15, i32 0, i32 14
  %22 = ptrtoint ptr %q_index to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %q_index, align 4
  %conv21 = zext i16 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_arfs_add_flow_rules.__UNIQUE_ID_ddebug614, ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call, i32 noundef %conv, i32 noundef %19, i32 noundef %21, i32 noundef %conv21) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %do.body, %if.then
  %24 = ptrtoint ptr %list_entry to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %list_entry, align 4
  %pprev2.i.i = getelementptr inbounds %struct.ice_arfs_entry_ptr, ptr %ep.055, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pprev2.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %25, ptr %27, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end22.hlist_del.exit_crit_edge, label %do.body13.i.i

if.end22.hlist_del.exit_crit_edge:                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.end22.hlist_del.exit_crit_edge
  %30 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %list_entry, align 4
  %31 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call void @devm_kfree(ptr noundef %dev1, ptr noundef nonnull %ep.055) #6
  %tobool26.not = icmp eq ptr %7, null
  %add.ptr30 = getelementptr i8, ptr %7, i32 -4
  %tobool3.not57 = icmp eq ptr %add.ptr30, null
  %tobool3.not = or i1 %tobool26.not, %tobool3.not57
  br i1 %tobool3.not, label %hlist_del.exit.for.end_crit_edge, label %hlist_del.exit.land.rhs_crit_edge

hlist_del.exit.land.rhs_crit_edge:                ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

hlist_del.exit.for.end_crit_edge:                 ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %hlist_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_rx_flow_steer(ptr nocapture noundef readonly %netdev, ptr noundef %skb, i16 noundef zeroext %rxq_idx, i32 noundef %flow_id) local_unnamed_addr #0 align 64 {
entry:
  %fk = alloca %struct.flow_keys, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fk) #6
  %arfs_fltr_list = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %arfs_fltr_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arfs_fltr_list, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup80_crit_edge, label %if.end, !prof !40

entry.cleanup80_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup80

if.end:                                           ; preds = %entry
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %back, align 8
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %6 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %encapsulation, align 8
  %7 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool5.not = icmp eq i16 %7, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup80_crit_edge

if.end.cleanup80_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup80

if.end7:                                          ; preds = %if.end
  %8 = call ptr @memset(ptr %fk, i32 0, i32 72)
  %call.i = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef %skb, ptr noundef nonnull @flow_keys_dissector, ptr noundef nonnull %fk, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br i1 %call.i, label %if.end10, label %if.end7.cleanup80_crit_edge

if.end7.cleanup80_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup80

if.end10:                                         ; preds = %if.end7
  %basic = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 1
  %9 = ptrtoint ptr %basic to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %basic, align 8
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %10, label %if.end10.cleanup80_crit_edge [
    i16 2048, label %land.lhs.true
    i16 -31011, label %if.end10.if.then18_crit_edge
  ]

if.end10.if.then18_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

if.end10.cleanup80_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup80

land.lhs.true:                                    ; preds = %if.end10
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %conv.i.i
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %frag_off.i, align 2
  %18 = and i16 %17, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.i.not = icmp eq i16 %18, 0
  br i1 %cmp.i.not, label %land.lhs.true.if.then18_crit_edge, label %land.lhs.true.cleanup80_crit_edge

land.lhs.true.cleanup80_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup80

land.lhs.true.if.then18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

if.then18:                                        ; preds = %land.lhs.true.if.then18_crit_edge, %if.end10.if.then18_crit_edge
  %ip_proto20 = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %ip_proto20 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ip_proto20, align 2
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %20, label %if.then18.cleanup80_crit_edge [
    i8 6, label %if.then18.if.end30_crit_edge
    i8 17, label %if.then18.if.end30_crit_edge145
  ]

if.then18.if.end30_crit_edge145:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then18.if.end30_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then18.cleanup80_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup80

if.end30:                                         ; preds = %if.then18.if.end30_crit_edge, %if.then18.if.end30_crit_edge145
  %fdir_perfect_fltr.i = getelementptr inbounds %struct.ice_pf, ptr %5, i32 0, i32 58, i32 69
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %10)
  %cmp.i124 = icmp eq i16 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %20)
  %cmp3.i = icmp eq i8 %20, 17
  %or.cond.i = and i1 %cmp.i124, %cmp3.i
  br i1 %or.cond.i, label %if.end30.ice_arfs_is_perfect_flow_set.exit_crit_edge, label %if.else.i

if.end30.ice_arfs_is_perfect_flow_set.exit_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_arfs_is_perfect_flow_set.exit

if.else.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %20)
  %cmp12.i = icmp eq i8 %20, 6
  %or.cond53.i = and i1 %cmp.i124, %cmp12.i
  br i1 %or.cond53.i, label %if.else.i.ice_arfs_is_perfect_flow_set.exit_crit_edge, label %if.else17.i

if.else.i.ice_arfs_is_perfect_flow_set.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_arfs_is_perfect_flow_set.exit

if.else17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %10)
  %cmp19.i = icmp eq i16 %10, -31011
  %or.cond54.i = and i1 %cmp19.i, %cmp3.i
  br i1 %or.cond54.i, label %if.else17.i.ice_arfs_is_perfect_flow_set.exit_crit_edge, label %if.else28.i

if.else17.i.ice_arfs_is_perfect_flow_set.exit_crit_edge: ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_arfs_is_perfect_flow_set.exit

if.else28.i:                                      ; preds = %if.else17.i
  %or.cond55.i = and i1 %cmp19.i, %cmp12.i
  br i1 %or.cond55.i, label %if.else28.i.ice_arfs_is_perfect_flow_set.exit_crit_edge, label %if.else28.i.cleanup80_crit_edge

if.else28.i.cleanup80_crit_edge:                  ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup80

if.else28.i.ice_arfs_is_perfect_flow_set.exit_crit_edge: ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_arfs_is_perfect_flow_set.exit

ice_arfs_is_perfect_flow_set.exit:                ; preds = %if.else28.i.ice_arfs_is_perfect_flow_set.exit_crit_edge, %if.else17.i.ice_arfs_is_perfect_flow_set.exit_crit_edge, %if.else.i.ice_arfs_is_perfect_flow_set.exit_crit_edge, %if.end30.ice_arfs_is_perfect_flow_set.exit_crit_edge
  %.sink63.i = phi i32 [ 2, %if.end30.ice_arfs_is_perfect_flow_set.exit_crit_edge ], [ 4, %if.else.i.ice_arfs_is_perfect_flow_set.exit_crit_edge ], [ 16777216, %if.else17.i.ice_arfs_is_perfect_flow_set.exit_crit_edge ], [ 33554432, %if.else28.i.ice_arfs_is_perfect_flow_set.exit_crit_edge ]
  %22 = ptrtoint ptr %fdir_perfect_fltr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %fdir_perfect_fltr.i, align 4
  %24 = and i32 %23, %.sink63.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool38.i.not = icmp eq i32 %24, 0
  br i1 %tobool38.i.not, label %ice_arfs_is_perfect_flow_set.exit.cleanup80_crit_edge, label %if.end33

ice_arfs_is_perfect_flow_set.exit.cleanup80_crit_edge: ; preds = %ice_arfs_is_perfect_flow_set.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup80

if.end33:                                         ; preds = %ice_arfs_is_perfect_flow_set.exit
  %hash.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %25 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hash.i, align 4
  %conv35 = and i32 %26, 1023
  %arfs_lock = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 31
  call void @_raw_spin_lock_bh(ptr noundef %arfs_lock) #6
  %27 = ptrtoint ptr %arfs_fltr_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arfs_fltr_list, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %28, i32 %conv35
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %tobool37.not = icmp eq ptr %30, null
  %add.ptr = getelementptr i8, ptr %30, i32 -248
  %tobool39.not136139 = icmp eq ptr %add.ptr, null
  %tobool39.not136 = or i1 %tobool37.not, %tobool39.not136139
  br i1 %tobool39.not136, label %if.end33.for.end_crit_edge, label %if.end33.for.body_crit_edge

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  br label %for.body

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end33.for.body_crit_edge
  %arfs_entry.0137 = phi ptr [ %add.ptr64, %for.inc.for.body_crit_edge ], [ %add.ptr, %if.end33.for.body_crit_edge ]
  %flow_id40 = getelementptr inbounds %struct.ice_arfs_entry, ptr %arfs_entry.0137, i32 0, i32 3
  %31 = ptrtoint ptr %flow_id40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flow_id40, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %flow_id)
  %cmp41.not = icmp eq i32 %32, %flow_id
  br i1 %cmp41.not, label %if.end44, label %for.inc

if.end44:                                         ; preds = %for.body
  %fltr_id = getelementptr inbounds %struct.ice_fdir_fltr, ptr %arfs_entry.0137, i32 0, i32 21
  %33 = ptrtoint ptr %fltr_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fltr_id, align 4
  %q_index = getelementptr inbounds %struct.ice_fdir_fltr, ptr %arfs_entry.0137, i32 0, i32 14
  %35 = ptrtoint ptr %q_index to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %q_index, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %rxq_idx)
  %cmp48 = icmp eq i16 %36, %rxq_idx
  br i1 %cmp48, label %if.end44.out_crit_edge, label %lor.lhs.false50

if.end44.out_crit_edge:                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.lhs.false50:                                  ; preds = %if.end44
  %fltr_state = getelementptr inbounds %struct.ice_arfs_entry, ptr %arfs_entry.0137, i32 0, i32 4
  %37 = ptrtoint ptr %fltr_state to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %fltr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp52.not = icmp eq i8 %38, 1
  br i1 %cmp52.not, label %cleanup, label %lor.lhs.false50.out_crit_edge

lor.lhs.false50.out_crit_edge:                    ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

cleanup:                                          ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %q_index to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %rxq_idx, ptr %q_index, align 4
  %40 = ptrtoint ptr %fltr_state to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %fltr_state, align 4
  call fastcc void @ice_arfs_update_active_fltr_cntrs(ptr noundef %1, ptr noundef nonnull %arfs_entry.0137, i1 noundef zeroext false)
  br label %out_schedule_service_task

for.inc:                                          ; preds = %for.body
  %list_entry = getelementptr inbounds %struct.ice_arfs_entry, ptr %arfs_entry.0137, i32 0, i32 1
  %41 = ptrtoint ptr %list_entry to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %list_entry, align 8
  %tobool60.not = icmp eq ptr %42, null
  %add.ptr64 = getelementptr i8, ptr %42, i32 -248
  %tobool39.not141 = icmp eq ptr %add.ptr64, null
  %tobool39.not = or i1 %tobool60.not, %tobool39.not141
  br i1 %tobool39.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end33.for.end_crit_edge
  %call68 = call fastcc ptr @ice_arfs_build_entry(ptr noundef %1, ptr noundef nonnull %fk, i16 noundef zeroext %rxq_idx, i32 noundef %flow_id)
  %tobool69.not = icmp eq ptr %call68, null
  br i1 %tobool69.not, label %for.end.out_crit_edge, label %if.end71

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end71:                                         ; preds = %for.end
  %fltr_id73 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call68, i32 0, i32 21
  %43 = ptrtoint ptr %fltr_id73 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fltr_id73, align 8
  %list_entry74 = getelementptr inbounds %struct.ice_arfs_entry, ptr %call68, i32 0, i32 1
  %45 = ptrtoint ptr %list_entry74 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %list_entry74, align 4
  %pprev.i = getelementptr inbounds %struct.ice_arfs_entry, ptr %call68, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %pprev.i, align 4
  %47 = ptrtoint ptr %arfs_fltr_list to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arfs_fltr_list, align 4
  %arrayidx78 = getelementptr %struct.hlist_head, ptr %48, i32 %conv35
  %49 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx78, align 4
  store volatile ptr %50, ptr %list_entry74, align 4
  %tobool.not.i = icmp eq ptr %50, null
  br i1 %tobool.not.i, label %if.end71.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end71.hlist_add_head.exit_crit_edge:           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i125 = getelementptr inbounds %struct.hlist_node, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %pprev.i125 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %list_entry74, ptr %pprev.i125, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end71.hlist_add_head.exit_crit_edge
  %52 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %list_entry74, ptr %arrayidx78, align 4
  %53 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %arrayidx78, ptr %pprev.i, align 4
  br label %out_schedule_service_task

out_schedule_service_task:                        ; preds = %hlist_add_head.exit, %cleanup
  %ret.2 = phi i32 [ %34, %cleanup ], [ %44, %hlist_add_head.exit ]
  call void @ice_service_task_schedule(ptr noundef %5) #6
  br label %out

out:                                              ; preds = %out_schedule_service_task, %for.end.out_crit_edge, %lor.lhs.false50.out_crit_edge, %if.end44.out_crit_edge
  %ret.3 = phi i32 [ %ret.2, %out_schedule_service_task ], [ -12, %for.end.out_crit_edge ], [ %34, %lor.lhs.false50.out_crit_edge ], [ %34, %if.end44.out_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %arfs_lock) #6
  br label %cleanup80

cleanup80:                                        ; preds = %out, %ice_arfs_is_perfect_flow_set.exit.cleanup80_crit_edge, %if.else28.i.cleanup80_crit_edge, %if.then18.cleanup80_crit_edge, %land.lhs.true.cleanup80_crit_edge, %if.end10.cleanup80_crit_edge, %if.end7.cleanup80_crit_edge, %if.end.cleanup80_crit_edge, %entry.cleanup80_crit_edge
  %retval.0 = phi i32 [ %ret.3, %out ], [ -19, %entry.cleanup80_crit_edge ], [ -93, %if.end.cleanup80_crit_edge ], [ -93, %if.end7.cleanup80_crit_edge ], [ -93, %land.lhs.true.cleanup80_crit_edge ], [ -93, %if.end10.cleanup80_crit_edge ], [ -93, %if.then18.cleanup80_crit_edge ], [ -95, %ice_arfs_is_perfect_flow_set.exit.cleanup80_crit_edge ], [ -95, %if.else28.i.cleanup80_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fk) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_arfs_update_active_fltr_cntrs(ptr nocapture noundef readonly %vsi, ptr nocapture noundef readonly %entry1, i1 noundef zeroext %add) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arfs_fltr_cntrs = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 30
  %0 = ptrtoint ptr %arfs_fltr_cntrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arfs_fltr_cntrs, align 8
  %flow_type = getelementptr inbounds %struct.ice_fdir_fltr, ptr %entry1, i32 0, i32 1
  %2 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flow_type, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %3, label %do.end [
    i32 2, label %sw.bb
    i32 25, label %sw.bb3
    i32 1, label %sw.bb9
    i32 24, label %sw.bb15
  ]

sw.bb:                                            ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #6
  br i1 %add, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #6, !srcloc !41
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #6, !srcloc !42
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %active_tcpv6_cnt = getelementptr inbounds %struct.ice_arfs_active_fltr_cntrs, ptr %1, i32 0, i32 1
  %call.i.i36 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_tcpv6_cnt, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %active_tcpv6_cnt, i32 1, i32 3, i32 1) #6
  br i1 %add, label %if.then5, label %if.else6

if.then5:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_tcpv6_cnt, ptr %active_tcpv6_cnt, i32 1, ptr elementtype(i32) %active_tcpv6_cnt) #6, !srcloc !41
  br label %sw.epilog

if.else6:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_tcpv6_cnt, ptr %active_tcpv6_cnt, i32 1, ptr elementtype(i32) %active_tcpv6_cnt) #6, !srcloc !42
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %active_udpv4_cnt = getelementptr inbounds %struct.ice_arfs_active_fltr_cntrs, ptr %1, i32 0, i32 2
  %call.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_udpv4_cnt, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %active_udpv4_cnt, i32 1, i32 3, i32 1) #6
  br i1 %add, label %if.then11, label %if.else12

if.then11:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_udpv4_cnt, ptr %active_udpv4_cnt, i32 1, ptr elementtype(i32) %active_udpv4_cnt) #6, !srcloc !41
  br label %sw.epilog

if.else12:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_udpv4_cnt, ptr %active_udpv4_cnt, i32 1, ptr elementtype(i32) %active_udpv4_cnt) #6, !srcloc !42
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %active_udpv6_cnt = getelementptr inbounds %struct.ice_arfs_active_fltr_cntrs, ptr %1, i32 0, i32 3
  %call.i.i40 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_udpv6_cnt, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %active_udpv6_cnt, i32 1, i32 3, i32 1) #6
  br i1 %add, label %if.then17, label %if.else18

if.then17:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_udpv6_cnt, ptr %active_udpv6_cnt, i32 1, ptr elementtype(i32) %active_udpv6_cnt) #6, !srcloc !41
  br label %sw.epilog

if.else18:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_udpv6_cnt, ptr %active_udpv6_cnt, i32 1, ptr elementtype(i32) %active_udpv6_cnt) #6, !srcloc !42
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %13 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %back, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %3) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.else18, %if.then17, %if.else12, %if.then11, %if.else6, %if.then5, %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ice_arfs_build_entry(ptr nocapture noundef readonly %vsi, ptr nocapture noundef readonly %fk, i16 noundef zeroext %rxq_idx, i32 noundef %flow_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 272, i32 noundef 11040) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %q_index = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call.i, i32 0, i32 14
  %4 = ptrtoint ptr %q_index to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %rxq_idx, ptr %q_index, align 4
  %dest_ctl = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call.i, i32 0, i32 17
  %5 = ptrtoint ptr %dest_ctl to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %dest_ctl, align 2
  %idx = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 19
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %idx, align 2
  %dest_vsi = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call.i, i32 0, i32 16
  %8 = ptrtoint ptr %dest_vsi to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %dest_vsi, align 4
  %basic = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 1
  %ip_proto2 = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %ip_proto2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ip_proto2, align 2
  %11 = ptrtoint ptr %basic to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %basic, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %12)
  %cmp = icmp eq i16 %12, 2048
  %ip = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call.i, i32 0, i32 2
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %proto = getelementptr inbounds %struct.ice_fdir_v4, ptr %ip, i32 0, i32 8
  %13 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %proto, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %10)
  %cmp7 = icmp eq i8 %10, 6
  %cond = select i1 %cmp7, i32 2, i32 1
  %addrs = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 8
  %14 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addrs, align 4
  %src_ip = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %src_ip to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %src_ip, align 4
  %dst = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dst, align 4
  %19 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %ip, align 4
  %ports = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 6
  %20 = ptrtoint ptr %ports to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ports, align 4
  %src_port = getelementptr inbounds %struct.ice_fdir_v4, ptr %ip, i32 0, i32 3
  %22 = ptrtoint ptr %src_port to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %src_port, align 2
  %dst15 = getelementptr inbounds %struct.anon.221, ptr %ports, i32 0, i32 1
  %23 = ptrtoint ptr %dst15 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %dst15, align 2
  %dst_port = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call.i, i32 0, i32 2, i32 0, i32 0, i32 2
  %25 = ptrtoint ptr %dst_port to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %dst_port, align 4
  br label %if.end40

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %proto18 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call.i, i32 0, i32 2, i32 0, i32 7
  %26 = ptrtoint ptr %proto18 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %10, ptr %proto18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %10)
  %cmp20 = icmp eq i8 %10, 6
  %cond22 = select i1 %cmp20, i32 25, i32 24
  %src_ip25 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call.i, i32 0, i32 2, i32 0, i32 1
  %addrs26 = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 8
  %27 = call ptr @memcpy(ptr %src_ip25, ptr %addrs26, i32 16)
  %dst31 = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 8, i32 0, i32 0, i32 1
  %28 = call ptr @memcpy(ptr %ip, ptr %dst31, i32 16)
  %ports32 = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 6
  %29 = ptrtoint ptr %ports32 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %ports32, align 4
  %src_port35 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  %31 = ptrtoint ptr %src_port35 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %src_port35, align 2
  %dst37 = getelementptr inbounds %struct.anon.221, ptr %ports32, i32 0, i32 1
  %32 = ptrtoint ptr %dst37 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %dst37, align 2
  %dst_port39 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %34 = ptrtoint ptr %dst_port39 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %dst_port39, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then5
  %cond22.sink = phi i32 [ %cond, %if.then5 ], [ %cond22, %if.else ]
  %35 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call.i, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond22.sink, ptr %35, align 4
  %flow_id41 = getelementptr inbounds %struct.ice_arfs_entry, ptr %call.i, i32 0, i32 3
  %37 = ptrtoint ptr %flow_id41 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %flow_id, ptr %flow_id41, align 8
  %arfs_last_fltr_id = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 32
  %38 = ptrtoint ptr %arfs_last_fltr_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arfs_last_fltr_id, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %39, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %39, i32 1, i32 3, i32 1) #6
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 1, ptr elementtype(i32) %39) #6, !srcloc !44
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %40, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !45
  %rem = srem i32 %asmresult.i.i.i.i, 65535
  %fltr_id = getelementptr inbounds %struct.ice_fdir_fltr, ptr %call.i, i32 0, i32 21
  %41 = ptrtoint ptr %fltr_id to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %rem, ptr %fltr_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_service_task_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_init_arfs(ptr noundef %vsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vsi, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 17
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4096) #10
  %tobool1.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 0
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.free_arfs_fltr_list_crit_edge

lor.lhs.false.i.free_arfs_fltr_list_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_arfs_fltr_list

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 16) #10
  %arfs_fltr_cntrs.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 30
  %6 = ptrtoint ptr %arfs_fltr_cntrs.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i.i21, ptr %arfs_fltr_cntrs.i, align 8
  %tobool2.not.i = icmp eq ptr %call7.i.i.i21, null
  br i1 %tobool2.not.i, label %if.end.i.free_arfs_fltr_list_crit_edge, label %if.end4.i

if.end.i.free_arfs_fltr_list_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_arfs_fltr_list

if.end4.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i19.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 4) #10
  %arfs_last_fltr_id.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 32
  %8 = ptrtoint ptr %arfs_last_fltr_id.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i19.i, ptr %arfs_last_fltr_id.i, align 8
  %tobool7.not.i = icmp eq ptr %call7.i.i19.i, null
  br i1 %tobool7.not.i, label %if.then8.i, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 4096)
  %arfs_lock = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 31
  tail call void @__raw_spin_lock_init(ptr noundef %arfs_lock, ptr noundef nonnull @.str, ptr noundef nonnull @ice_init_arfs.__key, i16 noundef signext 3) #6
  %arfs_fltr_list10 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 29
  %10 = ptrtoint ptr %arfs_fltr_list10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i.i, ptr %arfs_fltr_list10, align 4
  br label %cleanup

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %arfs_fltr_cntrs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arfs_fltr_cntrs.i, align 8
  tail call void @kfree(ptr noundef %12) #6
  %13 = ptrtoint ptr %arfs_fltr_cntrs.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arfs_fltr_cntrs.i, align 8
  br label %free_arfs_fltr_list

free_arfs_fltr_list:                              ; preds = %if.then8.i, %if.end.i.free_arfs_fltr_list_crit_edge, %lor.lhs.false.i.free_arfs_fltr_list_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %free_arfs_fltr_list, %for.body.preheader, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_clear_arfs(ptr noundef %vsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vsi, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 17
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %lor.lhs.false1, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false1.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false1
  %arfs_fltr_list = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 29
  %4 = ptrtoint ptr %arfs_fltr_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arfs_fltr_list, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %arfs_lock = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %if.end
  %i.061 = phi i32 [ 0, %if.end ], [ %inc, %for.end.for.body_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %arfs_lock) #6
  %8 = ptrtoint ptr %arfs_fltr_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arfs_fltr_list, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %9, i32 %i.061
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %11, null
  %add.ptr = getelementptr i8, ptr %11, i32 -248
  %tobool12.not5962 = icmp eq ptr %add.ptr, null
  %tobool12.not59 = or i1 %tobool9.not, %tobool12.not5962
  br i1 %tobool12.not59, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond11.backedge.thread:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %list_entry, align 4
  %13 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call void @devm_kfree(ptr noundef %dev6, ptr noundef nonnull %r.060) #6
  br label %for.end

for.cond11.backedge:                              ; preds = %land.rhs
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %18, i32 0, i32 1
  %14 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %20, ptr %pprev14.i.i, align 4
  %15 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %list_entry, align 4
  %16 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call void @devm_kfree(ptr noundef %dev6, ptr noundef nonnull %r.060) #6
  %add.ptr23 = getelementptr i8, ptr %18, i32 -248
  %tobool12.not = icmp eq ptr %add.ptr23, null
  br i1 %tobool12.not, label %for.cond11.backedge.for.end_crit_edge, label %for.cond11.backedge.land.rhs_crit_edge

for.cond11.backedge.land.rhs_crit_edge:           ; preds = %for.cond11.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

for.cond11.backedge.for.end_crit_edge:            ; preds = %for.cond11.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.rhs:                                         ; preds = %for.cond11.backedge.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %r.060 = phi ptr [ %add.ptr23, %for.cond11.backedge.land.rhs_crit_edge ], [ %add.ptr, %for.body.land.rhs_crit_edge ]
  %list_entry = getelementptr inbounds %struct.ice_arfs_entry, ptr %r.060, i32 0, i32 1
  %17 = ptrtoint ptr %list_entry to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %list_entry, align 8
  %pprev2.i.i = getelementptr inbounds %struct.ice_arfs_entry, ptr %r.060, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pprev2.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %18, ptr %20, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %for.cond11.backedge.thread, label %for.cond11.backedge

for.end:                                          ; preds = %for.cond11.backedge.for.end_crit_edge, %for.cond11.backedge.thread, %for.body.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %arfs_lock) #6
  %inc = add nuw nsw i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end29, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end29:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %arfs_fltr_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arfs_fltr_list, align 4
  tail call void @kfree(ptr noundef %23) #6
  %24 = ptrtoint ptr %arfs_fltr_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arfs_fltr_list, align 4
  %arfs_last_fltr_id = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 32
  %25 = ptrtoint ptr %arfs_last_fltr_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arfs_last_fltr_id, align 8
  tail call void @kfree(ptr noundef %26) #6
  %27 = ptrtoint ptr %arfs_last_fltr_id to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arfs_last_fltr_id, align 8
  %arfs_fltr_cntrs = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 30
  %28 = ptrtoint ptr %arfs_fltr_cntrs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arfs_fltr_cntrs, align 8
  tail call void @kfree(ptr noundef %29) #6
  %30 = ptrtoint ptr %arfs_fltr_cntrs to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arfs_fltr_cntrs, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end29, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_free_cpu_rx_rmap(ptr noundef readonly %vsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vsi, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 17
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %lor.lhs.false1, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %arfs_fltr_list = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 29
  %2 = ptrtoint ptr %arfs_fltr_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arfs_fltr_list, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false1.cleanup_crit_edge, label %if.end

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  %4 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vsi, align 128
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false5:                                   ; preds = %if.end
  %rx_cpu_rmap = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 100
  %6 = ptrtoint ptr %rx_cpu_rmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_cpu_rmap, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %lor.lhs.false5.cleanup_crit_edge, label %if.end8

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @free_irq_cpu_rmap(ptr noundef nonnull %7) #6
  %8 = ptrtoint ptr %rx_cpu_rmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rx_cpu_rmap, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %lor.lhs.false5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_irq_cpu_rmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_set_cpu_rx_rmap(ptr noundef readonly %vsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vsi, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 17
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %4 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vsi, align 128
  %tobool2.not = icmp eq ptr %3, null
  %tobool4.not = icmp eq ptr %5, null
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %lor.lhs.false5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false5:                                   ; preds = %if.end
  %num_q_vectors = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 15
  %6 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_q_vectors, align 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool6.not = icmp eq i16 %7, 0
  br i1 %tobool6.not, label %lor.lhs.false5.cleanup_crit_edge, label %do.body9

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body9:                                         ; preds = %lor.lhs.false5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_set_cpu_rx_rmap.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_set_cpu_rx_rmap, %if.then13)) #6
          to label %do.end18 [label %if.then13], !srcloc !39

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %10 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_q_vectors, align 64
  %conv = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ice_set_cpu_rx_rmap.__UNIQUE_ID_ddebug615, ptr noundef nonnull %5, ptr noundef nonnull @.str.4, i32 noundef %9, ptr noundef nonnull %5, i32 noundef %conv) #6
  br label %do.end18

do.end18:                                         ; preds = %if.then13, %do.body9
  %12 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_q_vectors, align 64
  %conv20 = zext i16 %13 to i32
  %call.i = tail call ptr @alloc_cpu_rmap(i32 noundef %conv20, i32 noundef 3264) #6
  %rx_cpu_rmap = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 100
  %14 = ptrtoint ptr %rx_cpu_rmap to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %rx_cpu_rmap, align 4
  %tobool23.not = icmp eq ptr %call.i, null
  br i1 %tobool23.not, label %do.end18.cleanup_crit_edge, label %if.end33, !prof !40

do.end18.cleanup_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %do.end18
  %base_vector = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 16
  %15 = ptrtoint ptr %base_vector to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %base_vector, align 2
  %conv34 = zext i16 %16 to i32
  %17 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_q_vectors, align 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp3768.not = icmp eq i16 %18, 0
  br i1 %cmp3768.not, label %if.end33.cleanup_crit_edge, label %for.body.lr.ph

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end33
  %msix_entries = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 5
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.069, 1
  %19 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_q_vectors, align 64
  %conv36 = zext i16 %20 to i32
  %cmp37 = icmp ult i32 %inc, %conv36
  br i1 %cmp37, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.069 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %21 = ptrtoint ptr %rx_cpu_rmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_cpu_rmap, align 4
  %23 = ptrtoint ptr %msix_entries to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %msix_entries, align 4
  %add = add nuw nsw i32 %i.069, %conv34
  %arrayidx = getelementptr %struct.msix_entry, ptr %24, i32 %add
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %call40 = tail call i32 @irq_cpu_rmap_add(ptr noundef %22, i32 noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %for.cond, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not.i = icmp eq i32 %28, 0
  br i1 %cmp.not.i, label %lor.lhs.false1.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %arfs_fltr_list.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 29
  %29 = ptrtoint ptr %arfs_fltr_list.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arfs_fltr_list.i, align 4
  %tobool2.not.i = icmp eq ptr %30, null
  br i1 %tobool2.not.i, label %lor.lhs.false1.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false1.i.cleanup_crit_edge:               ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false1.i
  %31 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vsi, align 128
  %tobool4.not.i = icmp eq ptr %32, null
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %lor.lhs.false5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false5.i:                                 ; preds = %if.end.i
  %rx_cpu_rmap.i = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 100
  %33 = ptrtoint ptr %rx_cpu_rmap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx_cpu_rmap.i, align 4
  %tobool6.not.i = icmp eq ptr %34, null
  br i1 %tobool6.not.i, label %lor.lhs.false5.i.cleanup_crit_edge, label %if.end8.i

lor.lhs.false5.i.cleanup_crit_edge:               ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.i:                                        ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @free_irq_cpu_rmap(ptr noundef nonnull %34) #6
  %35 = ptrtoint ptr %rx_cpu_rmap.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %rx_cpu_rmap.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8.i, %lor.lhs.false5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false1.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %do.end18.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %do.end18.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %lor.lhs.false1.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %lor.lhs.false5.i.cleanup_crit_edge ], [ -22, %if.end8.i ], [ 0, %if.end33.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_cpu_rmap_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_remove_arfs(ptr nocapture noundef readonly %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  %0 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %ice_get_main_vsi.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ice_get_main_vsi.exit:                            ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %ice_get_main_vsi.exit.cleanup_crit_edge, label %lor.lhs.false.i

ice_get_main_vsi.exit.cleanup_crit_edge:          ; preds = %ice_get_main_vsi.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %ice_get_main_vsi.exit
  %type.i = getelementptr inbounds %struct.ice_vsi, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %lor.lhs.false1.i, label %lor.lhs.false.i.ice_free_cpu_rx_rmap.exit_crit_edge

lor.lhs.false.i.ice_free_cpu_rx_rmap.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_free_cpu_rx_rmap.exit

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %arfs_fltr_list.i = getelementptr inbounds %struct.ice_vsi, ptr %3, i32 0, i32 29
  %6 = ptrtoint ptr %arfs_fltr_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arfs_fltr_list.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %lor.lhs.false1.i.ice_free_cpu_rx_rmap.exit_crit_edge, label %if.end.i

lor.lhs.false1.i.ice_free_cpu_rx_rmap.exit_crit_edge: ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_free_cpu_rx_rmap.exit

if.end.i:                                         ; preds = %lor.lhs.false1.i
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 128
  %tobool4.not.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i, label %if.end.i.ice_free_cpu_rx_rmap.exit_crit_edge, label %lor.lhs.false5.i

if.end.i.ice_free_cpu_rx_rmap.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_free_cpu_rx_rmap.exit

lor.lhs.false5.i:                                 ; preds = %if.end.i
  %rx_cpu_rmap.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 100
  %10 = ptrtoint ptr %rx_cpu_rmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_cpu_rmap.i, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  br i1 %tobool6.not.i, label %lor.lhs.false5.i.ice_free_cpu_rx_rmap.exit_crit_edge, label %if.end8.i

lor.lhs.false5.i.ice_free_cpu_rx_rmap.exit_crit_edge: ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_free_cpu_rx_rmap.exit

if.end8.i:                                        ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @free_irq_cpu_rmap(ptr noundef nonnull %11) #6
  %12 = ptrtoint ptr %rx_cpu_rmap.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rx_cpu_rmap.i, align 4
  br label %ice_free_cpu_rx_rmap.exit

ice_free_cpu_rx_rmap.exit:                        ; preds = %if.end8.i, %lor.lhs.false5.i.ice_free_cpu_rx_rmap.exit_crit_edge, %if.end.i.ice_free_cpu_rx_rmap.exit_crit_edge, %lor.lhs.false1.i.ice_free_cpu_rx_rmap.exit_crit_edge, %lor.lhs.false.i.ice_free_cpu_rx_rmap.exit_crit_edge
  tail call void @ice_clear_arfs(ptr noundef nonnull %3)
  br label %cleanup

cleanup:                                          ; preds = %ice_free_cpu_rx_rmap.exit, %ice_get_main_vsi.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_rebuild_arfs(ptr nocapture noundef readonly %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  %0 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %ice_get_main_vsi.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ice_get_main_vsi.exit:                            ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %ice_get_main_vsi.exit.cleanup_crit_edge, label %ice_get_main_vsi.exit.i

ice_get_main_vsi.exit.cleanup_crit_edge:          ; preds = %ice_get_main_vsi.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ice_get_main_vsi.exit.i:                          ; preds = %ice_get_main_vsi.exit
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %tobool.not.i9 = icmp eq ptr %5, null
  br i1 %tobool.not.i9, label %ice_get_main_vsi.exit.i.ice_remove_arfs.exit_crit_edge, label %lor.lhs.false.i.i

ice_get_main_vsi.exit.i.ice_remove_arfs.exit_crit_edge: ; preds = %ice_get_main_vsi.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_remove_arfs.exit

lor.lhs.false.i.i:                                ; preds = %ice_get_main_vsi.exit.i
  %type.i.i = getelementptr inbounds %struct.ice_vsi, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false1.i.i, label %lor.lhs.false.i.i.ice_free_cpu_rx_rmap.exit.i_crit_edge

lor.lhs.false.i.i.ice_free_cpu_rx_rmap.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_free_cpu_rx_rmap.exit.i

lor.lhs.false1.i.i:                               ; preds = %lor.lhs.false.i.i
  %arfs_fltr_list.i.i = getelementptr inbounds %struct.ice_vsi, ptr %5, i32 0, i32 29
  %8 = ptrtoint ptr %arfs_fltr_list.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arfs_fltr_list.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false1.i.i.ice_free_cpu_rx_rmap.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false1.i.i.ice_free_cpu_rx_rmap.exit.i_crit_edge: ; preds = %lor.lhs.false1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_free_cpu_rx_rmap.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false1.i.i
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 128
  %tobool4.not.i.i = icmp eq ptr %11, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.ice_free_cpu_rx_rmap.exit.i_crit_edge, label %lor.lhs.false5.i.i

if.end.i.i.ice_free_cpu_rx_rmap.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_free_cpu_rx_rmap.exit.i

lor.lhs.false5.i.i:                               ; preds = %if.end.i.i
  %rx_cpu_rmap.i.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 100
  %12 = ptrtoint ptr %rx_cpu_rmap.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_cpu_rmap.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %13, null
  br i1 %tobool6.not.i.i, label %lor.lhs.false5.i.i.ice_free_cpu_rx_rmap.exit.i_crit_edge, label %if.end8.i.i

lor.lhs.false5.i.i.ice_free_cpu_rx_rmap.exit.i_crit_edge: ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_free_cpu_rx_rmap.exit.i

if.end8.i.i:                                      ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @free_irq_cpu_rmap(ptr noundef nonnull %13) #6
  %14 = ptrtoint ptr %rx_cpu_rmap.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rx_cpu_rmap.i.i, align 4
  br label %ice_free_cpu_rx_rmap.exit.i

ice_free_cpu_rx_rmap.exit.i:                      ; preds = %if.end8.i.i, %lor.lhs.false5.i.i.ice_free_cpu_rx_rmap.exit.i_crit_edge, %if.end.i.i.ice_free_cpu_rx_rmap.exit.i_crit_edge, %lor.lhs.false1.i.i.ice_free_cpu_rx_rmap.exit.i_crit_edge, %lor.lhs.false.i.i.ice_free_cpu_rx_rmap.exit.i_crit_edge
  tail call void @ice_clear_arfs(ptr noundef nonnull %5) #6
  br label %ice_remove_arfs.exit

ice_remove_arfs.exit:                             ; preds = %ice_free_cpu_rx_rmap.exit.i, %ice_get_main_vsi.exit.i.ice_remove_arfs.exit_crit_edge
  %call1 = tail call i32 @ice_set_cpu_rx_rmap(ptr noundef nonnull %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %ice_remove_arfs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end4:                                          ; preds = %ice_remove_arfs.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ice_init_arfs(ptr noundef nonnull %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %ice_get_main_vsi.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rps_may_expire_flow(ptr noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_fdir_write_fltr(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__skb_flow_dissect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_cpu_rmap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @ice_init_arfs.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_arfs.c", i32 527, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/intel/ice/ice_arfs.c", i32 609, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ice_set_cpu_rx_rmap.__UNIQUE_ID_ddebug615, !4, !"__UNIQUE_ID_ddebug615", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/intel/ice/ice_arfs.c", i32 657, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ice_rebuild_arfs._entry, !10, !"_entry", i1 false, i1 false}
!15 = !{ptr @ice_rebuild_arfs._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/ice/ice_arfs.c", i32 121, i32 4}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ice_arfs_del_flow_rules.__UNIQUE_ID_ddebug613, !17, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/ice/ice_arfs.c", i32 160, i32 4}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ice_arfs_add_flow_rules.__UNIQUE_ID_ddebug614, !21, !"__UNIQUE_ID_ddebug614", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/ice/ice_arfs.c", i32 90, i32 3}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ice_arfs_update_active_fltr_cntrs._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @ice_arfs_update_active_fltr_cntrs._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 2160079730}
!39 = !{i64 2148737974, i64 2148737979, i64 2148737992, i64 2148738036, i64 2148738070, i64 2148738091}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{i64 2148256159, i64 2148256185, i64 2148256214, i64 2148256248, i64 2148256279, i64 2148256302}
!42 = !{i64 2148258624, i64 2148258650, i64 2148258679, i64 2148258713, i64 2148258744, i64 2148258767}
!43 = !{i64 2148341570}
!44 = !{i64 2148256879, i64 2148256911, i64 2148256940, i64 2148256974, i64 2148257005, i64 2148257028}
!45 = !{i64 2148341799}
