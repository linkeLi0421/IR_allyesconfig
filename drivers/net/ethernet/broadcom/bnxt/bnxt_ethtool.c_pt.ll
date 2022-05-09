; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.anon.174 = type { i64, [32 x i8] }
%struct.anon.175 = type { i32, [32 x i8] }
%struct.anon.176 = type { i32, [32 x i8] }
%struct.anon.177 = type { i32, [32 x i8] }
%struct.anon.178 = type { i32, [32 x i8] }
%struct.anon.179 = type { i32, [32 x i8] }
%struct.anon.180 = type { i32, [32 x i8] }
%struct.anon.181 = type { i32, [32 x i8] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ethtool_rmon_hist_range = type { i16, i16 }
%struct.bnxt = type { ptr, ptr, ptr, i32, i16, i8, [32 x i8], [32 x i8], ptr, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i16, i32, i16, i8, i8, [8 x %struct.bnxt_queue_info], [8 x i8], [8 x i8], i8, i32, %struct.timer_list, i32, ptr, i32, [6 x i8], ptr, ptr, i8, i8, i8, i32, i32, i32, i32, i16, i16, ptr, %struct.hlist_head, %struct.rtnl_link_stats64, %struct.bnxt_stats_mem, %struct.bnxt_stats_mem, %struct.bnxt_stats_mem, i16, i16, i16, [8 x i8], i8, i16, i16, i32, i32, %struct.mutex, %struct.hwrm_ver_get_output, [32 x i8], [32 x i8], [32 x i8], i64, i16, i16, i16, i16, i8, i8, i16, %struct.bnxt_coal_cap, %struct.bnxt_coal, %struct.bnxt_coal, i32, %struct.work_struct, i32, %struct.delayed_work, i32, i16, i16, i32, ptr, %struct.bnxt_hw_resc, %struct.bnxt_pf_info, ptr, i32, %struct.bnxt_vf_info, %struct.wait_queue_head, i8, %struct.mutex, %struct.spinlock, i32, [512 x %struct.hlist_head], %struct.spinlock, ptr, i32, %struct.mutex, %struct.bnxt_link_info, %struct.ethtool_eee, i32, i32, i8, i8, ptr, i8, i8, i8, [4 x %struct.bnxt_led_info], i16, ptr, ptr, ptr, %struct.devlink_port, i32, ptr, ptr, [8 x i8], ptr, %struct.list_head, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.bnxt_queue_info = type { i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bnxt_stats_mem = type { ptr, ptr, ptr, i32, i32 }
%struct.hwrm_ver_get_output = type { i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8, i8, i8, i16, i16, i16, i8, [2 x i8], i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i8], i8 }
%struct.bnxt_coal_cap = type { i32, i32, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.bnxt_coal = type { i16, i16, i16, i16, i16, i8, i8, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.bnxt_hw_resc = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.bnxt_pf_info = type { i16, i16, [6 x i8], i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, ptr, i16, i8, [4 x ptr], [4 x i32], ptr }
%struct.bnxt_vf_info = type { i16, [6 x i8], [6 x i8], i16, i16, i32, i32, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bnxt_link_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, %struct.hwrm_port_phy_qcfg_output }
%struct.hwrm_port_phy_qcfg_output = type { i16, i16, i16, i16, i8, i8, i16, i8, i8, i16, i16, i8, i8, i16, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i16, i32, i16, i8, i8, [16 x i8], [16 x i8], i16, i16, i16, i8, i8 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.bnxt_led_info = type { i8, i8, i8, i8, i16, i16 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.144 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.144 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.list_head = type { ptr, ptr }
%struct.hwrm_fw_reset_input = type { i16, i16, i16, i16, i64, i8, i8, i8, i8, [4 x i8] }
%struct.hwrm_nvm_modify_input = type { i16, i16, i16, i16, i64, i64, i16, i16, i32, i32, [4 x i8] }
%struct.hwrm_nvm_install_update_input = type { i16, i16, i16, i16, i64, i32, i16, [2 x i8] }
%struct.firmware = type { i32, ptr, ptr }
%struct.hwrm_err_output = type { i16, i16, i16, i16, i32, i16, i8, i8 }
%struct.hwrm_nvm_find_dir_entry_input = type { i16, i16, i16, i16, i64, i32, i16, i16, i16, i16, i8, [3 x i8] }
%struct.hwrm_nvm_find_dir_entry_output = type { i16, i16, i16, i16, i32, i32, i32, i16, i16, [7 x i8], i8 }
%struct.hwrm_nvm_write_input = type { i16, i16, i16, i16, i64, i64, i16, i16, i16, i16, i32, i16, i16, i32, i32, i32, i32 }
%struct.hwrm_nvm_install_update_output = type { i16, i16, i16, i16, i64, i8, i8, i8, [4 x i8], i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.161, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.161 = type { ptr }
%struct.hwrm_nvm_read_input = type { i16, i16, i16, i16, i64, i64, i16, [2 x i8], i32, i32, [4 x i8] }
%struct.hwrm_selftest_qlist_output = type { i16, i16, i16, i16, i8, i8, i8, i8, i16, [2 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], i8, [6 x i8], i8 }
%struct.bnxt_test_info = type { i8, i16, [8 x [32 x i8]] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.hwrm_pcie_qstats_input = type { i16, i16, i16, i16, i64, i16, [6 x i8], i64 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.155, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.155 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.hwrm_nvm_get_dir_info_output = type { i16, i16, i16, i16, i32, i32, [7 x i8], i8 }
%struct.hwrm_nvm_get_dir_entries_input = type { i16, i16, i16, i16, i64, i64 }
%struct.hwrm_nvm_erase_dir_entry_input = type { i16, i16, i16, i16, i64, i16, [6 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kernel_ethtool_coalesce = type { i8, i8 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pause_stats = type { i64, i64 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.hwrm_port_mac_cfg_input = type { i16, i16, i16, i16, i64, i32, i32, i16, i8, i8, i8, i8, i8, i8, i16, i16, i8, [3 x i8], i32, i32 }
%struct.bnxt_ring_grp_info = type { i16, i16, i16, i16, i16 }
%struct.hwrm_selftest_irq_input = type { i16, i16, i16, i16, i64 }
%struct.hwrm_port_led_cfg_input = type { i16, i16, i16, i16, i64, i32, i16, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8 }
%struct.bnxt_led_cfg = type { i8, i8, i8, i8, i16, i16, i8, i8 }
%struct.bnxt_napi = type { %struct.napi_struct, ptr, i32, %struct.bnxt_cp_ring_info, ptr, ptr, ptr, i32, i8, i32, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.bnxt_cp_ring_info = type { ptr, i32, %struct.bnxt_db_info, i8, i32, %struct.bnxt_coal, i64, i64, i64, %struct.dim, %union.anon.163, ptr, %struct.bnxt_stats_mem, i32, %struct.bnxt_sw_stats, %struct.bnxt_ring_struct, [2 x ptr] }
%struct.bnxt_db_info = type { ptr, %union.anon.162 }
%union.anon.162 = type { i64 }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%union.anon.163 = type { ptr }
%struct.bnxt_sw_stats = type { %struct.bnxt_rx_sw_stats, %struct.bnxt_cmn_sw_stats }
%struct.bnxt_rx_sw_stats = type { i64, i64, i64, i64, i64 }
%struct.bnxt_cmn_sw_stats = type { i64 }
%struct.bnxt_ring_struct = type { %struct.bnxt_ring_mem_info, i16, %union.anon.164, i32, i8 }
%struct.bnxt_ring_mem_info = type { i32, i32, i16, i16, ptr, ptr, ptr, ptr, i32, i32, ptr }
%union.anon.164 = type { i16 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.153, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.153 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bnxt_ntuple_filter = type { %struct.hlist_node, [6 x i8], [6 x i8], [4 x i8], %struct.flow_keys, i64, i16, i8, i16, i32, i32 }
%struct.flow_keys = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_tags, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_keyid, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_icmp, %struct.flow_dissector_key_addrs, [4 x i8] }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_tags = type { i32 }
%struct.flow_dissector_key_vlan = type { %union.anon.182, i16 }
%union.anon.182 = type { %struct.anon.183 }
%struct.anon.183 = type { i16 }
%struct.flow_dissector_key_keyid = type { i32 }
%struct.flow_dissector_key_ports = type { %union.anon.184 }
%union.anon.184 = type { i32 }
%struct.flow_dissector_key_icmp = type { %struct.anon.186, i16 }
%struct.anon.186 = type { i8, i8 }
%struct.flow_dissector_key_addrs = type { %union.anon.187 }
%union.anon.187 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.anon.185 = type { i16, i16 }
%struct.ethtool_tcpip4_spec = type { i32, i32, i16, i16, i8 }
%struct.ethtool_flash = type { i32, i32, [128 x i8] }
%struct.bnxt_fw_header = type { i32, i8, i8, i8, i8, [16 x i8], i8, i8, i8, i8 }
%struct.bnxt_ucode_trailer = type { [256 x i8], i16, i8, i8, [16 x i8], i16, i16, i32, i32 }
%struct.bnxt_vnic_info = type { i16, [8 x i16], i16, [4 x i64], i16, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, i32 }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.bnxt_ptp_cfg = type { %struct.ptp_clock_info, ptr, %struct.cyclecounter, %struct.timecounter, %struct.bnxt_pps, %struct.spinlock, ptr, i64, i64, i32, i32, i16, i16, ptr, %struct.atomic_t, i16, i8, i32, [2 x i32], [2 x i32] }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.bnxt_pps = type { i8, [4 x %struct.pps_pin] }
%struct.pps_pin = type { i8, i8, i8 }
%struct.ethtool_modinfo = type { i32, i32, i32, [8 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.154, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.154 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.ethtool_fec_stats = type { %struct.ethtool_fec_stat, %struct.ethtool_fec_stat, %struct.ethtool_fec_stat }
%struct.ethtool_fec_stat = type { i64, [8 x i64] }
%struct.ethtool_fecparam = type { i32, i32, i32, i32 }
%struct.hwrm_port_phy_cfg_input = type { i16, i16, i16, i16, i64, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i32, i16, i16, i32, i16, [2 x i8] }
%struct.ethtool_eth_mac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_eth_ctrl_stats = type { i64, i64, i64 }
%struct.ethtool_rmon_stats = type { i64, i64, i64, i64, [10 x i64], [10 x i64] }
%struct.hwrm_selftest_exec_input = type { i16, i16, i16, i16, i64, i8, [7 x i8] }
%struct.hwrm_selftest_exec_output = type { i16, i16, i16, i16, i8, i8, [5 x i8], i8 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.120, [48 x i8], %union.anon.121, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.123, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.120 = type { i64 }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type { i32, ptr }
%union.anon.123 = type { %struct.anon.124 }
%struct.anon.124 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.125, i32, i32, i32, i16, i16, %union.anon.127, i32, %union.anon.128, %union.anon.129, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.125 = type { i32 }
%union.anon.127 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i16 }
%struct.page = type { i32, %union.anon.10, %union.anon.105, %struct.atomic_t, i32 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.105 = type { %struct.atomic_t }
%struct.bnxt_tx_ring_info = type { ptr, i16, i16, i16, i8, %struct.bnxt_db_info, [8 x ptr], ptr, [8 x i32], ptr, i32, i64, i32, %struct.bnxt_ring_struct }
%struct.tx_cmp = type { i32, i32, i32, i32 }
%struct.rx_cmp = type { i32, i32, i32, i32 }
%struct.bnxt_rx_ring_info = type { ptr, i16, i16, i16, i16, %struct.bnxt_db_info, %struct.bnxt_db_info, ptr, [32 x ptr], ptr, [32 x ptr], ptr, ptr, i16, ptr, i32, [32 x i32], [32 x i32], ptr, ptr, %struct.bnxt_ring_struct, %struct.bnxt_ring_struct, [68 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.bnxt_sw_rx_bd = type { ptr, ptr, i32 }
%struct.hwrm_port_phy_qcaps_output = type { i16, i16, i16, i16, i8, i8, i16, i16, i16, i32, i32, i16, i16, i16, [1 x i8], i8 }
%struct.hwrm_port_phy_i2c_read_input = type { i16, i16, i16, i16, i64, i32, i32, i16, i8, i8, i16, i16, i8, [7 x i8] }
%struct.hwrm_port_phy_i2c_read_output = type { i16, i16, i16, i16, [16 x i32], [7 x i8], i8 }

@.str = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Reset denied by firmware, it may be inhibited by remote driver\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PKG update area not created in nvram\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"PKG insufficient update area in nvram: %lu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"HWRM_NVM_INSTALL_UPDATE failure rc :%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"PKG install error = %d, problem_item = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@bnxt_get_pkginfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 2879, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Unable to allocate memory for pkg version, length = %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnxt_get_pkginfo\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bnxt_get_pkginfo._entry_ptr = internal global ptr @bnxt_get_pkginfo._entry, section ".printk_index", align 4
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Mac loopback test (offline)\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Phy loopback test (offline)\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Ext loopback test (offline)\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Interrupt_test (offline)\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" test\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" (offline)\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" (online)\00", [22 x i8] zeroinitializer }, align 32
@bnxt_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 12583935, i32 0, ptr @bnxt_get_drvinfo, ptr @bnxt_get_regs_len, ptr @bnxt_get_regs, ptr @bnxt_get_wol, ptr @bnxt_set_wol, ptr @bnxt_get_msglevel, ptr @bnxt_set_msglevel, ptr @bnxt_nway_reset, ptr @bnxt_get_link, ptr null, ptr @bnxt_get_eeprom_len, ptr @bnxt_get_eeprom, ptr @bnxt_set_eeprom, ptr @bnxt_get_coalesce, ptr @bnxt_set_coalesce, ptr @bnxt_get_ringparam, ptr @bnxt_set_ringparam, ptr @bnxt_get_pause_stats, ptr @bnxt_get_pauseparam, ptr @bnxt_set_pauseparam, ptr @bnxt_self_test, ptr @bnxt_get_strings, ptr @bnxt_set_phys_id, ptr @bnxt_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @bnxt_get_sset_count, ptr @bnxt_get_rxnfc, ptr @bnxt_set_rxnfc, ptr @bnxt_flash_device, ptr @bnxt_reset, ptr @bnxt_get_rxfh_key_size, ptr @bnxt_get_rxfh_indir_size, ptr @bnxt_get_rxfh, ptr @bnxt_set_rxfh, ptr null, ptr null, ptr @bnxt_get_channels, ptr @bnxt_set_channels, ptr @bnxt_get_dump_flag, ptr @bnxt_get_dump_data, ptr @bnxt_set_dump, ptr @bnxt_get_ts_info, ptr @bnxt_get_module_info, ptr @bnxt_get_module_eeprom, ptr @bnxt_get_eee, ptr @bnxt_set_eee, ptr null, ptr null, ptr null, ptr null, ptr @bnxt_get_link_ksettings, ptr @bnxt_set_link_ksettings, ptr @bnxt_get_fec_stats, ptr @bnxt_get_fecparam, ptr @bnxt_set_fecparam, ptr null, ptr null, ptr null, ptr null, ptr @bnxt_get_eth_phy_stats, ptr @bnxt_get_eth_mac_stats, ptr @bnxt_get_eth_ctrl_stats, ptr @bnxt_get_rmon_stats, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"PF does not have admin privileges to flash or reset the device\0A\00", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/pkg %s\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bnxt_en\00", [24 x i8] zeroinitializer }, align 32
@elfcorehdr_addr = external dso_local local_unnamed_addr global i64, align 8
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unsupported index value: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"NVM write not supported from a virtual function\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Offline tests cannot be run with active VFs or on shared PF\0A\00", [35 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bnxt_get_strings.str = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"[%d]: %s\00", [23 x i8] zeroinitializer }, align 32
@bnxt_ring_tpa2_stats_str = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], [40 x i8] zeroinitializer }, align 32
@bnxt_ring_tpa_stats_str = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], [16 x i8] zeroinitializer }, align 32
@bnxt_sw_func_stats = internal global { [3 x %struct.anon.174], [40 x i8] } { [3 x %struct.anon.174] [%struct.anon.174 { i64 0, [32 x i8] c"rx_total_discard_pkts\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.174 { i64 0, [32 x i8] c"tx_total_discard_pkts\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.174 { i64 0, [32 x i8] c"rx_total_netpoll_discards\00\00\00\00\00\00\00" }], [40 x i8] zeroinitializer }, align 32
@bnxt_port_stats_arr = internal constant { [79 x %struct.anon.175], [708 x i8] } { [79 x %struct.anon.175] [%struct.anon.175 { i32 0, [32 x i8] c"rx_64b_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 1, [32 x i8] c"rx_65b_127b_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 2, [32 x i8] c"rx_128b_255b_frames\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 3, [32 x i8] c"rx_256b_511b_frames\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 4, [32 x i8] c"rx_512b_1023b_frames\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 5, [32 x i8] c"rx_1024b_1518b_frames\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 6, [32 x i8] c"rx_good_vlan_frames\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 7, [32 x i8] c"rx_1519b_2047b_frames\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 8, [32 x i8] c"rx_2048b_4095b_frames\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 9, [32 x i8] c"rx_4096b_9216b_frames\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 10, [32 x i8] c"rx_9217b_16383b_frames\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 11, [32 x i8] c"rx_total_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 12, [32 x i8] c"rx_ucast_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 13, [32 x i8] c"rx_mcast_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 14, [32 x i8] c"rx_bcast_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 15, [32 x i8] c"rx_fcs_err_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 16, [32 x i8] c"rx_ctrl_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 17, [32 x i8] c"rx_pause_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 18, [32 x i8] c"rx_pfc_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 22, [32 x i8] c"rx_align_err_frames\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 26, [32 x i8] c"rx_ovrsz_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 27, [32 x i8] c"rx_jbr_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 28, [32 x i8] c"rx_mtu_err_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 31, [32 x i8] c"rx_tagged_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 32, [32 x i8] c"rx_double_tagged_frames\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 34, [32 x i8] c"rx_good_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 43, [32 x i8] c"rx_pfc_ena_frames_pri0\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 44, [32 x i8] c"rx_pfc_ena_frames_pri1\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 45, [32 x i8] c"rx_pfc_ena_frames_pri2\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 46, [32 x i8] c"rx_pfc_ena_frames_pri3\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 47, [32 x i8] c"rx_pfc_ena_frames_pri4\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 48, [32 x i8] c"rx_pfc_ena_frames_pri5\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 49, [32 x i8] c"rx_pfc_ena_frames_pri6\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 50, [32 x i8] c"rx_pfc_ena_frames_pri7\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 52, [32 x i8] c"rx_undrsz_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 54, [32 x i8] c"rx_eee_lpi_events\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 55, [32 x i8] c"rx_eee_lpi_duration\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 61, [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 62, [32 x i8] c"rx_runt_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 63, [32 x i8] c"rx_runt_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 64, [32 x i8] c"rx_stat_discard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 65, [32 x i8] c"rx_stat_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 130, [32 x i8] c"tx_64b_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 131, [32 x i8] c"tx_65b_127b_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 132, [32 x i8] c"tx_128b_255b_frames\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 133, [32 x i8] c"tx_256b_511b_frames\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 134, [32 x i8] c"tx_512b_1023b_frames\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 135, [32 x i8] c"tx_1024b_1518b_frames\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 136, [32 x i8] c"tx_good_vlan_frames\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 137, [32 x i8] c"tx_1519b_2047b_frames\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 138, [32 x i8] c"tx_2048b_4095b_frames\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 139, [32 x i8] c"tx_4096b_9216b_frames\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 140, [32 x i8] c"tx_9217b_16383b_frames\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 141, [32 x i8] c"tx_good_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 142, [32 x i8] c"tx_total_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 143, [32 x i8] c"tx_ucast_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 144, [32 x i8] c"tx_mcast_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 145, [32 x i8] c"tx_bcast_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 146, [32 x i8] c"tx_pause_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 147, [32 x i8] c"tx_pfc_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 148, [32 x i8] c"tx_jabber_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 149, [32 x i8] c"tx_fcs_err_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 159, [32 x i8] c"tx_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 163, [32 x i8] c"tx_fifo_underruns\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 164, [32 x i8] c"tx_pfc_ena_frames_pri0\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 165, [32 x i8] c"tx_pfc_ena_frames_pri1\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 166, [32 x i8] c"tx_pfc_ena_frames_pri2\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 167, [32 x i8] c"tx_pfc_ena_frames_pri3\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 168, [32 x i8] c"tx_pfc_ena_frames_pri4\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 169, [32 x i8] c"tx_pfc_ena_frames_pri5\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 170, [32 x i8] c"tx_pfc_ena_frames_pri6\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 171, [32 x i8] c"tx_pfc_ena_frames_pri7\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 172, [32 x i8] c"tx_eee_lpi_events\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 173, [32 x i8] c"tx_eee_lpi_duration\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 176, [32 x i8] c"tx_total_collisions\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 177, [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 178, [32 x i8] c"tx_xthol_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 179, [32 x i8] c"tx_stat_discard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i32 180, [32 x i8] c"tx_stat_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [708 x i8] zeroinitializer }, align 32
@bnxt_port_stats_ext_arr = internal constant { [59 x %struct.anon.176], [532 x i8] } { [59 x %struct.anon.176] [%struct.anon.176 { i32 0, [32 x i8] c"link_down_events\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 1, [32 x i8] c"continuous_pause_events\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 2, [32 x i8] c"resume_pause_events\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 3, [32 x i8] c"continuous_roce_pause_events\00\00\00\00" }, %struct.anon.176 { i32 4, [32 x i8] c"resume_roce_pause_events\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 5, [32 x i8] c"rx_bytes_cos0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 13, [32 x i8] c"rx_packets_cos0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 6, [32 x i8] c"rx_bytes_cos1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 14, [32 x i8] c"rx_packets_cos1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 7, [32 x i8] c"rx_bytes_cos2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 15, [32 x i8] c"rx_packets_cos2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 8, [32 x i8] c"rx_bytes_cos3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 16, [32 x i8] c"rx_packets_cos3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 9, [32 x i8] c"rx_bytes_cos4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 17, [32 x i8] c"rx_packets_cos4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 10, [32 x i8] c"rx_bytes_cos5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 18, [32 x i8] c"rx_packets_cos5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 11, [32 x i8] c"rx_bytes_cos6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 19, [32 x i8] c"rx_packets_cos6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 12, [32 x i8] c"rx_bytes_cos7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 20, [32 x i8] c"rx_packets_cos7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 21, [32 x i8] c"pfc_pri0_rx_duration_us\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 22, [32 x i8] c"pfc_pri0_rx_transitions\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 23, [32 x i8] c"pfc_pri1_rx_duration_us\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 24, [32 x i8] c"pfc_pri1_rx_transitions\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 25, [32 x i8] c"pfc_pri2_rx_duration_us\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 26, [32 x i8] c"pfc_pri2_rx_transitions\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 27, [32 x i8] c"pfc_pri3_rx_duration_us\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 28, [32 x i8] c"pfc_pri3_rx_transitions\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 29, [32 x i8] c"pfc_pri4_rx_duration_us\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 30, [32 x i8] c"pfc_pri4_rx_transitions\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 31, [32 x i8] c"pfc_pri5_rx_duration_us\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 32, [32 x i8] c"pfc_pri5_rx_transitions\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 33, [32 x i8] c"pfc_pri6_rx_duration_us\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 34, [32 x i8] c"pfc_pri6_rx_transitions\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 35, [32 x i8] c"pfc_pri7_rx_duration_us\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 36, [32 x i8] c"pfc_pri7_rx_transitions\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 37, [32 x i8] c"rx_bits\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 38, [32 x i8] c"rx_buffer_passed_threshold\00\00\00\00\00\00" }, %struct.anon.176 { i32 39, [32 x i8] c"rx_pcs_symbol_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 40, [32 x i8] c"rx_corrected_bits\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 41, [32 x i8] c"rx_discard_bytes_cos0\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 49, [32 x i8] c"rx_discard_packets_cos0\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 42, [32 x i8] c"rx_discard_bytes_cos1\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 50, [32 x i8] c"rx_discard_packets_cos1\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 43, [32 x i8] c"rx_discard_bytes_cos2\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 51, [32 x i8] c"rx_discard_packets_cos2\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 44, [32 x i8] c"rx_discard_bytes_cos3\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 52, [32 x i8] c"rx_discard_packets_cos3\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 45, [32 x i8] c"rx_discard_bytes_cos4\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 53, [32 x i8] c"rx_discard_packets_cos4\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 46, [32 x i8] c"rx_discard_bytes_cos5\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 54, [32 x i8] c"rx_discard_packets_cos5\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 47, [32 x i8] c"rx_discard_bytes_cos6\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 55, [32 x i8] c"rx_discard_packets_cos6\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 48, [32 x i8] c"rx_discard_bytes_cos7\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 56, [32 x i8] c"rx_discard_packets_cos7\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 57, [32 x i8] c"rx_fec_corrected_blocks\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i32 58, [32 x i8] c"rx_fec_uncorrectable_blocks\00\00\00\00\00" }], [532 x i8] zeroinitializer }, align 32
@bnxt_tx_port_stats_ext_arr = internal constant { [32 x %struct.anon.177], [288 x i8] } { [32 x %struct.anon.177] [%struct.anon.177 { i32 0, [32 x i8] c"tx_bytes_cos0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 8, [32 x i8] c"tx_packets_cos0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 1, [32 x i8] c"tx_bytes_cos1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 9, [32 x i8] c"tx_packets_cos1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 2, [32 x i8] c"tx_bytes_cos2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 10, [32 x i8] c"tx_packets_cos2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 3, [32 x i8] c"tx_bytes_cos3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 11, [32 x i8] c"tx_packets_cos3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 4, [32 x i8] c"tx_bytes_cos4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 12, [32 x i8] c"tx_packets_cos4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 5, [32 x i8] c"tx_bytes_cos5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 13, [32 x i8] c"tx_packets_cos5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 6, [32 x i8] c"tx_bytes_cos6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 14, [32 x i8] c"tx_packets_cos6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 7, [32 x i8] c"tx_bytes_cos7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 15, [32 x i8] c"tx_packets_cos7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 16, [32 x i8] c"pfc_pri0_tx_duration_us\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 17, [32 x i8] c"pfc_pri0_tx_transitions\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 18, [32 x i8] c"pfc_pri1_tx_duration_us\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 19, [32 x i8] c"pfc_pri1_tx_transitions\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 20, [32 x i8] c"pfc_pri2_tx_duration_us\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 21, [32 x i8] c"pfc_pri2_tx_transitions\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 22, [32 x i8] c"pfc_pri3_tx_duration_us\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 23, [32 x i8] c"pfc_pri3_tx_transitions\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 24, [32 x i8] c"pfc_pri4_tx_duration_us\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 25, [32 x i8] c"pfc_pri4_tx_transitions\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 26, [32 x i8] c"pfc_pri5_tx_duration_us\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 27, [32 x i8] c"pfc_pri5_tx_transitions\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 28, [32 x i8] c"pfc_pri6_tx_duration_us\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 29, [32 x i8] c"pfc_pri6_tx_transitions\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 30, [32 x i8] c"pfc_pri7_tx_duration_us\00\00\00\00\00\00\00\00\00" }, %struct.anon.177 { i32 31, [32 x i8] c"pfc_pri7_tx_transitions\00\00\00\00\00\00\00\00\00" }], [288 x i8] zeroinitializer }, align 32
@bnxt_rx_bytes_pri_arr = internal constant { [8 x %struct.anon.178], [64 x i8] } { [8 x %struct.anon.178] [%struct.anon.178 { i32 5, [32 x i8] c"rx_bytes_pri0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.178 { i32 5, [32 x i8] c"rx_bytes_pri1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.178 { i32 5, [32 x i8] c"rx_bytes_pri2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.178 { i32 5, [32 x i8] c"rx_bytes_pri3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.178 { i32 5, [32 x i8] c"rx_bytes_pri4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.178 { i32 5, [32 x i8] c"rx_bytes_pri5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.178 { i32 5, [32 x i8] c"rx_bytes_pri6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.178 { i32 5, [32 x i8] c"rx_bytes_pri7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [64 x i8] zeroinitializer }, align 32
@bnxt_rx_pkts_pri_arr = internal constant { [8 x %struct.anon.179], [64 x i8] } { [8 x %struct.anon.179] [%struct.anon.179 { i32 13, [32 x i8] c"rx_packets_pri0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.179 { i32 13, [32 x i8] c"rx_packets_pri1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.179 { i32 13, [32 x i8] c"rx_packets_pri2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.179 { i32 13, [32 x i8] c"rx_packets_pri3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.179 { i32 13, [32 x i8] c"rx_packets_pri4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.179 { i32 13, [32 x i8] c"rx_packets_pri5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.179 { i32 13, [32 x i8] c"rx_packets_pri6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.179 { i32 13, [32 x i8] c"rx_packets_pri7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [64 x i8] zeroinitializer }, align 32
@bnxt_tx_bytes_pri_arr = internal constant { [8 x %struct.anon.180], [64 x i8] } { [8 x %struct.anon.180] [%struct.anon.180 { i32 0, [32 x i8] c"tx_bytes_pri0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.180 { i32 0, [32 x i8] c"tx_bytes_pri1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.180 { i32 0, [32 x i8] c"tx_bytes_pri2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.180 { i32 0, [32 x i8] c"tx_bytes_pri3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.180 { i32 0, [32 x i8] c"tx_bytes_pri4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.180 { i32 0, [32 x i8] c"tx_bytes_pri5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.180 { i32 0, [32 x i8] c"tx_bytes_pri6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.180 { i32 0, [32 x i8] c"tx_bytes_pri7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [64 x i8] zeroinitializer }, align 32
@bnxt_tx_pkts_pri_arr = internal constant { [8 x %struct.anon.181], [64 x i8] } { [8 x %struct.anon.181] [%struct.anon.181 { i32 8, [32 x i8] c"tx_packets_pri0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.181 { i32 8, [32 x i8] c"tx_packets_pri1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.181 { i32 8, [32 x i8] c"tx_packets_pri2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.181 { i32 8, [32 x i8] c"tx_packets_pri3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.181 { i32 8, [32 x i8] c"tx_packets_pri4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.181 { i32 8, [32 x i8] c"tx_packets_pri5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.181 { i32 8, [32 x i8] c"tx_packets_pri6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.181 { i32 8, [32 x i8] c"tx_packets_pri7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [64 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bnxt_get_strings invalid request %x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_ucast_packets\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_mcast_packets\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_bcast_packets\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx_discards\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rx_errors\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_ucast_bytes\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_mcast_bytes\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_bcast_bytes\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_ucast_packets\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_mcast_packets\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_bcast_packets\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tx_errors\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tx_discards\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx_ucast_bytes\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx_mcast_bytes\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx_bcast_bytes\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx_tpa_eligible_pkt\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_tpa_eligible_bytes\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_tpa_pkt\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_tpa_bytes\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_tpa_errors\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_tpa_events\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tpa_packets\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tpa_bytes\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tpa_events\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tpa_aborts\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_l4_csum_errors\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rx_resets\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_buf_errors\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"missed_irqs\00", [20 x i8] zeroinitializer }, align 32
@bnxt_grxclsrlall.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.57 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.60 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@bnxt_grxclsrule.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.61 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"flashdev not supported from a virtual function\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"PKG error %d requesting file: %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error %d requesting firmware file: %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unsupported directory entry type: %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid firmware file size: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid firmware signature: %08X\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Expected firmware type: %d, read: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Expected firmware device family %d, read: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Firmware file CRC32 checksum (%08lX) does not match calculated checksum (%08lX)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid microcode file size: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Invalid microcode trailer signature: %08X\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Expected microcode type: %d, read: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Invalid microcode trailer length: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"CRC32 (%08lX) does not match calculated: %08lX\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Reset is not supported from a VF\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Reset not allowed when VFs are assigned to VMs\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Firmware reset request successful.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Reset application processor successful.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Reload driver to complete reset\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Only combined mode supported when XDP is enabled.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to allocate the requested rings\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"RSS table size change required, RSS table entries must be default to proceed\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Set channel failure rc :%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Supports only Live(0) and Crash(1) dumps.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EEE requires autoneg\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Valid LPI timer range is %d and %d microsecs\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"EEE advertised %x must be a subset of autoneg advertised speeds %x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"10GBase-T devices must autoneg\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HALF DUPLEX is not supported!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unsupported speed!\0A\00", [44 x i8] zeroinitializer }, align 32
@bnxt_rmon_ranges = internal constant { [11 x %struct.ethtool_rmon_hist_range], [52 x i8] } { [11 x %struct.ethtool_rmon_hist_range] [%struct.ethtool_rmon_hist_range { i16 0, i16 64 }, %struct.ethtool_rmon_hist_range { i16 65, i16 127 }, %struct.ethtool_rmon_hist_range { i16 128, i16 255 }, %struct.ethtool_rmon_hist_range { i16 256, i16 511 }, %struct.ethtool_rmon_hist_range { i16 512, i16 1023 }, %struct.ethtool_rmon_hist_range { i16 1024, i16 1518 }, %struct.ethtool_rmon_hist_range { i16 1519, i16 2047 }, %struct.ethtool_rmon_hist_range { i16 2048, i16 4095 }, %struct.ethtool_rmon_hist_range { i16 4096, i16 9216 }, %struct.ethtool_rmon_hist_range { i16 9217, i16 16383 }, %struct.ethtool_rmon_hist_range zeroinitializer], [52 x i8] zeroinitializer }, align 32
@switch.table.bnxt_flash_device = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 21, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 7, i32 15, i32 17, i32 18, i32 19, i32 20, i32 5, i32 5, i32 5], [32 x i8] zeroinitializer }, align 32
@switch.table.bnxt_flash_device.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\02\02\02\02\02\02\02\02\02\00\00\00\00\02\02\02", [16 x i8] zeroinitializer }, align 32
@switch.table.bnxt_flash_device.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\00\00\00\00\00\00\01\01\02\02\03\03\00\00\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 16, i64 1, i64 10, i64 25, i64 100, i64 200, i64 250, i64 400, i64 500, i64 1000]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 9, i64 10]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.98 = internal global [7 x i64] [i64 5, i64 32, i64 41, i64 45, i64 46, i64 47, i64 48]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.101 = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 16, i64 17]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 48]
@__sancov_gen_cov_switch_values.103 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.104 = internal global [14 x i64] [i64 12, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 16, i64 17]
@__sancov_gen_cov_switch_values.105 = internal global [20 x i64] [i64 18, i64 16, i64 3, i64 4, i64 6, i64 7, i64 8, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 18, i64 19, i64 21, i64 22, i64 24, i64 25, i64 27]
@__sancov_gen_cov_switch_values.106 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 12, i64 13, i64 17]
@__sancov_gen_cov_switch_values.107 = internal global [11 x i64] [i64 9, i64 16, i64 1, i64 10, i64 25, i64 100, i64 200, i64 250, i64 400, i64 500, i64 1000]
@__sancov_gen_cov_switch_values.108 = internal global [11 x i64] [i64 9, i64 16, i64 1, i64 10, i64 25, i64 100, i64 200, i64 250, i64 400, i64 500, i64 1000]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.110 = internal global [12 x i64] [i64 10, i64 32, i64 100, i64 1000, i64 2500, i64 10000, i64 20000, i64 25000, i64 40000, i64 50000, i64 100000, i64 200000]
@__sancov_gen_cov_switch_values.111 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2219, i32 24 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2563, i32 20 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2567, i32 20 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2622, i32 21 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2634, i32 19 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2878, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 3789, i32 16 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 3791, i32 16 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 3793, i32 16 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 3795, i32 16 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 3798, i32 17 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 3800, i32 18 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 3803, i32 18 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"bnxt_ethtool_ops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 3945, i32 26 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2162, i32 23 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2909, i32 5 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1363, i32 24 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2927, i32 19 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2957, i32 19 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 3538, i32 21 }
@___asan_gen_.191 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 326, i32 6 }
@___asan_gen_.193 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 688, i32 29 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 697, i32 19 }
@___asan_gen_.199 = private unnamed_addr constant [25 x i8] c"bnxt_ring_tpa2_stats_str\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 198, i32 27 }
@___asan_gen_.202 = private unnamed_addr constant [24 x i8] c"bnxt_ring_tpa_stats_str\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 191, i32 27 }
@___asan_gen_.205 = private unnamed_addr constant [19 x i8] c"bnxt_sw_func_stats\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 336, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [20 x i8] c"bnxt_port_stats_arr\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 350, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [24 x i8] c"bnxt_port_stats_ext_arr\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 436, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [27 x i8] c"bnxt_tx_port_stats_ext_arr\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 456, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant [22 x i8] c"bnxt_rx_bytes_pri_arr\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 464, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [21 x i8] c"bnxt_rx_pkts_pri_arr\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 471, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [22 x i8] c"bnxt_tx_bytes_pri_arr\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 478, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant [21 x i8] c"bnxt_tx_pkts_pri_arr\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 485, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 790, i32 23 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 170, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 171, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 172, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 173, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 174, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 175, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 176, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 177, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 181, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 182, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 183, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 184, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 185, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 186, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 187, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 188, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 199, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 200, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 201, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 202, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 203, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 204, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 192, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 193, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 194, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 195, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 208, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 209, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 210, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 214, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1002, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 695, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 723, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2667, i32 19 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2651, i32 19 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2481, i32 19 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2337, i32 19 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2342, i32 19 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2347, i32 19 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2352, i32 19 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2357, i32 19 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2366, i32 19 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2390, i32 19 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2397, i32 19 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2402, i32 19 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2408, i32 19 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 2419, i32 7 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 3623, i32 19 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 3630, i32 7 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 3638, i32 22 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 3652, i32 22 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 3662, i32 20 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 924, i32 20 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 931, i32 20 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 938, i32 20 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 950, i32 24 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 3672, i32 20 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 3009, i32 20 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 3016, i32 21 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 3027, i32 20 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1908, i32 20 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1913, i32 20 }
@___asan_gen_.421 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1830, i32 19 }
@___asan_gen_.424 = private unnamed_addr constant [17 x i8] c"bnxt_rmon_ranges\00", align 1
@___asan_gen_.425 = private constant [53 x i8] c"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 3864, i32 45 }
@___asan_gen_.427 = private unnamed_addr constant [31 x i8] c"switch.table.bnxt_flash_device\00", align 1
@___asan_gen_.428 = private unnamed_addr constant [34 x i8] c"switch.table.bnxt_flash_device.91\00", align 1
@___asan_gen_.429 = private unnamed_addr constant [34 x i8] c"switch.table.bnxt_flash_device.92\00", align 1
@llvm.compiler.used = appending global [109 x ptr] [ptr @bnxt_get_pkginfo._entry, ptr @bnxt_get_pkginfo._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @bnxt_ethtool_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @bnxt_get_strings.str, ptr @.str.25, ptr @bnxt_ring_tpa2_stats_str, ptr @bnxt_ring_tpa_stats_str, ptr @bnxt_sw_func_stats, ptr @bnxt_port_stats_arr, ptr @bnxt_port_stats_ext_arr, ptr @bnxt_tx_port_stats_ext_arr, ptr @bnxt_rx_bytes_pri_arr, ptr @bnxt_rx_pkts_pri_arr, ptr @bnxt_tx_bytes_pri_arr, ptr @bnxt_tx_pkts_pri_arr, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @bnxt_rmon_ranges, ptr @switch.table.bnxt_flash_device, ptr @switch.table.bnxt_flash_device.91, ptr @switch.table.bnxt_flash_device.92], section "llvm.metadata"
@0 = internal global [108 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_get_pkginfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_get_strings.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_ring_tpa2_stats_str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_ring_tpa_stats_str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_sw_func_stats to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_port_stats_arr to i32), i32 2844, i32 3552, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_port_stats_ext_arr to i32), i32 2124, i32 2656, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_tx_port_stats_ext_arr to i32), i32 1152, i32 1440, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_rx_bytes_pri_arr to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_rx_pkts_pri_arr to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_tx_bytes_pri_arr to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_tx_pkts_pri_arr to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_rmon_ranges to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bnxt_flash_device to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bnxt_flash_device.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bnxt_flash_device.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bnxt_get_rxfh_indir_size(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %dev, i32 2400
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %rx_nr_rings = getelementptr i8, ptr %dev, i32 2480
  %2 = ptrtoint ptr %rx_nr_rings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_nr_rings, align 8
  %add = add i32 %3, 63
  %and1 = and i32 %add, -64
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and1, %if.then ], [ 128, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @_bnxt_fw_to_ethtool_adv_spds(i16 noundef zeroext %fw_speeds, i8 noundef zeroext %fw_pause) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %fw_speeds to i32
  %and = shl nuw nsw i32 %conv, 2
  %0 = and i32 %and, 40
  %and8 = shl nuw nsw i32 %conv, 10
  %1 = and i32 %and8, 32768
  %2 = or i32 %0, %1
  %and14 = shl nuw nsw i32 %conv, 6
  %3 = and i32 %and14, 4096
  %4 = or i32 %2, %3
  %and20 = shl nuw nsw i32 %conv, 15
  %5 = and i32 %and20, 16777216
  %6 = or i32 %4, %5
  %conv25 = zext i8 %fw_pause to i32
  %and26 = and i32 %conv25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and26)
  %cmp = icmp eq i32 %and26, 3
  br i1 %cmp, label %if.then28, label %if.else

if.then28:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %or29 = or i32 %6, 8192
  br label %if.end43

if.else:                                          ; preds = %entry
  %and31 = and i32 %conv25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else35, label %if.then33

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #26
  %or34 = or i32 %6, 16384
  br label %if.end43

if.else35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #26
  %and37 = and i32 %conv25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %or40 = or i32 %6, 24576
  %spec.select58 = select i1 %tobool38.not, i32 %6, i32 %or40
  br label %if.end43

if.end43:                                         ; preds = %if.else35, %if.then33, %if.then28
  %speed_mask.5 = phi i32 [ %or29, %if.then28 ], [ %or34, %if.then33 ], [ %spec.select58, %if.else35 ]
  ret i32 %speed_mask.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bnxt_fw_to_ethtool_speed(i16 noundef zeroext %fw_link_speed) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %fw_link_speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i16 %fw_link_speed, label %sw.default [
    i16 1, label %entry.return_crit_edge
    i16 10, label %sw.bb1
    i16 25, label %sw.bb2
    i16 100, label %sw.bb3
    i16 200, label %sw.bb4
    i16 250, label %sw.bb5
    i16 400, label %sw.bb6
    i16 500, label %sw.bb7
    i16 1000, label %sw.bb8
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %return

return:                                           ; preds = %sw.default, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %sw.default ], [ 100000, %sw.bb8 ], [ 50000, %sw.bb7 ], [ 40000, %sw.bb6 ], [ 25000, %sw.bb5 ], [ 20000, %sw.bb4 ], [ 10000, %sw.bb3 ], [ 2500, %sw.bb2 ], [ 1000, %sw.bb1 ], [ 100, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @bnxt_get_fw_auto_link_speeds(i32 noundef %advertising) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %advertising, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i16 0, i16 2
  %and2 = and i32 %advertising, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %0 = or i16 %spec.select, 8
  %fw_speed_mask.1 = select i1 %tobool3.not, i16 %spec.select, i16 %0
  %1 = trunc i32 %advertising to i16
  %2 = lshr i16 %1, 6
  %3 = and i16 %2, 64
  %and16 = lshr i32 %advertising, 15
  %4 = trunc i32 %and16 to i16
  %5 = and i16 %4, 512
  %6 = or i16 %5, %3
  %7 = or i16 %6, %fw_speed_mask.1
  ret i16 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_hwrm_nvm_get_dev_info(ptr noundef %bp, ptr nocapture noundef writeonly %nvm_dev_info) local_unnamed_addr #3 align 64 {
entry:
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #24
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !228
  %flags = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 11
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req, i16 noundef zeroext -10, i32 noundef 16) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %req, align 4
  %call4 = call ptr @hwrm_req_hold(ptr noundef %bp, ptr noundef %4) #24
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %req, align 4
  %call5 = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %6) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end3.if.end8_crit_edge

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end8

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #26
  %7 = call ptr @memcpy(ptr %nvm_dev_info, ptr %call4, i32 80)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end3.if.end8_crit_edge
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %9) #24
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end8 ], [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #24
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hwrm_req_init(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwrm_req_hold(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwrm_req_send(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwrm_req_drop(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_hwrm_firmware_reset(ptr noundef %dev, i8 noundef zeroext %proc_type, i8 noundef zeroext %self_reset, i8 noundef zeroext %flags) local_unnamed_addr #3 align 64 {
entry:
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #24
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !228
  %call1 = tail call zeroext i1 @bnxt_hwrm_reset_permitted(ptr noundef %add.ptr.i) #24
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %dev2 = getelementptr i8, ptr %dev, i32 2388
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %2, ptr noundef nonnull @.str) #27
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req, i16 noundef zeroext 192, i32 noundef 24) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %req, align 4
  %embedded_proc_type = getelementptr inbounds %struct.hwrm_fw_reset_input, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %embedded_proc_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %proc_type, ptr %embedded_proc_type, align 8
  %selfrst_status = getelementptr inbounds %struct.hwrm_fw_reset_input, ptr %4, i32 0, i32 6
  %6 = ptrtoint ptr %selfrst_status to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %self_reset, ptr %selfrst_status, align 1
  %flags6 = getelementptr inbounds %struct.hwrm_fw_reset_input, ptr %4, i32 0, i32 8
  %7 = ptrtoint ptr %flags6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %flags, ptr %flags6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %proc_type)
  %cmp = icmp eq i8 %proc_type, 5
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #26
  %call9 = call i32 @hwrm_req_send_silent(ptr noundef %add.ptr.i, ptr noundef %4) #24
  br label %cleanup

if.else:                                          ; preds = %if.end5
  %call10 = call i32 @hwrm_req_send(ptr noundef %add.ptr.i, ptr noundef %4) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call10)
  %cmp11 = icmp eq i32 %call10, -13
  br i1 %cmp11, label %if.then13, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #26
  %dev.i = getelementptr i8, ptr %dev, i32 2388
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %9, ptr noundef nonnull @.str.17) #27
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.else.cleanup_crit_edge, %if.then8, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %call3, %if.end.cleanup_crit_edge ], [ %call9, %if.then8 ], [ -13, %if.then13 ], [ %call10, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #24
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bnxt_hwrm_reset_permitted(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwrm_req_send_silent(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_flash_package_from_fw_obj(ptr noundef %dev, ptr nocapture noundef readonly %fw, i32 noundef %install_type) local_unnamed_addr #3 align 64 {
entry:
  %req.i248 = alloca ptr, align 4
  %req.i = alloca ptr, align 4
  %install = alloca ptr, align 4
  %modify = alloca ptr, align 4
  %dma_handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %install) #24
  %0 = ptrtoint ptr %install to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %install, align 4, !annotation !228
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %modify) #24
  %1 = ptrtoint ptr %modify to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %modify, align 4, !annotation !228
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle) #24
  %2 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dma_handle, align 4, !annotation !228
  %call1 = tail call i32 @bnxt_hwrm_fw_set_time(ptr noundef %add.ptr.i) #24
  %call2 = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %modify, i16 noundef zeroext -12, i32 noundef 40) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cond.false23, label %entry.cleanup144_crit_edge

entry.cleanup144_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup144

cond.false23:                                     ; preds = %entry
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw, align 4
  %sub.i247 = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i247)
  %tobool.not.i.i.i = icmp eq i32 %sub.i247, 0
  br i1 %tobool.not.i.i.i, label %cond.false23.cond.end26.thread_crit_edge, label %cond.end26

cond.false23.cond.end26.thread_crit_edge:         ; preds = %cond.false23
  call void @__sanitizer_cov_trace_pc() #26
  br label %cond.end26.thread

cond.end26:                                       ; preds = %cond.false23
  %5 = call i32 @llvm.ctlz.i32(i32 %sub.i247, i1 true) #24, !range !229
  %sub.i.i.i = sub nuw nsw i32 32, %5
  %cond27 = shl nuw i32 1, %sub.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %sub.i247)
  %cmp28 = icmp ult i32 %sub.i247, 131072
  br i1 %cmp28, label %cond.end26.cond.end26.thread_crit_edge, label %cond.end26.while.cond.preheader_crit_edge

cond.end26.while.cond.preheader_crit_edge:        ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.cond.preheader

cond.end26.cond.end26.thread_crit_edge:           ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #26
  br label %cond.end26.thread

cond.end26.thread:                                ; preds = %cond.end26.cond.end26.thread_crit_edge, %cond.false23.cond.end26.thread_crit_edge
  %cond27258 = phi i32 [ %cond27, %cond.end26.cond.end26.thread_crit_edge ], [ 1, %cond.false23.cond.end26.thread_crit_edge ]
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %cond.end26.thread, %cond.end26.while.cond.preheader_crit_edge
  %modify_len.0.ph = phi i32 [ 262144, %cond.end26.while.cond.preheader_crit_edge ], [ %cond27258, %cond.end26.thread ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %modify_len.0 = phi i32 [ %div244, %while.cond.while.cond_crit_edge ], [ %modify_len.0.ph, %while.cond.preheader ]
  %6 = ptrtoint ptr %modify to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %modify, align 4
  %call34 = call ptr @hwrm_req_dma_slice(ptr noundef %add.ptr.i, ptr noundef %7, i32 noundef %modify_len.0, ptr noundef nonnull %dma_handle) #24
  %tobool35.not = icmp eq ptr %call34, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %modify_len.0)
  %cmp36 = icmp ugt i32 %modify_len.0, 4096
  %or.cond = and i1 %cmp36, %tobool35.not
  %div244 = lshr i32 %modify_len.0, 1
  br i1 %or.cond, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br i1 %tobool35.not, label %if.then41, label %if.end42

if.then41:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #26
  %8 = ptrtoint ptr %modify to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %modify, align 4
  call void @hwrm_req_drop(ptr noundef %add.ptr.i, ptr noundef %9) #24
  br label %cleanup144

if.end42:                                         ; preds = %while.end
  %call43 = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %install, i16 noundef zeroext -13, i32 noundef 24) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  %10 = ptrtoint ptr %modify to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %modify, align 4
  br i1 %tobool44.not, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #26
  call void @hwrm_req_drop(ptr noundef %add.ptr.i, ptr noundef %11) #24
  br label %cleanup144

if.end46:                                         ; preds = %if.end42
  %hwrm_cmd_max_timeout = getelementptr i8, ptr %dev, i32 2996
  %12 = ptrtoint ptr %hwrm_cmd_max_timeout to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwrm_cmd_max_timeout, align 4
  call void @hwrm_req_timeout(ptr noundef %add.ptr.i, ptr noundef %11, i32 noundef %13) #24
  %14 = ptrtoint ptr %install to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %install, align 4
  %16 = ptrtoint ptr %hwrm_cmd_max_timeout to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hwrm_cmd_max_timeout, align 4
  call void @hwrm_req_timeout(ptr noundef %add.ptr.i, ptr noundef %15, i32 noundef %17) #24
  %18 = ptrtoint ptr %modify to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %modify, align 4
  %call48 = call ptr @hwrm_req_hold(ptr noundef %add.ptr.i, ptr noundef %19) #24
  %20 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_handle, align 4
  %conv49 = zext i32 %21 to i64
  %22 = call i64 @llvm.bswap.i64(i64 %conv49)
  %23 = ptrtoint ptr %modify to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %modify, align 4
  %host_src_addr = getelementptr inbounds %struct.hwrm_nvm_modify_input, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %host_src_addr to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %22, ptr %host_src_addr, align 8
  %26 = ptrtoint ptr %install to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %install, align 4
  %call50 = call ptr @hwrm_req_hold(ptr noundef %add.ptr.i, ptr noundef %27) #24
  %and = and i32 %install_type, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp51 = icmp eq i32 %and, 0
  %shr = lshr i32 %install_type, 16
  %spec.select = select i1 %cmp51, i32 %shr, i32 %install_type
  %28 = call i32 @llvm.bswap.i32(i32 %spec.select)
  %29 = ptrtoint ptr %install to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %install, align 4
  %install_type55 = getelementptr inbounds %struct.hwrm_nvm_install_update_input, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %install_type55 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %install_type55, align 8
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %cmd_err = getelementptr inbounds %struct.hwrm_err_output, ptr %call50, i32 0, i32 6
  %dev115 = getelementptr i8, ptr %dev, i32 2388
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end46
  %defrag_attempted.0.off0 = phi i1 [ false, %if.end46 ], [ true, %do.cond.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #24
  %32 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !228
  %call1.i = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req.i, i16 noundef zeroext -7, i32 noundef 32) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %bnxt_find_nvram_item.exit.thread

bnxt_find_nvram_item.exit.thread:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #24
  br label %if.then58

if.end.i:                                         ; preds = %do.body
  %33 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %req.i, align 4
  %enables.i = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_input, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %enables.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %enables.i, align 8
  %dir_idx.i = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_input, ptr %34, i32 0, i32 6
  %36 = ptrtoint ptr %dir_idx.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %dir_idx.i, align 4
  %dir_type.i = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_input, ptr %34, i32 0, i32 7
  %37 = ptrtoint ptr %dir_type.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 512, ptr %dir_type.i, align 2
  %dir_ordinal.i = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_input, ptr %34, i32 0, i32 8
  %38 = call ptr @memset(ptr %dir_ordinal.i, i32 0, i32 5)
  %call2.i = call ptr @hwrm_req_hold(ptr noundef %add.ptr.i, ptr noundef %34) #24
  %39 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %req.i, align 4
  %call3.i = call i32 @hwrm_req_send_silent(ptr noundef %add.ptr.i, ptr noundef %40) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp eq i32 %call3.i, 0
  br i1 %cmp.i, label %if.end59, label %bnxt_find_nvram_item.exit

bnxt_find_nvram_item.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #26
  %41 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %req.i, align 4
  call void @hwrm_req_drop(ptr noundef %add.ptr.i, ptr noundef %42) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #24
  br label %if.then58

if.then58:                                        ; preds = %bnxt_find_nvram_item.exit, %bnxt_find_nvram_item.exit.thread
  %retval.0.i267 = phi i32 [ %call1.i, %bnxt_find_nvram_item.exit.thread ], [ %call3.i, %bnxt_find_nvram_item.exit ]
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #27
  br label %pkg_abort

if.end59:                                         ; preds = %if.end.i
  %dir_idx7.i = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_output, ptr %call2.i, i32 0, i32 8
  %43 = ptrtoint ptr %dir_idx7.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %dir_idx7.i, align 2
  %dir_item_length.i = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_output, ptr %call2.i, i32 0, i32 4
  %45 = ptrtoint ptr %dir_item_length.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dir_item_length.i, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46) #24
  %48 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %req.i, align 4
  call void @hwrm_req_drop(ptr noundef %add.ptr.i, ptr noundef %49) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #24
  %50 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %47)
  %cmp61 = icmp ugt i32 %51, %47
  br i1 %cmp61, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %51) #27
  br label %pkg_abort

if.end65:                                         ; preds = %if.end59
  %52 = ptrtoint ptr %modify to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %modify, align 4
  %dir_idx = getelementptr inbounds %struct.hwrm_nvm_modify_input, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %dir_idx to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %44, ptr %dir_idx, align 8
  %55 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %modify_len.0)
  %cmp67 = icmp ugt i32 %56, %modify_len.0
  br i1 %cmp67, label %if.then69, label %if.end65.while.cond71.preheader_crit_edge

if.end65.while.cond71.preheader_crit_edge:        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.cond71.preheader

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #26
  %flags = getelementptr inbounds %struct.hwrm_nvm_modify_input, ptr %53, i32 0, i32 7
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 256, ptr %flags, align 2
  br label %while.cond71.preheader

while.cond71.preheader:                           ; preds = %if.then69, %if.end65.while.cond71.preheader_crit_edge
  br label %while.cond71

while.cond71:                                     ; preds = %if.end87.while.cond71_crit_edge, %while.cond71.preheader
  %copied.0 = phi i32 [ %add93, %if.end87.while.cond71_crit_edge ], [ 0, %while.cond71.preheader ]
  %len.0 = phi i32 [ %len.1, %if.end87.while.cond71_crit_edge ], [ %modify_len.0, %while.cond71.preheader ]
  %58 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %copied.0)
  %cmp73 = icmp ugt i32 %59, %copied.0
  br i1 %cmp73, label %while.body75, label %while.end94

while.body75:                                     ; preds = %while.cond71
  %sub77 = sub i32 %59, %copied.0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub77, i32 %modify_len.0)
  %cmp78.not = icmp ugt i32 %sub77, %modify_len.0
  br i1 %cmp78.not, label %while.body75.if.end87_crit_edge, label %if.then80

while.body75.if.end87_crit_edge:                  ; preds = %while.body75
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end87

if.then80:                                        ; preds = %while.body75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0)
  %tobool81.not = icmp eq i32 %copied.0, 0
  br i1 %tobool81.not, label %if.then80.if.end87_crit_edge, label %if.then82

if.then80.if.end87_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end87

if.then82:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #26
  %60 = ptrtoint ptr %modify to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %modify, align 4
  %flags83 = getelementptr inbounds %struct.hwrm_nvm_modify_input, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %flags83 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %flags83, align 2
  %64 = or i16 %63, 512
  store i16 %64, ptr %flags83, align 2
  br label %if.end87

if.end87:                                         ; preds = %if.then82, %if.then80.if.end87_crit_edge, %while.body75.if.end87_crit_edge
  %len.1 = phi i32 [ %sub77, %if.then82 ], [ %sub77, %if.then80.if.end87_crit_edge ], [ %len.0, %while.body75.if.end87_crit_edge ]
  %65 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %66, i32 %copied.0
  %67 = call ptr @memcpy(ptr %call34, ptr %add.ptr, i32 %len.1)
  %68 = call i32 @llvm.bswap.i32(i32 %len.1)
  %69 = ptrtoint ptr %modify to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %modify, align 4
  %len88 = getelementptr inbounds %struct.hwrm_nvm_modify_input, ptr %70, i32 0, i32 9
  %71 = ptrtoint ptr %len88 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %68, ptr %len88, align 8
  %72 = call i32 @llvm.bswap.i32(i32 %copied.0)
  %offset = getelementptr inbounds %struct.hwrm_nvm_modify_input, ptr %70, i32 0, i32 8
  %73 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %offset, align 4
  %call89 = call i32 @hwrm_req_send(ptr noundef %add.ptr.i, ptr noundef %70) #24
  %tobool90.not = icmp eq i32 %call89, 0
  %add93 = add i32 %len.1, %copied.0
  br i1 %tobool90.not, label %if.end87.while.cond71_crit_edge, label %if.end87.pkg_abort_crit_edge

if.end87.pkg_abort_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #26
  br label %pkg_abort

if.end87.while.cond71_crit_edge:                  ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.cond71

while.end94:                                      ; preds = %while.cond71
  %74 = ptrtoint ptr %install to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %install, align 4
  %call95 = call i32 @hwrm_req_send_silent(ptr noundef %add.ptr.i, ptr noundef %75) #24
  br i1 %defrag_attempted.0.off0, label %while.end94.pkg_abort_crit_edge, label %if.end98

while.end94.pkg_abort_crit_edge:                  ; preds = %while.end94
  call void @__sanitizer_cov_trace_pc() #26
  br label %pkg_abort

if.end98:                                         ; preds = %while.end94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool99.not = icmp eq i32 %call95, 0
  br i1 %tobool99.not, label %if.end98.pkg_abort_crit_edge, label %land.lhs.true100

if.end98.pkg_abort_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #26
  br label %pkg_abort

land.lhs.true100:                                 ; preds = %if.end98
  %76 = ptrtoint ptr %cmd_err to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %cmd_err, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %77)
  %cmp102 = icmp eq i8 %77, 1
  br i1 %cmp102, label %if.then104, label %if.then124.critedge

if.then104:                                       ; preds = %land.lhs.true100
  %78 = ptrtoint ptr %install to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %install, align 4
  %flags105 = getelementptr inbounds %struct.hwrm_nvm_install_update_input, ptr %79, i32 0, i32 6
  %80 = ptrtoint ptr %flags105 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 1024, ptr %flags105, align 4
  %call106 = call i32 @hwrm_req_send_silent(ptr noundef %add.ptr.i, ptr noundef %79) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.then104.pkg_abort_crit_edge, label %land.lhs.true108

if.then104.pkg_abort_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #26
  br label %pkg_abort

land.lhs.true108:                                 ; preds = %if.then104
  %81 = ptrtoint ptr %cmd_err to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %cmd_err, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %82)
  %cmp111 = icmp eq i8 %82, 2
  br i1 %cmp111, label %if.then113, label %if.then119.critedge

if.then113:                                       ; preds = %land.lhs.true108
  %83 = ptrtoint ptr %install to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %install, align 4
  %flags114 = getelementptr inbounds %struct.hwrm_nvm_install_update_input, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %flags114 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %flags114, align 4
  %86 = ptrtoint ptr %dev115 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev115, align 4
  %add.ptr.i.i249 = getelementptr i8, ptr %87, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i248) #24
  %88 = ptrtoint ptr %req.i248 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i248, align 4, !annotation !228
  %call1.i250 = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i.i249, ptr noundef nonnull %req.i248, i16 noundef zeroext -2, i32 noundef 56) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i250)
  %tobool.not.i251 = icmp eq i32 %call1.i250, 0
  br i1 %tobool.not.i251, label %if.end.i252, label %if.then113.do.cond.thread304_crit_edge

if.then113.do.cond.thread304_crit_edge:           ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.cond.thread304

if.end.i252:                                      ; preds = %if.then113
  %89 = ptrtoint ptr %req.i248 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %req.i248, align 4
  %hwrm_cmd_max_timeout.i = getelementptr i8, ptr %87, i32 2996
  %91 = ptrtoint ptr %hwrm_cmd_max_timeout.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %hwrm_cmd_max_timeout.i, align 4
  call void @hwrm_req_timeout(ptr noundef %add.ptr.i.i249, ptr noundef %90, i32 noundef %92) #24
  %93 = ptrtoint ptr %req.i248 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %req.i248, align 4
  %dir_type11.i = getelementptr inbounds %struct.hwrm_nvm_write_input, ptr %94, i32 0, i32 6
  %95 = ptrtoint ptr %dir_type11.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 512, ptr %dir_type11.i, align 8
  %dir_ordinal12.i = getelementptr inbounds %struct.hwrm_nvm_write_input, ptr %94, i32 0, i32 7
  %96 = ptrtoint ptr %dir_ordinal12.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %dir_ordinal12.i, align 2
  %dir_ext13.i = getelementptr inbounds %struct.hwrm_nvm_write_input, ptr %94, i32 0, i32 8
  %97 = ptrtoint ptr %dir_ext13.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 0, ptr %dir_ext13.i, align 4
  %dir_attr14.i = getelementptr inbounds %struct.hwrm_nvm_write_input, ptr %94, i32 0, i32 9
  %98 = ptrtoint ptr %dir_attr14.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %dir_attr14.i, align 2
  %dir_item_length.i253 = getelementptr inbounds %struct.hwrm_nvm_write_input, ptr %94, i32 0, i32 13
  %99 = ptrtoint ptr %dir_item_length.i253 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %46, ptr %dir_item_length.i253, align 8
  %call15.i = call i32 @hwrm_req_send(ptr noundef %add.ptr.i.i249, ptr noundef %94) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call15.i)
  %cmp.i254 = icmp eq i32 %call15.i, -13
  br i1 %cmp.i254, label %if.then17.i, label %do.cond

if.then17.i:                                      ; preds = %if.end.i252
  call void @__sanitizer_cov_trace_pc() #26
  %dev.i.i = getelementptr i8, ptr %87, i32 2388
  %100 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %101, ptr noundef nonnull @.str.17) #27
  br label %do.cond.thread304

if.then119.critedge:                              ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %call106) #27
  br label %pkg_abort

if.then124.critedge:                              ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %call95) #27
  br label %pkg_abort

do.cond.thread304:                                ; preds = %if.then17.i, %if.then113.do.cond.thread304_crit_edge
  %retval.1.i.ph = phi i32 [ -13, %if.then17.i ], [ %call1.i250, %if.then113.do.cond.thread304_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i248) #24
  br label %pkg_abort

do.cond:                                          ; preds = %if.end.i252
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i248) #24
  %tobool133.not = icmp eq i32 %call15.i, 0
  br i1 %tobool133.not, label %do.cond.do.body_crit_edge, label %do.cond.pkg_abort_crit_edge

do.cond.pkg_abort_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #26
  br label %pkg_abort

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.body

pkg_abort:                                        ; preds = %do.cond.pkg_abort_crit_edge, %do.cond.thread304, %if.then124.critedge, %if.then119.critedge, %if.then104.pkg_abort_crit_edge, %if.end98.pkg_abort_crit_edge, %while.end94.pkg_abort_crit_edge, %if.end87.pkg_abort_crit_edge, %if.then63, %if.then58
  %rc.1283 = phi i32 [ %retval.1.i.ph, %do.cond.thread304 ], [ -27, %if.then63 ], [ %retval.0.i267, %if.then58 ], [ %call106, %if.then119.critedge ], [ %call95, %if.then124.critedge ], [ %call89, %if.end87.pkg_abort_crit_edge ], [ 0, %if.end98.pkg_abort_crit_edge ], [ 0, %if.then104.pkg_abort_crit_edge ], [ %call95, %while.end94.pkg_abort_crit_edge ], [ %call15.i, %do.cond.pkg_abort_crit_edge ]
  %102 = ptrtoint ptr %modify to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %modify, align 4
  call void @hwrm_req_drop(ptr noundef %add.ptr.i, ptr noundef %103) #24
  %104 = ptrtoint ptr %install to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %install, align 4
  call void @hwrm_req_drop(ptr noundef %add.ptr.i, ptr noundef %105) #24
  %result = getelementptr inbounds %struct.hwrm_nvm_install_update_output, ptr %call50, i32 0, i32 5
  %106 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %result, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool134.not = icmp eq i8 %107, 0
  br i1 %tobool134.not, label %if.end139, label %if.end139.thread

if.end139.thread:                                 ; preds = %pkg_abort
  call void @__sanitizer_cov_trace_pc() #26
  %conv137 = sext i8 %107 to i32
  %problem_item = getelementptr inbounds %struct.hwrm_nvm_install_update_output, ptr %call50, i32 0, i32 6
  %108 = ptrtoint ptr %problem_item to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %problem_item, align 1
  %conv138 = zext i8 %109 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %conv137, i32 noundef %conv138) #27
  br label %cleanup144

if.end139:                                        ; preds = %pkg_abort
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %rc.1283)
  %cmp140 = icmp eq i32 %rc.1283, -13
  br i1 %cmp140, label %if.then142, label %if.end139.cleanup144_crit_edge

if.end139.cleanup144_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup144

if.then142:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #26
  %110 = ptrtoint ptr %dev115 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev115, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %111, ptr noundef nonnull @.str.17) #27
  br label %cleanup144

cleanup144:                                       ; preds = %if.then142, %if.end139.cleanup144_crit_edge, %if.end139.thread, %if.then45, %if.then41, %entry.cleanup144_crit_edge
  %retval.0 = phi i32 [ %call43, %if.then45 ], [ -12, %if.then41 ], [ %call2, %entry.cleanup144_crit_edge ], [ -13, %if.then142 ], [ %rc.1283, %if.end139.cleanup144_crit_edge ], [ -65, %if.end139.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %modify) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %install) #24
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_hwrm_fw_set_time(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwrm_req_dma_slice(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwrm_req_timeout(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnxt_flash_nvram(ptr noundef %dev, i16 noundef zeroext %dir_type, i16 noundef zeroext %dir_ordinal, i16 noundef zeroext %dir_ext, i16 noundef zeroext %dir_attr, i32 noundef %dir_item_len, ptr noundef readonly %data, i32 noundef %data_len) unnamed_addr #3 align 64 {
entry:
  %req = alloca ptr, align 4
  %dma_handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #24
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !228
  %call1 = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req, i16 noundef zeroext -2, i32 noundef 56) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup19_crit_edge

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup19

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len)
  %tobool2.not = icmp eq i32 %data_len, 0
  %tobool3.not = icmp eq ptr %data, null
  %or.cond = or i1 %tobool3.not, %tobool2.not
  br i1 %or.cond, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end10

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle) #24
  %1 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dma_handle, align 4, !annotation !228
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  %call5 = call ptr @hwrm_req_dma_slice(ptr noundef %add.ptr.i, ptr noundef %3, i32 noundef %data_len, ptr noundef nonnull %dma_handle) #24
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #26
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  call void @hwrm_req_drop(ptr noundef %add.ptr.i, ptr noundef %5) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle) #24
  br label %cleanup19

if.end8:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #26
  %6 = call i32 @llvm.bswap.i32(i32 %data_len)
  %7 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req, align 4
  %dir_data_length = getelementptr inbounds %struct.hwrm_nvm_write_input, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %dir_data_length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %dir_data_length, align 8
  %10 = call ptr @memcpy(ptr %call5, ptr %data, i32 %data_len)
  %11 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_handle, align 4
  %conv = zext i32 %12 to i64
  %13 = call i64 @llvm.bswap.i64(i64 %conv)
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %req, align 4
  %host_src_addr = getelementptr inbounds %struct.hwrm_nvm_write_input, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %host_src_addr to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %13, ptr %host_src_addr, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle) #24
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %if.end.if.end10_crit_edge
  %17 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %req, align 4
  %hwrm_cmd_max_timeout = getelementptr i8, ptr %dev, i32 2996
  %19 = ptrtoint ptr %hwrm_cmd_max_timeout to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hwrm_cmd_max_timeout, align 4
  call void @hwrm_req_timeout(ptr noundef %add.ptr.i, ptr noundef %18, i32 noundef %20) #24
  %21 = call i16 @llvm.bswap.i16(i16 %dir_type)
  %22 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %req, align 4
  %dir_type11 = getelementptr inbounds %struct.hwrm_nvm_write_input, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %dir_type11 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %21, ptr %dir_type11, align 8
  %25 = call i16 @llvm.bswap.i16(i16 %dir_ordinal)
  %dir_ordinal12 = getelementptr inbounds %struct.hwrm_nvm_write_input, ptr %23, i32 0, i32 7
  %26 = ptrtoint ptr %dir_ordinal12 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %dir_ordinal12, align 2
  %27 = call i16 @llvm.bswap.i16(i16 %dir_ext)
  %dir_ext13 = getelementptr inbounds %struct.hwrm_nvm_write_input, ptr %23, i32 0, i32 8
  %28 = ptrtoint ptr %dir_ext13 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %dir_ext13, align 4
  %29 = call i16 @llvm.bswap.i16(i16 %dir_attr)
  %dir_attr14 = getelementptr inbounds %struct.hwrm_nvm_write_input, ptr %23, i32 0, i32 9
  %30 = ptrtoint ptr %dir_attr14 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %dir_attr14, align 2
  %31 = call i32 @llvm.bswap.i32(i32 %dir_item_len)
  %dir_item_length = getelementptr inbounds %struct.hwrm_nvm_write_input, ptr %23, i32 0, i32 13
  %32 = ptrtoint ptr %dir_item_length to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %dir_item_length, align 8
  %call15 = call i32 @hwrm_req_send(ptr noundef %add.ptr.i, ptr noundef %23) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call15)
  %cmp = icmp eq i32 %call15, -13
  br i1 %cmp, label %if.then17, label %if.end10.cleanup19_crit_edge

if.end10.cleanup19_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup19

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #26
  %dev.i = getelementptr i8, ptr %dev, i32 2388
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %34, ptr noundef nonnull @.str.17) #27
  br label %cleanup19

cleanup19:                                        ; preds = %if.then17, %if.end10.cleanup19_crit_edge, %if.then7, %entry.cleanup19_crit_edge
  %retval.1 = phi i32 [ %call1, %entry.cleanup19_crit_edge ], [ -12, %if.then7 ], [ -13, %if.then17 ], [ %call15, %if.end10.cleanup19_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #24
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_get_pkginfo(ptr noundef %dev, ptr noundef %ver, i32 noundef %size) local_unnamed_addr #3 align 64 {
entry:
  %req.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #24
  %0 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !228
  %call1.i = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req.i, i16 noundef zeroext -7, i32 noundef 32) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %bnxt_find_nvram_item.exit.thread

bnxt_find_nvram_item.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #24
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %req.i, align 4
  %enables.i = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_input, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %enables.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %enables.i, align 8
  %dir_idx.i = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_input, ptr %2, i32 0, i32 6
  %4 = ptrtoint ptr %dir_idx.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %dir_idx.i, align 4
  %dir_type.i = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_input, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %dir_type.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 256, ptr %dir_type.i, align 2
  %dir_ordinal.i = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_input, ptr %2, i32 0, i32 8
  %6 = call ptr @memset(ptr %dir_ordinal.i, i32 0, i32 5)
  %call2.i = call ptr @hwrm_req_hold(ptr noundef %add.ptr.i, ptr noundef %2) #24
  %7 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req.i, align 4
  %call3.i = call i32 @hwrm_req_send_silent(ptr noundef %add.ptr.i, ptr noundef %8) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp eq i32 %call3.i, 0
  br i1 %cmp.i, label %if.end, label %bnxt_find_nvram_item.exit

bnxt_find_nvram_item.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #26
  %9 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req.i, align 4
  call void @hwrm_req_drop(ptr noundef %add.ptr.i, ptr noundef %10) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #24
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %dir_idx7.i = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_output, ptr %call2.i, i32 0, i32 8
  %11 = ptrtoint ptr %dir_idx7.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dir_idx7.i, align 2
  %dir_data_length.i = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_output, ptr %call2.i, i32 0, i32 5
  %13 = ptrtoint ptr %dir_data_length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dir_data_length.i, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14) #24
  %16 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req.i, align 4
  call void @hwrm_req_drop(ptr noundef %add.ptr.i, ptr noundef %17) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #24
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #28
  %tobool3.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  %pdev = getelementptr i8, ptr %dev, i32 2392
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.5, i32 noundef %15) #27
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %20 = call i16 @llvm.bswap.i16(i16 %12) #24
  %conv = zext i16 %20 to i32
  %call7 = call fastcc i32 @bnxt_get_nvram_item(ptr noundef %dev, i32 noundef %conv, i32 noundef 0, i32 noundef %15, ptr noundef nonnull %call9.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.err_crit_edge

if.end6.err_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #26
  br label %err

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i38 = icmp eq i32 %14, 0
  br i1 %cmp.i38, label %if.end10.err_crit_edge, label %if.end.i39

if.end10.err_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #26
  br label %err

if.end.i39:                                       ; preds = %if.end10
  %sub.i = add i32 %15, -1
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %sub.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx.i, align 1
  %22 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp2.not1.i = icmp eq i8 %23, 0
  br i1 %cmp2.not1.i, label %if.end.i39.err_crit_edge, label %if.end.i39.while.cond.i_crit_edge

if.end.i39.while.cond.i_crit_edge:                ; preds = %if.end.i39
  br label %while.cond.i

if.end.i39.err_crit_edge:                         ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #26
  br label %err

while.cond.i:                                     ; preds = %while.cond.i.backedge, %if.end.i39.while.cond.i_crit_edge
  %24 = phi i8 [ %.be, %while.cond.i.backedge ], [ %23, %if.end.i39.while.cond.i_crit_edge ]
  %retval1.1.i = phi ptr [ %retval1.1.i.be, %while.cond.i.backedge ], [ null, %if.end.i39.while.cond.i_crit_edge ]
  %p.1.i = phi ptr [ %p.1.i.be, %while.cond.i.backedge ], [ %call9.i.i, %if.end.i39.while.cond.i_crit_edge ]
  %field.0.i = phi i32 [ %field.0.i.be, %while.cond.i.backedge ], [ 0, %if.end.i39.while.cond.i_crit_edge ]
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %24, label %while.cond.i.while.cond10.i_crit_edge [
    i8 0, label %while.cond.i.while.end33.i_crit_edge
    i8 10, label %while.cond.i.while.end33.i_crit_edge64
  ]

while.cond.i.while.end33.i_crit_edge64:           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.end33.i

while.cond.i.while.end33.i_crit_edge:             ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.end33.i

while.cond.i.while.cond10.i_crit_edge:            ; preds = %while.cond.i
  br label %while.cond10.i

while.cond10.i:                                   ; preds = %while.body22.i, %while.cond.i.while.cond10.i_crit_edge
  %p.2.i = phi ptr [ %incdec.ptr.i, %while.body22.i ], [ %p.1.i, %while.cond.i.while.cond10.i_crit_edge ]
  %26 = ptrtoint ptr %p.2.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %p.2.i, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %27, label %while.body22.i [
    i8 0, label %while.cond10.i.while.end.i_crit_edge
    i8 9, label %while.cond10.i.while.end.i_crit_edge65
    i8 10, label %while.cond10.i.while.end.i_crit_edge66
  ]

while.cond10.i.while.end.i_crit_edge66:           ; preds = %while.cond10.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.end.i

while.cond10.i.while.end.i_crit_edge65:           ; preds = %while.cond10.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.end.i

while.cond10.i.while.end.i_crit_edge:             ; preds = %while.cond10.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.end.i

while.body22.i:                                   ; preds = %while.cond10.i
  call void @__sanitizer_cov_trace_pc() #26
  %incdec.ptr.i = getelementptr i8, ptr %p.2.i, i32 1
  br label %while.cond10.i

while.end.i:                                      ; preds = %while.cond10.i.while.end.i_crit_edge, %while.cond10.i.while.end.i_crit_edge65, %while.cond10.i.while.end.i_crit_edge66
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %field.0.i)
  %cmp23.i = icmp eq i32 %field.0.i, 2
  %spec.select.i = select i1 %cmp23.i, ptr %p.1.i, ptr %retval1.1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %27)
  %cmp28.not.i = icmp eq i8 %27, 9
  br i1 %cmp28.not.i, label %if.end31.i, label %while.end.i.while.end33.i_crit_edge

while.end.i.while.end33.i_crit_edge:              ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.end33.i

if.end31.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #26
  %29 = ptrtoint ptr %p.2.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %p.2.i, align 1
  %inc.i = add i32 %field.0.i, 1
  %incdec.ptr32.i = getelementptr i8, ptr %p.2.i, i32 1
  %30 = ptrtoint ptr %incdec.ptr32.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %.pr.i = load i8, ptr %incdec.ptr32.i, align 1
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %if.end38.i.while.cond.i.backedge_crit_edge, %if.end31.i
  %.be = phi i8 [ %.pr.i, %if.end31.i ], [ %35, %if.end38.i.while.cond.i.backedge_crit_edge ]
  %retval1.1.i.be = phi ptr [ %spec.select.i, %if.end31.i ], [ null, %if.end38.i.while.cond.i.backedge_crit_edge ]
  %p.1.i.be = phi ptr [ %incdec.ptr32.i, %if.end31.i ], [ %incdec.ptr39.i, %if.end38.i.while.cond.i.backedge_crit_edge ]
  %field.0.i.be = phi i32 [ %inc.i, %if.end31.i ], [ 0, %if.end38.i.while.cond.i.backedge_crit_edge ]
  br label %while.cond.i

while.end33.i:                                    ; preds = %while.end.i.while.end33.i_crit_edge, %while.cond.i.while.end33.i_crit_edge, %while.cond.i.while.end33.i_crit_edge64
  %retval1.3.i = phi ptr [ %spec.select.i, %while.end.i.while.end33.i_crit_edge ], [ %retval1.1.i, %while.cond.i.while.end33.i_crit_edge ], [ %retval1.1.i, %while.cond.i.while.end33.i_crit_edge64 ]
  %p.3.i = phi ptr [ %p.2.i, %while.end.i.while.end33.i_crit_edge ], [ %p.1.i, %while.cond.i.while.end33.i_crit_edge ], [ %p.1.i, %while.cond.i.while.end33.i_crit_edge64 ]
  %31 = ptrtoint ptr %p.3.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %p.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp35.i = icmp eq i8 %32, 0
  br i1 %cmp35.i, label %while.end33.i.bnxt_parse_pkglog.exit_crit_edge, label %if.end38.i

while.end33.i.bnxt_parse_pkglog.exit_crit_edge:   ; preds = %while.end33.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_parse_pkglog.exit

if.end38.i:                                       ; preds = %while.end33.i
  %33 = ptrtoint ptr %p.3.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %p.3.i, align 1
  %incdec.ptr39.i = getelementptr i8, ptr %p.3.i, i32 1
  %34 = ptrtoint ptr %incdec.ptr39.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %incdec.ptr39.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp2.not.i = icmp eq i8 %35, 0
  br i1 %cmp2.not.i, label %if.end38.i.bnxt_parse_pkglog.exit_crit_edge, label %if.end38.i.while.cond.i.backedge_crit_edge

if.end38.i.while.cond.i.backedge_crit_edge:       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.cond.i.backedge

if.end38.i.bnxt_parse_pkglog.exit_crit_edge:      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_parse_pkglog.exit

bnxt_parse_pkglog.exit:                           ; preds = %if.end38.i.bnxt_parse_pkglog.exit_crit_edge, %while.end33.i.bnxt_parse_pkglog.exit_crit_edge
  %tobool12.not = icmp eq ptr %retval1.3.i, null
  br i1 %tobool12.not, label %bnxt_parse_pkglog.exit.err_crit_edge, label %land.lhs.true

bnxt_parse_pkglog.exit.err_crit_edge:             ; preds = %bnxt_parse_pkglog.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %err

land.lhs.true:                                    ; preds = %bnxt_parse_pkglog.exit
  %36 = ptrtoint ptr %retval1.3.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %retval1.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp.not = icmp eq i8 %37, 0
  %conv13 = zext i8 %37 to i32
  %38 = add nsw i32 %conv13, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %38)
  %39 = icmp ult i32 %38, -10
  %or.cond = select i1 %cmp.not, i1 true, i1 %39
  br i1 %or.cond, label %land.lhs.true.err_crit_edge, label %if.then19

land.lhs.true.err_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #26
  br label %err

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #26
  %call20 = call i32 @strscpy(ptr noundef %ver, ptr noundef nonnull %retval1.3.i, i32 noundef %size) #24
  br label %err

err:                                              ; preds = %if.then19, %land.lhs.true.err_crit_edge, %bnxt_parse_pkglog.exit.err_crit_edge, %if.end.i39.err_crit_edge, %if.end10.err_crit_edge, %if.end6.err_crit_edge
  %rc.0 = phi i32 [ %call7, %if.end6.err_crit_edge ], [ 0, %if.then19 ], [ -2, %land.lhs.true.err_crit_edge ], [ -2, %bnxt_parse_pkglog.exit.err_crit_edge ], [ -2, %if.end10.err_crit_edge ], [ -2, %if.end.i39.err_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #24
  br label %cleanup

cleanup:                                          ; preds = %err, %do.end, %bnxt_find_nvram_item.exit, %bnxt_find_nvram_item.exit.thread
  %retval.0 = phi i32 [ %rc.0, %err ], [ -12, %do.end ], [ %call3.i, %bnxt_find_nvram_item.exit ], [ %call1.i, %bnxt_find_nvram_item.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnxt_get_nvram_item(ptr noundef %dev, i32 noundef %index, i32 noundef %offset, i32 noundef %length, ptr nocapture noundef writeonly %data) unnamed_addr #3 align 64 {
entry:
  %dma_handle = alloca i32, align 4
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle) #24
  %0 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma_handle, align 4, !annotation !228
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #24
  %1 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool.not = icmp eq i32 %length, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req, i16 noundef zeroext -3, i32 noundef 40) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  %call5 = call ptr @hwrm_req_dma_slice(ptr noundef %add.ptr.i, ptr noundef %3, i32 noundef %length, ptr noundef nonnull %dma_handle) #24
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup.sink.split_crit_edge, label %if.end8

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end4
  %4 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_handle, align 4
  %conv = zext i32 %5 to i64
  %6 = call i64 @llvm.bswap.i64(i64 %conv)
  %7 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req, align 4
  %host_dest_addr = getelementptr inbounds %struct.hwrm_nvm_read_input, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %host_dest_addr to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %6, ptr %host_dest_addr, align 8
  %conv9 = trunc i32 %index to i16
  %10 = call i16 @llvm.bswap.i16(i16 %conv9)
  %dir_idx = getelementptr inbounds %struct.hwrm_nvm_read_input, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %dir_idx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %dir_idx, align 8
  %12 = call i32 @llvm.bswap.i32(i32 %offset)
  %offset10 = getelementptr inbounds %struct.hwrm_nvm_read_input, ptr %8, i32 0, i32 8
  %13 = ptrtoint ptr %offset10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %offset10, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %length)
  %len = getelementptr inbounds %struct.hwrm_nvm_read_input, ptr %8, i32 0, i32 9
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %len, align 8
  %call11 = call ptr @hwrm_req_hold(ptr noundef %add.ptr.i, ptr noundef %8) #24
  %16 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req, align 4
  %call12 = call i32 @hwrm_req_send(ptr noundef %add.ptr.i, ptr noundef %17) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp eq i32 %call12, 0
  br i1 %cmp, label %if.then14, label %if.end8.cleanup.sink.split_crit_edge

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup.sink.split

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #26
  %18 = call ptr @memcpy(ptr %data, ptr %call5, i32 %length)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then14, %if.end8.cleanup.sink.split_crit_edge, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -12, %if.end4.cleanup.sink.split_crit_edge ], [ %call12, %if.then14 ], [ %call12, %if.end8.cleanup.sink.split_crit_edge ]
  %19 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %19)
  %.sink = load ptr, ptr %req, align 4
  call void @hwrm_req_drop(ptr noundef %add.ptr.i, ptr noundef %.sink) #24
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle) #24
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_ethtool_init(ptr noundef %bp) local_unnamed_addr #3 align 64 {
entry:
  %buf.i = alloca [32 x i8], align 1
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #24
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !228
  %fw_cap = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 74
  %1 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fw_cap, align 8
  %and = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

if.then:                                          ; preds = %entry
  %dev1 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #24
  %5 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  %call1.i = call i32 @bnxt_get_pkginfo(ptr noundef %4, ptr noundef nonnull %buf.i, i32 noundef 32) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.bnxt_get_pkgver.exit_crit_edge

if.then.bnxt_get_pkgver.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_get_pkgver.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #26
  %fw_ver_str.i = getelementptr i8, ptr %4, i32 3268
  %call3.i = call i32 @strlen(ptr noundef %fw_ver_str.i) #29
  %add.ptr.i = getelementptr i8, ptr %fw_ver_str.i, i32 %call3.i
  %sub6.i = sub i32 31, %call3.i
  %call8.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i, i32 noundef %sub6.i, ptr noundef nonnull @.str.18, ptr noundef nonnull %buf.i) #24
  br label %bnxt_get_pkgver.exit

bnxt_get_pkgver.exit:                             ; preds = %if.then.i, %if.then.bnxt_get_pkgver.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #24
  br label %if.end

if.end:                                           ; preds = %bnxt_get_pkgver.exit, %entry.if.end_crit_edge
  %num_tests = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 139
  %6 = ptrtoint ptr %num_tests to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %num_tests, align 1
  %hwrm_spec_code = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 76
  %7 = ptrtoint ptr %hwrm_spec_code to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwrm_spec_code, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 67332, i32 %8)
  %cmp = icmp ult i32 %8, 67332
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 11
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 8
  %and2 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %test_info6 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 140
  %11 = ptrtoint ptr %test_info6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %test_info6, align 8
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %if.then8, label %if.end5.if.end13_crit_edge

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end13

if.then8:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 260) #30
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.then8.cleanup_crit_edge, label %if.end11

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end11:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #26
  %14 = ptrtoint ptr %test_info6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %test_info6, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %if.end5.if.end13_crit_edge
  %test_info.0 = phi ptr [ %12, %if.end5.if.end13_crit_edge ], [ %call7.i.i, %if.end11 ]
  %call14 = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req, i16 noundef zeroext 512, i32 noundef 16) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %req, align 4
  %call18 = call ptr @hwrm_req_hold(ptr noundef %bp, ptr noundef %16) #24
  %17 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %req, align 4
  %call19 = call i32 @hwrm_req_send_silent(ptr noundef %bp, ptr noundef %18) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.ethtool_init_exit_crit_edge

if.end17.ethtool_init_exit_crit_edge:             ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #26
  br label %ethtool_init_exit

if.end22:                                         ; preds = %if.end17
  %num_tests23 = getelementptr inbounds %struct.hwrm_selftest_qlist_output, ptr %call18, i32 0, i32 4
  %19 = ptrtoint ptr %num_tests23 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_tests23, align 2
  %add = add i8 %20, 4
  %21 = call i8 @llvm.umin.i8(i8 %add, i8 8)
  %22 = ptrtoint ptr %num_tests to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %num_tests, align 1
  %offline_tests = getelementptr inbounds %struct.hwrm_selftest_qlist_output, ptr %call18, i32 0, i32 6
  %23 = ptrtoint ptr %offline_tests to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %offline_tests, align 2
  %25 = ptrtoint ptr %test_info.0 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %test_info.0, align 2
  %test_timeout = getelementptr inbounds %struct.hwrm_selftest_qlist_output, ptr %call18, i32 0, i32 8
  %26 = ptrtoint ptr %test_timeout to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %test_timeout, align 2
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  %timeout = getelementptr inbounds %struct.bnxt_test_info, ptr %test_info.0, i32 0, i32 1
  %29 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %timeout, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool34.not = icmp eq i16 %27, 0
  br i1 %tobool34.not, label %if.then35, label %if.end22.if.end38_crit_edge

if.end22.if.end38_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end38

if.then35:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #26
  %hwrm_cmd_timeout = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 92
  %30 = ptrtoint ptr %hwrm_cmd_timeout to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hwrm_cmd_timeout, align 8
  %conv36 = trunc i32 %31 to i16
  %32 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv36, ptr %timeout, align 2
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end22.if.end38_crit_edge
  %33 = ptrtoint ptr %num_tests to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %num_tests, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp41152.not = icmp eq i8 %34, 0
  br i1 %cmp41152.not, label %if.end38.ethtool_init_exit_crit_edge, label %for.body.lr.ph

if.end38.ethtool_init_exit_crit_edge:             ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #26
  br label %ethtool_init_exit

for.body.lr.ph:                                   ; preds = %if.end38
  %conv40151 = zext i8 %34 to i32
  %test0_name = getelementptr inbounds %struct.hwrm_selftest_qlist_output, ptr %call18, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end97.for.body_crit_edge, %for.body.lr.ph
  %conv40155 = phi i32 [ %conv40151, %for.body.lr.ph ], [ %conv40, %if.end97.for.body_crit_edge ]
  %i.0153 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end97.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bnxt_test_info, ptr %test_info.0, i32 0, i32 2, i32 %i.0153
  %mul = shl i32 %i.0153, 5
  %add.ptr = getelementptr i8, ptr %test0_name, i32 %mul
  %sub = add nsw i32 %conv40155, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0153, i32 %sub)
  %cmp46 = icmp eq i32 %i.0153, %sub
  br i1 %cmp46, label %if.then48, label %if.else

if.then48:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  %35 = call ptr @memcpy(ptr %arrayidx, ptr @.str.10, i32 28)
  br label %if.end97

if.else:                                          ; preds = %for.body
  %add53 = add nsw i32 %conv40155, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0153, i32 %add53)
  %cmp54 = icmp eq i32 %i.0153, %add53
  br i1 %cmp54, label %if.then56, label %if.else58

if.then56:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #26
  %36 = call ptr @memcpy(ptr %arrayidx, ptr @.str.11, i32 28)
  br label %if.end97

if.else58:                                        ; preds = %if.else
  %add62 = add nsw i32 %conv40155, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0153, i32 %add62)
  %cmp63 = icmp eq i32 %i.0153, %add62
  br i1 %cmp63, label %if.then65, label %if.else67

if.then65:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #26
  %37 = call ptr @memcpy(ptr %arrayidx, ptr @.str.12, i32 28)
  br label %if.end97

if.else67:                                        ; preds = %if.else58
  %add71 = add nsw i32 %conv40155, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0153, i32 %add71)
  %cmp72 = icmp eq i32 %i.0153, %add71
  br i1 %cmp72, label %if.then74, label %if.else76

if.then74:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #26
  %38 = call ptr @memcpy(ptr %arrayidx, ptr @.str.13, i32 25)
  br label %if.end97

if.else76:                                        ; preds = %if.else67
  %call77 = call i32 @strlcpy(ptr noundef %arrayidx, ptr noundef %add.ptr, i32 noundef 32) #24
  %call78 = call i32 @strlen(ptr noundef %arrayidx) #31
  %sub79 = sub i32 32, %call78
  %call80 = call ptr @strncat(ptr noundef %arrayidx, ptr noundef nonnull @.str.14, i32 noundef %sub79)
  %39 = ptrtoint ptr %test_info.0 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %test_info.0, align 2
  %conv82 = zext i8 %40 to i32
  %shl = shl nuw i32 1, %i.0153
  %and83 = and i32 %shl, %conv82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  %call90 = call i32 @strlen(ptr noundef %arrayidx) #31
  %sub91 = sub i32 32, %call90
  br i1 %tobool84.not, label %if.else89, label %if.then85

if.then85:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #26
  %call88 = call ptr @strncat(ptr noundef %arrayidx, ptr noundef nonnull @.str.15, i32 noundef %sub91)
  br label %if.end97

if.else89:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #26
  %call92 = call ptr @strncat(ptr noundef %arrayidx, ptr noundef nonnull @.str.16, i32 noundef %sub91)
  br label %if.end97

if.end97:                                         ; preds = %if.else89, %if.then85, %if.then74, %if.then65, %if.then56, %if.then48
  %inc = add nuw nsw i32 %i.0153, 1
  %41 = ptrtoint ptr %num_tests to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_tests, align 1
  %conv40 = zext i8 %42 to i32
  %cmp41 = icmp ult i32 %inc, %conv40
  br i1 %cmp41, label %if.end97.for.body_crit_edge, label %if.end97.ethtool_init_exit_crit_edge

if.end97.ethtool_init_exit_crit_edge:             ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #26
  br label %ethtool_init_exit

if.end97.for.body_crit_edge:                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body

ethtool_init_exit:                                ; preds = %if.end97.ethtool_init_exit_crit_edge, %if.end38.ethtool_init_exit_crit_edge, %if.end17.ethtool_init_exit_crit_edge
  %43 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %req, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %44) #24
  br label %cleanup

cleanup:                                          ; preds = %ethtool_init_exit, %if.end13.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #24
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_ethtool_free(ptr nocapture noundef %bp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %test_info = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 140
  %0 = ptrtoint ptr %test_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test_info, align 8
  tail call void @kfree(ptr noundef %1) #24
  %2 = ptrtoint ptr %test_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %test_info, align 8
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnxt_get_drvinfo(ptr noundef %dev, ptr noundef %info) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.19, i32 noundef 32) #24
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 3
  %fw_ver_str = getelementptr i8, ptr %dev, i32 3268
  %call4 = tail call i32 @strlcpy(ptr noundef %fw_version, ptr noundef %fw_ver_str, i32 noundef 32) #24
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %pdev = getelementptr i8, ptr %dev, i32 2392
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %call7 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #24
  %flags.i.i.i = getelementptr i8, ptr %dev, i32 2400
  %6 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i.i, align 8
  %and.i.i.i = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %pci_name.exit.bnxt_get_num_ring_stats.exit.i_crit_edge

pci_name.exit.bnxt_get_num_ring_stats.exit.i_crit_edge: ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_get_num_ring_stats.exit.i

land.lhs.true.i.i.i:                              ; preds = %pci_name.exit
  %and2.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.land.lhs.true5.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

land.lhs.true.i.i.i.land.lhs.true5.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %land.lhs.true5.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true.i.i.i
  %max_tpa_v2.i.i.i = getelementptr i8, ptr %dev, i32 2432
  %8 = ptrtoint ptr %max_tpa_v2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %max_tpa_v2.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool4.not.i.i.i = icmp eq i16 %9, 0
  br i1 %tobool4.not.i.i.i, label %lor.lhs.false.i.i.i.bnxt_get_num_ring_stats.exit.i_crit_edge, label %lor.lhs.false.i.i.i.land.lhs.true5.i.i.i_crit_edge

lor.lhs.false.i.i.i.land.lhs.true5.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %land.lhs.true5.i.i.i

lor.lhs.false.i.i.i.bnxt_get_num_ring_stats.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_get_num_ring_stats.exit.i

land.lhs.true5.i.i.i:                             ; preds = %lor.lhs.false.i.i.i.land.lhs.true5.i.i.i_crit_edge, %land.lhs.true.i.i.i.land.lhs.true5.i.i.i_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %10 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %10)
  %cmp.i.not.i.i.i = icmp eq i64 %10, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %land.lhs.true5.i.i.i.bnxt_get_num_ring_stats.exit.i_crit_edge

land.lhs.true5.i.i.i.bnxt_get_num_ring_stats.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_get_num_ring_stats.exit.i

if.then.i.i.i:                                    ; preds = %land.lhs.true5.i.i.i
  %max_tpa_v26.i.i.i = getelementptr i8, ptr %dev, i32 2432
  %11 = ptrtoint ptr %max_tpa_v26.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %max_tpa_v26.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool7.not.i.i.i = icmp eq i16 %12, 0
  br i1 %tobool7.not.i.i.i, label %if.then.i.i.i.bnxt_get_num_ring_stats.exit.i_crit_edge, label %if.then8.i.i.i

if.then.i.i.i.bnxt_get_num_ring_stats.exit.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_get_num_ring_stats.exit.i

if.then8.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %chip_num.i.i.i = getelementptr i8, ptr %dev, i32 2320
  %13 = ptrtoint ptr %chip_num.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %chip_num.i.i.i, align 8
  %.off.i.i.i = add i16 %14, -5968
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %.off.i.i.i)
  %switch.i.i.i = icmp ult i16 %.off.i.i.i, 3
  %phi.bo.i.i = select i1 %switch.i.i.i, i32 16, i32 17
  br label %bnxt_get_num_ring_stats.exit.i

bnxt_get_num_ring_stats.exit.i:                   ; preds = %if.then8.i.i.i, %if.then.i.i.i.bnxt_get_num_ring_stats.exit.i_crit_edge, %land.lhs.true5.i.i.i.bnxt_get_num_ring_stats.exit.i_crit_edge, %lor.lhs.false.i.i.i.bnxt_get_num_ring_stats.exit.i_crit_edge, %pci_name.exit.bnxt_get_num_ring_stats.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 15, %if.then.i.i.i.bnxt_get_num_ring_stats.exit.i_crit_edge ], [ 11, %land.lhs.true5.i.i.i.bnxt_get_num_ring_stats.exit.i_crit_edge ], [ 11, %lor.lhs.false.i.i.i.bnxt_get_num_ring_stats.exit.i_crit_edge ], [ 11, %pci_name.exit.bnxt_get_num_ring_stats.exit.i_crit_edge ], [ %phi.bo.i.i, %if.then8.i.i.i ]
  %rx_nr_rings.i.i = getelementptr i8, ptr %dev, i32 2480
  %15 = ptrtoint ptr %rx_nr_rings.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_nr_rings.i.i, align 8
  %mul.i.i = mul i32 %16, %retval.0.i.i.i
  %tx_nr_rings.i.i = getelementptr i8, ptr %dev, i32 2500
  %17 = ptrtoint ptr %tx_nr_rings.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_nr_rings.i.i, align 4
  %mul1.i.i = shl i32 %18, 3
  %cp_nr_rings.i.i = getelementptr i8, ptr %dev, i32 2540
  %19 = ptrtoint ptr %cp_nr_rings.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cp_nr_rings.i.i, align 4
  %and.i = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.v.i = select i1 %tobool.not.i, i32 3, i32 82
  %add2.i.i = add i32 %mul.i.i, %spec.select.v.i
  %add4.i.i = add i32 %add2.i.i, %mul1.i.i
  %spec.select.i = add i32 %add4.i.i, %20
  %and3.i = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %bnxt_get_num_ring_stats.exit.i.bnxt_get_num_stats.exit_crit_edge, label %if.then5.i

bnxt_get_num_ring_stats.exit.i.bnxt_get_num_stats.exit_crit_edge: ; preds = %bnxt_get_num_ring_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_get_num_stats.exit

if.then5.i:                                       ; preds = %bnxt_get_num_ring_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #26
  %fw_rx_stats_ext_size.i = getelementptr i8, ptr %dev, i32 2972
  %21 = ptrtoint ptr %fw_rx_stats_ext_size.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %fw_rx_stats_ext_size.i, align 4
  %conv.i = zext i16 %22 to i32
  %fw_tx_stats_ext_size.i = getelementptr i8, ptr %dev, i32 2974
  %23 = ptrtoint ptr %fw_tx_stats_ext_size.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %fw_tx_stats_ext_size.i, align 2
  %conv6.i = zext i16 %24 to i32
  %add7.i = add i32 %spec.select.i, %conv.i
  %add8.i = add i32 %add7.i, %conv6.i
  %pri2cos_valid.i = getelementptr i8, ptr %dev, i32 2986
  %25 = ptrtoint ptr %pri2cos_valid.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pri2cos_valid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool9.not.i = icmp eq i8 %26, 0
  %add11.i = add i32 %add8.i, 32
  %spec.select23.i = select i1 %tobool9.not.i, i32 %add8.i, i32 %add11.i
  br label %bnxt_get_num_stats.exit

bnxt_get_num_stats.exit:                          ; preds = %if.then5.i, %bnxt_get_num_ring_stats.exit.i.bnxt_get_num_stats.exit_crit_edge
  %num_stats.1.i = phi i32 [ %spec.select.i, %bnxt_get_num_ring_stats.exit.i.bnxt_get_num_stats.exit_crit_edge ], [ %spec.select23.i, %if.then5.i ]
  %n_stats = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 8
  %27 = ptrtoint ptr %n_stats to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %num_stats.1.i, ptr %n_stats, align 4
  %num_tests = getelementptr i8, ptr %dev, i32 6397
  %28 = ptrtoint ptr %num_tests to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_tests, align 1
  %conv = zext i8 %29 to i32
  %testinfo_len = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 9
  %30 = ptrtoint ptr %testinfo_len to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv, ptr %testinfo_len, align 4
  %eedump_len = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 10
  %31 = ptrtoint ptr %eedump_len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %eedump_len, align 4
  %regdump_len = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 11
  %32 = ptrtoint ptr %regdump_len to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %regdump_len, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bnxt_get_regs_len(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %dev, i32 2400
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %fw_cap = getelementptr i8, ptr %dev, i32 2696
  %2 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_cap, align 8
  %and1 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %spec.select = select i1 %tobool2.not, i32 12560, i32 12656
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnxt_get_regs(ptr noundef %dev, ptr nocapture noundef writeonly %regs, ptr noundef %_p) #3 align 64 {
entry:
  %req = alloca ptr, align 4
  %hw_pcie_stats_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #24
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !228
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_pcie_stats_addr) #24
  %1 = ptrtoint ptr %hw_pcie_stats_addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %hw_pcie_stats_addr, align 4, !annotation !228
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %2 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %version, align 4
  %call1 = tail call i32 @bnxt_dbg_hwrm_rd_reg(ptr noundef %add.ptr.i, i32 noundef 0, i16 noundef zeroext 3140, ptr noundef %_p) #24
  %fw_cap = getelementptr i8, ptr %dev, i32 2696
  %3 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_cap, align 8
  %and = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req, i16 noundef zeroext 516, i32 noundef 32) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %req, align 4
  %call6 = call ptr @hwrm_req_dma_slice(ptr noundef %add.ptr.i, ptr noundef %6, i32 noundef 96, ptr noundef nonnull %hw_pcie_stats_addr) #24
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup.sink.split_crit_edge, label %if.end9

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end5
  %7 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %version, align 4
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req, align 4
  %call11 = call ptr @hwrm_req_hold(ptr noundef %add.ptr.i, ptr noundef %9) #24
  %10 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %req, align 4
  %pcie_stat_size = getelementptr inbounds %struct.hwrm_pcie_qstats_input, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %pcie_stat_size to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 24576, ptr %pcie_stat_size, align 8
  %13 = ptrtoint ptr %hw_pcie_stats_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hw_pcie_stats_addr, align 4
  %conv = zext i32 %14 to i64
  %15 = call i64 @llvm.bswap.i64(i64 %conv)
  %pcie_stat_host_addr = getelementptr inbounds %struct.hwrm_pcie_qstats_input, ptr %11, i32 0, i32 7
  %16 = ptrtoint ptr %pcie_stat_host_addr to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %pcie_stat_host_addr, align 8
  %call12 = call i32 @hwrm_req_send(ptr noundef %add.ptr.i, ptr noundef %11) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end9.cleanup.sink.split_crit_edge

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup.sink.split

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr = getelementptr i8, ptr %_p, i32 12560
  %17 = ptrtoint ptr %call6 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %call6, align 8
  %19 = call i64 @llvm.bswap.i64(i64 %18)
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %add.ptr, align 8
  %arrayidx.1 = getelementptr i64, ptr %call6, i32 1
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx.1, align 8
  %23 = call i64 @llvm.bswap.i64(i64 %22)
  %arrayidx16.1 = getelementptr i8, ptr %_p, i32 12568
  %24 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %arrayidx16.1, align 8
  %arrayidx.2 = getelementptr i64, ptr %call6, i32 2
  %25 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx.2, align 8
  %27 = call i64 @llvm.bswap.i64(i64 %26)
  %arrayidx16.2 = getelementptr i8, ptr %_p, i32 12576
  %28 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx16.2, align 8
  %arrayidx.3 = getelementptr i64, ptr %call6, i32 3
  %29 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx.3, align 8
  %31 = call i64 @llvm.bswap.i64(i64 %30)
  %arrayidx16.3 = getelementptr i8, ptr %_p, i32 12584
  %32 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %arrayidx16.3, align 8
  %arrayidx.4 = getelementptr i64, ptr %call6, i32 4
  %33 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx.4, align 8
  %35 = call i64 @llvm.bswap.i64(i64 %34)
  %arrayidx16.4 = getelementptr i8, ptr %_p, i32 12592
  %36 = ptrtoint ptr %arrayidx16.4 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %arrayidx16.4, align 8
  %arrayidx.5 = getelementptr i64, ptr %call6, i32 5
  %37 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx.5, align 8
  %39 = call i64 @llvm.bswap.i64(i64 %38)
  %arrayidx16.5 = getelementptr i8, ptr %_p, i32 12600
  %40 = ptrtoint ptr %arrayidx16.5 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx16.5, align 8
  %arrayidx.6 = getelementptr i64, ptr %call6, i32 6
  %41 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx.6, align 8
  %43 = call i64 @llvm.bswap.i64(i64 %42)
  %arrayidx16.6 = getelementptr i8, ptr %_p, i32 12608
  %44 = ptrtoint ptr %arrayidx16.6 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %arrayidx16.6, align 8
  %arrayidx.7 = getelementptr i64, ptr %call6, i32 7
  %45 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx.7, align 8
  %47 = call i64 @llvm.bswap.i64(i64 %46)
  %arrayidx16.7 = getelementptr i8, ptr %_p, i32 12616
  %48 = ptrtoint ptr %arrayidx16.7 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %arrayidx16.7, align 8
  %arrayidx.8 = getelementptr i64, ptr %call6, i32 8
  %49 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx.8, align 8
  %51 = call i64 @llvm.bswap.i64(i64 %50)
  %arrayidx16.8 = getelementptr i8, ptr %_p, i32 12624
  %52 = ptrtoint ptr %arrayidx16.8 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %arrayidx16.8, align 8
  %arrayidx.9 = getelementptr i64, ptr %call6, i32 9
  %53 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx.9, align 8
  %55 = call i64 @llvm.bswap.i64(i64 %54)
  %arrayidx16.9 = getelementptr i8, ptr %_p, i32 12632
  %56 = ptrtoint ptr %arrayidx16.9 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %arrayidx16.9, align 8
  %arrayidx.10 = getelementptr i64, ptr %call6, i32 10
  %57 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx.10, align 8
  %59 = call i64 @llvm.bswap.i64(i64 %58)
  %arrayidx16.10 = getelementptr i8, ptr %_p, i32 12640
  %60 = ptrtoint ptr %arrayidx16.10 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %arrayidx16.10, align 8
  %arrayidx.11 = getelementptr i64, ptr %call6, i32 11
  %61 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx.11, align 8
  %63 = call i64 @llvm.bswap.i64(i64 %62)
  %arrayidx16.11 = getelementptr i8, ptr %_p, i32 12648
  %64 = ptrtoint ptr %arrayidx16.11 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %arrayidx16.11, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then14, %if.end9.cleanup.sink.split_crit_edge, %if.end5.cleanup.sink.split_crit_edge
  %65 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %65)
  %.sink = load ptr, ptr %req, align 4
  call void @hwrm_req_drop(ptr noundef %add.ptr.i, ptr noundef %.sink) #24
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_pcie_stats_addr) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #24
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bnxt_get_wol(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %wol) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %flags = getelementptr i8, ptr %dev, i32 2400
  %0 = call ptr @memset(ptr %supported, i32 0, i32 14)
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end6

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %supported, align 4
  %wol2 = getelementptr i8, ptr %dev, i32 6405
  %4 = ptrtoint ptr %wol2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wol2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.then.if.end6_crit_edge, label %if.then4

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end6

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #26
  %6 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %wolopts, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_set_wol(ptr noundef %dev, ptr nocapture noundef readonly %wol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %and = and i32 %1, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %flags = getelementptr i8, ptr %dev, i32 2400
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and5 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then4.cleanup_crit_edge, label %if.end8

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  %wol9 = getelementptr i8, ptr %dev, i32 6405
  %4 = ptrtoint ptr %wol9 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wol9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not = icmp eq i8 %5, 0
  br i1 %tobool10.not, label %if.then11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  %call12 = tail call i32 @bnxt_hwrm_alloc_wol_fltr(ptr noundef %add.ptr.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end15:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #26
  %6 = ptrtoint ptr %wol9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %wol9, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end
  %wol18 = getelementptr i8, ptr %dev, i32 6405
  %7 = ptrtoint ptr %wol18 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wol18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool19.not = icmp eq i8 %8, 0
  br i1 %tobool19.not, label %if.else.cleanup_crit_edge, label %if.then20

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then20:                                        ; preds = %if.else
  %call21 = tail call i32 @bnxt_hwrm_free_wol_fltr(ptr noundef %add.ptr.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end24:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #26
  %9 = ptrtoint ptr %wol18 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %wol18, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then20.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end15, %if.then11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then4.cleanup_crit_edge ], [ -16, %if.then11.cleanup_crit_edge ], [ -16, %if.then20.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end24 ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bnxt_get_msglevel(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2692
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @bnxt_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %value) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2692
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_nway_reset(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %flags = getelementptr i8, ptr %dev, i32 2400
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %port_partition_type = getelementptr i8, ptr %dev, i32 3384
  %2 = ptrtoint ptr %port_partition_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port_partition_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  %and5 = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool6.not, i1 false
  br i1 %or.cond, label %land.lhs.true.land.lhs.true13_crit_edge, label %land.lhs.true10

land.lhs.true.land.lhs.true13_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #26
  br label %land.lhs.true13

land.lhs.true10:                                  ; preds = %land.lhs.true
  %phy_flags = getelementptr i8, ptr %dev, i32 6396
  %4 = ptrtoint ptr %phy_flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %phy_flags, align 4
  %6 = and i8 %5, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool12.not = icmp eq i8 %6, 0
  br i1 %tobool12.not, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.land.lhs.true13_crit_edge

land.lhs.true10.land.lhs.true13_crit_edge:        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #26
  br label %land.lhs.true13

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

land.lhs.true13:                                  ; preds = %land.lhs.true10.land.lhs.true13_crit_edge, %land.lhs.true.land.lhs.true13_crit_edge
  %phy_state = getelementptr i8, ptr %dev, i32 6194
  %7 = ptrtoint ptr %phy_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %phy_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp = icmp eq i8 %8, 0
  br i1 %cmp, label %if.end, label %land.lhs.true13.cleanup_crit_edge

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true13
  %autoneg = getelementptr i8, ptr %dev, i32 6236
  %9 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %autoneg, align 4
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool19.not = icmp eq i8 %11, 0
  br i1 %tobool19.not, label %if.end.cleanup_crit_edge, label %if.end21

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end21.cleanup_crit_edge, label %if.then23

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #26
  %call24 = tail call i32 @bnxt_hwrm_set_link_setting(ptr noundef %add.ptr.i, i1 noundef zeroext true, i1 noundef zeroext false) #24
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true13.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %land.lhs.true13.cleanup_crit_edge ], [ -95, %land.lhs.true10.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call24, %if.then23 ], [ 0, %if.end21.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bnxt_get_link(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %link_up = getelementptr i8, ptr %dev, i32 6195
  %0 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %link_up, align 1
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bnxt_get_eeprom_len(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %dev, i32 2400
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = lshr i32 %1, 1
  %2 = and i32 %and, 1
  %sext = add nsw i32 %2, -1
  ret i32 %sext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_get_eeprom(ptr noundef %dev, ptr nocapture noundef readonly %eeprom, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  %req.i.i = alloca ptr, align 4
  %dma_handle.i = alloca i32, align 4
  %req.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %offset1 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %0 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle.i) #24
  %4 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %dma_handle.i, align 4, !annotation !228
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #24
  %5 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !228
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i.i) #24
  %6 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i.i, align 4, !annotation !228
  %call1.i.i = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i.i, ptr noundef nonnull %req.i.i, i16 noundef zeroext -5, i32 noundef 16) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %nvm_get_dir_info.exit.thread.i

nvm_get_dir_info.exit.thread.i:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i) #24
  br label %bnxt_get_nvram_directory.exit

if.end.i.i:                                       ; preds = %if.then
  %7 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req.i.i, align 4
  %call2.i.i = call ptr @hwrm_req_hold(ptr noundef %add.ptr.i.i, ptr noundef %8) #24
  %9 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req.i.i, align 4
  %call3.i.i = call i32 @hwrm_req_send(ptr noundef %add.ptr.i.i, ptr noundef %10) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i, label %nvm_get_dir_info.exit.i

nvm_get_dir_info.exit.i:                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %11 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req.i.i, align 4
  call void @hwrm_req_drop(ptr noundef %add.ptr.i.i, ptr noundef %12) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i) #24
  br label %bnxt_get_nvram_directory.exit

if.end.i:                                         ; preds = %if.end.i.i
  %entries6.i.i = getelementptr inbounds %struct.hwrm_nvm_get_dir_info_output, ptr %call2.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %entries6.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %entries6.i.i, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14) #24
  %entry_length.i.i = getelementptr inbounds %struct.hwrm_nvm_get_dir_info_output, ptr %call2.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %entry_length.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %entry_length.i.i, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17) #24
  %19 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %req.i.i, align 4
  call void @hwrm_req_drop(ptr noundef %add.ptr.i.i, ptr noundef %20) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool2.not.i = icmp eq i32 %17, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %if.end.i.bnxt_get_nvram_directory.exit_crit_edge, label %if.end4.i

if.end.i.bnxt_get_nvram_directory.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_get_nvram_directory.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp5.i = icmp ult i32 %3, 2
  br i1 %cmp5.i, label %if.end4.i.bnxt_get_nvram_directory.exit_crit_edge, label %if.end7.i

if.end4.i.bnxt_get_nvram_directory.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_get_nvram_directory.exit

if.end7.i:                                        ; preds = %if.end4.i
  %conv.i = trunc i32 %15 to i8
  %incdec.ptr.i = getelementptr i8, ptr %data, i32 1
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i, ptr %data, align 1
  %conv8.i = trunc i32 %18 to i8
  %incdec.ptr9.i = getelementptr i8, ptr %data, i32 2
  %22 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv8.i, ptr %incdec.ptr.i, align 1
  %sub.i = add i32 %3, -2
  %23 = call ptr @memset(ptr %incdec.ptr9.i, i32 255, i32 %sub.i)
  %call10.i = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i.i, ptr noundef nonnull %req.i, i16 noundef zeroext -6, i32 noundef 24) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end7.i.bnxt_get_nvram_directory.exit_crit_edge

if.end7.i.bnxt_get_nvram_directory.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_get_nvram_directory.exit

if.end13.i:                                       ; preds = %if.end7.i
  %mul.i = mul i32 %18, %15
  %24 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %req.i, align 4
  %call14.i = call ptr @hwrm_req_dma_slice(ptr noundef %add.ptr.i.i, ptr noundef %25, i32 noundef %mul.i, ptr noundef nonnull %dma_handle.i) #24
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end17.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #26
  %26 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %req.i, align 4
  call void @hwrm_req_drop(ptr noundef %add.ptr.i.i, ptr noundef %27) #24
  br label %bnxt_get_nvram_directory.exit

if.end17.i:                                       ; preds = %if.end13.i
  %28 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_handle.i, align 4
  %conv18.i = zext i32 %29 to i64
  %30 = call i64 @llvm.bswap.i64(i64 %conv18.i) #24
  %31 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %req.i, align 4
  %host_dest_addr.i = getelementptr inbounds %struct.hwrm_nvm_get_dir_entries_input, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %host_dest_addr.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %30, ptr %host_dest_addr.i, align 8
  %call19.i = call ptr @hwrm_req_hold(ptr noundef %add.ptr.i.i, ptr noundef %32) #24
  %34 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %req.i, align 4
  %call20.i = call i32 @hwrm_req_send(ptr noundef %add.ptr.i.i, ptr noundef %35) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp eq i32 %call20.i, 0
  br i1 %cmp21.i, label %if.then23.i, label %if.end17.i.if.end26.i_crit_edge

if.end17.i.if.end26.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end26.i

if.then23.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #26
  %36 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %mul.i) #24
  %37 = call ptr @memcpy(ptr %incdec.ptr9.i, ptr %call14.i, i32 %36)
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %if.end17.i.if.end26.i_crit_edge
  %38 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %req.i, align 4
  call void @hwrm_req_drop(ptr noundef %add.ptr.i.i, ptr noundef %39) #24
  br label %bnxt_get_nvram_directory.exit

bnxt_get_nvram_directory.exit:                    ; preds = %if.end26.i, %if.then16.i, %if.end7.i.bnxt_get_nvram_directory.exit_crit_edge, %if.end4.i.bnxt_get_nvram_directory.exit_crit_edge, %if.end.i.bnxt_get_nvram_directory.exit_crit_edge, %nvm_get_dir_info.exit.i, %nvm_get_dir_info.exit.thread.i
  %retval.0.i = phi i32 [ %call20.i, %if.end26.i ], [ -12, %if.then16.i ], [ %call3.i.i, %nvm_get_dir_info.exit.i ], [ -5, %if.end.i.bnxt_get_nvram_directory.exit_crit_edge ], [ -22, %if.end4.i.bnxt_get_nvram_directory.exit_crit_edge ], [ %call10.i, %if.end7.i.bnxt_get_nvram_directory.exit_crit_edge ], [ %call1.i.i, %nvm_get_dir_info.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle.i) #24
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %1)
  %cmp4 = icmp ult i32 %1, 16777216
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef 0) #27
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  %shr = lshr i32 %1, 24
  %and = and i32 %1, 16777215
  %sub = add nsw i32 %shr, -1
  %len7 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %40 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len7, align 4
  %call8 = tail call fastcc i32 @bnxt_get_nvram_item(ptr noundef %dev, i32 noundef %sub, i32 noundef %and, i32 noundef %41, ptr noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %bnxt_get_nvram_directory.exit
  %retval.0 = phi i32 [ %retval.0.i, %bnxt_get_nvram_directory.exit ], [ -22, %if.then5 ], [ %call8, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_set_eeprom(ptr noundef %dev, ptr nocapture noundef readonly %eeprom, ptr noundef %data) #3 align 64 {
entry:
  %req.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %flags = getelementptr i8, ptr %dev, i32 2400
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #27
  br label %cleanup

if.end:                                           ; preds = %entry
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %magic, align 4
  %shr = lshr i32 %3, 16
  %conv = trunc i32 %shr to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %shr)
  %cmp = icmp eq i32 %shr, 65535
  br i1 %cmp, label %if.then3, label %if.end24

if.then3:                                         ; preds = %if.end
  %conv10 = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv10)
  %cmp11 = icmp ne i32 %conv10, 0
  %4 = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 3584, i32 %4)
  %cond = icmp eq i32 %4, 3584
  %or.cond = and i1 %cmp11, %cond
  br i1 %or.cond, label %sw.bb, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

sw.bb:                                            ; preds = %if.then3
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset, align 4
  %neg = xor i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %neg)
  %cmp17.not = icmp eq i32 %6, %neg
  br i1 %cmp17.not, label %if.end20, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end20:                                         ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #24
  %7 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !228
  %call1.i = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req.i, i16 noundef zeroext -9, i32 noundef 24) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.bnxt_erase_nvram_directory.exit_crit_edge

if.end20.bnxt_erase_nvram_directory.exit_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_erase_nvram_directory.exit

if.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #26
  %8 = trunc i32 %3 to i8
  %conv22 = add i8 %8, -1
  %conv.i = zext i8 %conv22 to i16
  %9 = shl nuw i16 %conv.i, 8
  %10 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %req.i, align 4
  %dir_idx.i = getelementptr inbounds %struct.hwrm_nvm_erase_dir_entry_input, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %dir_idx.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %9, ptr %dir_idx.i, align 8
  %call2.i = call i32 @hwrm_req_send(ptr noundef %add.ptr.i, ptr noundef %11) #24
  br label %bnxt_erase_nvram_directory.exit

bnxt_erase_nvram_directory.exit:                  ; preds = %if.end.i, %if.end20.bnxt_erase_nvram_directory.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ %call1.i, %if.end20.bnxt_erase_nvram_directory.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #24
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %switch.tableidx = add i16 %conv, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 25, i16 %switch.tableidx)
  %13 = icmp ult i16 %switch.tableidx, 25
  br i1 %13, label %switch.hole_check, label %if.end24.if.end27_crit_edge

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end27

if.end27:                                         ; preds = %switch.hole_check.if.end27_crit_edge, %if.end24.if.end27_crit_edge
  %conv30 = trunc i32 %3 to i16
  %offset31 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %14 = ptrtoint ptr %offset31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset31, align 4
  %shr32 = lshr i32 %15, 16
  %conv33 = trunc i32 %shr32 to i16
  %conv36 = trunc i32 %15 to i16
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %call37 = tail call fastcc i32 @bnxt_flash_nvram(ptr noundef %dev, i16 noundef zeroext %conv, i16 noundef zeroext %conv33, i16 noundef zeroext %conv30, i16 noundef zeroext %conv36, i32 noundef 0, ptr noundef %data, i32 noundef %17)
  br label %cleanup

switch.hole_check:                                ; preds = %if.end24
  %switch.maskindex = zext i16 %switch.tableidx to i32
  %switch.shifted = lshr i32 23961531, %switch.maskindex
  %18 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %switch.lobit.not = icmp eq i32 %18, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end27_crit_edge, label %switch.hole_check.cleanup_crit_edge

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

switch.hole_check.if.end27_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end27

cleanup:                                          ; preds = %switch.hole_check.cleanup_crit_edge, %if.end27, %bnxt_erase_nvram_directory.exit, %sw.bb.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %retval.0.i, %bnxt_erase_nvram_directory.exit ], [ %call37, %if.end27 ], [ -22, %if.then3.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -95, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bnxt_get_coalesce(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %coal, ptr nocapture noundef writeonly %kernel_coal, ptr nocapture noundef readnone %extack) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %coal, i32 0, i32 92)
  %flags = getelementptr i8, ptr %dev, i32 2400
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 33554432
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 10
  %3 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and, ptr %use_adaptive_rx_coalesce, align 4
  %rx_coal = getelementptr i8, ptr %dev, i32 3412
  %bufs_per_record = getelementptr i8, ptr %dev, i32 3422
  %4 = ptrtoint ptr %bufs_per_record to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bufs_per_record, align 2
  %6 = ptrtoint ptr %rx_coal to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rx_coal, align 2
  %conv1 = zext i16 %7 to i32
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 1
  %8 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv1, ptr %rx_coalesce_usecs, align 4
  %coal_bufs = getelementptr i8, ptr %dev, i32 3416
  %9 = ptrtoint ptr %coal_bufs to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %coal_bufs, align 2
  %div.rhs.trunc = zext i8 %5 to i16
  %div59 = udiv i16 %10, %div.rhs.trunc
  %div.zext = zext i16 %div59 to i32
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 2
  %11 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div.zext, ptr %rx_max_coalesced_frames, align 4
  %coal_ticks_irq = getelementptr i8, ptr %dev, i32 3414
  %12 = ptrtoint ptr %coal_ticks_irq to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %coal_ticks_irq, align 2
  %conv4 = zext i16 %13 to i32
  %rx_coalesce_usecs_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 3
  %14 = ptrtoint ptr %rx_coalesce_usecs_irq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv4, ptr %rx_coalesce_usecs_irq, align 4
  %coal_bufs_irq = getelementptr i8, ptr %dev, i32 3418
  %15 = ptrtoint ptr %coal_bufs_irq to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %coal_bufs_irq, align 2
  %div760 = udiv i16 %16, %div.rhs.trunc
  %div7.zext = zext i16 %div760 to i32
  %rx_max_coalesced_frames_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 4
  %17 = ptrtoint ptr %rx_max_coalesced_frames_irq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div7.zext, ptr %rx_max_coalesced_frames_irq, align 4
  %flags8 = getelementptr i8, ptr %dev, i32 3424
  %18 = ptrtoint ptr %flags8 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags8, align 2
  %20 = and i16 %19, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not = icmp eq i16 %20, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %use_cqe_mode_rx = getelementptr inbounds %struct.kernel_ethtool_coalesce, ptr %kernel_coal, i32 0, i32 1
  %21 = ptrtoint ptr %use_cqe_mode_rx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %use_cqe_mode_rx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_coal = getelementptr i8, ptr %dev, i32 3426
  %bufs_per_record11 = getelementptr i8, ptr %dev, i32 3436
  %22 = ptrtoint ptr %bufs_per_record11 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bufs_per_record11, align 2
  %24 = ptrtoint ptr %tx_coal to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tx_coal, align 2
  %conv14 = zext i16 %25 to i32
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 5
  %26 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv14, ptr %tx_coalesce_usecs, align 4
  %coal_bufs15 = getelementptr i8, ptr %dev, i32 3430
  %27 = ptrtoint ptr %coal_bufs15 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %coal_bufs15, align 2
  %div18.rhs.trunc = zext i8 %23 to i16
  %div1861 = udiv i16 %28, %div18.rhs.trunc
  %div18.zext = zext i16 %div1861 to i32
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 6
  %29 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div18.zext, ptr %tx_max_coalesced_frames, align 4
  %coal_ticks_irq19 = getelementptr i8, ptr %dev, i32 3428
  %30 = ptrtoint ptr %coal_ticks_irq19 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %coal_ticks_irq19, align 2
  %conv20 = zext i16 %31 to i32
  %tx_coalesce_usecs_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 7
  %32 = ptrtoint ptr %tx_coalesce_usecs_irq to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv20, ptr %tx_coalesce_usecs_irq, align 4
  %coal_bufs_irq21 = getelementptr i8, ptr %dev, i32 3432
  %33 = ptrtoint ptr %coal_bufs_irq21 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %coal_bufs_irq21, align 2
  %div2462 = udiv i16 %34, %div18.rhs.trunc
  %div24.zext = zext i16 %div2462 to i32
  %tx_max_coalesced_frames_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 8
  %35 = ptrtoint ptr %tx_max_coalesced_frames_irq to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div24.zext, ptr %tx_max_coalesced_frames_irq, align 4
  %flags25 = getelementptr i8, ptr %dev, i32 3438
  %36 = ptrtoint ptr %flags25 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %flags25, align 2
  %38 = and i16 %37, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool28.not = icmp eq i16 %38, 0
  br i1 %tobool28.not, label %if.end.if.end30_crit_edge, label %if.then29

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end30

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  %39 = ptrtoint ptr %kernel_coal to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %kernel_coal, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end.if.end30_crit_edge
  %stats_coal_ticks = getelementptr i8, ptr %dev, i32 3440
  %40 = ptrtoint ptr %stats_coal_ticks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %stats_coal_ticks, align 8
  %stats_block_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 9
  %42 = ptrtoint ptr %stats_block_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %stats_block_coalesce_usecs, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_set_coalesce(ptr noundef %dev, ptr nocapture noundef readonly %coal, ptr nocapture noundef readonly %kernel_coal, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 10
  %0 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %flags1 = getelementptr i8, ptr %dev, i32 2400
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags1, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %or = or i32 %3, 33554432
  %4 = ptrtoint ptr %flags1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %flags1, align 8
  br label %if.end6

if.else:                                          ; preds = %entry
  %and = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else.if.end6_crit_edge, label %if.then3

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end6

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #26
  %and5 = and i32 %3, -33554433
  %5 = ptrtoint ptr %flags1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and5, ptr %flags1, align 8
  br label %reset_coalesce

if.end6:                                          ; preds = %if.else.if.end6_crit_edge, %if.then
  %use_cqe_mode_rx = getelementptr inbounds %struct.kernel_ethtool_coalesce, ptr %kernel_coal, i32 0, i32 1
  %6 = ptrtoint ptr %use_cqe_mode_rx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_cqe_mode_rx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.end6.land.lhs.true_crit_edge

if.end6.land.lhs.true_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #26
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end6
  %8 = ptrtoint ptr %kernel_coal to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %kernel_coal, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  br i1 %tobool9.not, label %lor.lhs.false.if.end13_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #26
  br label %land.lhs.true

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end13

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.end6.land.lhs.true_crit_edge
  %coal_cap = getelementptr i8, ptr %dev, i32 3388
  %10 = ptrtoint ptr %coal_cap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %coal_cap, align 4
  %and10 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end13

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %lor.lhs.false.if.end13_crit_edge
  %rx_coal = getelementptr i8, ptr %dev, i32 3412
  %bufs_per_record = getelementptr i8, ptr %dev, i32 3422
  %12 = ptrtoint ptr %bufs_per_record to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bufs_per_record, align 2
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 1
  %14 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_coalesce_usecs, align 4
  %conv15 = trunc i32 %15 to i16
  %16 = ptrtoint ptr %rx_coal to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv15, ptr %rx_coal, align 2
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 2
  %17 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_max_coalesced_frames, align 4
  %conv16 = zext i8 %13 to i32
  %mul = mul i32 %18, %conv16
  %conv17 = trunc i32 %mul to i16
  %coal_bufs = getelementptr i8, ptr %dev, i32 3416
  %19 = ptrtoint ptr %coal_bufs to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv17, ptr %coal_bufs, align 2
  %rx_coalesce_usecs_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 3
  %20 = ptrtoint ptr %rx_coalesce_usecs_irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_coalesce_usecs_irq, align 4
  %conv18 = trunc i32 %21 to i16
  %coal_ticks_irq = getelementptr i8, ptr %dev, i32 3414
  %22 = ptrtoint ptr %coal_ticks_irq to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv18, ptr %coal_ticks_irq, align 2
  %rx_max_coalesced_frames_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 4
  %23 = ptrtoint ptr %rx_max_coalesced_frames_irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_max_coalesced_frames_irq, align 4
  %mul20 = mul i32 %24, %conv16
  %conv21 = trunc i32 %mul20 to i16
  %coal_bufs_irq = getelementptr i8, ptr %dev, i32 3418
  %25 = ptrtoint ptr %coal_bufs_irq to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv21, ptr %coal_bufs_irq, align 2
  %flags22 = getelementptr i8, ptr %dev, i32 3424
  %26 = ptrtoint ptr %flags22 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flags22, align 2
  %28 = and i16 %27, -2
  store i16 %28, ptr %flags22, align 2
  %29 = ptrtoint ptr %use_cqe_mode_rx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %use_cqe_mode_rx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool27.not = icmp eq i8 %30, 0
  br i1 %tobool27.not, label %if.end13.if.end33_crit_edge, label %if.then28

if.end13.if.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end33

if.then28:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #26
  %31 = or i16 %27, 1
  %32 = ptrtoint ptr %flags22 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %flags22, align 2
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.end13.if.end33_crit_edge
  %tx_coal = getelementptr i8, ptr %dev, i32 3426
  %bufs_per_record34 = getelementptr i8, ptr %dev, i32 3436
  %33 = ptrtoint ptr %bufs_per_record34 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bufs_per_record34, align 2
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 5
  %35 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_coalesce_usecs, align 4
  %conv36 = trunc i32 %36 to i16
  %37 = ptrtoint ptr %tx_coal to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv36, ptr %tx_coal, align 2
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 6
  %38 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_max_coalesced_frames, align 4
  %conv38 = zext i8 %34 to i32
  %mul39 = mul i32 %39, %conv38
  %conv40 = trunc i32 %mul39 to i16
  %coal_bufs41 = getelementptr i8, ptr %dev, i32 3430
  %40 = ptrtoint ptr %coal_bufs41 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv40, ptr %coal_bufs41, align 2
  %tx_coalesce_usecs_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 7
  %41 = ptrtoint ptr %tx_coalesce_usecs_irq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_coalesce_usecs_irq, align 4
  %conv42 = trunc i32 %42 to i16
  %coal_ticks_irq43 = getelementptr i8, ptr %dev, i32 3428
  %43 = ptrtoint ptr %coal_ticks_irq43 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv42, ptr %coal_ticks_irq43, align 2
  %tx_max_coalesced_frames_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 8
  %44 = ptrtoint ptr %tx_max_coalesced_frames_irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_max_coalesced_frames_irq, align 4
  %mul45 = mul i32 %45, %conv38
  %conv46 = trunc i32 %mul45 to i16
  %coal_bufs_irq47 = getelementptr i8, ptr %dev, i32 3432
  %46 = ptrtoint ptr %coal_bufs_irq47 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv46, ptr %coal_bufs_irq47, align 2
  %flags48 = getelementptr i8, ptr %dev, i32 3438
  %47 = ptrtoint ptr %flags48 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %flags48, align 2
  %49 = and i16 %48, -2
  store i16 %49, ptr %flags48, align 2
  %50 = ptrtoint ptr %kernel_coal to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %kernel_coal, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool53.not = icmp eq i8 %51, 0
  br i1 %tobool53.not, label %if.end33.if.end59_crit_edge, label %if.then54

if.end33.if.end59_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end59

if.then54:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #26
  %52 = or i16 %48, 1
  %53 = ptrtoint ptr %flags48 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %flags48, align 2
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %if.end33.if.end59_crit_edge
  %stats_coal_ticks = getelementptr i8, ptr %dev, i32 3440
  %54 = ptrtoint ptr %stats_coal_ticks to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %stats_coal_ticks, align 8
  %stats_block_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 9
  %56 = ptrtoint ptr %stats_block_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %stats_block_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp.not = icmp eq i32 %55, %57
  br i1 %cmp.not, label %if.end59.reset_coalesce_crit_edge, label %if.then61

if.end59.reset_coalesce_crit_edge:                ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #26
  br label %reset_coalesce

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool63.not = icmp eq i32 %57, 0
  %58 = tail call i32 @llvm.umax.i32(i32 %57, i32 250000)
  %59 = tail call i32 @llvm.umin.i32(i32 %58, i32 1000000)
  %stats_ticks.0 = select i1 %tobool63.not, i32 0, i32 %59
  %rem = urem i32 %stats_ticks.0, 250000
  %sub = sub nsw i32 %stats_ticks.0, %rem
  %60 = ptrtoint ptr %stats_coal_ticks to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub, ptr %stats_coal_ticks, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %stats_ticks.0, i32 %rem)
  %tobool78.not = icmp eq i32 %stats_ticks.0, %rem
  br i1 %tobool78.not, label %if.else82, label %if.then79

if.then79:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #26
  %mul81 = mul nsw i32 %sub, 100
  %div = udiv i32 %mul81, 1000000
  %current_interval = getelementptr i8, ptr %dev, i32 2608
  %61 = ptrtoint ptr %current_interval to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %div, ptr %current_interval, align 8
  br label %reset_coalesce

if.else82:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #26
  %current_interval83 = getelementptr i8, ptr %dev, i32 2608
  %62 = ptrtoint ptr %current_interval83 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 100, ptr %current_interval83, align 8
  br label %reset_coalesce

reset_coalesce:                                   ; preds = %if.else82, %if.then79, %if.end59.reset_coalesce_crit_edge, %if.then3
  %update_stats.0.off0 = phi i1 [ false, %if.end59.reset_coalesce_crit_edge ], [ false, %if.then3 ], [ true, %if.else82 ], [ true, %if.then79 ]
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %63 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %reset_coalesce.cleanup_crit_edge, label %if.then87

reset_coalesce.cleanup_crit_edge:                 ; preds = %reset_coalesce
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then87:                                        ; preds = %reset_coalesce
  br i1 %update_stats.0.off0, label %if.then89, label %if.else95

if.then89:                                        ; preds = %if.then87
  %call90 = tail call i32 @bnxt_close_nic(ptr noundef %add.ptr.i, i1 noundef zeroext true, i1 noundef zeroext false) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then92, label %if.then89.cleanup_crit_edge

if.then89.cleanup_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then92:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #26
  %call93 = tail call i32 @bnxt_open_nic(ptr noundef %add.ptr.i, i1 noundef zeroext true, i1 noundef zeroext false) #24
  br label %cleanup

if.else95:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #26
  %call96 = tail call i32 @bnxt_hwrm_set_coal(ptr noundef %add.ptr.i) #24
  br label %cleanup

cleanup:                                          ; preds = %if.else95, %if.then92, %if.then89.cleanup_crit_edge, %reset_coalesce.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %land.lhs.true.cleanup_crit_edge ], [ %call90, %if.then89.cleanup_crit_edge ], [ %call93, %if.then92 ], [ %call96, %if.else95 ], [ 0, %reset_coalesce.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bnxt_get_ringparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ering, ptr nocapture noundef readnone %kernel_ering, ptr nocapture noundef readnone %extack) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %dev, i32 2400
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 8191, i32 2047
  %spec.select14 = select i1 %tobool.not, i32 0, i32 8191
  %2 = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select14, ptr %4, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 4
  %6 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2047, ptr %tx_max_pending, align 4
  %rx_ring_size = getelementptr i8, ptr %dev, i32 2452
  %7 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_ring_size, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 5
  %9 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %rx_pending, align 4
  %rx_agg_ring_size = getelementptr i8, ptr %dev, i32 2456
  %10 = ptrtoint ptr %rx_agg_ring_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_agg_ring_size, align 8
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 7
  %12 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rx_jumbo_pending, align 4
  %tx_ring_size = getelementptr i8, ptr %dev, i32 2488
  %13 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_ring_size, align 8
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 8
  %15 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_set_ringparam(ptr noundef %dev, ptr nocapture noundef readonly %ering, ptr nocapture noundef readnone %kernel_ering, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 5
  %0 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %1)
  %cmp = icmp ugt i32 %1, 8191
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 8
  %2 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_pending, align 4
  %4 = add i32 %3, -2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2029, i32 %4)
  %5 = icmp ult i32 %4, -2029
  br i1 %5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  %call7 = tail call i32 @bnxt_close_nic(ptr noundef %add.ptr.i, i1 noundef zeroext false, i1 noundef zeroext false) #24
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %8 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_pending, align 4
  %rx_ring_size = getelementptr i8, ptr %dev, i32 2452
  %10 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rx_ring_size, align 4
  %11 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_pending, align 4
  %tx_ring_size = getelementptr i8, ptr %dev, i32 2488
  %13 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tx_ring_size, align 8
  tail call void @bnxt_set_ring_params(ptr noundef %add.ptr.i) #24
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i, align 4
  %and1.i.i26 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i26)
  %tobool.i27.not = icmp eq i32 %and1.i.i26, 0
  br i1 %tobool.i27.not, label %if.end8.cleanup_crit_edge, label %if.then12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #26
  %call13 = tail call i32 @bnxt_open_nic(ptr noundef %add.ptr.i, i1 noundef zeroext false, i1 noundef zeroext false) #24
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then12 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bnxt_get_pause_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %epstat) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %dev, i32 2400
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %2 = and i32 %1, 1026
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %2)
  %.not = icmp eq i32 %2, 1024
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %port_stats = getelementptr i8, ptr %dev, i32 2912
  %3 = ptrtoint ptr %port_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port_stats, align 8
  %add.ptr6 = getelementptr i64, ptr %4, i32 17
  %5 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr6, align 8
  %rx_pause_frames = getelementptr inbounds %struct.ethtool_pause_stats, ptr %epstat, i32 0, i32 1
  %7 = ptrtoint ptr %rx_pause_frames to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %rx_pause_frames, align 8
  %add.ptr7 = getelementptr i64, ptr %4, i32 146
  %8 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr7, align 8
  %10 = ptrtoint ptr %epstat to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %epstat, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bnxt_get_pauseparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %epause) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %dev, i32 2400
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %autoneg = getelementptr i8, ptr %dev, i32 6236
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %autoneg, align 4
  %4 = lshr i8 %3, 1
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %autoneg5 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 1
  %6 = ptrtoint ptr %autoneg5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %autoneg5, align 4
  %req_flow_ctrl = getelementptr i8, ptr %dev, i32 6239
  %7 = ptrtoint ptr %req_flow_ctrl to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %req_flow_ctrl, align 1
  %9 = lshr i8 %8, 1
  %.lobit27 = and i8 %9, 1
  %10 = zext i8 %.lobit27 to i32
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 2
  %11 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %rx_pause, align 4
  %12 = load i8, ptr %req_flow_ctrl, align 1
  %13 = and i8 %12, 1
  %14 = zext i8 %13 to i32
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 3
  %15 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tx_pause, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_set_pauseparam(ptr noundef %dev, ptr nocapture noundef readonly %epause) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %flags = getelementptr i8, ptr %dev, i32 2400
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %port_partition_type = getelementptr i8, ptr %dev, i32 3384
  %2 = ptrtoint ptr %port_partition_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port_partition_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  %and5 = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool6.not, i1 false
  br i1 %or.cond, label %land.lhs.true.land.lhs.true13_crit_edge, label %land.lhs.true10

land.lhs.true.land.lhs.true13_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #26
  br label %land.lhs.true13

land.lhs.true10:                                  ; preds = %land.lhs.true
  %phy_flags = getelementptr i8, ptr %dev, i32 6396
  %4 = ptrtoint ptr %phy_flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %phy_flags, align 4
  %6 = and i8 %5, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool12.not = icmp eq i8 %6, 0
  br i1 %tobool12.not, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.land.lhs.true13_crit_edge

land.lhs.true10.land.lhs.true13_crit_edge:        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #26
  br label %land.lhs.true13

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

land.lhs.true13:                                  ; preds = %land.lhs.true10.land.lhs.true13_crit_edge, %land.lhs.true.land.lhs.true13_crit_edge
  %phy_state = getelementptr i8, ptr %dev, i32 6194
  %7 = ptrtoint ptr %phy_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %phy_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp = icmp eq i8 %8, 0
  br i1 %cmp, label %if.end, label %land.lhs.true13.cleanup_crit_edge

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true13
  %link_lock = getelementptr i8, ptr %dev, i32 6096
  tail call void @mutex_lock_nested(ptr noundef %link_lock, i32 noundef 0) #24
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 1
  %9 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool17.not = icmp eq i32 %10, 0
  %autoneg32 = getelementptr i8, ptr %dev, i32 6236
  %11 = ptrtoint ptr %autoneg32 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %autoneg32, align 4
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool22.not = icmp eq i8 %13, 0
  br i1 %tobool22.not, label %if.then18.pause_exit_crit_edge, label %if.end24

if.then18.pause_exit_crit_edge:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #26
  br label %pause_exit

if.end24:                                         ; preds = %if.then18
  %or = or i8 %12, 2
  %14 = ptrtoint ptr %autoneg32 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or, ptr %autoneg32, align 4
  %hwrm_spec_code = getelementptr i8, ptr %dev, i32 2704
  %15 = ptrtoint ptr %hwrm_spec_code to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hwrm_spec_code, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 66048, i32 %16)
  %cmp28 = icmp ugt i32 %16, 66048
  br i1 %cmp28, label %if.end24.if.end43.sink.split_crit_edge, label %if.end24.if.end43_crit_edge

if.end24.if.end43_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end43

if.end24.if.end43.sink.split_crit_edge:           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end43.sink.split

if.else:                                          ; preds = %if.end
  %17 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool35.not = icmp eq i8 %17, 0
  br i1 %tobool35.not, label %if.else.if.end37_crit_edge, label %if.then36

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end37

if.then36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #26
  %force_link_chng = getelementptr i8, ptr %dev, i32 6246
  %18 = ptrtoint ptr %force_link_chng to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %force_link_chng, align 2
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.else.if.end37_crit_edge
  %19 = ptrtoint ptr %autoneg32 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %autoneg32, align 4
  %21 = and i8 %20, -3
  store i8 %21, ptr %autoneg32, align 4
  br label %if.end43.sink.split

if.end43.sink.split:                              ; preds = %if.end37, %if.end24.if.end43.sink.split_crit_edge
  %.sink = phi i8 [ 0, %if.end37 ], [ 4, %if.end24.if.end43.sink.split_crit_edge ]
  %req_flow_ctrl = getelementptr i8, ptr %dev, i32 6239
  %22 = ptrtoint ptr %req_flow_ctrl to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.sink, ptr %req_flow_ctrl, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.end43.sink.split, %if.end24.if.end43_crit_edge
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 2
  %23 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool44.not = icmp eq i32 %24, 0
  br i1 %tobool44.not, label %if.end43.if.end50_crit_edge, label %if.then45

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end50

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #26
  %req_flow_ctrl46 = getelementptr i8, ptr %dev, i32 6239
  %25 = ptrtoint ptr %req_flow_ctrl46 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %req_flow_ctrl46, align 1
  %27 = or i8 %26, 2
  store i8 %27, ptr %req_flow_ctrl46, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.end43.if.end50_crit_edge
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 3
  %28 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool51.not = icmp eq i32 %29, 0
  br i1 %tobool51.not, label %if.end50.if.end57_crit_edge, label %if.then52

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end57

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #26
  %req_flow_ctrl53 = getelementptr i8, ptr %dev, i32 6239
  %30 = ptrtoint ptr %req_flow_ctrl53 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %req_flow_ctrl53, align 1
  %32 = or i8 %31, 1
  store i8 %32, ptr %req_flow_ctrl53, align 1
  br label %if.end57

if.end57:                                         ; preds = %if.then52, %if.end50.if.end57_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %33 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end57.pause_exit_crit_edge, label %if.then59

if.end57.pause_exit_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #26
  br label %pause_exit

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #26
  %call60 = tail call i32 @bnxt_hwrm_set_pause(ptr noundef %add.ptr.i) #24
  br label %pause_exit

pause_exit:                                       ; preds = %if.then59, %if.end57.pause_exit_crit_edge, %if.then18.pause_exit_crit_edge
  %rc.0 = phi i32 [ %call60, %if.then59 ], [ 0, %if.end57.pause_exit_crit_edge ], [ -22, %if.then18.pause_exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %link_lock) #24
  br label %cleanup

cleanup:                                          ; preds = %pause_exit, %land.lhs.true13.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %pause_exit ], [ -95, %land.lhs.true13.cleanup_crit_edge ], [ -95, %land.lhs.true10.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnxt_self_test(ptr noundef %dev, ptr nocapture noundef %etest, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  %req.i.i = alloca ptr, align 4
  %req.i = alloca ptr, align 4
  %test_results = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %test_results) #24
  %0 = ptrtoint ptr %test_results to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %test_results, align 1
  %num_tests = getelementptr i8, ptr %dev, i32 6397
  %1 = ptrtoint ptr %num_tests to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %num_tests, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr i8, ptr %dev, i32 2400
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv = zext i8 %2 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %5 = call ptr @memset(ptr %buf, i32 0, i32 %mul)
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %flags5 = getelementptr inbounds %struct.ethtool_test, ptr %etest, i32 0, i32 1
  %8 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags5, align 4
  br i1 %tobool.i.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  %or = or i32 %9, 2
  %10 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %flags5, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %and8 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end6.if.end14_crit_edge, label %land.lhs.true

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #26
  %phy_flags = getelementptr i8, ptr %dev, i32 6396
  %11 = ptrtoint ptr %phy_flags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %phy_flags, align 4
  %13 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not = icmp ne i8 %13, 0
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true, %if.end6.if.end14_crit_edge
  %do_ext_lpbk.0.off0 = phi i1 [ false, %if.end6.if.end14_crit_edge ], [ %tobool12.not, %land.lhs.true ]
  %and16 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.if.end35_crit_edge, label %if.then18

if.end14.if.end35_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end35

if.then18:                                        ; preds = %if.end14
  %active_vfs = getelementptr i8, ptr %dev, i32 3676
  %14 = ptrtoint ptr %active_vfs to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %active_vfs, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool20.not = icmp eq i16 %15, 0
  br i1 %tobool20.not, label %lor.lhs.false21, label %if.then18.if.then31_crit_edge

if.then18.if.then31_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then31

lor.lhs.false21:                                  ; preds = %if.then18
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 8
  %and23 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %land.lhs.true25, label %lor.lhs.false21.if.then31_crit_edge

lor.lhs.false21.if.then31_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then31

land.lhs.true25:                                  ; preds = %lor.lhs.false21
  %port_partition_type = getelementptr i8, ptr %dev, i32 3384
  %18 = ptrtoint ptr %port_partition_type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port_partition_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool26.not = icmp eq i8 %19, 0
  %and29 = and i32 %17, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %or.cond = select i1 %tobool26.not, i1 %tobool30.not, i1 false
  br i1 %or.cond, label %land.lhs.true25.if.end35_crit_edge, label %land.lhs.true25.if.then31_crit_edge

land.lhs.true25.if.then31_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then31

land.lhs.true25.if.end35_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end35

if.then31:                                        ; preds = %land.lhs.true25.if.then31_crit_edge, %lor.lhs.false21.if.then31_crit_edge, %if.then18.if.then31_crit_edge
  %or33 = or i32 %9, 2
  %20 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or33, ptr %flags5, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.22) #27
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true25.if.end35_crit_edge, %if.end14.if.end35_crit_edge
  %21 = ptrtoint ptr %num_tests to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_tests, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %22)
  %cmp241 = icmp ugt i8 %22, 4
  br i1 %cmp241, label %for.body.lr.ph, label %if.end35.for.end_crit_edge

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end35
  %conv37 = zext i8 %22 to i32
  %test_info = getelementptr i8, ptr %dev, i32 6400
  %23 = ptrtoint ptr %test_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %test_info, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 2
  %conv40 = zext i8 %26 to i32
  %27 = add nsw i32 %conv37, -5
  br label %for.body

for.body:                                         ; preds = %if.end56.for.body_crit_edge, %for.body.lr.ph
  %i.0243 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end56.for.body_crit_edge ]
  %test_mask.0242 = phi i8 [ 0, %for.body.lr.ph ], [ %test_mask.1, %if.end56.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.0243
  %and42 = and i32 %shl, %conv40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.then44, label %if.else

if.then44:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  %28 = trunc i32 %shl to i8
  %conv48 = or i8 %test_mask.0242, %28
  br label %if.end56

if.else:                                          ; preds = %for.body
  br i1 %tobool17.not, label %if.else.if.end56_crit_edge, label %if.then50

if.else.if.end56_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end56

if.then50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #26
  %29 = trunc i32 %shl to i8
  %conv54 = or i8 %test_mask.0242, %29
  br label %if.end56

if.end56:                                         ; preds = %if.then50, %if.else.if.end56_crit_edge, %if.then44
  %test_mask.1 = phi i8 [ %conv54, %if.then50 ], [ %test_mask.0242, %if.else.if.end56_crit_edge ], [ %conv48, %if.then44 ]
  %inc = add nuw nsw i32 %i.0243, 1
  %exitcond.not = icmp eq i32 %i.0243, %27
  br i1 %exitcond.not, label %if.end56.for.end_crit_edge, label %if.end56.for.body_crit_edge

if.end56.for.body_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body

if.end56.for.end_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

for.end:                                          ; preds = %if.end56.for.end_crit_edge, %if.end35.for.end_crit_edge
  %test_mask.0.lcssa = phi i8 [ 0, %if.end35.for.end_crit_edge ], [ %test_mask.1, %if.end56.for.end_crit_edge ]
  br i1 %tobool17.not, label %if.then58, label %if.else60

if.then58:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #26
  call fastcc void @bnxt_run_fw_tests(ptr noundef %add.ptr.i, i8 noundef zeroext %test_mask.0.lcssa, ptr noundef nonnull %test_results)
  br label %lor.lhs.false121

if.else60:                                        ; preds = %for.end
  tail call void @bnxt_ulp_stop(ptr noundef %add.ptr.i) #24
  %call61 = tail call i32 @bnxt_close_nic(ptr noundef %add.ptr.i, i1 noundef zeroext true, i1 noundef zeroext false) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @bnxt_ulp_start(ptr noundef %add.ptr.i, i32 noundef %call61) #24
  br label %cleanup

if.end64:                                         ; preds = %if.else60
  call fastcc void @bnxt_run_fw_tests(ptr noundef %add.ptr.i, i8 noundef zeroext %test_mask.0.lcssa, ptr noundef nonnull %test_results)
  %30 = ptrtoint ptr %num_tests to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_tests, align 1
  %conv67 = zext i8 %31 to i32
  %sub68 = add nsw i32 %conv67, -4
  %arrayidx = getelementptr i64, ptr %buf, i32 %sub68
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 1, ptr %arrayidx, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #24
  %33 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !228
  %call.i = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req.i, i16 noundef zeroext 33, i32 noundef 48) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end64.bnxt_hwrm_mac_loopback.exit_crit_edge

if.end64.bnxt_hwrm_mac_loopback.exit_crit_edge:   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_hwrm_mac_loopback.exit

if.end.i:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #26
  %34 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %req.i, align 4
  %enables.i = getelementptr inbounds %struct.hwrm_port_mac_cfg_input, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %enables.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 33554432, ptr %enables.i, align 4
  %37 = getelementptr inbounds %struct.hwrm_port_mac_cfg_input, ptr %35, i32 0, i32 9
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %37, align 1
  %call5.i = call i32 @hwrm_req_send(ptr noundef %add.ptr.i, ptr noundef %35) #24
  br label %bnxt_hwrm_mac_loopback.exit

bnxt_hwrm_mac_loopback.exit:                      ; preds = %if.end.i, %if.end64.bnxt_hwrm_mac_loopback.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #24
  call void @msleep(i32 noundef 250) #24
  %call70 = call i32 @bnxt_half_open_nic(ptr noundef %add.ptr.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end76, label %if.then72

if.then72:                                        ; preds = %bnxt_hwrm_mac_loopback.exit
  call void @__sanitizer_cov_trace_pc() #26
  call fastcc void @bnxt_hwrm_mac_loopback(ptr noundef %add.ptr.i, i1 noundef zeroext false)
  %39 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags5, align 4
  %or75 = or i32 %40, 2
  store i32 %or75, ptr %flags5, align 4
  call void @bnxt_ulp_start(ptr noundef %add.ptr.i, i32 noundef %call70) #24
  br label %cleanup

if.end76:                                         ; preds = %bnxt_hwrm_mac_loopback.exit
  %call77 = call fastcc i32 @bnxt_run_loopback(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.else82, label %if.then79

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #26
  %41 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags5, align 4
  %or81 = or i32 %42, 2
  store i32 %or81, ptr %flags5, align 4
  br label %if.end87

if.else82:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #26
  %43 = ptrtoint ptr %num_tests to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %num_tests, align 1
  %conv84 = zext i8 %44 to i32
  %sub85 = add nsw i32 %conv84, -4
  %arrayidx86 = getelementptr i64, ptr %buf, i32 %sub85
  %45 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 0, ptr %arrayidx86, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.else82, %if.then79
  call fastcc void @bnxt_hwrm_mac_loopback(ptr noundef %add.ptr.i, i1 noundef zeroext false)
  call fastcc void @bnxt_hwrm_phy_loopback(ptr noundef %add.ptr.i, i1 noundef zeroext true, i1 noundef zeroext false)
  call void @msleep(i32 noundef 1000) #24
  %call90 = call fastcc i32 @bnxt_run_loopback(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end87.if.end99_crit_edge, label %if.then92

if.end87.if.end99_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end99

if.then92:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #26
  %46 = ptrtoint ptr %num_tests to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %num_tests, align 1
  %conv94 = zext i8 %47 to i32
  %add = add nsw i32 %conv94, -3
  %arrayidx96 = getelementptr i64, ptr %buf, i32 %add
  %48 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 1, ptr %arrayidx96, align 8
  %49 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags5, align 4
  %or98 = or i32 %50, 2
  store i32 %or98, ptr %flags5, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then92, %if.end87.if.end99_crit_edge
  br i1 %do_ext_lpbk.0.off0, label %if.then101, label %if.end99.if.end116_crit_edge

if.end99.if.end116_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end116

if.then101:                                       ; preds = %if.end99
  %51 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags5, align 4
  %or103 = or i32 %52, 8
  store i32 %or103, ptr %flags5, align 4
  call fastcc void @bnxt_hwrm_phy_loopback(ptr noundef %add.ptr.i, i1 noundef zeroext true, i1 noundef zeroext true)
  call void @msleep(i32 noundef 1000) #24
  %call105 = call fastcc i32 @bnxt_run_loopback(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.then101.if.end116_crit_edge, label %if.then107

if.then101.if.end116_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end116

if.then107:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #26
  %53 = ptrtoint ptr %num_tests to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %num_tests, align 1
  %conv109 = zext i8 %54 to i32
  %add111 = add nsw i32 %conv109, -2
  %arrayidx112 = getelementptr i64, ptr %buf, i32 %add111
  %55 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 1, ptr %arrayidx112, align 8
  %56 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags5, align 4
  %or114 = or i32 %57, 2
  store i32 %or114, ptr %flags5, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then107, %if.then101.if.end116_crit_edge, %if.end99.if.end116_crit_edge
  call fastcc void @bnxt_hwrm_phy_loopback(ptr noundef %add.ptr.i, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @bnxt_half_close_nic(ptr noundef %add.ptr.i) #24
  %call118 = call i32 @bnxt_open_nic(ptr noundef %add.ptr.i, i1 noundef zeroext true, i1 noundef zeroext true) #24
  call void @bnxt_ulp_start(ptr noundef %add.ptr.i, i32 noundef %call118) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %phi.cmp = icmp eq i32 %call118, 0
  br i1 %phi.cmp, label %if.end116.lor.lhs.false121_crit_edge, label %if.end116.if.then124_crit_edge

if.end116.if.then124_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then124

if.end116.lor.lhs.false121_crit_edge:             ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #26
  br label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %if.end116.lor.lhs.false121_crit_edge, %if.then58
  %cp_nr_rings.i = getelementptr i8, ptr %dev, i32 2540
  %58 = ptrtoint ptr %cp_nr_rings.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cp_nr_rings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp11.i = icmp sgt i32 %59, 0
  br i1 %cmp11.i, label %for.body.lr.ph.i, label %lor.lhs.false121.if.end132_crit_edge

lor.lhs.false121.if.end132_crit_edge:             ; preds = %lor.lhs.false121
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end132

for.body.lr.ph.i:                                 ; preds = %lor.lhs.false121
  %grp_info.i = getelementptr i8, ptr %dev, i32 2544
  br label %for.body.i

for.cond.i:                                       ; preds = %bnxt_hwrm_selftest_irq.exit.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %60 = ptrtoint ptr %cp_nr_rings.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cp_nr_rings.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %61
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end132_crit_edge

for.cond.i.if.end132_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end132

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %62 = ptrtoint ptr %grp_info.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %grp_info.i, align 8
  %cp_fw_ring_id.i = getelementptr %struct.bnxt_ring_grp_info, ptr %63, i32 %i.012.i, i32 4
  %64 = ptrtoint ptr %cp_fw_ring_id.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %cp_fw_ring_id.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i.i) #24
  %66 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i.i, align 4, !annotation !228
  %call.i.i = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req.i.i, i16 noundef zeroext 514, i32 noundef 16) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %bnxt_hwrm_selftest_irq.exit.i, label %bnxt_hwrm_selftest_irq.exit.thread.i

bnxt_hwrm_selftest_irq.exit.thread.i:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i) #24
  br label %if.then124

bnxt_hwrm_selftest_irq.exit.i:                    ; preds = %for.body.i
  %67 = call i16 @llvm.bswap.i16(i16 %65) #24
  %68 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %req.i.i, align 4
  %cmpl_ring1.i.i = getelementptr inbounds %struct.hwrm_selftest_irq_input, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %cmpl_ring1.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %67, ptr %cmpl_ring1.i.i, align 2
  %71 = load ptr, ptr %req.i.i, align 4
  %call2.i.i = call i32 @hwrm_req_send(ptr noundef %add.ptr.i, ptr noundef %71) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i238 = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i238, label %for.cond.i, label %bnxt_hwrm_selftest_irq.exit.i.if.then124_crit_edge

bnxt_hwrm_selftest_irq.exit.i.if.then124_crit_edge: ; preds = %bnxt_hwrm_selftest_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then124

if.then124:                                       ; preds = %bnxt_hwrm_selftest_irq.exit.i.if.then124_crit_edge, %bnxt_hwrm_selftest_irq.exit.thread.i, %if.end116.if.then124_crit_edge
  %72 = ptrtoint ptr %num_tests to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %num_tests, align 1
  %conv126 = zext i8 %73 to i32
  %add128 = add nsw i32 %conv126, -1
  %arrayidx129 = getelementptr i64, ptr %buf, i32 %add128
  %74 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 1, ptr %arrayidx129, align 8
  %75 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags5, align 4
  %or131 = or i32 %76, 2
  store i32 %or131, ptr %flags5, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then124, %for.cond.i.if.end132_crit_edge, %lor.lhs.false121.if.end132_crit_edge
  %77 = ptrtoint ptr %num_tests to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %num_tests, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %78)
  %cmp137246 = icmp ugt i8 %78, 4
  br i1 %cmp137246, label %for.body139.lr.ph, label %if.end132.cleanup_crit_edge

if.end132.cleanup_crit_edge:                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

for.body139.lr.ph:                                ; preds = %if.end132
  %conv143 = zext i8 %test_mask.0.lcssa to i32
  br label %for.body139

for.body139:                                      ; preds = %if.end156.for.body139_crit_edge, %for.body139.lr.ph
  %i.1247 = phi i32 [ 0, %for.body139.lr.ph ], [ %inc158, %if.end156.for.body139_crit_edge ]
  %shl141 = shl nuw i32 1, %i.1247
  %and145 = and i32 %shl141, %conv143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %for.body139.if.end156_crit_edge, label %land.lhs.true147

for.body139.if.end156_crit_edge:                  ; preds = %for.body139
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end156

land.lhs.true147:                                 ; preds = %for.body139
  %79 = ptrtoint ptr %test_results to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %test_results, align 1
  %conv148 = zext i8 %80 to i32
  %and150 = and i32 %shl141, %conv148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %if.then152, label %land.lhs.true147.if.end156_crit_edge

land.lhs.true147.if.end156_crit_edge:             ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end156

if.then152:                                       ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #26
  %arrayidx153 = getelementptr i64, ptr %buf, i32 %i.1247
  %81 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 1, ptr %arrayidx153, align 8
  %82 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags5, align 4
  %or155 = or i32 %83, 2
  store i32 %or155, ptr %flags5, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.then152, %land.lhs.true147.if.end156_crit_edge, %for.body139.if.end156_crit_edge
  %inc158 = add nuw nsw i32 %i.1247, 1
  %84 = ptrtoint ptr %num_tests to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %num_tests, align 1
  %conv135 = zext i8 %85 to i32
  %sub136 = add nsw i32 %conv135, -4
  %cmp137 = icmp slt i32 %inc158, %sub136
  br i1 %cmp137, label %if.end156.for.body139_crit_edge, label %if.end156.cleanup_crit_edge

if.end156.cleanup_crit_edge:                      ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end156.for.body139_crit_edge:                  ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body139

cleanup:                                          ; preds = %if.end156.cleanup_crit_edge, %if.end132.cleanup_crit_edge, %if.then72, %if.then63, %if.then31, %if.then4, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %test_results) #24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnxt_get_strings(ptr nocapture noundef readonly %dev, i32 noundef %stringset, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %stringset, label %sw.default [
    i32 1, label %for.cond.preheader
    i32 0, label %sw.bb162
  ]

for.cond.preheader:                               ; preds = %entry
  %cp_nr_rings = getelementptr i8, ptr %dev, i32 2540
  %1 = ptrtoint ptr %cp_nr_rings to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cp_nr_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp289.not = icmp eq i32 %2, 0
  br i1 %cmp289.not, label %for.cond.preheader.for.cond58.preheader_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.cond58.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.cond58.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %rx_nr_rings.i = getelementptr i8, ptr %dev, i32 2480
  %flags.i = getelementptr i8, ptr %dev, i32 2400
  %tx_nr_rings.i = getelementptr i8, ptr %dev, i32 2500
  %max_tpa_v2.i = getelementptr i8, ptr %dev, i32 2432
  %chip_num.i = getelementptr i8, ptr %dev, i32 2320
  br label %for.body

for.cond58.preheader:                             ; preds = %for.body48.for.cond58.preheader_crit_edge, %for.cond.preheader.for.cond58.preheader_crit_edge
  %buf.addr.0.lcssa = phi ptr [ %buf, %for.cond.preheader.for.cond58.preheader_crit_edge ], [ %add.ptr51, %for.body48.for.cond58.preheader_crit_edge ]
  %call62 = tail call ptr @strcpy(ptr noundef %buf.addr.0.lcssa, ptr noundef getelementptr inbounds ([3 x %struct.anon.174], ptr @bnxt_sw_func_stats, i32 0, i32 0, i32 1)) #31
  %add.ptr63 = getelementptr i8, ptr %buf.addr.0.lcssa, i32 32
  %call62.1 = tail call ptr @strcpy(ptr noundef %add.ptr63, ptr noundef getelementptr inbounds ([3 x %struct.anon.174], ptr @bnxt_sw_func_stats, i32 0, i32 1, i32 1)) #31
  %add.ptr63.1 = getelementptr i8, ptr %buf.addr.0.lcssa, i32 64
  %call62.2 = tail call ptr @strcpy(ptr noundef %add.ptr63.1, ptr noundef getelementptr inbounds ([3 x %struct.anon.174], ptr @bnxt_sw_func_stats, i32 0, i32 2, i32 1)) #31
  %add.ptr63.2 = getelementptr i8, ptr %buf.addr.0.lcssa, i32 96
  %flags = getelementptr i8, ptr %dev, i32 2400
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %and = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool67.not = icmp eq i32 %and, 0
  br i1 %tobool67.not, label %for.cond58.preheader.if.end80_crit_edge, label %for.cond58.preheader.for.body71_crit_edge

for.cond58.preheader.for.body71_crit_edge:        ; preds = %for.cond58.preheader
  br label %for.body71

for.cond58.preheader.if.end80_crit_edge:          ; preds = %for.cond58.preheader
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end80

for.body:                                         ; preds = %for.body48.for.body_crit_edge, %for.body.lr.ph
  %i.0291 = phi i32 [ 0, %for.body.lr.ph ], [ %inc56, %for.body48.for.body_crit_edge ]
  %buf.addr.0290 = phi ptr [ %buf, %for.body.lr.ph ], [ %add.ptr51, %for.body48.for.body_crit_edge ]
  %5 = ptrtoint ptr %rx_nr_rings.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_nr_rings.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %i.0291)
  %cmp.i = icmp sgt i32 %6, %i.0291
  br i1 %cmp.i, label %for.body4.preheader, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

for.body4.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf.addr.0290, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef nonnull @.str.27)
  %add.ptr = getelementptr i8, ptr %buf.addr.0290, i32 32
  %call5.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef nonnull @.str.28)
  %add.ptr.1 = getelementptr i8, ptr %buf.addr.0290, i32 64
  %call5.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef nonnull @.str.29)
  %add.ptr.2 = getelementptr i8, ptr %buf.addr.0290, i32 96
  %call5.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.2, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef nonnull @.str.30)
  %add.ptr.3 = getelementptr i8, ptr %buf.addr.0290, i32 128
  %call5.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.3, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef nonnull @.str.31)
  %add.ptr.4 = getelementptr i8, ptr %buf.addr.0290, i32 160
  %call5.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.4, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef nonnull @.str.32)
  %add.ptr.5 = getelementptr i8, ptr %buf.addr.0290, i32 192
  %call5.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.5, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef nonnull @.str.33)
  %add.ptr.6 = getelementptr i8, ptr %buf.addr.0290, i32 224
  %call5.7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.6, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef nonnull @.str.34)
  %add.ptr.7 = getelementptr i8, ptr %buf.addr.0290, i32 256
  br label %if.end

if.end:                                           ; preds = %for.body4.preheader, %for.body.if.end_crit_edge
  %buf.addr.2 = phi ptr [ %buf.addr.0290, %for.body.if.end_crit_edge ], [ %add.ptr.7, %for.body4.preheader ]
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  %9 = ptrtoint ptr %rx_nr_rings.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_nr_rings.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %tx_base.0.i = phi i32 [ 0, %if.end.if.end.i_crit_edge ], [ %10, %if.then.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_base.0.i, i32 %i.0291)
  %cmp.not.i = icmp sgt i32 %tx_base.0.i, %i.0291
  br i1 %cmp.not.i, label %if.end.i.if.end17_crit_edge, label %land.lhs.true.i

if.end.i.if.end17_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end17

land.lhs.true.i:                                  ; preds = %if.end.i
  %11 = ptrtoint ptr %tx_nr_rings.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_nr_rings.i, align 4
  %add.i = add i32 %12, %tx_base.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %i.0291)
  %cmp1.i = icmp sgt i32 %add.i, %i.0291
  br i1 %cmp1.i, label %for.body10.preheader, label %land.lhs.true.i.if.end17_crit_edge

land.lhs.true.i.if.end17_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end17

for.body10.preheader:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #26
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf.addr.2, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef nonnull @.str.35)
  %add.ptr13 = getelementptr i8, ptr %buf.addr.2, i32 32
  %call12.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr13, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef nonnull @.str.36)
  %add.ptr13.1 = getelementptr i8, ptr %buf.addr.2, i32 64
  %call12.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr13.1, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef nonnull @.str.37)
  %add.ptr13.2 = getelementptr i8, ptr %buf.addr.2, i32 96
  %call12.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr13.2, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef nonnull @.str.38)
  %add.ptr13.3 = getelementptr i8, ptr %buf.addr.2, i32 128
  %call12.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr13.3, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef nonnull @.str.39)
  %add.ptr13.4 = getelementptr i8, ptr %buf.addr.2, i32 160
  %call12.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr13.4, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef nonnull @.str.40)
  %add.ptr13.5 = getelementptr i8, ptr %buf.addr.2, i32 192
  %call12.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr13.5, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef nonnull @.str.41)
  %add.ptr13.6 = getelementptr i8, ptr %buf.addr.2, i32 224
  %call12.7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr13.6, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef nonnull @.str.42)
  %add.ptr13.7 = getelementptr i8, ptr %buf.addr.2, i32 256
  br label %if.end17

if.end17:                                         ; preds = %for.body10.preheader, %land.lhs.true.i.if.end17_crit_edge, %if.end.i.if.end17_crit_edge
  %buf.addr.4 = phi ptr [ %buf.addr.2, %if.end.i.if.end17_crit_edge ], [ %buf.addr.2, %land.lhs.true.i.if.end17_crit_edge ], [ %add.ptr13.7, %for.body10.preheader ]
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 8
  %and.i268 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i268)
  %tobool.not.i269 = icmp eq i32 %and.i268, 0
  br i1 %tobool.not.i269, label %land.lhs.true.i270, label %if.end17.skip_tpa_stats_crit_edge

if.end17.skip_tpa_stats_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #26
  br label %skip_tpa_stats

land.lhs.true.i270:                               ; preds = %if.end17
  %and2.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i270.land.lhs.true5.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i270.land.lhs.true5.i_crit_edge:    ; preds = %land.lhs.true.i270
  call void @__sanitizer_cov_trace_pc() #26
  br label %land.lhs.true5.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i270
  %15 = ptrtoint ptr %max_tpa_v2.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max_tpa_v2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool4.not.i = icmp eq i16 %16, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i.skip_tpa_stats_crit_edge, label %lor.lhs.false.i.land.lhs.true5.i_crit_edge

lor.lhs.false.i.land.lhs.true5.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %land.lhs.true5.i

lor.lhs.false.i.skip_tpa_stats_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %skip_tpa_stats

land.lhs.true5.i:                                 ; preds = %lor.lhs.false.i.land.lhs.true5.i_crit_edge, %land.lhs.true.i270.land.lhs.true5.i_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %17 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %17)
  %cmp.i.not.i = icmp eq i64 %17, -1
  br i1 %cmp.i.not.i, label %if.then.i271, label %land.lhs.true5.i.skip_tpa_stats_crit_edge

land.lhs.true5.i.skip_tpa_stats_crit_edge:        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %skip_tpa_stats

if.then.i271:                                     ; preds = %land.lhs.true5.i
  %18 = ptrtoint ptr %max_tpa_v2.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %max_tpa_v2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool7.not.i = icmp eq i16 %19, 0
  br i1 %tobool7.not.i, label %if.then.i271.lor.lhs.false_crit_edge, label %if.then8.i

if.then.i271.lor.lhs.false_crit_edge:             ; preds = %if.then.i271
  call void @__sanitizer_cov_trace_pc() #26
  br label %lor.lhs.false

if.then8.i:                                       ; preds = %if.then.i271
  call void @__sanitizer_cov_trace_pc() #26
  %20 = ptrtoint ptr %chip_num.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %chip_num.i, align 8
  %.off.i = add i16 %21, -5968
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %.off.i)
  %switch.i = icmp ult i16 %.off.i, 3
  %spec.select.i = select i1 %switch.i, i32 5, i32 6
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then8.i, %if.then.i271.lor.lhs.false_crit_edge
  %retval.0.i272 = phi i32 [ 4, %if.then.i271.lor.lhs.false_crit_edge ], [ %spec.select.i, %if.then8.i ]
  %22 = ptrtoint ptr %rx_nr_rings.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_nr_rings.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %i.0291)
  %cmp.i274 = icmp sgt i32 %23, %i.0291
  br i1 %cmp.i274, label %if.end21, label %lor.lhs.false.skip_tpa_stats_crit_edge

lor.lhs.false.skip_tpa_stats_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #26
  br label %skip_tpa_stats

if.end21:                                         ; preds = %lor.lhs.false
  %24 = ptrtoint ptr %max_tpa_v2.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %max_tpa_v2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool22.not = icmp eq i16 %25, 0
  %bnxt_ring_tpa_stats_str.bnxt_ring_tpa2_stats_str = select i1 %tobool22.not, ptr @bnxt_ring_tpa_stats_str, ptr @bnxt_ring_tpa2_stats_str
  store ptr %bnxt_ring_tpa_stats_str.bnxt_ring_tpa2_stats_str, ptr @bnxt_get_strings.str, align 4
  %26 = load ptr, ptr @bnxt_get_strings.str, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call29 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf.addr.4, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef %28)
  %add.ptr30 = getelementptr i8, ptr %buf.addr.4, i32 32
  %29 = load ptr, ptr @bnxt_get_strings.str, align 4
  %arrayidx28.1 = getelementptr ptr, ptr %29, i32 1
  %30 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx28.1, align 4
  %call29.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr30, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef %31)
  %add.ptr30.1 = getelementptr i8, ptr %buf.addr.4, i32 64
  %32 = load ptr, ptr @bnxt_get_strings.str, align 4
  %arrayidx28.2 = getelementptr ptr, ptr %32, i32 2
  %33 = ptrtoint ptr %arrayidx28.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx28.2, align 4
  %call29.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr30.1, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef %34)
  %add.ptr30.2 = getelementptr i8, ptr %buf.addr.4, i32 96
  %35 = load ptr, ptr @bnxt_get_strings.str, align 4
  %arrayidx28.3 = getelementptr ptr, ptr %35, i32 3
  %36 = ptrtoint ptr %arrayidx28.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx28.3, align 4
  %call29.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr30.2, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef %37)
  %add.ptr30.3 = getelementptr i8, ptr %buf.addr.4, i32 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i272)
  %exitcond.not.3 = icmp eq i32 %retval.0.i272, 4
  br i1 %exitcond.not.3, label %if.end21.skip_tpa_stats_crit_edge, label %for.body27.4

if.end21.skip_tpa_stats_crit_edge:                ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #26
  br label %skip_tpa_stats

for.body27.4:                                     ; preds = %if.end21
  %38 = load ptr, ptr @bnxt_get_strings.str, align 4
  %arrayidx28.4 = getelementptr ptr, ptr %38, i32 4
  %39 = ptrtoint ptr %arrayidx28.4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx28.4, align 4
  %call29.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr30.3, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef %40)
  %add.ptr30.4 = getelementptr i8, ptr %buf.addr.4, i32 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %retval.0.i272)
  %exitcond.not.4 = icmp eq i32 %retval.0.i272, 5
  br i1 %exitcond.not.4, label %for.body27.4.skip_tpa_stats_crit_edge, label %for.body27.5

for.body27.4.skip_tpa_stats_crit_edge:            ; preds = %for.body27.4
  call void @__sanitizer_cov_trace_pc() #26
  br label %skip_tpa_stats

for.body27.5:                                     ; preds = %for.body27.4
  %41 = load ptr, ptr @bnxt_get_strings.str, align 4
  %arrayidx28.5 = getelementptr ptr, ptr %41, i32 5
  %42 = ptrtoint ptr %arrayidx28.5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx28.5, align 4
  %call29.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr30.4, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef %43)
  %add.ptr30.5 = getelementptr i8, ptr %buf.addr.4, i32 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %retval.0.i272)
  %exitcond.not.5 = icmp eq i32 %retval.0.i272, 6
  br i1 %exitcond.not.5, label %for.body27.5.skip_tpa_stats_crit_edge, label %for.body27.6

for.body27.5.skip_tpa_stats_crit_edge:            ; preds = %for.body27.5
  call void @__sanitizer_cov_trace_pc() #26
  br label %skip_tpa_stats

for.body27.6:                                     ; preds = %for.body27.5
  call void @__sanitizer_cov_trace_pc() #26
  %44 = load ptr, ptr @bnxt_get_strings.str, align 4
  %arrayidx28.6 = getelementptr ptr, ptr %44, i32 6
  %45 = ptrtoint ptr %arrayidx28.6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx28.6, align 4
  %call29.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr30.5, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef %46)
  %add.ptr30.6 = getelementptr i8, ptr %buf.addr.4, i32 224
  br label %skip_tpa_stats

skip_tpa_stats:                                   ; preds = %for.body27.6, %for.body27.5.skip_tpa_stats_crit_edge, %for.body27.4.skip_tpa_stats_crit_edge, %if.end21.skip_tpa_stats_crit_edge, %lor.lhs.false.skip_tpa_stats_crit_edge, %land.lhs.true5.i.skip_tpa_stats_crit_edge, %lor.lhs.false.i.skip_tpa_stats_crit_edge, %if.end17.skip_tpa_stats_crit_edge
  %buf.addr.6 = phi ptr [ %buf.addr.4, %lor.lhs.false.skip_tpa_stats_crit_edge ], [ %buf.addr.4, %land.lhs.true5.i.skip_tpa_stats_crit_edge ], [ %buf.addr.4, %lor.lhs.false.i.skip_tpa_stats_crit_edge ], [ %buf.addr.4, %if.end17.skip_tpa_stats_crit_edge ], [ %add.ptr30.3, %if.end21.skip_tpa_stats_crit_edge ], [ %add.ptr30.4, %for.body27.4.skip_tpa_stats_crit_edge ], [ %add.ptr30.5, %for.body27.5.skip_tpa_stats_crit_edge ], [ %add.ptr30.6, %for.body27.6 ]
  %47 = ptrtoint ptr %rx_nr_rings.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_nr_rings.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %i.0291)
  %cmp.i276 = icmp sgt i32 %48, %i.0291
  br i1 %cmp.i276, label %for.body38.preheader, label %skip_tpa_stats.for.body48_crit_edge

skip_tpa_stats.for.body48_crit_edge:              ; preds = %skip_tpa_stats
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body48

for.body38.preheader:                             ; preds = %skip_tpa_stats
  call void @__sanitizer_cov_trace_pc() #26
  %call40 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf.addr.6, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef nonnull @.str.53)
  %add.ptr41 = getelementptr i8, ptr %buf.addr.6, i32 32
  %call40.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr41, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef nonnull @.str.54)
  %add.ptr41.1 = getelementptr i8, ptr %buf.addr.6, i32 64
  %call40.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr41.1, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef nonnull @.str.55)
  %add.ptr41.2 = getelementptr i8, ptr %buf.addr.6, i32 96
  br label %for.body48

for.body48:                                       ; preds = %for.body38.preheader, %skip_tpa_stats.for.body48_crit_edge
  %buf.addr.8 = phi ptr [ %buf.addr.6, %skip_tpa_stats.for.body48_crit_edge ], [ %add.ptr41.2, %for.body38.preheader ]
  %call50 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf.addr.8, ptr noundef nonnull @.str.25, i32 noundef %i.0291, ptr noundef nonnull @.str.56)
  %add.ptr51 = getelementptr i8, ptr %buf.addr.8, i32 32
  %inc56 = add nuw i32 %i.0291, 1
  %49 = ptrtoint ptr %cp_nr_rings to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cp_nr_rings, align 4
  %cmp = icmp ult i32 %inc56, %50
  br i1 %cmp, label %for.body48.for.body_crit_edge, label %for.body48.for.cond58.preheader_crit_edge

for.body48.for.cond58.preheader_crit_edge:        ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.cond58.preheader

for.body48.for.body_crit_edge:                    ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body

for.body71:                                       ; preds = %for.body71.for.body71_crit_edge, %for.cond58.preheader.for.body71_crit_edge
  %i.2296 = phi i32 [ %inc78, %for.body71.for.body71_crit_edge ], [ 0, %for.cond58.preheader.for.body71_crit_edge ]
  %buf.addr.11295 = phi ptr [ %add.ptr76, %for.body71.for.body71_crit_edge ], [ %add.ptr63.2, %for.cond58.preheader.for.body71_crit_edge ]
  %string73 = getelementptr [79 x %struct.anon.175], ptr @bnxt_port_stats_arr, i32 0, i32 %i.2296, i32 1
  %call75 = tail call ptr @strcpy(ptr noundef %buf.addr.11295, ptr noundef %string73) #31
  %add.ptr76 = getelementptr i8, ptr %buf.addr.11295, i32 32
  %inc78 = add nuw nsw i32 %i.2296, 1
  %exitcond317.not = icmp eq i32 %inc78, 79
  br i1 %exitcond317.not, label %for.body71.if.end80_crit_edge, label %for.body71.for.body71_crit_edge

for.body71.for.body71_crit_edge:                  ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body71

for.body71.if.end80_crit_edge:                    ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end80

if.end80:                                         ; preds = %for.body71.if.end80_crit_edge, %for.cond58.preheader.if.end80_crit_edge
  %buf.addr.12 = phi ptr [ %add.ptr63.2, %for.cond58.preheader.if.end80_crit_edge ], [ %add.ptr76, %for.body71.if.end80_crit_edge ]
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 8
  %and82 = and i32 %52, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end80.sw.epilog_crit_edge, label %for.cond85.preheader

if.end80.sw.epilog_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.epilog

for.cond85.preheader:                             ; preds = %if.end80
  %fw_rx_stats_ext_size = getelementptr i8, ptr %dev, i32 2972
  %53 = ptrtoint ptr %fw_rx_stats_ext_size to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %fw_rx_stats_ext_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %cmp86298.not = icmp eq i16 %54, 0
  br i1 %cmp86298.not, label %for.cond85.preheader.for.cond97.preheader_crit_edge, label %for.cond85.preheader.for.body88_crit_edge

for.cond85.preheader.for.body88_crit_edge:        ; preds = %for.cond85.preheader
  br label %for.body88

for.cond85.preheader.for.cond97.preheader_crit_edge: ; preds = %for.cond85.preheader
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.cond97.preheader

for.cond97.preheader:                             ; preds = %for.body88.for.cond97.preheader_crit_edge, %for.cond85.preheader.for.cond97.preheader_crit_edge
  %buf.addr.13.lcssa = phi ptr [ %buf.addr.12, %for.cond85.preheader.for.cond97.preheader_crit_edge ], [ %add.ptr93, %for.body88.for.cond97.preheader_crit_edge ]
  %fw_tx_stats_ext_size = getelementptr i8, ptr %dev, i32 2974
  %55 = ptrtoint ptr %fw_tx_stats_ext_size to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %fw_tx_stats_ext_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp99303.not = icmp eq i16 %56, 0
  br i1 %cmp99303.not, label %for.cond97.preheader.for.end109_crit_edge, label %for.cond97.preheader.for.body101_crit_edge

for.cond97.preheader.for.body101_crit_edge:       ; preds = %for.cond97.preheader
  br label %for.body101

for.cond97.preheader.for.end109_crit_edge:        ; preds = %for.cond97.preheader
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end109

for.body88:                                       ; preds = %for.body88.for.body88_crit_edge, %for.cond85.preheader.for.body88_crit_edge
  %i.3300 = phi i32 [ %inc95, %for.body88.for.body88_crit_edge ], [ 0, %for.cond85.preheader.for.body88_crit_edge ]
  %buf.addr.13299 = phi ptr [ %add.ptr93, %for.body88.for.body88_crit_edge ], [ %buf.addr.12, %for.cond85.preheader.for.body88_crit_edge ]
  %string90 = getelementptr [59 x %struct.anon.176], ptr @bnxt_port_stats_ext_arr, i32 0, i32 %i.3300, i32 1
  %call92 = tail call ptr @strcpy(ptr noundef %buf.addr.13299, ptr noundef %string90) #31
  %add.ptr93 = getelementptr i8, ptr %buf.addr.13299, i32 32
  %inc95 = add nuw nsw i32 %i.3300, 1
  %57 = ptrtoint ptr %fw_rx_stats_ext_size to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %fw_rx_stats_ext_size, align 4
  %conv = zext i16 %58 to i32
  %cmp86 = icmp ult i32 %inc95, %conv
  br i1 %cmp86, label %for.body88.for.body88_crit_edge, label %for.body88.for.cond97.preheader_crit_edge

for.body88.for.cond97.preheader_crit_edge:        ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.cond97.preheader

for.body88.for.body88_crit_edge:                  ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body88

for.body101:                                      ; preds = %for.body101.for.body101_crit_edge, %for.cond97.preheader.for.body101_crit_edge
  %i.4305 = phi i32 [ %inc108, %for.body101.for.body101_crit_edge ], [ 0, %for.cond97.preheader.for.body101_crit_edge ]
  %buf.addr.14304 = phi ptr [ %add.ptr106, %for.body101.for.body101_crit_edge ], [ %buf.addr.13.lcssa, %for.cond97.preheader.for.body101_crit_edge ]
  %string103 = getelementptr [32 x %struct.anon.177], ptr @bnxt_tx_port_stats_ext_arr, i32 0, i32 %i.4305, i32 1
  %call105 = tail call ptr @strcpy(ptr noundef %buf.addr.14304, ptr noundef %string103) #31
  %add.ptr106 = getelementptr i8, ptr %buf.addr.14304, i32 32
  %inc108 = add nuw nsw i32 %i.4305, 1
  %59 = ptrtoint ptr %fw_tx_stats_ext_size to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %fw_tx_stats_ext_size, align 2
  %conv98 = zext i16 %60 to i32
  %cmp99 = icmp ult i32 %inc108, %conv98
  br i1 %cmp99, label %for.body101.for.body101_crit_edge, label %for.body101.for.end109_crit_edge

for.body101.for.end109_crit_edge:                 ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end109

for.body101.for.body101_crit_edge:                ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body101

for.end109:                                       ; preds = %for.body101.for.end109_crit_edge, %for.cond97.preheader.for.end109_crit_edge
  %buf.addr.14.lcssa = phi ptr [ %buf.addr.13.lcssa, %for.cond97.preheader.for.end109_crit_edge ], [ %add.ptr106, %for.body101.for.end109_crit_edge ]
  %pri2cos_valid = getelementptr i8, ptr %dev, i32 2986
  %61 = ptrtoint ptr %pri2cos_valid to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %pri2cos_valid, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool110.not = icmp eq i8 %62, 0
  br i1 %tobool110.not, label %for.end109.sw.epilog_crit_edge, label %for.body115.preheader

for.end109.sw.epilog_crit_edge:                   ; preds = %for.end109
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.epilog

for.body115.preheader:                            ; preds = %for.end109
  call void @__sanitizer_cov_trace_pc() #26
  %call119 = tail call ptr @strcpy(ptr noundef %buf.addr.14.lcssa, ptr noundef getelementptr inbounds ([8 x %struct.anon.178], ptr @bnxt_rx_bytes_pri_arr, i32 0, i32 0, i32 1)) #31
  %add.ptr120 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 32
  %call119.1 = tail call ptr @strcpy(ptr noundef %add.ptr120, ptr noundef getelementptr inbounds ([8 x %struct.anon.178], ptr @bnxt_rx_bytes_pri_arr, i32 0, i32 1, i32 1)) #31
  %add.ptr120.1 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 64
  %call119.2 = tail call ptr @strcpy(ptr noundef %add.ptr120.1, ptr noundef getelementptr inbounds ([8 x %struct.anon.178], ptr @bnxt_rx_bytes_pri_arr, i32 0, i32 2, i32 1)) #31
  %add.ptr120.2 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 96
  %call119.3 = tail call ptr @strcpy(ptr noundef %add.ptr120.2, ptr noundef getelementptr inbounds ([8 x %struct.anon.178], ptr @bnxt_rx_bytes_pri_arr, i32 0, i32 3, i32 1)) #31
  %add.ptr120.3 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 128
  %call119.4 = tail call ptr @strcpy(ptr noundef %add.ptr120.3, ptr noundef getelementptr inbounds ([8 x %struct.anon.178], ptr @bnxt_rx_bytes_pri_arr, i32 0, i32 4, i32 1)) #31
  %add.ptr120.4 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 160
  %call119.5 = tail call ptr @strcpy(ptr noundef %add.ptr120.4, ptr noundef getelementptr inbounds ([8 x %struct.anon.178], ptr @bnxt_rx_bytes_pri_arr, i32 0, i32 5, i32 1)) #31
  %add.ptr120.5 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 192
  %call119.6 = tail call ptr @strcpy(ptr noundef %add.ptr120.5, ptr noundef getelementptr inbounds ([8 x %struct.anon.178], ptr @bnxt_rx_bytes_pri_arr, i32 0, i32 6, i32 1)) #31
  %add.ptr120.6 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 224
  %call119.7 = tail call ptr @strcpy(ptr noundef %add.ptr120.6, ptr noundef getelementptr inbounds ([8 x %struct.anon.178], ptr @bnxt_rx_bytes_pri_arr, i32 0, i32 7, i32 1)) #31
  %add.ptr120.7 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 256
  %call131 = tail call ptr @strcpy(ptr noundef %add.ptr120.7, ptr noundef getelementptr inbounds ([8 x %struct.anon.179], ptr @bnxt_rx_pkts_pri_arr, i32 0, i32 0, i32 1)) #31
  %add.ptr132 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 288
  %call131.1 = tail call ptr @strcpy(ptr noundef %add.ptr132, ptr noundef getelementptr inbounds ([8 x %struct.anon.179], ptr @bnxt_rx_pkts_pri_arr, i32 0, i32 1, i32 1)) #31
  %add.ptr132.1 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 320
  %call131.2 = tail call ptr @strcpy(ptr noundef %add.ptr132.1, ptr noundef getelementptr inbounds ([8 x %struct.anon.179], ptr @bnxt_rx_pkts_pri_arr, i32 0, i32 2, i32 1)) #31
  %add.ptr132.2 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 352
  %call131.3 = tail call ptr @strcpy(ptr noundef %add.ptr132.2, ptr noundef getelementptr inbounds ([8 x %struct.anon.179], ptr @bnxt_rx_pkts_pri_arr, i32 0, i32 3, i32 1)) #31
  %add.ptr132.3 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 384
  %call131.4 = tail call ptr @strcpy(ptr noundef %add.ptr132.3, ptr noundef getelementptr inbounds ([8 x %struct.anon.179], ptr @bnxt_rx_pkts_pri_arr, i32 0, i32 4, i32 1)) #31
  %add.ptr132.4 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 416
  %call131.5 = tail call ptr @strcpy(ptr noundef %add.ptr132.4, ptr noundef getelementptr inbounds ([8 x %struct.anon.179], ptr @bnxt_rx_pkts_pri_arr, i32 0, i32 5, i32 1)) #31
  %add.ptr132.5 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 448
  %call131.6 = tail call ptr @strcpy(ptr noundef %add.ptr132.5, ptr noundef getelementptr inbounds ([8 x %struct.anon.179], ptr @bnxt_rx_pkts_pri_arr, i32 0, i32 6, i32 1)) #31
  %add.ptr132.6 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 480
  %call131.7 = tail call ptr @strcpy(ptr noundef %add.ptr132.6, ptr noundef getelementptr inbounds ([8 x %struct.anon.179], ptr @bnxt_rx_pkts_pri_arr, i32 0, i32 7, i32 1)) #31
  %add.ptr132.7 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 512
  %call143 = tail call ptr @strcpy(ptr noundef %add.ptr132.7, ptr noundef getelementptr inbounds ([8 x %struct.anon.180], ptr @bnxt_tx_bytes_pri_arr, i32 0, i32 0, i32 1)) #31
  %add.ptr144 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 544
  %call143.1 = tail call ptr @strcpy(ptr noundef %add.ptr144, ptr noundef getelementptr inbounds ([8 x %struct.anon.180], ptr @bnxt_tx_bytes_pri_arr, i32 0, i32 1, i32 1)) #31
  %add.ptr144.1 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 576
  %call143.2 = tail call ptr @strcpy(ptr noundef %add.ptr144.1, ptr noundef getelementptr inbounds ([8 x %struct.anon.180], ptr @bnxt_tx_bytes_pri_arr, i32 0, i32 2, i32 1)) #31
  %add.ptr144.2 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 608
  %call143.3 = tail call ptr @strcpy(ptr noundef %add.ptr144.2, ptr noundef getelementptr inbounds ([8 x %struct.anon.180], ptr @bnxt_tx_bytes_pri_arr, i32 0, i32 3, i32 1)) #31
  %add.ptr144.3 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 640
  %call143.4 = tail call ptr @strcpy(ptr noundef %add.ptr144.3, ptr noundef getelementptr inbounds ([8 x %struct.anon.180], ptr @bnxt_tx_bytes_pri_arr, i32 0, i32 4, i32 1)) #31
  %add.ptr144.4 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 672
  %call143.5 = tail call ptr @strcpy(ptr noundef %add.ptr144.4, ptr noundef getelementptr inbounds ([8 x %struct.anon.180], ptr @bnxt_tx_bytes_pri_arr, i32 0, i32 5, i32 1)) #31
  %add.ptr144.5 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 704
  %call143.6 = tail call ptr @strcpy(ptr noundef %add.ptr144.5, ptr noundef getelementptr inbounds ([8 x %struct.anon.180], ptr @bnxt_tx_bytes_pri_arr, i32 0, i32 6, i32 1)) #31
  %add.ptr144.6 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 736
  %call143.7 = tail call ptr @strcpy(ptr noundef %add.ptr144.6, ptr noundef getelementptr inbounds ([8 x %struct.anon.180], ptr @bnxt_tx_bytes_pri_arr, i32 0, i32 7, i32 1)) #31
  %add.ptr144.7 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 768
  %call155 = tail call ptr @strcpy(ptr noundef %add.ptr144.7, ptr noundef getelementptr inbounds ([8 x %struct.anon.181], ptr @bnxt_tx_pkts_pri_arr, i32 0, i32 0, i32 1)) #31
  %add.ptr156 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 800
  %call155.1 = tail call ptr @strcpy(ptr noundef %add.ptr156, ptr noundef getelementptr inbounds ([8 x %struct.anon.181], ptr @bnxt_tx_pkts_pri_arr, i32 0, i32 1, i32 1)) #31
  %add.ptr156.1 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 832
  %call155.2 = tail call ptr @strcpy(ptr noundef %add.ptr156.1, ptr noundef getelementptr inbounds ([8 x %struct.anon.181], ptr @bnxt_tx_pkts_pri_arr, i32 0, i32 2, i32 1)) #31
  %add.ptr156.2 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 864
  %call155.3 = tail call ptr @strcpy(ptr noundef %add.ptr156.2, ptr noundef getelementptr inbounds ([8 x %struct.anon.181], ptr @bnxt_tx_pkts_pri_arr, i32 0, i32 3, i32 1)) #31
  %add.ptr156.3 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 896
  %call155.4 = tail call ptr @strcpy(ptr noundef %add.ptr156.3, ptr noundef getelementptr inbounds ([8 x %struct.anon.181], ptr @bnxt_tx_pkts_pri_arr, i32 0, i32 4, i32 1)) #31
  %add.ptr156.4 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 928
  %call155.5 = tail call ptr @strcpy(ptr noundef %add.ptr156.4, ptr noundef getelementptr inbounds ([8 x %struct.anon.181], ptr @bnxt_tx_pkts_pri_arr, i32 0, i32 5, i32 1)) #31
  %add.ptr156.5 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 960
  %call155.6 = tail call ptr @strcpy(ptr noundef %add.ptr156.5, ptr noundef getelementptr inbounds ([8 x %struct.anon.181], ptr @bnxt_tx_pkts_pri_arr, i32 0, i32 6, i32 1)) #31
  %add.ptr156.6 = getelementptr i8, ptr %buf.addr.14.lcssa, i32 992
  %call155.7 = tail call ptr @strcpy(ptr noundef %add.ptr156.6, ptr noundef getelementptr inbounds ([8 x %struct.anon.181], ptr @bnxt_tx_pkts_pri_arr, i32 0, i32 7, i32 1)) #31
  br label %sw.epilog

sw.bb162:                                         ; preds = %entry
  %num_tests = getelementptr i8, ptr %dev, i32 6397
  %63 = ptrtoint ptr %num_tests to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %num_tests, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool163.not = icmp eq i8 %64, 0
  br i1 %tobool163.not, label %sw.bb162.sw.epilog_crit_edge, label %if.then164

sw.bb162.sw.epilog_crit_edge:                     ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.epilog

if.then164:                                       ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #26
  %test_info = getelementptr i8, ptr %dev, i32 6400
  %65 = ptrtoint ptr %test_info to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %test_info, align 8
  %string165 = getelementptr inbounds %struct.bnxt_test_info, ptr %66, i32 0, i32 2
  %conv168 = zext i8 %64 to i32
  %mul = shl nuw nsw i32 %conv168, 5
  %67 = call ptr @memcpy(ptr %buf, ptr %string165, i32 %mul)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %dev170 = getelementptr i8, ptr %dev, i32 2388
  %68 = ptrtoint ptr %dev170 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev170, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %69, ptr noundef nonnull @.str.26, i32 noundef %stringset) #27
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then164, %sw.bb162.sw.epilog_crit_edge, %for.body115.preheader, %for.end109.sw.epilog_crit_edge, %if.end80.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_set_phys_id(ptr noundef %dev, i32 noundef %state) #3 align 64 {
entry:
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #24
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !228
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %num_leds = getelementptr i8, ptr %dev, i32 6406
  %1 = ptrtoint ptr %num_leds to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %num_leds, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr i8, ptr %dev, i32 2400
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %5 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %state, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.if.end8_crit_edge
    i32 0, label %if.then5
  ]

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %led_state.0 = phi i8 [ 0, %if.then5 ], [ 4, %if.end.if.end8_crit_edge ]
  %duration.0 = phi i16 [ 0, %if.then5 ], [ -3071, %if.end.if.end8_crit_edge ]
  %call9 = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req, i16 noundef zeroext 45, i32 noundef 64) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %port_id = getelementptr i8, ptr %dev, i32 3662
  %6 = ptrtoint ptr %port_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %port_id, align 2
  %8 = call i16 @llvm.bswap.i16(i16 %7)
  %9 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req, align 4
  %port_id13 = getelementptr inbounds %struct.hwrm_port_led_cfg_input, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %port_id13 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %8, ptr %port_id13, align 4
  %12 = ptrtoint ptr %num_leds to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_leds, align 2
  %num_leds15 = getelementptr inbounds %struct.hwrm_port_led_cfg_input, ptr %10, i32 0, i32 7
  %14 = ptrtoint ptr %num_leds15 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %num_leds15, align 2
  %15 = load i8, ptr %num_leds, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp1753.not = icmp eq i8 %15, 0
  br i1 %cmp1753.not, label %if.end12.for.end_crit_edge, label %for.body.preheader

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

for.body.preheader:                               ; preds = %if.end12
  %led0_id = getelementptr inbounds %struct.hwrm_port_led_cfg_input, ptr %10, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.055 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %led_cfg.054 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %led0_id, %for.body.preheader ]
  %mul = mul nuw nsw i32 %i.055, 6
  %shl = shl i32 59, %mul
  %16 = call i32 @llvm.bswap.i32(i32 %shl)
  %17 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %req, align 4
  %enables = getelementptr inbounds %struct.hwrm_port_led_cfg_input, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %enables to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %enables, align 8
  %or = or i32 %20, %16
  store i32 %or, ptr %enables, align 8
  %arrayidx = getelementptr %struct.bnxt, ptr %add.ptr.i, i32 0, i32 144, i32 %i.055
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 8
  %23 = ptrtoint ptr %led_cfg.054 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %led_cfg.054, align 2
  %led_state20 = getelementptr inbounds %struct.bnxt_led_cfg, ptr %led_cfg.054, i32 0, i32 1
  %24 = ptrtoint ptr %led_state20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %led_state.0, ptr %led_state20, align 1
  %led_blink_on = getelementptr inbounds %struct.bnxt_led_cfg, ptr %led_cfg.054, i32 0, i32 4
  %25 = ptrtoint ptr %led_blink_on to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %duration.0, ptr %led_blink_on, align 2
  %led_blink_off = getelementptr inbounds %struct.bnxt_led_cfg, ptr %led_cfg.054, i32 0, i32 5
  %26 = ptrtoint ptr %led_blink_off to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %duration.0, ptr %led_blink_off, align 2
  %led_group_id = getelementptr %struct.bnxt, ptr %add.ptr.i, i32 0, i32 144, i32 %i.055, i32 2
  %27 = ptrtoint ptr %led_group_id to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %led_group_id, align 2
  %led_group_id23 = getelementptr inbounds %struct.bnxt_led_cfg, ptr %led_cfg.054, i32 0, i32 6
  %29 = ptrtoint ptr %led_group_id23 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %led_group_id23, align 2
  %inc = add nuw nsw i32 %i.055, 1
  %incdec.ptr = getelementptr %struct.bnxt_led_cfg, ptr %led_cfg.054, i32 1
  %30 = ptrtoint ptr %num_leds to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_leds, align 2
  %conv = zext i8 %31 to i32
  %cmp17 = icmp ult i32 %inc, %conv
  br i1 %cmp17, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end12.for.end_crit_edge
  %32 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %req, align 4
  %call24 = call i32 @hwrm_req_send(ptr noundef %add.ptr.i, ptr noundef %33) #24
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %for.end ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #24
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnxt_get_ethtool_stats(ptr noundef readonly %dev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %buf) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %bnapi = getelementptr i8, ptr %dev, i32 2408
  %0 = ptrtoint ptr %bnapi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bnapi, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  store i64 0, ptr @bnxt_sw_func_stats, align 8
  store i64 0, ptr getelementptr inbounds ([3 x %struct.anon.174], ptr @bnxt_sw_func_stats, i32 0, i32 1), align 8
  store i64 0, ptr getelementptr inbounds ([3 x %struct.anon.174], ptr @bnxt_sw_func_stats, i32 0, i32 2), align 8
  %flags.i = getelementptr i8, ptr %dev, i32 2400
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.preheader.bnxt_get_num_tpa_ring_stats.exit_crit_edge

for.body.preheader.bnxt_get_num_tpa_ring_stats.exit_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_get_num_tpa_ring_stats.exit

if.then:                                          ; preds = %entry
  %flags.i.i = getelementptr i8, ptr %dev, i32 2400
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then.bnxt_get_num_ring_stats.exit_crit_edge

if.then.bnxt_get_num_ring_stats.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_get_num_ring_stats.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %and2.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.land.lhs.true5.i.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i.i.land.lhs.true5.i.i_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %land.lhs.true5.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i
  %max_tpa_v2.i.i = getelementptr i8, ptr %dev, i32 2432
  %6 = ptrtoint ptr %max_tpa_v2.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max_tpa_v2.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool4.not.i.i = icmp eq i16 %7, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false.i.i.bnxt_get_num_ring_stats.exit_crit_edge, label %lor.lhs.false.i.i.land.lhs.true5.i.i_crit_edge

lor.lhs.false.i.i.land.lhs.true5.i.i_crit_edge:   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %land.lhs.true5.i.i

lor.lhs.false.i.i.bnxt_get_num_ring_stats.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_get_num_ring_stats.exit

land.lhs.true5.i.i:                               ; preds = %lor.lhs.false.i.i.land.lhs.true5.i.i_crit_edge, %land.lhs.true.i.i.land.lhs.true5.i.i_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %8 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %8)
  %cmp.i.not.i.i = icmp eq i64 %8, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %land.lhs.true5.i.i.bnxt_get_num_ring_stats.exit_crit_edge

land.lhs.true5.i.i.bnxt_get_num_ring_stats.exit_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_get_num_ring_stats.exit

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  %max_tpa_v26.i.i = getelementptr i8, ptr %dev, i32 2432
  %9 = ptrtoint ptr %max_tpa_v26.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %max_tpa_v26.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool7.not.i.i = icmp eq i16 %10, 0
  br i1 %tobool7.not.i.i, label %if.then.i.i.bnxt_get_num_ring_stats.exit_crit_edge, label %if.then8.i.i

if.then.i.i.bnxt_get_num_ring_stats.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_get_num_ring_stats.exit

if.then8.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %chip_num.i.i = getelementptr i8, ptr %dev, i32 2320
  %11 = ptrtoint ptr %chip_num.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %chip_num.i.i, align 8
  %.off.i.i = add i16 %12, -5968
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %.off.i.i)
  %switch.i.i = icmp ult i16 %.off.i.i, 3
  %phi.bo.i = select i1 %switch.i.i, i32 16, i32 17
  br label %bnxt_get_num_ring_stats.exit

bnxt_get_num_ring_stats.exit:                     ; preds = %if.then8.i.i, %if.then.i.i.bnxt_get_num_ring_stats.exit_crit_edge, %land.lhs.true5.i.i.bnxt_get_num_ring_stats.exit_crit_edge, %lor.lhs.false.i.i.bnxt_get_num_ring_stats.exit_crit_edge, %if.then.bnxt_get_num_ring_stats.exit_crit_edge
  %retval.0.i.i = phi i32 [ 15, %if.then.i.i.bnxt_get_num_ring_stats.exit_crit_edge ], [ 11, %land.lhs.true5.i.i.bnxt_get_num_ring_stats.exit_crit_edge ], [ 11, %lor.lhs.false.i.i.bnxt_get_num_ring_stats.exit_crit_edge ], [ 11, %if.then.bnxt_get_num_ring_stats.exit_crit_edge ], [ %phi.bo.i, %if.then8.i.i ]
  %rx_nr_rings.i = getelementptr i8, ptr %dev, i32 2480
  %13 = ptrtoint ptr %rx_nr_rings.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_nr_rings.i, align 8
  %mul.i = mul i32 %14, %retval.0.i.i
  %tx_nr_rings.i = getelementptr i8, ptr %dev, i32 2500
  %15 = ptrtoint ptr %tx_nr_rings.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_nr_rings.i, align 4
  %mul1.i = shl i32 %16, 3
  %cp_nr_rings.i = getelementptr i8, ptr %dev, i32 2540
  %17 = ptrtoint ptr %cp_nr_rings.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cp_nr_rings.i, align 4
  %add2.i = add i32 %mul.i, 3
  %add4.i = add i32 %add2.i, %mul1.i
  %add = add i32 %add4.i, %18
  br label %skip_ring_stats

land.lhs.true.i:                                  ; preds = %for.body.preheader
  %and2.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.land.lhs.true5.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.land.lhs.true5.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %land.lhs.true5.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %max_tpa_v2.i = getelementptr i8, ptr %dev, i32 2432
  %19 = ptrtoint ptr %max_tpa_v2.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %max_tpa_v2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool4.not.i = icmp eq i16 %20, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i.bnxt_get_num_tpa_ring_stats.exit_crit_edge, label %lor.lhs.false.i.land.lhs.true5.i_crit_edge

lor.lhs.false.i.land.lhs.true5.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %land.lhs.true5.i

lor.lhs.false.i.bnxt_get_num_tpa_ring_stats.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_get_num_tpa_ring_stats.exit

land.lhs.true5.i:                                 ; preds = %lor.lhs.false.i.land.lhs.true5.i_crit_edge, %land.lhs.true.i.land.lhs.true5.i_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %21 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %21)
  %cmp.i.not.i = icmp eq i64 %21, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %land.lhs.true5.i.bnxt_get_num_tpa_ring_stats.exit_crit_edge

land.lhs.true5.i.bnxt_get_num_tpa_ring_stats.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_get_num_tpa_ring_stats.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  %max_tpa_v26.i = getelementptr i8, ptr %dev, i32 2432
  %22 = ptrtoint ptr %max_tpa_v26.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %max_tpa_v26.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool7.not.i = icmp eq i16 %23, 0
  br i1 %tobool7.not.i, label %if.then.i.bnxt_get_num_tpa_ring_stats.exit_crit_edge, label %if.then8.i

if.then.i.bnxt_get_num_tpa_ring_stats.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_get_num_tpa_ring_stats.exit

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #26
  %chip_num.i = getelementptr i8, ptr %dev, i32 2320
  %24 = ptrtoint ptr %chip_num.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %chip_num.i, align 8
  %.off.i = add i16 %25, -5968
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %.off.i)
  %switch.i = icmp ult i16 %.off.i, 3
  %spec.select.i = select i1 %switch.i, i32 5, i32 6
  br label %bnxt_get_num_tpa_ring_stats.exit

bnxt_get_num_tpa_ring_stats.exit:                 ; preds = %if.then8.i, %if.then.i.bnxt_get_num_tpa_ring_stats.exit_crit_edge, %land.lhs.true5.i.bnxt_get_num_tpa_ring_stats.exit_crit_edge, %lor.lhs.false.i.bnxt_get_num_tpa_ring_stats.exit_crit_edge, %for.body.preheader.bnxt_get_num_tpa_ring_stats.exit_crit_edge
  %retval.0.i = phi i32 [ 4, %if.then.i.bnxt_get_num_tpa_ring_stats.exit_crit_edge ], [ 0, %land.lhs.true5.i.bnxt_get_num_tpa_ring_stats.exit_crit_edge ], [ 0, %lor.lhs.false.i.bnxt_get_num_tpa_ring_stats.exit_crit_edge ], [ 0, %for.body.preheader.bnxt_get_num_tpa_ring_stats.exit_crit_edge ], [ %spec.select.i, %if.then8.i ]
  %cp_nr_rings = getelementptr i8, ptr %dev, i32 2540
  %26 = ptrtoint ptr %cp_nr_rings to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cp_nr_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp5356.not = icmp eq i32 %27, 0
  br i1 %cmp5356.not, label %bnxt_get_num_tpa_ring_stats.exit.for.cond82.preheader_crit_edge, label %for.body6.lr.ph

bnxt_get_num_tpa_ring_stats.exit.for.cond82.preheader_crit_edge: ; preds = %bnxt_get_num_tpa_ring_stats.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.cond82.preheader

for.body6.lr.ph:                                  ; preds = %bnxt_get_num_tpa_ring_stats.exit
  %rx_nr_rings.i331 = getelementptr i8, ptr %dev, i32 2480
  %tx_nr_rings.i337 = getelementptr i8, ptr %dev, i32 2500
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool36.not = icmp eq i32 %retval.0.i, 0
  %add41 = or i32 %retval.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add41)
  %cmp42350.not382 = icmp eq i32 %add41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %add41)
  %exitcond.not = icmp eq i32 %add41, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %add41)
  %exitcond.not.1 = icmp eq i32 %add41, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %add41)
  %exitcond.not.2 = icmp eq i32 %add41, 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %add41)
  %exitcond.not.3 = icmp eq i32 %add41, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %add41)
  %exitcond.not.4 = icmp eq i32 %add41, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %add41)
  %exitcond.not.5 = icmp eq i32 %add41, 22
  br label %for.body6

for.cond82.preheader:                             ; preds = %if.end62.for.cond82.preheader_crit_edge, %bnxt_get_num_tpa_ring_stats.exit.for.cond82.preheader_crit_edge
  %j.0.lcssa = phi i32 [ 0, %bnxt_get_num_tpa_ring_stats.exit.for.cond82.preheader_crit_edge ], [ %inc70, %if.end62.for.cond82.preheader_crit_edge ]
  %28 = load i64, ptr @bnxt_sw_func_stats, align 8
  %arrayidx87 = getelementptr i64, ptr %buf, i32 %j.0.lcssa
  %29 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx87, align 8
  %inc90 = add i32 %j.0.lcssa, 1
  %30 = load i64, ptr getelementptr inbounds ([3 x %struct.anon.174], ptr @bnxt_sw_func_stats, i32 0, i32 1), align 8
  %arrayidx87.1 = getelementptr i64, ptr %buf, i32 %inc90
  %31 = ptrtoint ptr %arrayidx87.1 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %arrayidx87.1, align 8
  %inc90.1 = add i32 %j.0.lcssa, 2
  %32 = load i64, ptr getelementptr inbounds ([3 x %struct.anon.174], ptr @bnxt_sw_func_stats, i32 0, i32 2), align 8
  %arrayidx87.2 = getelementptr i64, ptr %buf, i32 %inc90.1
  %33 = ptrtoint ptr %arrayidx87.2 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %arrayidx87.2, align 8
  %inc90.2 = add i32 %j.0.lcssa, 3
  br label %skip_ring_stats

for.body6:                                        ; preds = %if.end62.for.body6_crit_edge, %for.body6.lr.ph
  %i.1358 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc80, %if.end62.for.body6_crit_edge ]
  %j.0357 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc70, %if.end62.for.body6_crit_edge ]
  %34 = ptrtoint ptr %bnapi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bnapi, align 8
  %arrayidx9 = getelementptr ptr, ptr %35, i32 %i.1358
  %36 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx9, align 4
  %stats10 = getelementptr inbounds %struct.bnxt_napi, ptr %37, i32 0, i32 3, i32 12
  %38 = ptrtoint ptr %stats10 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %stats10, align 8
  %40 = ptrtoint ptr %rx_nr_rings.i331 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_nr_rings.i331, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %i.1358)
  %cmp.i = icmp sgt i32 %41, %i.1358
  br i1 %cmp.i, label %for.body16.preheader, label %for.body6.if.end23_crit_edge

for.body6.if.end23_crit_edge:                     ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end23

for.body16.preheader:                             ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #26
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %39, align 8
  %arrayidx18 = getelementptr i64, ptr %buf, i32 %j.0357
  %44 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %arrayidx18, align 8
  %inc20 = add i32 %j.0357, 1
  %arrayidx17.1 = getelementptr i64, ptr %39, i32 1
  %45 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx17.1, align 8
  %arrayidx18.1 = getelementptr i64, ptr %buf, i32 %inc20
  %47 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %arrayidx18.1, align 8
  %inc20.1 = add i32 %j.0357, 2
  %arrayidx17.2 = getelementptr i64, ptr %39, i32 2
  %48 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx17.2, align 8
  %arrayidx18.2 = getelementptr i64, ptr %buf, i32 %inc20.1
  %50 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %arrayidx18.2, align 8
  %inc20.2 = add i32 %j.0357, 3
  %arrayidx17.3 = getelementptr i64, ptr %39, i32 3
  %51 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx17.3, align 8
  %arrayidx18.3 = getelementptr i64, ptr %buf, i32 %inc20.2
  %53 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %arrayidx18.3, align 8
  %inc20.3 = add i32 %j.0357, 4
  %arrayidx17.4 = getelementptr i64, ptr %39, i32 4
  %54 = ptrtoint ptr %arrayidx17.4 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx17.4, align 8
  %arrayidx18.4 = getelementptr i64, ptr %buf, i32 %inc20.3
  %56 = ptrtoint ptr %arrayidx18.4 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %arrayidx18.4, align 8
  %inc20.4 = add i32 %j.0357, 5
  %arrayidx17.5 = getelementptr i64, ptr %39, i32 5
  %57 = ptrtoint ptr %arrayidx17.5 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx17.5, align 8
  %arrayidx18.5 = getelementptr i64, ptr %buf, i32 %inc20.4
  %59 = ptrtoint ptr %arrayidx18.5 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %arrayidx18.5, align 8
  %inc20.5 = add i32 %j.0357, 6
  %arrayidx17.6 = getelementptr i64, ptr %39, i32 6
  %60 = ptrtoint ptr %arrayidx17.6 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx17.6, align 8
  %arrayidx18.6 = getelementptr i64, ptr %buf, i32 %inc20.5
  %62 = ptrtoint ptr %arrayidx18.6 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %arrayidx18.6, align 8
  %inc20.6 = add i32 %j.0357, 7
  %arrayidx17.7 = getelementptr i64, ptr %39, i32 7
  %63 = ptrtoint ptr %arrayidx17.7 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx17.7, align 8
  %arrayidx18.7 = getelementptr i64, ptr %buf, i32 %inc20.6
  %65 = ptrtoint ptr %arrayidx18.7 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %arrayidx18.7, align 8
  %inc20.7 = add i32 %j.0357, 8
  br label %if.end23

if.end23:                                         ; preds = %for.body16.preheader, %for.body6.if.end23_crit_edge
  %j.2 = phi i32 [ %j.0357, %for.body6.if.end23_crit_edge ], [ %inc20.7, %for.body16.preheader ]
  %66 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.i, align 8
  %and.i333 = and i32 %67, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i333)
  %tobool.not.i334 = icmp eq i32 %and.i333, 0
  br i1 %tobool.not.i334, label %if.then.i336, label %if.end23.if.end.i_crit_edge

if.end23.if.end.i_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end.i

if.then.i336:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #26
  %68 = ptrtoint ptr %rx_nr_rings.i331 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rx_nr_rings.i331, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i336, %if.end23.if.end.i_crit_edge
  %tx_base.0.i = phi i32 [ 0, %if.end23.if.end.i_crit_edge ], [ %69, %if.then.i336 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_base.0.i, i32 %i.1358)
  %cmp.not.i = icmp sgt i32 %tx_base.0.i, %i.1358
  br i1 %cmp.not.i, label %if.end.i.if.end35_crit_edge, label %land.lhs.true.i338

if.end.i.if.end35_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end35

land.lhs.true.i338:                               ; preds = %if.end.i
  %70 = ptrtoint ptr %tx_nr_rings.i337 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_nr_rings.i337, align 4
  %add.i = add i32 %71, %tx_base.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %i.1358)
  %cmp1.i = icmp sgt i32 %add.i, %i.1358
  br i1 %cmp1.i, label %for.body28.preheader, label %land.lhs.true.i338.if.end35_crit_edge

land.lhs.true.i338.if.end35_crit_edge:            ; preds = %land.lhs.true.i338
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end35

for.body28.preheader:                             ; preds = %land.lhs.true.i338
  call void @__sanitizer_cov_trace_pc() #26
  %arrayidx29 = getelementptr i64, ptr %39, i32 8
  %72 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx29, align 8
  %arrayidx30 = getelementptr i64, ptr %buf, i32 %j.2
  %74 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %arrayidx30, align 8
  %inc32 = add i32 %j.2, 1
  %arrayidx29.1 = getelementptr i64, ptr %39, i32 9
  %75 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx29.1, align 8
  %arrayidx30.1 = getelementptr i64, ptr %buf, i32 %inc32
  %77 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %arrayidx30.1, align 8
  %inc32.1 = add i32 %j.2, 2
  %arrayidx29.2 = getelementptr i64, ptr %39, i32 10
  %78 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx29.2, align 8
  %arrayidx30.2 = getelementptr i64, ptr %buf, i32 %inc32.1
  %80 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %arrayidx30.2, align 8
  %inc32.2 = add i32 %j.2, 3
  %arrayidx29.3 = getelementptr i64, ptr %39, i32 11
  %81 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %arrayidx29.3, align 8
  %arrayidx30.3 = getelementptr i64, ptr %buf, i32 %inc32.2
  %83 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %arrayidx30.3, align 8
  %inc32.3 = add i32 %j.2, 4
  %arrayidx29.4 = getelementptr i64, ptr %39, i32 12
  %84 = ptrtoint ptr %arrayidx29.4 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %arrayidx29.4, align 8
  %arrayidx30.4 = getelementptr i64, ptr %buf, i32 %inc32.3
  %86 = ptrtoint ptr %arrayidx30.4 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %85, ptr %arrayidx30.4, align 8
  %inc32.4 = add i32 %j.2, 5
  %arrayidx29.5 = getelementptr i64, ptr %39, i32 13
  %87 = ptrtoint ptr %arrayidx29.5 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %arrayidx29.5, align 8
  %arrayidx30.5 = getelementptr i64, ptr %buf, i32 %inc32.4
  %89 = ptrtoint ptr %arrayidx30.5 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %88, ptr %arrayidx30.5, align 8
  %inc32.5 = add i32 %j.2, 6
  %arrayidx29.6 = getelementptr i64, ptr %39, i32 14
  %90 = ptrtoint ptr %arrayidx29.6 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %arrayidx29.6, align 8
  %arrayidx30.6 = getelementptr i64, ptr %buf, i32 %inc32.5
  %92 = ptrtoint ptr %arrayidx30.6 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %arrayidx30.6, align 8
  %inc32.6 = add i32 %j.2, 7
  %arrayidx29.7 = getelementptr i64, ptr %39, i32 15
  %93 = ptrtoint ptr %arrayidx29.7 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx29.7, align 8
  %arrayidx30.7 = getelementptr i64, ptr %buf, i32 %inc32.6
  %95 = ptrtoint ptr %arrayidx30.7 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %94, ptr %arrayidx30.7, align 8
  %inc32.7 = add i32 %j.2, 8
  br label %if.end35

if.end35:                                         ; preds = %for.body28.preheader, %land.lhs.true.i338.if.end35_crit_edge, %if.end.i.if.end35_crit_edge
  %j.4 = phi i32 [ %j.2, %if.end.i.if.end35_crit_edge ], [ %j.2, %land.lhs.true.i338.if.end35_crit_edge ], [ %inc32.7, %for.body28.preheader ]
  br i1 %tobool36.not, label %if.end35.skip_tpa_ring_stats_crit_edge, label %lor.lhs.false

if.end35.skip_tpa_ring_stats_crit_edge:           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #26
  br label %skip_tpa_ring_stats

lor.lhs.false:                                    ; preds = %if.end35
  %96 = ptrtoint ptr %rx_nr_rings.i331 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rx_nr_rings.i331, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %i.1358)
  %cmp.i341 = icmp sle i32 %97, %i.1358
  %brmerge = select i1 %cmp.i341, i1 true, i1 %cmp42350.not382
  br i1 %brmerge, label %lor.lhs.false.skip_tpa_ring_stats_crit_edge, label %for.body43

lor.lhs.false.skip_tpa_ring_stats_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #26
  br label %skip_tpa_ring_stats

for.body43:                                       ; preds = %lor.lhs.false
  %arrayidx44 = getelementptr i64, ptr %39, i32 16
  %98 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %arrayidx44, align 8
  %arrayidx45 = getelementptr i64, ptr %buf, i32 %j.4
  %100 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %99, ptr %arrayidx45, align 8
  %inc47 = add i32 %j.4, 1
  br i1 %exitcond.not, label %for.body43.skip_tpa_ring_stats_crit_edge, label %for.body43.1

for.body43.skip_tpa_ring_stats_crit_edge:         ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #26
  br label %skip_tpa_ring_stats

for.body43.1:                                     ; preds = %for.body43
  %arrayidx44.1 = getelementptr i64, ptr %39, i32 17
  %101 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %arrayidx44.1, align 8
  %arrayidx45.1 = getelementptr i64, ptr %buf, i32 %inc47
  %103 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %102, ptr %arrayidx45.1, align 8
  %inc47.1 = add i32 %j.4, 2
  br i1 %exitcond.not.1, label %for.body43.1.skip_tpa_ring_stats_crit_edge, label %for.body43.2

for.body43.1.skip_tpa_ring_stats_crit_edge:       ; preds = %for.body43.1
  call void @__sanitizer_cov_trace_pc() #26
  br label %skip_tpa_ring_stats

for.body43.2:                                     ; preds = %for.body43.1
  %arrayidx44.2 = getelementptr i64, ptr %39, i32 18
  %104 = ptrtoint ptr %arrayidx44.2 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %arrayidx44.2, align 8
  %arrayidx45.2 = getelementptr i64, ptr %buf, i32 %inc47.1
  %106 = ptrtoint ptr %arrayidx45.2 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %105, ptr %arrayidx45.2, align 8
  %inc47.2 = add i32 %j.4, 3
  br i1 %exitcond.not.2, label %for.body43.2.skip_tpa_ring_stats_crit_edge, label %for.body43.3

for.body43.2.skip_tpa_ring_stats_crit_edge:       ; preds = %for.body43.2
  call void @__sanitizer_cov_trace_pc() #26
  br label %skip_tpa_ring_stats

for.body43.3:                                     ; preds = %for.body43.2
  %arrayidx44.3 = getelementptr i64, ptr %39, i32 19
  %107 = ptrtoint ptr %arrayidx44.3 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %arrayidx44.3, align 8
  %arrayidx45.3 = getelementptr i64, ptr %buf, i32 %inc47.2
  %109 = ptrtoint ptr %arrayidx45.3 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %108, ptr %arrayidx45.3, align 8
  %inc47.3 = add i32 %j.4, 4
  br i1 %exitcond.not.3, label %for.body43.3.skip_tpa_ring_stats_crit_edge, label %for.body43.4

for.body43.3.skip_tpa_ring_stats_crit_edge:       ; preds = %for.body43.3
  call void @__sanitizer_cov_trace_pc() #26
  br label %skip_tpa_ring_stats

for.body43.4:                                     ; preds = %for.body43.3
  %arrayidx44.4 = getelementptr i64, ptr %39, i32 20
  %110 = ptrtoint ptr %arrayidx44.4 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %arrayidx44.4, align 8
  %arrayidx45.4 = getelementptr i64, ptr %buf, i32 %inc47.3
  %112 = ptrtoint ptr %arrayidx45.4 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %111, ptr %arrayidx45.4, align 8
  %inc47.4 = add i32 %j.4, 5
  br i1 %exitcond.not.4, label %for.body43.4.skip_tpa_ring_stats_crit_edge, label %for.body43.5

for.body43.4.skip_tpa_ring_stats_crit_edge:       ; preds = %for.body43.4
  call void @__sanitizer_cov_trace_pc() #26
  br label %skip_tpa_ring_stats

for.body43.5:                                     ; preds = %for.body43.4
  %arrayidx44.5 = getelementptr i64, ptr %39, i32 21
  %113 = ptrtoint ptr %arrayidx44.5 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %arrayidx44.5, align 8
  %arrayidx45.5 = getelementptr i64, ptr %buf, i32 %inc47.4
  %115 = ptrtoint ptr %arrayidx45.5 to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %114, ptr %arrayidx45.5, align 8
  %inc47.5 = add i32 %j.4, 6
  br i1 %exitcond.not.5, label %for.body43.5.skip_tpa_ring_stats_crit_edge, label %for.body43.6

for.body43.5.skip_tpa_ring_stats_crit_edge:       ; preds = %for.body43.5
  call void @__sanitizer_cov_trace_pc() #26
  br label %skip_tpa_ring_stats

for.body43.6:                                     ; preds = %for.body43.5
  call void @__sanitizer_cov_trace_pc() #26
  %arrayidx44.6 = getelementptr i64, ptr %39, i32 22
  %116 = ptrtoint ptr %arrayidx44.6 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %arrayidx44.6, align 8
  %arrayidx45.6 = getelementptr i64, ptr %buf, i32 %inc47.5
  %118 = ptrtoint ptr %arrayidx45.6 to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %117, ptr %arrayidx45.6, align 8
  %inc47.6 = add i32 %j.4, 7
  br label %skip_tpa_ring_stats

skip_tpa_ring_stats:                              ; preds = %for.body43.6, %for.body43.5.skip_tpa_ring_stats_crit_edge, %for.body43.4.skip_tpa_ring_stats_crit_edge, %for.body43.3.skip_tpa_ring_stats_crit_edge, %for.body43.2.skip_tpa_ring_stats_crit_edge, %for.body43.1.skip_tpa_ring_stats_crit_edge, %for.body43.skip_tpa_ring_stats_crit_edge, %lor.lhs.false.skip_tpa_ring_stats_crit_edge, %if.end35.skip_tpa_ring_stats_crit_edge
  %j.6 = phi i32 [ %j.4, %lor.lhs.false.skip_tpa_ring_stats_crit_edge ], [ %j.4, %if.end35.skip_tpa_ring_stats_crit_edge ], [ %inc47, %for.body43.skip_tpa_ring_stats_crit_edge ], [ %inc47.1, %for.body43.1.skip_tpa_ring_stats_crit_edge ], [ %inc47.2, %for.body43.2.skip_tpa_ring_stats_crit_edge ], [ %inc47.3, %for.body43.3.skip_tpa_ring_stats_crit_edge ], [ %inc47.4, %for.body43.4.skip_tpa_ring_stats_crit_edge ], [ %inc47.5, %for.body43.5.skip_tpa_ring_stats_crit_edge ], [ %inc47.6, %for.body43.6 ]
  %119 = ptrtoint ptr %rx_nr_rings.i331 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rx_nr_rings.i331, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %i.1358)
  %cmp.i343 = icmp sgt i32 %120, %i.1358
  br i1 %cmp.i343, label %for.body55.preheader, label %skip_tpa_ring_stats.if.end62_crit_edge

skip_tpa_ring_stats.if.end62_crit_edge:           ; preds = %skip_tpa_ring_stats
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end62

for.body55.preheader:                             ; preds = %skip_tpa_ring_stats
  call void @__sanitizer_cov_trace_pc() #26
  %sw_stats50 = getelementptr %struct.bnxt_napi, ptr %37, i32 0, i32 3, i32 14
  %121 = ptrtoint ptr %sw_stats50 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %sw_stats50, align 8
  %arrayidx57 = getelementptr i64, ptr %buf, i32 %j.6
  %123 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %122, ptr %arrayidx57, align 8
  %inc59 = add i32 %j.6, 1
  %arrayidx56.1 = getelementptr %struct.bnxt_napi, ptr %37, i32 0, i32 3, i32 14, i32 0, i32 1
  %124 = ptrtoint ptr %arrayidx56.1 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %arrayidx56.1, align 8
  %arrayidx57.1 = getelementptr i64, ptr %buf, i32 %inc59
  %126 = ptrtoint ptr %arrayidx57.1 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %125, ptr %arrayidx57.1, align 8
  %inc59.1 = add i32 %j.6, 2
  %arrayidx56.2 = getelementptr %struct.bnxt_napi, ptr %37, i32 0, i32 3, i32 14, i32 0, i32 2
  %127 = ptrtoint ptr %arrayidx56.2 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %arrayidx56.2, align 8
  %arrayidx57.2 = getelementptr i64, ptr %buf, i32 %inc59.1
  %129 = ptrtoint ptr %arrayidx57.2 to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %128, ptr %arrayidx57.2, align 8
  %inc59.2 = add i32 %j.6, 3
  br label %if.end62

if.end62:                                         ; preds = %for.body55.preheader, %skip_tpa_ring_stats.if.end62_crit_edge
  %j.8 = phi i32 [ %j.6, %skip_tpa_ring_stats.if.end62_crit_edge ], [ %inc59.2, %for.body55.preheader ]
  %cmn = getelementptr inbounds %struct.bnxt_napi, ptr %37, i32 0, i32 3, i32 14, i32 1
  %130 = ptrtoint ptr %cmn to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %cmn, align 8
  %arrayidx68 = getelementptr i64, ptr %buf, i32 %j.8
  %132 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %131, ptr %arrayidx68, align 8
  %inc70 = add i32 %j.8, 1
  %add.ptr = getelementptr i64, ptr %39, i32 3
  %133 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %add.ptr, align 8
  %135 = load i64, ptr @bnxt_sw_func_stats, align 8
  %add73 = add i64 %135, %134
  store i64 %add73, ptr @bnxt_sw_func_stats, align 8
  %add.ptr74 = getelementptr i64, ptr %39, i32 12
  %136 = ptrtoint ptr %add.ptr74 to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %add.ptr74, align 8
  %138 = load i64, ptr getelementptr inbounds ([3 x %struct.anon.174], ptr @bnxt_sw_func_stats, i32 0, i32 1), align 8
  %add75 = add i64 %138, %137
  store i64 %add75, ptr getelementptr inbounds ([3 x %struct.anon.174], ptr @bnxt_sw_func_stats, i32 0, i32 1), align 8
  %rx_netpoll_discards = getelementptr inbounds %struct.bnxt_napi, ptr %37, i32 0, i32 3, i32 14, i32 0, i32 4
  %139 = ptrtoint ptr %rx_netpoll_discards to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %rx_netpoll_discards, align 8
  %141 = load i64, ptr getelementptr inbounds ([3 x %struct.anon.174], ptr @bnxt_sw_func_stats, i32 0, i32 2), align 8
  %add78 = add i64 %141, %140
  store i64 %add78, ptr getelementptr inbounds ([3 x %struct.anon.174], ptr @bnxt_sw_func_stats, i32 0, i32 2), align 8
  %inc80 = add nuw i32 %i.1358, 1
  %142 = ptrtoint ptr %cp_nr_rings to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %cp_nr_rings, align 4
  %cmp5 = icmp ult i32 %inc80, %143
  br i1 %cmp5, label %if.end62.for.body6_crit_edge, label %if.end62.for.cond82.preheader_crit_edge

if.end62.for.cond82.preheader_crit_edge:          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.cond82.preheader

if.end62.for.body6_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body6

skip_ring_stats:                                  ; preds = %for.cond82.preheader, %bnxt_get_num_ring_stats.exit
  %j.11 = phi i32 [ %add, %bnxt_get_num_ring_stats.exit ], [ %inc90.2, %for.cond82.preheader ]
  %flags = getelementptr i8, ptr %dev, i32 2400
  %144 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %flags, align 8
  %and = and i32 %145, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool92.not = icmp eq i32 %and, 0
  br i1 %tobool92.not, label %skip_ring_stats.if.end106_crit_edge, label %if.then93

skip_ring_stats.if.end106_crit_edge:              ; preds = %skip_ring_stats
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end106

if.then93:                                        ; preds = %skip_ring_stats
  %port_stats94 = getelementptr i8, ptr %dev, i32 2912
  %146 = ptrtoint ptr %port_stats94 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %port_stats94, align 8
  br label %for.body98

for.body98:                                       ; preds = %for.body98.for.body98_crit_edge, %if.then93
  %i.3363 = phi i32 [ 0, %if.then93 ], [ %inc103, %for.body98.for.body98_crit_edge ]
  %j.12362 = phi i32 [ %j.11, %if.then93 ], [ %inc104, %for.body98.for.body98_crit_edge ]
  %arrayidx99 = getelementptr [79 x %struct.anon.175], ptr @bnxt_port_stats_arr, i32 0, i32 %i.3363
  %148 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx99, align 4
  %add.ptr100 = getelementptr i64, ptr %147, i32 %149
  %150 = ptrtoint ptr %add.ptr100 to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %add.ptr100, align 8
  %arrayidx101 = getelementptr i64, ptr %buf, i32 %j.12362
  %152 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %151, ptr %arrayidx101, align 8
  %inc103 = add nuw nsw i32 %i.3363, 1
  %inc104 = add i32 %j.12362, 1
  %exitcond387.not = icmp eq i32 %inc103, 79
  br i1 %exitcond387.not, label %for.body98.if.end106_crit_edge, label %for.body98.for.body98_crit_edge

for.body98.for.body98_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body98

for.body98.if.end106_crit_edge:                   ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end106

if.end106:                                        ; preds = %for.body98.if.end106_crit_edge, %skip_ring_stats.if.end106_crit_edge
  %j.13 = phi i32 [ %j.11, %skip_ring_stats.if.end106_crit_edge ], [ %inc104, %for.body98.if.end106_crit_edge ]
  %153 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %flags, align 8
  %and108 = and i32 %154, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end106.if.end208_crit_edge, label %if.then110

if.end106.if.end208_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end208

if.then110:                                       ; preds = %if.end106
  %rx_port_stats_ext111 = getelementptr i8, ptr %dev, i32 2932
  %155 = ptrtoint ptr %rx_port_stats_ext111 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rx_port_stats_ext111, align 4
  %tx_port_stats_ext113 = getelementptr i8, ptr %dev, i32 2952
  %157 = ptrtoint ptr %tx_port_stats_ext113 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %tx_port_stats_ext113, align 8
  %fw_rx_stats_ext_size = getelementptr i8, ptr %dev, i32 2972
  %159 = ptrtoint ptr %fw_rx_stats_ext_size to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %fw_rx_stats_ext_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %160)
  %cmp116365.not = icmp eq i16 %160, 0
  br i1 %cmp116365.not, label %if.then110.for.cond127.preheader_crit_edge, label %if.then110.for.body118_crit_edge

if.then110.for.body118_crit_edge:                 ; preds = %if.then110
  br label %for.body118

if.then110.for.cond127.preheader_crit_edge:       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.cond127.preheader

for.cond127.preheader:                            ; preds = %for.body118.for.cond127.preheader_crit_edge, %if.then110.for.cond127.preheader_crit_edge
  %j.14.lcssa = phi i32 [ %j.13, %if.then110.for.cond127.preheader_crit_edge ], [ %inc125, %for.body118.for.cond127.preheader_crit_edge ]
  %fw_tx_stats_ext_size = getelementptr i8, ptr %dev, i32 2974
  %161 = ptrtoint ptr %fw_tx_stats_ext_size to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %fw_tx_stats_ext_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %162)
  %cmp129370.not = icmp eq i16 %162, 0
  br i1 %cmp129370.not, label %for.cond127.preheader.for.end139_crit_edge, label %for.cond127.preheader.for.body131_crit_edge

for.cond127.preheader.for.body131_crit_edge:      ; preds = %for.cond127.preheader
  br label %for.body131

for.cond127.preheader.for.end139_crit_edge:       ; preds = %for.cond127.preheader
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end139

for.body118:                                      ; preds = %for.body118.for.body118_crit_edge, %if.then110.for.body118_crit_edge
  %i.4367 = phi i32 [ %inc124, %for.body118.for.body118_crit_edge ], [ 0, %if.then110.for.body118_crit_edge ]
  %j.14366 = phi i32 [ %inc125, %for.body118.for.body118_crit_edge ], [ %j.13, %if.then110.for.body118_crit_edge ]
  %arrayidx119 = getelementptr [59 x %struct.anon.176], ptr @bnxt_port_stats_ext_arr, i32 0, i32 %i.4367
  %163 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx119, align 4
  %add.ptr121 = getelementptr i64, ptr %156, i32 %164
  %165 = ptrtoint ptr %add.ptr121 to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %add.ptr121, align 8
  %arrayidx122 = getelementptr i64, ptr %buf, i32 %j.14366
  %167 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %166, ptr %arrayidx122, align 8
  %inc124 = add nuw nsw i32 %i.4367, 1
  %inc125 = add i32 %j.14366, 1
  %168 = ptrtoint ptr %fw_rx_stats_ext_size to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %fw_rx_stats_ext_size, align 4
  %conv = zext i16 %169 to i32
  %cmp116 = icmp ult i32 %inc124, %conv
  br i1 %cmp116, label %for.body118.for.body118_crit_edge, label %for.body118.for.cond127.preheader_crit_edge

for.body118.for.cond127.preheader_crit_edge:      ; preds = %for.body118
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.cond127.preheader

for.body118.for.body118_crit_edge:                ; preds = %for.body118
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body118

for.body131:                                      ; preds = %for.body131.for.body131_crit_edge, %for.cond127.preheader.for.body131_crit_edge
  %i.5372 = phi i32 [ %inc137, %for.body131.for.body131_crit_edge ], [ 0, %for.cond127.preheader.for.body131_crit_edge ]
  %j.15371 = phi i32 [ %inc138, %for.body131.for.body131_crit_edge ], [ %j.14.lcssa, %for.cond127.preheader.for.body131_crit_edge ]
  %arrayidx132 = getelementptr [32 x %struct.anon.177], ptr @bnxt_tx_port_stats_ext_arr, i32 0, i32 %i.5372
  %170 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx132, align 4
  %add.ptr134 = getelementptr i64, ptr %158, i32 %171
  %172 = ptrtoint ptr %add.ptr134 to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %add.ptr134, align 8
  %arrayidx135 = getelementptr i64, ptr %buf, i32 %j.15371
  %174 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %173, ptr %arrayidx135, align 8
  %inc137 = add nuw nsw i32 %i.5372, 1
  %inc138 = add i32 %j.15371, 1
  %175 = ptrtoint ptr %fw_tx_stats_ext_size to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %fw_tx_stats_ext_size, align 2
  %conv128 = zext i16 %176 to i32
  %cmp129 = icmp ult i32 %inc137, %conv128
  br i1 %cmp129, label %for.body131.for.body131_crit_edge, label %for.body131.for.end139_crit_edge

for.body131.for.end139_crit_edge:                 ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end139

for.body131.for.body131_crit_edge:                ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body131

for.end139:                                       ; preds = %for.body131.for.end139_crit_edge, %for.cond127.preheader.for.end139_crit_edge
  %j.15.lcssa = phi i32 [ %j.14.lcssa, %for.cond127.preheader.for.end139_crit_edge ], [ %inc138, %for.body131.for.end139_crit_edge ]
  %pri2cos_valid = getelementptr i8, ptr %dev, i32 2986
  %177 = ptrtoint ptr %pri2cos_valid to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %pri2cos_valid, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool140.not = icmp eq i8 %178, 0
  br i1 %tobool140.not, label %for.end139.if.end208_crit_edge, label %for.body145.preheader

for.end139.if.end208_crit_edge:                   ; preds = %for.end139
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end208

for.body145.preheader:                            ; preds = %for.end139
  call void @__sanitizer_cov_trace_pc() #26
  %arrayidx147 = getelementptr i8, ptr %dev, i32 2978
  %179 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx147, align 1
  %conv148 = zext i8 %180 to i32
  %add149 = add nuw nsw i32 %conv148, 5
  %add.ptr150 = getelementptr i64, ptr %156, i32 %add149
  %181 = ptrtoint ptr %add.ptr150 to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %add.ptr150, align 8
  %arrayidx151 = getelementptr i64, ptr %buf, i32 %j.15.lcssa
  %183 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store8_noabort(i32 %183)
  store i64 %182, ptr %arrayidx151, align 8
  %inc154 = add i32 %j.15.lcssa, 1
  %arrayidx147.1 = getelementptr i8, ptr %dev, i32 2979
  %184 = ptrtoint ptr %arrayidx147.1 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx147.1, align 1
  %conv148.1 = zext i8 %185 to i32
  %add149.1 = add nuw nsw i32 %conv148.1, 5
  %add.ptr150.1 = getelementptr i64, ptr %156, i32 %add149.1
  %186 = ptrtoint ptr %add.ptr150.1 to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %add.ptr150.1, align 8
  %arrayidx151.1 = getelementptr i64, ptr %buf, i32 %inc154
  %188 = ptrtoint ptr %arrayidx151.1 to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 %187, ptr %arrayidx151.1, align 8
  %inc154.1 = add i32 %j.15.lcssa, 2
  %arrayidx147.2 = getelementptr i8, ptr %dev, i32 2980
  %189 = ptrtoint ptr %arrayidx147.2 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx147.2, align 1
  %conv148.2 = zext i8 %190 to i32
  %add149.2 = add nuw nsw i32 %conv148.2, 5
  %add.ptr150.2 = getelementptr i64, ptr %156, i32 %add149.2
  %191 = ptrtoint ptr %add.ptr150.2 to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %add.ptr150.2, align 8
  %arrayidx151.2 = getelementptr i64, ptr %buf, i32 %inc154.1
  %193 = ptrtoint ptr %arrayidx151.2 to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 %192, ptr %arrayidx151.2, align 8
  %inc154.2 = add i32 %j.15.lcssa, 3
  %arrayidx147.3 = getelementptr i8, ptr %dev, i32 2981
  %194 = ptrtoint ptr %arrayidx147.3 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx147.3, align 1
  %conv148.3 = zext i8 %195 to i32
  %add149.3 = add nuw nsw i32 %conv148.3, 5
  %add.ptr150.3 = getelementptr i64, ptr %156, i32 %add149.3
  %196 = ptrtoint ptr %add.ptr150.3 to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %add.ptr150.3, align 8
  %arrayidx151.3 = getelementptr i64, ptr %buf, i32 %inc154.2
  %198 = ptrtoint ptr %arrayidx151.3 to i32
  call void @__asan_store8_noabort(i32 %198)
  store i64 %197, ptr %arrayidx151.3, align 8
  %inc154.3 = add i32 %j.15.lcssa, 4
  %arrayidx147.4 = getelementptr i8, ptr %dev, i32 2982
  %199 = ptrtoint ptr %arrayidx147.4 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx147.4, align 1
  %conv148.4 = zext i8 %200 to i32
  %add149.4 = add nuw nsw i32 %conv148.4, 5
  %add.ptr150.4 = getelementptr i64, ptr %156, i32 %add149.4
  %201 = ptrtoint ptr %add.ptr150.4 to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %add.ptr150.4, align 8
  %arrayidx151.4 = getelementptr i64, ptr %buf, i32 %inc154.3
  %203 = ptrtoint ptr %arrayidx151.4 to i32
  call void @__asan_store8_noabort(i32 %203)
  store i64 %202, ptr %arrayidx151.4, align 8
  %inc154.4 = add i32 %j.15.lcssa, 5
  %arrayidx147.5 = getelementptr i8, ptr %dev, i32 2983
  %204 = ptrtoint ptr %arrayidx147.5 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx147.5, align 1
  %conv148.5 = zext i8 %205 to i32
  %add149.5 = add nuw nsw i32 %conv148.5, 5
  %add.ptr150.5 = getelementptr i64, ptr %156, i32 %add149.5
  %206 = ptrtoint ptr %add.ptr150.5 to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %add.ptr150.5, align 8
  %arrayidx151.5 = getelementptr i64, ptr %buf, i32 %inc154.4
  %208 = ptrtoint ptr %arrayidx151.5 to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 %207, ptr %arrayidx151.5, align 8
  %inc154.5 = add i32 %j.15.lcssa, 6
  %arrayidx147.6 = getelementptr i8, ptr %dev, i32 2984
  %209 = ptrtoint ptr %arrayidx147.6 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %arrayidx147.6, align 1
  %conv148.6 = zext i8 %210 to i32
  %add149.6 = add nuw nsw i32 %conv148.6, 5
  %add.ptr150.6 = getelementptr i64, ptr %156, i32 %add149.6
  %211 = ptrtoint ptr %add.ptr150.6 to i32
  call void @__asan_load8_noabort(i32 %211)
  %212 = load i64, ptr %add.ptr150.6, align 8
  %arrayidx151.6 = getelementptr i64, ptr %buf, i32 %inc154.5
  %213 = ptrtoint ptr %arrayidx151.6 to i32
  call void @__asan_store8_noabort(i32 %213)
  store i64 %212, ptr %arrayidx151.6, align 8
  %inc154.6 = add i32 %j.15.lcssa, 7
  %arrayidx147.7 = getelementptr i8, ptr %dev, i32 2985
  %214 = ptrtoint ptr %arrayidx147.7 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %arrayidx147.7, align 1
  %conv148.7 = zext i8 %215 to i32
  %add149.7 = add nuw nsw i32 %conv148.7, 5
  %add.ptr150.7 = getelementptr i64, ptr %156, i32 %add149.7
  %216 = ptrtoint ptr %add.ptr150.7 to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %add.ptr150.7, align 8
  %arrayidx151.7 = getelementptr i64, ptr %buf, i32 %inc154.6
  %218 = ptrtoint ptr %arrayidx151.7 to i32
  call void @__asan_store8_noabort(i32 %218)
  store i64 %217, ptr %arrayidx151.7, align 8
  %inc154.7 = add i32 %j.15.lcssa, 8
  %219 = load i8, ptr %arrayidx147, align 1
  %conv165 = zext i8 %219 to i32
  %add166 = add nuw nsw i32 %conv165, 13
  %add.ptr167 = getelementptr i64, ptr %156, i32 %add166
  %220 = ptrtoint ptr %add.ptr167 to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %add.ptr167, align 8
  %arrayidx168 = getelementptr i64, ptr %buf, i32 %inc154.7
  %222 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_store8_noabort(i32 %222)
  store i64 %221, ptr %arrayidx168, align 8
  %inc171 = add i32 %j.15.lcssa, 9
  %223 = load i8, ptr %arrayidx147.1, align 1
  %conv165.1 = zext i8 %223 to i32
  %add166.1 = add nuw nsw i32 %conv165.1, 13
  %add.ptr167.1 = getelementptr i64, ptr %156, i32 %add166.1
  %224 = ptrtoint ptr %add.ptr167.1 to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %add.ptr167.1, align 8
  %arrayidx168.1 = getelementptr i64, ptr %buf, i32 %inc171
  %226 = ptrtoint ptr %arrayidx168.1 to i32
  call void @__asan_store8_noabort(i32 %226)
  store i64 %225, ptr %arrayidx168.1, align 8
  %inc171.1 = add i32 %j.15.lcssa, 10
  %227 = load i8, ptr %arrayidx147.2, align 1
  %conv165.2 = zext i8 %227 to i32
  %add166.2 = add nuw nsw i32 %conv165.2, 13
  %add.ptr167.2 = getelementptr i64, ptr %156, i32 %add166.2
  %228 = ptrtoint ptr %add.ptr167.2 to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %add.ptr167.2, align 8
  %arrayidx168.2 = getelementptr i64, ptr %buf, i32 %inc171.1
  %230 = ptrtoint ptr %arrayidx168.2 to i32
  call void @__asan_store8_noabort(i32 %230)
  store i64 %229, ptr %arrayidx168.2, align 8
  %inc171.2 = add i32 %j.15.lcssa, 11
  %231 = load i8, ptr %arrayidx147.3, align 1
  %conv165.3 = zext i8 %231 to i32
  %add166.3 = add nuw nsw i32 %conv165.3, 13
  %add.ptr167.3 = getelementptr i64, ptr %156, i32 %add166.3
  %232 = ptrtoint ptr %add.ptr167.3 to i32
  call void @__asan_load8_noabort(i32 %232)
  %233 = load i64, ptr %add.ptr167.3, align 8
  %arrayidx168.3 = getelementptr i64, ptr %buf, i32 %inc171.2
  %234 = ptrtoint ptr %arrayidx168.3 to i32
  call void @__asan_store8_noabort(i32 %234)
  store i64 %233, ptr %arrayidx168.3, align 8
  %inc171.3 = add i32 %j.15.lcssa, 12
  %235 = load i8, ptr %arrayidx147.4, align 1
  %conv165.4 = zext i8 %235 to i32
  %add166.4 = add nuw nsw i32 %conv165.4, 13
  %add.ptr167.4 = getelementptr i64, ptr %156, i32 %add166.4
  %236 = ptrtoint ptr %add.ptr167.4 to i32
  call void @__asan_load8_noabort(i32 %236)
  %237 = load i64, ptr %add.ptr167.4, align 8
  %arrayidx168.4 = getelementptr i64, ptr %buf, i32 %inc171.3
  %238 = ptrtoint ptr %arrayidx168.4 to i32
  call void @__asan_store8_noabort(i32 %238)
  store i64 %237, ptr %arrayidx168.4, align 8
  %inc171.4 = add i32 %j.15.lcssa, 13
  %239 = load i8, ptr %arrayidx147.5, align 1
  %conv165.5 = zext i8 %239 to i32
  %add166.5 = add nuw nsw i32 %conv165.5, 13
  %add.ptr167.5 = getelementptr i64, ptr %156, i32 %add166.5
  %240 = ptrtoint ptr %add.ptr167.5 to i32
  call void @__asan_load8_noabort(i32 %240)
  %241 = load i64, ptr %add.ptr167.5, align 8
  %arrayidx168.5 = getelementptr i64, ptr %buf, i32 %inc171.4
  %242 = ptrtoint ptr %arrayidx168.5 to i32
  call void @__asan_store8_noabort(i32 %242)
  store i64 %241, ptr %arrayidx168.5, align 8
  %inc171.5 = add i32 %j.15.lcssa, 14
  %243 = load i8, ptr %arrayidx147.6, align 1
  %conv165.6 = zext i8 %243 to i32
  %add166.6 = add nuw nsw i32 %conv165.6, 13
  %add.ptr167.6 = getelementptr i64, ptr %156, i32 %add166.6
  %244 = ptrtoint ptr %add.ptr167.6 to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %add.ptr167.6, align 8
  %arrayidx168.6 = getelementptr i64, ptr %buf, i32 %inc171.5
  %246 = ptrtoint ptr %arrayidx168.6 to i32
  call void @__asan_store8_noabort(i32 %246)
  store i64 %245, ptr %arrayidx168.6, align 8
  %inc171.6 = add i32 %j.15.lcssa, 15
  %247 = load i8, ptr %arrayidx147.7, align 1
  %conv165.7 = zext i8 %247 to i32
  %add166.7 = add nuw nsw i32 %conv165.7, 13
  %add.ptr167.7 = getelementptr i64, ptr %156, i32 %add166.7
  %248 = ptrtoint ptr %add.ptr167.7 to i32
  call void @__asan_load8_noabort(i32 %248)
  %249 = load i64, ptr %add.ptr167.7, align 8
  %arrayidx168.7 = getelementptr i64, ptr %buf, i32 %inc171.6
  %250 = ptrtoint ptr %arrayidx168.7 to i32
  call void @__asan_store8_noabort(i32 %250)
  store i64 %249, ptr %arrayidx168.7, align 8
  %inc171.7 = add i32 %j.15.lcssa, 16
  %251 = load i8, ptr %arrayidx147, align 1
  %conv182 = zext i8 %251 to i32
  %add.ptr184 = getelementptr i64, ptr %158, i32 %conv182
  %252 = ptrtoint ptr %add.ptr184 to i32
  call void @__asan_load8_noabort(i32 %252)
  %253 = load i64, ptr %add.ptr184, align 8
  %arrayidx185 = getelementptr i64, ptr %buf, i32 %inc171.7
  %254 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_store8_noabort(i32 %254)
  store i64 %253, ptr %arrayidx185, align 8
  %inc188 = add i32 %j.15.lcssa, 17
  %255 = load i8, ptr %arrayidx147.1, align 1
  %conv182.1 = zext i8 %255 to i32
  %add.ptr184.1 = getelementptr i64, ptr %158, i32 %conv182.1
  %256 = ptrtoint ptr %add.ptr184.1 to i32
  call void @__asan_load8_noabort(i32 %256)
  %257 = load i64, ptr %add.ptr184.1, align 8
  %arrayidx185.1 = getelementptr i64, ptr %buf, i32 %inc188
  %258 = ptrtoint ptr %arrayidx185.1 to i32
  call void @__asan_store8_noabort(i32 %258)
  store i64 %257, ptr %arrayidx185.1, align 8
  %inc188.1 = add i32 %j.15.lcssa, 18
  %259 = load i8, ptr %arrayidx147.2, align 1
  %conv182.2 = zext i8 %259 to i32
  %add.ptr184.2 = getelementptr i64, ptr %158, i32 %conv182.2
  %260 = ptrtoint ptr %add.ptr184.2 to i32
  call void @__asan_load8_noabort(i32 %260)
  %261 = load i64, ptr %add.ptr184.2, align 8
  %arrayidx185.2 = getelementptr i64, ptr %buf, i32 %inc188.1
  %262 = ptrtoint ptr %arrayidx185.2 to i32
  call void @__asan_store8_noabort(i32 %262)
  store i64 %261, ptr %arrayidx185.2, align 8
  %inc188.2 = add i32 %j.15.lcssa, 19
  %263 = load i8, ptr %arrayidx147.3, align 1
  %conv182.3 = zext i8 %263 to i32
  %add.ptr184.3 = getelementptr i64, ptr %158, i32 %conv182.3
  %264 = ptrtoint ptr %add.ptr184.3 to i32
  call void @__asan_load8_noabort(i32 %264)
  %265 = load i64, ptr %add.ptr184.3, align 8
  %arrayidx185.3 = getelementptr i64, ptr %buf, i32 %inc188.2
  %266 = ptrtoint ptr %arrayidx185.3 to i32
  call void @__asan_store8_noabort(i32 %266)
  store i64 %265, ptr %arrayidx185.3, align 8
  %inc188.3 = add i32 %j.15.lcssa, 20
  %267 = load i8, ptr %arrayidx147.4, align 1
  %conv182.4 = zext i8 %267 to i32
  %add.ptr184.4 = getelementptr i64, ptr %158, i32 %conv182.4
  %268 = ptrtoint ptr %add.ptr184.4 to i32
  call void @__asan_load8_noabort(i32 %268)
  %269 = load i64, ptr %add.ptr184.4, align 8
  %arrayidx185.4 = getelementptr i64, ptr %buf, i32 %inc188.3
  %270 = ptrtoint ptr %arrayidx185.4 to i32
  call void @__asan_store8_noabort(i32 %270)
  store i64 %269, ptr %arrayidx185.4, align 8
  %inc188.4 = add i32 %j.15.lcssa, 21
  %271 = load i8, ptr %arrayidx147.5, align 1
  %conv182.5 = zext i8 %271 to i32
  %add.ptr184.5 = getelementptr i64, ptr %158, i32 %conv182.5
  %272 = ptrtoint ptr %add.ptr184.5 to i32
  call void @__asan_load8_noabort(i32 %272)
  %273 = load i64, ptr %add.ptr184.5, align 8
  %arrayidx185.5 = getelementptr i64, ptr %buf, i32 %inc188.4
  %274 = ptrtoint ptr %arrayidx185.5 to i32
  call void @__asan_store8_noabort(i32 %274)
  store i64 %273, ptr %arrayidx185.5, align 8
  %inc188.5 = add i32 %j.15.lcssa, 22
  %275 = load i8, ptr %arrayidx147.6, align 1
  %conv182.6 = zext i8 %275 to i32
  %add.ptr184.6 = getelementptr i64, ptr %158, i32 %conv182.6
  %276 = ptrtoint ptr %add.ptr184.6 to i32
  call void @__asan_load8_noabort(i32 %276)
  %277 = load i64, ptr %add.ptr184.6, align 8
  %arrayidx185.6 = getelementptr i64, ptr %buf, i32 %inc188.5
  %278 = ptrtoint ptr %arrayidx185.6 to i32
  call void @__asan_store8_noabort(i32 %278)
  store i64 %277, ptr %arrayidx185.6, align 8
  %inc188.6 = add i32 %j.15.lcssa, 23
  %279 = load i8, ptr %arrayidx147.7, align 1
  %conv182.7 = zext i8 %279 to i32
  %add.ptr184.7 = getelementptr i64, ptr %158, i32 %conv182.7
  %280 = ptrtoint ptr %add.ptr184.7 to i32
  call void @__asan_load8_noabort(i32 %280)
  %281 = load i64, ptr %add.ptr184.7, align 8
  %arrayidx185.7 = getelementptr i64, ptr %buf, i32 %inc188.6
  %282 = ptrtoint ptr %arrayidx185.7 to i32
  call void @__asan_store8_noabort(i32 %282)
  store i64 %281, ptr %arrayidx185.7, align 8
  %inc188.7 = add i32 %j.15.lcssa, 24
  %283 = load i8, ptr %arrayidx147, align 1
  %conv199 = zext i8 %283 to i32
  %add200 = add nuw nsw i32 %conv199, 8
  %add.ptr201 = getelementptr i64, ptr %158, i32 %add200
  %284 = ptrtoint ptr %add.ptr201 to i32
  call void @__asan_load8_noabort(i32 %284)
  %285 = load i64, ptr %add.ptr201, align 8
  %arrayidx202 = getelementptr i64, ptr %buf, i32 %inc188.7
  %286 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_store8_noabort(i32 %286)
  store i64 %285, ptr %arrayidx202, align 8
  %inc205 = add i32 %j.15.lcssa, 25
  %287 = load i8, ptr %arrayidx147.1, align 1
  %conv199.1 = zext i8 %287 to i32
  %add200.1 = add nuw nsw i32 %conv199.1, 8
  %add.ptr201.1 = getelementptr i64, ptr %158, i32 %add200.1
  %288 = ptrtoint ptr %add.ptr201.1 to i32
  call void @__asan_load8_noabort(i32 %288)
  %289 = load i64, ptr %add.ptr201.1, align 8
  %arrayidx202.1 = getelementptr i64, ptr %buf, i32 %inc205
  %290 = ptrtoint ptr %arrayidx202.1 to i32
  call void @__asan_store8_noabort(i32 %290)
  store i64 %289, ptr %arrayidx202.1, align 8
  %inc205.1 = add i32 %j.15.lcssa, 26
  %291 = load i8, ptr %arrayidx147.2, align 1
  %conv199.2 = zext i8 %291 to i32
  %add200.2 = add nuw nsw i32 %conv199.2, 8
  %add.ptr201.2 = getelementptr i64, ptr %158, i32 %add200.2
  %292 = ptrtoint ptr %add.ptr201.2 to i32
  call void @__asan_load8_noabort(i32 %292)
  %293 = load i64, ptr %add.ptr201.2, align 8
  %arrayidx202.2 = getelementptr i64, ptr %buf, i32 %inc205.1
  %294 = ptrtoint ptr %arrayidx202.2 to i32
  call void @__asan_store8_noabort(i32 %294)
  store i64 %293, ptr %arrayidx202.2, align 8
  %inc205.2 = add i32 %j.15.lcssa, 27
  %295 = load i8, ptr %arrayidx147.3, align 1
  %conv199.3 = zext i8 %295 to i32
  %add200.3 = add nuw nsw i32 %conv199.3, 8
  %add.ptr201.3 = getelementptr i64, ptr %158, i32 %add200.3
  %296 = ptrtoint ptr %add.ptr201.3 to i32
  call void @__asan_load8_noabort(i32 %296)
  %297 = load i64, ptr %add.ptr201.3, align 8
  %arrayidx202.3 = getelementptr i64, ptr %buf, i32 %inc205.2
  %298 = ptrtoint ptr %arrayidx202.3 to i32
  call void @__asan_store8_noabort(i32 %298)
  store i64 %297, ptr %arrayidx202.3, align 8
  %inc205.3 = add i32 %j.15.lcssa, 28
  %299 = load i8, ptr %arrayidx147.4, align 1
  %conv199.4 = zext i8 %299 to i32
  %add200.4 = add nuw nsw i32 %conv199.4, 8
  %add.ptr201.4 = getelementptr i64, ptr %158, i32 %add200.4
  %300 = ptrtoint ptr %add.ptr201.4 to i32
  call void @__asan_load8_noabort(i32 %300)
  %301 = load i64, ptr %add.ptr201.4, align 8
  %arrayidx202.4 = getelementptr i64, ptr %buf, i32 %inc205.3
  %302 = ptrtoint ptr %arrayidx202.4 to i32
  call void @__asan_store8_noabort(i32 %302)
  store i64 %301, ptr %arrayidx202.4, align 8
  %inc205.4 = add i32 %j.15.lcssa, 29
  %303 = load i8, ptr %arrayidx147.5, align 1
  %conv199.5 = zext i8 %303 to i32
  %add200.5 = add nuw nsw i32 %conv199.5, 8
  %add.ptr201.5 = getelementptr i64, ptr %158, i32 %add200.5
  %304 = ptrtoint ptr %add.ptr201.5 to i32
  call void @__asan_load8_noabort(i32 %304)
  %305 = load i64, ptr %add.ptr201.5, align 8
  %arrayidx202.5 = getelementptr i64, ptr %buf, i32 %inc205.4
  %306 = ptrtoint ptr %arrayidx202.5 to i32
  call void @__asan_store8_noabort(i32 %306)
  store i64 %305, ptr %arrayidx202.5, align 8
  %inc205.5 = add i32 %j.15.lcssa, 30
  %307 = load i8, ptr %arrayidx147.6, align 1
  %conv199.6 = zext i8 %307 to i32
  %add200.6 = add nuw nsw i32 %conv199.6, 8
  %add.ptr201.6 = getelementptr i64, ptr %158, i32 %add200.6
  %308 = ptrtoint ptr %add.ptr201.6 to i32
  call void @__asan_load8_noabort(i32 %308)
  %309 = load i64, ptr %add.ptr201.6, align 8
  %arrayidx202.6 = getelementptr i64, ptr %buf, i32 %inc205.5
  %310 = ptrtoint ptr %arrayidx202.6 to i32
  call void @__asan_store8_noabort(i32 %310)
  store i64 %309, ptr %arrayidx202.6, align 8
  %inc205.6 = add i32 %j.15.lcssa, 31
  %311 = load i8, ptr %arrayidx147.7, align 1
  %conv199.7 = zext i8 %311 to i32
  %add200.7 = add nuw nsw i32 %conv199.7, 8
  %add.ptr201.7 = getelementptr i64, ptr %158, i32 %add200.7
  %312 = ptrtoint ptr %add.ptr201.7 to i32
  call void @__asan_load8_noabort(i32 %312)
  %313 = load i64, ptr %add.ptr201.7, align 8
  %arrayidx202.7 = getelementptr i64, ptr %buf, i32 %inc205.6
  %314 = ptrtoint ptr %arrayidx202.7 to i32
  call void @__asan_store8_noabort(i32 %314)
  store i64 %313, ptr %arrayidx202.7, align 8
  br label %if.end208

if.end208:                                        ; preds = %for.body145.preheader, %for.end139.if.end208_crit_edge, %if.end106.if.end208_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bnxt_get_sset_count(ptr nocapture noundef readonly %dev, i32 noundef %sset) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %sset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %sset, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %flags.i.i.i = getelementptr i8, ptr %dev, i32 2400
  %1 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i.i.i, align 8
  %and.i.i.i = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %sw.bb.bnxt_get_num_ring_stats.exit.i_crit_edge

sw.bb.bnxt_get_num_ring_stats.exit.i_crit_edge:   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_get_num_ring_stats.exit.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb
  %and2.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.land.lhs.true5.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

land.lhs.true.i.i.i.land.lhs.true5.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %land.lhs.true5.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true.i.i.i
  %max_tpa_v2.i.i.i = getelementptr i8, ptr %dev, i32 2432
  %3 = ptrtoint ptr %max_tpa_v2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %max_tpa_v2.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool4.not.i.i.i = icmp eq i16 %4, 0
  br i1 %tobool4.not.i.i.i, label %lor.lhs.false.i.i.i.bnxt_get_num_ring_stats.exit.i_crit_edge, label %lor.lhs.false.i.i.i.land.lhs.true5.i.i.i_crit_edge

lor.lhs.false.i.i.i.land.lhs.true5.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %land.lhs.true5.i.i.i

lor.lhs.false.i.i.i.bnxt_get_num_ring_stats.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_get_num_ring_stats.exit.i

land.lhs.true5.i.i.i:                             ; preds = %lor.lhs.false.i.i.i.land.lhs.true5.i.i.i_crit_edge, %land.lhs.true.i.i.i.land.lhs.true5.i.i.i_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %5 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %5)
  %cmp.i.not.i.i.i = icmp eq i64 %5, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %land.lhs.true5.i.i.i.bnxt_get_num_ring_stats.exit.i_crit_edge

land.lhs.true5.i.i.i.bnxt_get_num_ring_stats.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_get_num_ring_stats.exit.i

if.then.i.i.i:                                    ; preds = %land.lhs.true5.i.i.i
  %max_tpa_v26.i.i.i = getelementptr i8, ptr %dev, i32 2432
  %6 = ptrtoint ptr %max_tpa_v26.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max_tpa_v26.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool7.not.i.i.i = icmp eq i16 %7, 0
  br i1 %tobool7.not.i.i.i, label %if.then.i.i.i.bnxt_get_num_ring_stats.exit.i_crit_edge, label %if.then8.i.i.i

if.then.i.i.i.bnxt_get_num_ring_stats.exit.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_get_num_ring_stats.exit.i

if.then8.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %chip_num.i.i.i = getelementptr i8, ptr %dev, i32 2320
  %8 = ptrtoint ptr %chip_num.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %chip_num.i.i.i, align 8
  %.off.i.i.i = add i16 %9, -5968
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %.off.i.i.i)
  %switch.i.i.i = icmp ult i16 %.off.i.i.i, 3
  %phi.bo.i.i = select i1 %switch.i.i.i, i32 16, i32 17
  br label %bnxt_get_num_ring_stats.exit.i

bnxt_get_num_ring_stats.exit.i:                   ; preds = %if.then8.i.i.i, %if.then.i.i.i.bnxt_get_num_ring_stats.exit.i_crit_edge, %land.lhs.true5.i.i.i.bnxt_get_num_ring_stats.exit.i_crit_edge, %lor.lhs.false.i.i.i.bnxt_get_num_ring_stats.exit.i_crit_edge, %sw.bb.bnxt_get_num_ring_stats.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 15, %if.then.i.i.i.bnxt_get_num_ring_stats.exit.i_crit_edge ], [ 11, %land.lhs.true5.i.i.i.bnxt_get_num_ring_stats.exit.i_crit_edge ], [ 11, %lor.lhs.false.i.i.i.bnxt_get_num_ring_stats.exit.i_crit_edge ], [ 11, %sw.bb.bnxt_get_num_ring_stats.exit.i_crit_edge ], [ %phi.bo.i.i, %if.then8.i.i.i ]
  %rx_nr_rings.i.i = getelementptr i8, ptr %dev, i32 2480
  %10 = ptrtoint ptr %rx_nr_rings.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_nr_rings.i.i, align 8
  %mul.i.i = mul i32 %11, %retval.0.i.i.i
  %tx_nr_rings.i.i = getelementptr i8, ptr %dev, i32 2500
  %12 = ptrtoint ptr %tx_nr_rings.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_nr_rings.i.i, align 4
  %mul1.i.i = shl i32 %13, 3
  %cp_nr_rings.i.i = getelementptr i8, ptr %dev, i32 2540
  %14 = ptrtoint ptr %cp_nr_rings.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cp_nr_rings.i.i, align 4
  %and.i = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.v.i = select i1 %tobool.not.i, i32 3, i32 82
  %add2.i.i = add i32 %mul.i.i, %spec.select.v.i
  %add4.i.i = add i32 %add2.i.i, %mul1.i.i
  %spec.select.i = add i32 %add4.i.i, %15
  %and3.i = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %bnxt_get_num_ring_stats.exit.i.cleanup_crit_edge, label %if.then5.i

bnxt_get_num_ring_stats.exit.i.cleanup_crit_edge: ; preds = %bnxt_get_num_ring_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then5.i:                                       ; preds = %bnxt_get_num_ring_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #26
  %fw_rx_stats_ext_size.i = getelementptr i8, ptr %dev, i32 2972
  %16 = ptrtoint ptr %fw_rx_stats_ext_size.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %fw_rx_stats_ext_size.i, align 4
  %conv.i = zext i16 %17 to i32
  %fw_tx_stats_ext_size.i = getelementptr i8, ptr %dev, i32 2974
  %18 = ptrtoint ptr %fw_tx_stats_ext_size.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %fw_tx_stats_ext_size.i, align 2
  %conv6.i = zext i16 %19 to i32
  %add7.i = add i32 %spec.select.i, %conv.i
  %add8.i = add i32 %add7.i, %conv6.i
  %pri2cos_valid.i = getelementptr i8, ptr %dev, i32 2986
  %20 = ptrtoint ptr %pri2cos_valid.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pri2cos_valid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool9.not.i = icmp eq i8 %21, 0
  %add11.i = add i32 %add8.i, 32
  %spec.select23.i = select i1 %tobool9.not.i, i32 %add8.i, i32 %add11.i
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %num_tests = getelementptr i8, ptr %dev, i32 6397
  %22 = ptrtoint ptr %num_tests to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_tests, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  %conv = zext i8 %23 to i32
  %spec.select = select i1 %tobool.not, i32 -95, i32 %conv
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %if.then5.i, %bnxt_get_num_ring_stats.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %spec.select, %sw.bb2 ], [ %spec.select.i, %bnxt_get_num_ring_stats.exit.i.cleanup_crit_edge ], [ %spec.select23.i, %if.then5.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_get_rxnfc(ptr noundef %dev, ptr noundef %cmd, ptr nocapture noundef writeonly %rule_locs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 45, label %sw.bb
    i32 46, label %sw.bb2
    i32 48, label %sw.bb4
    i32 47, label %sw.bb6
    i32 41, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %rx_nr_rings = getelementptr i8, ptr %dev, i32 2480
  %3 = ptrtoint ptr %rx_nr_rings to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_nr_rings, align 8
  %conv = sext i32 %4 to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %data, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %ntp_fltr_count = getelementptr i8, ptr %dev, i32 6092
  %6 = ptrtoint ptr %ntp_fltr_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ntp_fltr_count, align 4
  %8 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %8, align 8
  %data3 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %10 = ptrtoint ptr %data3 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 4096, ptr %data3, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %ntp_fltr_count.i = getelementptr i8, ptr %dev, i32 6092
  %11 = ptrtoint ptr %ntp_fltr_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ntp_fltr_count.i, align 4
  %conv.i = sext i32 %12 to i64
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv.i, ptr %data.i, align 8
  %14 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %rcu_read_unlock.exit.i.for.body.i_crit_edge, %sw.bb4
  %i.018.i = phi i32 [ 0, %sw.bb4 ], [ %inc43.i, %rcu_read_unlock.exit.i.for.body.i_crit_edge ]
  %j.017.i = phi i32 [ 0, %sw.bb4 ], [ %j.1.lcssa.i, %rcu_read_unlock.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bnxt, ptr %add.ptr.i, i32 0, i32 129, i32 %i.018.i
  %15 = tail call i32 @llvm.read_register.i32(metadata !218) #24
  %and.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !230
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #24
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #24
  br i1 %call.i.i, label %for.body.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

for.body.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #26
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 696, ptr noundef nonnull @.str.59) #24
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %for.body.i.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @bnxt_grxclsrlall.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #26
  store i1 true, ptr @bnxt_grxclsrlall.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1002, ptr noundef nonnull @.str.57) #24
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %fltr.012.i = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool14.not13.i = icmp eq ptr %fltr.012.i, null
  br i1 %tobool14.not13.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body15.i_crit_edge

do.end.i.for.body15.i_crit_edge:                  ; preds = %do.end.i
  br label %for.body15.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end.i

for.body15.i:                                     ; preds = %if.end19.i.for.body15.i_crit_edge, %do.end.i.for.body15.i_crit_edge
  %fltr.015.i = phi ptr [ %fltr.0.i, %if.end19.i.for.body15.i_crit_edge ], [ %fltr.012.i, %do.end.i.for.body15.i_crit_edge ]
  %j.114.i = phi i32 [ %inc.i, %if.end19.i.for.body15.i_crit_edge ], [ %j.017.i, %do.end.i.for.body15.i_crit_edge ]
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %14, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %j.114.i, i32 %21)
  %cmp16.i = icmp eq i32 %j.114.i, %21
  br i1 %cmp16.i, label %for.body15.i.for.end.i_crit_edge, label %if.end19.i

for.body15.i.for.end.i_crit_edge:                 ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end.i

if.end19.i:                                       ; preds = %for.body15.i
  %sw_id.i = getelementptr inbounds %struct.bnxt_ntuple_filter, ptr %fltr.015.i, i32 0, i32 6
  %22 = ptrtoint ptr %sw_id.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sw_id.i, align 8
  %conv20.i = zext i16 %23 to i32
  %inc.i = add i32 %j.114.i, 1
  %arrayidx21.i = getelementptr i32, ptr %rule_locs, i32 %j.114.i
  %24 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv20.i, ptr %arrayidx21.i, align 4
  %25 = ptrtoint ptr %fltr.015.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %fltr.0.i = load volatile ptr, ptr %fltr.015.i, align 4
  %tobool14.not.i = icmp eq ptr %fltr.0.i, null
  br i1 %tobool14.not.i, label %if.end19.i.for.end.i_crit_edge, label %if.end19.i.for.body15.i_crit_edge

if.end19.i.for.body15.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body15.i

if.end19.i.for.end.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end.i

for.end.i:                                        ; preds = %if.end19.i.for.end.i_crit_edge, %for.body15.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %j.1.lcssa.i = phi i32 [ %j.017.i, %do.end.i.for.end.i_crit_edge ], [ %inc.i, %if.end19.i.for.end.i_crit_edge ], [ %j.114.i, %for.body15.i.for.end.i_crit_edge ]
  %call.i3.i = tail call zeroext i1 @rcu_is_watching() #24
  br i1 %call.i3.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i6.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %rcu_read_unlock.exit.i

land.lhs.true.i6.i:                               ; preds = %for.end.i
  %call1.i4.i = tail call i32 @debug_lockdep_rcu_enabled() #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i8.i

land.lhs.true.i6.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i8.i:                              ; preds = %land.lhs.true.i6.i
  %.b4.i7.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i, label %land.lhs.true2.i8.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i9.i

land.lhs.true2.i8.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %rcu_read_unlock.exit.i

if.then.i9.i:                                     ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #26
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 724, ptr noundef nonnull @.str.60) #24
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i9.i, %land.lhs.true2.i8.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i6.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !231
  %26 = tail call i32 @llvm.read_register.i32(metadata !218) #24
  %and.i.i.i.i.i10.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i10.i to ptr
  %preempt_count.i.i.i.i11.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i11.i, align 4
  %sub.i.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i11.i, align 4
  tail call void @rcu_read_unlock_strict() #24
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #24
  %30 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %14, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.lcssa.i, i32 %31)
  %cmp37.i = icmp eq i32 %j.1.lcssa.i, %31
  %inc43.i = add nuw nsw i32 %i.018.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %inc43.i)
  %exitcond.not.i = icmp eq i32 %inc43.i, 512
  %or.cond.i = select i1 %cmp37.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %bnxt_grxclsrlall.exit, label %rcu_read_unlock.exit.i.for.body.i_crit_edge

rcu_read_unlock.exit.i.for.body.i_crit_edge:      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body.i

bnxt_grxclsrlall.exit:                            ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #26
  %32 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %j.1.lcssa.i, ptr %14, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %fs1.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %33 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %location.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %34)
  %cmp.i = icmp ugt i32 %34, 4095
  br i1 %cmp.i, label %sw.bb6.sw.epilog_crit_edge, label %sw.bb6.for.body.i25_crit_edge

sw.bb6.for.body.i25_crit_edge:                    ; preds = %sw.bb6
  br label %for.body.i25

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.epilog

for.body.i25:                                     ; preds = %for.inc39.i.for.body.i25_crit_edge, %sw.bb6.for.body.i25_crit_edge
  %i.0213.i = phi i32 [ %inc.i42, %for.inc39.i.for.body.i25_crit_edge ], [ 0, %sw.bb6.for.body.i25_crit_edge ]
  %arrayidx.i20 = getelementptr %struct.bnxt, ptr %add.ptr.i, i32 0, i32 129, i32 %i.0213.i
  %35 = tail call i32 @llvm.read_register.i32(metadata !218) #24
  %and.i.i.i.i.i.i21 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i21 to ptr
  %preempt_count.i.i.i.i.i22 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i.i22, align 4
  %add.i.i.i.i23 = add i32 %38, 1
  store volatile i32 %add.i.i.i.i23, ptr %preempt_count.i.i.i.i.i22, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !230
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #24
  %call.i.i24 = tail call zeroext i1 @rcu_is_watching() #24
  br i1 %call.i.i24, label %for.body.i25.rcu_read_lock.exit.i34_crit_edge, label %land.lhs.true.i.i28

for.body.i25.rcu_read_lock.exit.i34_crit_edge:    ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #26
  br label %rcu_read_lock.exit.i34

land.lhs.true.i.i28:                              ; preds = %for.body.i25
  %call1.i.i26 = tail call i32 @debug_lockdep_rcu_enabled() #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i26)
  %tobool.not.i.i27 = icmp eq i32 %call1.i.i26, 0
  br i1 %tobool.not.i.i27, label %land.lhs.true.i.i28.rcu_read_lock.exit.i34_crit_edge, label %land.lhs.true2.i.i30

land.lhs.true.i.i28.rcu_read_lock.exit.i34_crit_edge: ; preds = %land.lhs.true.i.i28
  call void @__sanitizer_cov_trace_pc() #26
  br label %rcu_read_lock.exit.i34

land.lhs.true2.i.i30:                             ; preds = %land.lhs.true.i.i28
  %.b4.i.i29 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i29, label %land.lhs.true2.i.i30.rcu_read_lock.exit.i34_crit_edge, label %if.then.i.i31

land.lhs.true2.i.i30.rcu_read_lock.exit.i34_crit_edge: ; preds = %land.lhs.true2.i.i30
  call void @__sanitizer_cov_trace_pc() #26
  br label %rcu_read_lock.exit.i34

if.then.i.i31:                                    ; preds = %land.lhs.true2.i.i30
  call void @__sanitizer_cov_trace_pc() #26
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 696, ptr noundef nonnull @.str.59) #24
  br label %rcu_read_lock.exit.i34

rcu_read_lock.exit.i34:                           ; preds = %if.then.i.i31, %land.lhs.true2.i.i30.rcu_read_lock.exit.i34_crit_edge, %land.lhs.true.i.i28.rcu_read_lock.exit.i34_crit_edge, %for.body.i25.rcu_read_lock.exit.i34_crit_edge
  %call.i32 = tail call i32 @rcu_read_lock_any_held() #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool.not.i33 = icmp eq i32 %call.i32, 0
  br i1 %tobool.not.i33, label %land.lhs.true.i35, label %rcu_read_lock.exit.i34.for.cond16.i.preheader_crit_edge

rcu_read_lock.exit.i34.for.cond16.i.preheader_crit_edge: ; preds = %rcu_read_lock.exit.i34
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.cond16.i.preheader

land.lhs.true.i35:                                ; preds = %rcu_read_lock.exit.i34
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i35.for.cond16.i.preheader_crit_edge, label %land.lhs.true5.i

land.lhs.true.i35.for.cond16.i.preheader_crit_edge: ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.cond16.i.preheader

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i35
  %.b188.i = load i1, ptr @bnxt_grxclsrule.__warned, align 1
  br i1 %.b188.i, label %land.lhs.true5.i.for.cond16.i.preheader_crit_edge, label %if.then7.i

land.lhs.true5.i.for.cond16.i.preheader_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.cond16.i.preheader

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #26
  store i1 true, ptr @bnxt_grxclsrule.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1031, ptr noundef nonnull @.str.57) #24
  br label %for.cond16.i.preheader

for.cond16.i.preheader:                           ; preds = %if.then7.i, %land.lhs.true5.i.for.cond16.i.preheader_crit_edge, %land.lhs.true.i35.for.cond16.i.preheader_crit_edge, %rcu_read_lock.exit.i34.for.cond16.i.preheader_crit_edge
  br label %for.cond16.i

for.cond16.i:                                     ; preds = %for.body18.i.for.cond16.i_crit_edge, %for.cond16.i.preheader
  %fltr.0.in.i = phi ptr [ %fltr.0.i37, %for.body18.i.for.cond16.i_crit_edge ], [ %arrayidx.i20, %for.cond16.i.preheader ]
  %39 = ptrtoint ptr %fltr.0.in.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %fltr.0.i37 = load volatile ptr, ptr %fltr.0.in.i, align 4
  %tobool17.not.i = icmp eq ptr %fltr.0.i37, null
  br i1 %tobool17.not.i, label %for.end.i40, label %for.body18.i

for.body18.i:                                     ; preds = %for.cond16.i
  %sw_id.i38 = getelementptr inbounds %struct.bnxt_ntuple_filter, ptr %fltr.0.i37, i32 0, i32 6
  %40 = ptrtoint ptr %sw_id.i38 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %sw_id.i38, align 8
  %conv.i39 = zext i16 %41 to i32
  %42 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %location.i, align 8
  %cmp20.i = icmp eq i32 %43, %conv.i39
  br i1 %cmp20.i, label %fltr_found.i, label %for.body18.i.for.cond16.i_crit_edge

for.body18.i.for.cond16.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.cond16.i

for.end.i40:                                      ; preds = %for.cond16.i
  %call.i190.i = tail call zeroext i1 @rcu_is_watching() #24
  br i1 %call.i190.i, label %for.end.i40.for.inc39.i_crit_edge, label %land.lhs.true.i193.i

for.end.i40.for.inc39.i_crit_edge:                ; preds = %for.end.i40
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.inc39.i

land.lhs.true.i193.i:                             ; preds = %for.end.i40
  %call1.i191.i = tail call i32 @debug_lockdep_rcu_enabled() #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i191.i)
  %tobool.not.i192.i = icmp eq i32 %call1.i191.i, 0
  br i1 %tobool.not.i192.i, label %land.lhs.true.i193.i.for.inc39.i_crit_edge, label %land.lhs.true2.i195.i

land.lhs.true.i193.i.for.inc39.i_crit_edge:       ; preds = %land.lhs.true.i193.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.inc39.i

land.lhs.true2.i195.i:                            ; preds = %land.lhs.true.i193.i
  %.b4.i194.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i194.i, label %land.lhs.true2.i195.i.for.inc39.i_crit_edge, label %if.then.i196.i

land.lhs.true2.i195.i.for.inc39.i_crit_edge:      ; preds = %land.lhs.true2.i195.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.inc39.i

if.then.i196.i:                                   ; preds = %land.lhs.true2.i195.i
  call void @__sanitizer_cov_trace_pc() #26
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 724, ptr noundef nonnull @.str.60) #24
  br label %for.inc39.i

for.inc39.i:                                      ; preds = %if.then.i196.i, %land.lhs.true2.i195.i.for.inc39.i_crit_edge, %land.lhs.true.i193.i.for.inc39.i_crit_edge, %for.end.i40.for.inc39.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !231
  %44 = tail call i32 @llvm.read_register.i32(metadata !218) #24
  %and.i.i.i.i.i197.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i197.i to ptr
  %preempt_count.i.i.i.i198.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i198.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i198.i, align 4
  %sub.i.i.i.i41 = add i32 %47, -1
  store volatile i32 %sub.i.i.i.i41, ptr %preempt_count.i.i.i.i198.i, align 4
  tail call void @rcu_read_unlock_strict() #24
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #24
  %inc.i42 = add nuw nsw i32 %i.0213.i, 1
  %exitcond.not.i43 = icmp eq i32 %inc.i42, 512
  br i1 %exitcond.not.i43, label %for.inc39.i.sw.epilog_crit_edge, label %for.inc39.i.for.body.i25_crit_edge

for.inc39.i.for.body.i25_crit_edge:               ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body.i25

for.inc39.i.sw.epilog_crit_edge:                  ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.epilog

fltr_found.i:                                     ; preds = %for.body18.i
  %basic.i = getelementptr inbounds %struct.bnxt_ntuple_filter, ptr %fltr.0.i37, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %basic.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %basic.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %49)
  %cmp43.i = icmp eq i16 %49, 2048
  %ip_proto.i = getelementptr inbounds %struct.bnxt_ntuple_filter, ptr %fltr.0.i37, i32 0, i32 4, i32 1, i32 1
  %50 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ip_proto.i, align 2
  br i1 %cmp43.i, label %if.then45.i, label %if.else75.i

if.then45.i:                                      ; preds = %fltr_found.i
  %52 = zext i8 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.99)
  switch i8 %51, label %if.then45.i.fltr_err.i_crit_edge [
    i8 6, label %if.then45.i.if.end60.i_crit_edge
    i8 17, label %if.then56.i
  ]

if.then45.i.if.end60.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end60.i

if.then45.i.fltr_err.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %fltr_err.i

if.then56.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then56.i, %if.then45.i.if.end60.i_crit_edge
  %storemerge187.i = phi i32 [ 2, %if.then56.i ], [ 1, %if.then45.i.if.end60.i_crit_edge ]
  %53 = ptrtoint ptr %fs1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %storemerge187.i, ptr %fs1.i, align 8
  %addrs.i = getelementptr inbounds %struct.bnxt_ntuple_filter, ptr %fltr.0.i37, i32 0, i32 4, i32 8
  %54 = ptrtoint ptr %addrs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addrs.i, align 4
  %h_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %h_u.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %h_u.i, align 4
  %m_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %57 = ptrtoint ptr %m_u.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %m_u.i, align 4
  %dst.i = getelementptr inbounds %struct.bnxt_ntuple_filter, ptr %fltr.0.i37, i32 0, i32 4, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %58 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dst.i, align 4
  %ip4dst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %60 = ptrtoint ptr %ip4dst.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %ip4dst.i, align 4
  %ip4dst65.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %61 = ptrtoint ptr %ip4dst65.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %ip4dst65.i, align 4
  %ports.i = getelementptr inbounds %struct.bnxt_ntuple_filter, ptr %fltr.0.i37, i32 0, i32 4, i32 6
  %62 = ptrtoint ptr %ports.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %ports.i, align 4
  %psrc.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %64 = ptrtoint ptr %psrc.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %psrc.i, align 4
  %psrc69.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %65 = ptrtoint ptr %psrc69.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 -1, ptr %psrc69.i, align 4
  %dst71.i = getelementptr inbounds %struct.anon.185, ptr %ports.i, i32 0, i32 1
  %66 = ptrtoint ptr %dst71.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %dst71.i, align 2
  %pdst.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %h_u.i, i32 0, i32 3
  %68 = ptrtoint ptr %pdst.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %pdst.i, align 2
  %pdst74.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %m_u.i, i32 0, i32 3
  br label %if.end131.i

if.else75.i:                                      ; preds = %fltr_found.i
  %69 = zext i8 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %51, label %if.else75.i.fltr_err.i_crit_edge [
    i8 6, label %if.else75.i.if.end94.i_crit_edge
    i8 17, label %if.then90.i
  ]

if.else75.i.if.end94.i_crit_edge:                 ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end94.i

if.else75.i.fltr_err.i_crit_edge:                 ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %fltr_err.i

if.then90.i:                                      ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.then90.i, %if.else75.i.if.end94.i_crit_edge
  %storemerge.i = phi i32 [ 6, %if.then90.i ], [ 5, %if.else75.i.if.end94.i_crit_edge ]
  %70 = ptrtoint ptr %fs1.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %storemerge.i, ptr %fs1.i, align 8
  %h_u95.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %addrs97.i = getelementptr inbounds %struct.bnxt_ntuple_filter, ptr %fltr.0.i37, i32 0, i32 4, i32 8
  %71 = call ptr @memcpy(ptr %h_u95.i, ptr %addrs97.i, i32 16)
  %ip6dst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 1
  %dst102.i = getelementptr inbounds %struct.bnxt_ntuple_filter, ptr %fltr.0.i37, i32 0, i32 4, i32 8, i32 0, i32 0, i32 1
  %72 = call ptr @memcpy(ptr %ip6dst.i, ptr %dst102.i, i32 16)
  %m_u107.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %ports116.i = getelementptr inbounds %struct.bnxt_ntuple_filter, ptr %fltr.0.i37, i32 0, i32 4, i32 6
  %73 = call ptr @memset(ptr %m_u107.i, i32 255, i32 32)
  %74 = ptrtoint ptr %ports116.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %ports116.i, align 4
  %psrc119.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 2
  %76 = ptrtoint ptr %psrc119.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %psrc119.i, align 4
  %psrc121.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 2
  %77 = ptrtoint ptr %psrc121.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 -1, ptr %psrc121.i, align 4
  %dst123.i = getelementptr inbounds %struct.anon.185, ptr %ports116.i, i32 0, i32 1
  %78 = ptrtoint ptr %dst123.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %dst123.i, align 2
  %pdst125.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 3
  %80 = ptrtoint ptr %pdst125.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %pdst125.i, align 2
  %pdst127.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 3
  br label %if.end131.i

if.end131.i:                                      ; preds = %if.end94.i, %if.end60.i
  %pdst127.sink.i = phi ptr [ %pdst127.i, %if.end94.i ], [ %pdst74.i, %if.end60.i ]
  %81 = ptrtoint ptr %pdst127.sink.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 -1, ptr %pdst127.sink.i, align 2
  %rxq.i = getelementptr inbounds %struct.bnxt_ntuple_filter, ptr %fltr.0.i37, i32 0, i32 8
  %82 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %rxq.i, align 4
  %conv132.i = zext i16 %83 to i64
  %ring_cookie.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 5
  %84 = ptrtoint ptr %ring_cookie.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %conv132.i, ptr %ring_cookie.i, align 8
  br label %fltr_err.i

fltr_err.i:                                       ; preds = %if.end131.i, %if.else75.i.fltr_err.i_crit_edge, %if.then45.i.fltr_err.i_crit_edge
  %rc.0.i = phi i32 [ 0, %if.end131.i ], [ -22, %if.then45.i.fltr_err.i_crit_edge ], [ -22, %if.else75.i.fltr_err.i_crit_edge ]
  %call.i199.i = tail call zeroext i1 @rcu_is_watching() #24
  br i1 %call.i199.i, label %fltr_err.i.rcu_read_unlock.exit209.i_crit_edge, label %land.lhs.true.i202.i

fltr_err.i.rcu_read_unlock.exit209.i_crit_edge:   ; preds = %fltr_err.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %rcu_read_unlock.exit209.i

land.lhs.true.i202.i:                             ; preds = %fltr_err.i
  %call1.i200.i = tail call i32 @debug_lockdep_rcu_enabled() #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i200.i)
  %tobool.not.i201.i = icmp eq i32 %call1.i200.i, 0
  br i1 %tobool.not.i201.i, label %land.lhs.true.i202.i.rcu_read_unlock.exit209.i_crit_edge, label %land.lhs.true2.i204.i

land.lhs.true.i202.i.rcu_read_unlock.exit209.i_crit_edge: ; preds = %land.lhs.true.i202.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %rcu_read_unlock.exit209.i

land.lhs.true2.i204.i:                            ; preds = %land.lhs.true.i202.i
  %.b4.i203.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i203.i, label %land.lhs.true2.i204.i.rcu_read_unlock.exit209.i_crit_edge, label %if.then.i205.i

land.lhs.true2.i204.i.rcu_read_unlock.exit209.i_crit_edge: ; preds = %land.lhs.true2.i204.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %rcu_read_unlock.exit209.i

if.then.i205.i:                                   ; preds = %land.lhs.true2.i204.i
  call void @__sanitizer_cov_trace_pc() #26
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 724, ptr noundef nonnull @.str.60) #24
  br label %rcu_read_unlock.exit209.i

rcu_read_unlock.exit209.i:                        ; preds = %if.then.i205.i, %land.lhs.true2.i204.i.rcu_read_unlock.exit209.i_crit_edge, %land.lhs.true.i202.i.rcu_read_unlock.exit209.i_crit_edge, %fltr_err.i.rcu_read_unlock.exit209.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !231
  %85 = tail call i32 @llvm.read_register.i32(metadata !218) #24
  %and.i.i.i.i.i206.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i.i.i206.i to ptr
  %preempt_count.i.i.i.i207.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %preempt_count.i.i.i.i207.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %preempt_count.i.i.i.i207.i, align 4
  %sub.i.i.i208.i = add i32 %88, -1
  store volatile i32 %sub.i.i.i208.i, ptr %preempt_count.i.i.i.i207.i, align 4
  tail call void @rcu_read_unlock_strict() #24
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #24
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %data.i44 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %89 = ptrtoint ptr %data.i44 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 0, ptr %data.i44, align 8
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 1
  %90 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flow_type.i, align 4
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %91, label %sw.bb8.sw.epilog_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb4.i
    i32 3, label %sw.bb8.sw.bb12.i_crit_edge
    i32 4, label %sw.bb8.sw.bb12.i_crit_edge54
    i32 9, label %sw.bb8.sw.bb12.i_crit_edge55
    i32 10, label %sw.bb8.sw.bb12.i_crit_edge56
    i32 16, label %sw.bb8.sw.bb12.i_crit_edge57
    i32 5, label %sw.bb16.i
    i32 6, label %sw.bb27.i
    i32 7, label %sw.bb8.sw.bb35.i_crit_edge
    i32 8, label %sw.bb8.sw.bb35.i_crit_edge58
    i32 11, label %sw.bb8.sw.bb35.i_crit_edge59
    i32 12, label %sw.bb8.sw.bb35.i_crit_edge60
    i32 17, label %sw.bb8.sw.bb35.i_crit_edge61
  ]

sw.bb8.sw.bb35.i_crit_edge61:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb35.i

sw.bb8.sw.bb35.i_crit_edge60:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb35.i

sw.bb8.sw.bb35.i_crit_edge59:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb35.i

sw.bb8.sw.bb35.i_crit_edge58:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb35.i

sw.bb8.sw.bb35.i_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb35.i

sw.bb8.sw.bb12.i_crit_edge57:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb12.i

sw.bb8.sw.bb12.i_crit_edge56:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb12.i

sw.bb8.sw.bb12.i_crit_edge55:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb12.i

sw.bb8.sw.bb12.i_crit_edge54:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb12.i

sw.bb8.sw.bb12.i_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb12.i

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb8
  %rss_hash_cfg.i = getelementptr i8, ptr %dev, i32 2564
  %93 = ptrtoint ptr %rss_hash_cfg.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rss_hash_cfg.i, align 4
  %and.i = and i32 %94, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i45 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i45, label %sw.bb.i.sw.epilog.sink.split.i_crit_edge, label %if.then.i46

sw.bb.i.sw.epilog.sink.split.i_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.epilog.sink.split.i

if.then.i46:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #26
  %95 = ptrtoint ptr %data.i44 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 240, ptr %data.i44, align 8
  br label %sw.epilog.sink.split.i

sw.bb4.i:                                         ; preds = %sw.bb8
  %rss_hash_cfg5.i = getelementptr i8, ptr %dev, i32 2564
  %96 = ptrtoint ptr %rss_hash_cfg5.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rss_hash_cfg5.i, align 4
  %and6.i = and i32 %97, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %sw.bb4.i.sw.bb12.i_crit_edge, label %if.then8.i

sw.bb4.i.sw.bb12.i_crit_edge:                     ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb12.i

if.then8.i:                                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #26
  %98 = ptrtoint ptr %data.i44 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 240, ptr %data.i44, align 8
  br label %sw.bb12.i

sw.bb12.i:                                        ; preds = %if.then8.i, %sw.bb4.i.sw.bb12.i_crit_edge, %sw.bb8.sw.bb12.i_crit_edge, %sw.bb8.sw.bb12.i_crit_edge54, %sw.bb8.sw.bb12.i_crit_edge55, %sw.bb8.sw.bb12.i_crit_edge56, %sw.bb8.sw.bb12.i_crit_edge57
  %rss_hash_cfg.i1.i = getelementptr i8, ptr %dev, i32 2564
  br label %sw.epilog.sink.split.i

sw.bb16.i:                                        ; preds = %sw.bb8
  %rss_hash_cfg17.i = getelementptr i8, ptr %dev, i32 2564
  %99 = ptrtoint ptr %rss_hash_cfg17.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rss_hash_cfg17.i, align 4
  %and18.i = and i32 %100, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %sw.bb16.i.sw.epilog.sink.split.i_crit_edge, label %if.then20.i

sw.bb16.i.sw.epilog.sink.split.i_crit_edge:       ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.epilog.sink.split.i

if.then20.i:                                      ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #26
  %101 = ptrtoint ptr %data.i44 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 240, ptr %data.i44, align 8
  br label %sw.epilog.sink.split.i

sw.bb27.i:                                        ; preds = %sw.bb8
  %rss_hash_cfg28.i = getelementptr i8, ptr %dev, i32 2564
  %102 = ptrtoint ptr %rss_hash_cfg28.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rss_hash_cfg28.i, align 4
  %and29.i = and i32 %103, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %sw.bb27.i.sw.bb35.i_crit_edge, label %if.then31.i

sw.bb27.i.sw.bb35.i_crit_edge:                    ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb35.i

if.then31.i:                                      ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #26
  %104 = ptrtoint ptr %data.i44 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 240, ptr %data.i44, align 8
  br label %sw.bb35.i

sw.bb35.i:                                        ; preds = %if.then31.i, %sw.bb27.i.sw.bb35.i_crit_edge, %sw.bb8.sw.bb35.i_crit_edge, %sw.bb8.sw.bb35.i_crit_edge58, %sw.bb8.sw.bb35.i_crit_edge59, %sw.bb8.sw.bb35.i_crit_edge60, %sw.bb8.sw.bb35.i_crit_edge61
  %rss_hash_cfg.i9.i = getelementptr i8, ptr %dev, i32 2564
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb35.i, %if.then20.i, %sw.bb16.i.sw.epilog.sink.split.i_crit_edge, %sw.bb12.i, %if.then.i46, %sw.bb.i.sw.epilog.sink.split.i_crit_edge
  %rss_hash_cfg.i9.sink.i = phi ptr [ %rss_hash_cfg.i9.i, %sw.bb35.i ], [ %rss_hash_cfg.i1.i, %sw.bb12.i ], [ %rss_hash_cfg.i, %if.then.i46 ], [ %rss_hash_cfg.i, %sw.bb.i.sw.epilog.sink.split.i_crit_edge ], [ %rss_hash_cfg17.i, %if.then20.i ], [ %rss_hash_cfg17.i, %sw.bb16.i.sw.epilog.sink.split.i_crit_edge ]
  %.sink13.i = phi i32 [ 8, %sw.bb35.i ], [ 1, %sw.bb12.i ], [ 1, %if.then.i46 ], [ 1, %sw.bb.i.sw.epilog.sink.split.i_crit_edge ], [ 8, %if.then20.i ], [ 8, %sw.bb16.i.sw.epilog.sink.split.i_crit_edge ]
  %105 = ptrtoint ptr %rss_hash_cfg.i9.sink.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rss_hash_cfg.i9.sink.i, align 4
  %and.i10.i = and i32 %106, %.sink13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10.i)
  %tobool.not.i11.i = icmp eq i32 %and.i10.i, 0
  %..i12.i = select i1 %tobool.not.i11.i, i64 0, i64 48
  %107 = ptrtoint ptr %data.i44 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %data.i44, align 8
  %or38.i = or i64 %..i12.i, %108
  store i64 %or38.i, ptr %data.i44, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split.i, %sw.bb8.sw.epilog_crit_edge, %rcu_read_unlock.exit209.i, %for.inc39.i.sw.epilog_crit_edge, %sw.bb6.sw.epilog_crit_edge, %bnxt_grxclsrlall.exit, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ 0, %bnxt_grxclsrlall.exit ], [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ -95, %entry.sw.epilog_crit_edge ], [ %rc.0.i, %rcu_read_unlock.exit209.i ], [ -22, %sw.bb6.sw.epilog_crit_edge ], [ 0, %sw.bb8.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split.i ], [ -22, %for.inc39.i.sw.epilog_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_set_rxnfc(ptr noundef %dev, ptr nocapture noundef readonly %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %1)
  %cond = icmp eq i32 %1, 42
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %rss_hash_cfg1.i = getelementptr i8, ptr %dev, i32 2564
  %2 = ptrtoint ptr %rss_hash_cfg1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rss_hash_cfg1.i, align 4
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %data.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 240, i64 %5)
  %cmp.i = icmp eq i64 %5, 240
  br i1 %cmp.i, label %sw.bb.if.end10.i_crit_edge, label %if.else.i

sw.bb.if.end10.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end10.i

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.102)
  switch i64 %5, label %if.else.i.sw.epilog_crit_edge [
    i64 48, label %if.else.i.if.end10.i_crit_edge
    i64 0, label %if.then7.i
  ]

if.else.i.if.end10.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end10.i

if.else.i.sw.epilog_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.epilog

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.else.i.if.end10.i_crit_edge, %sw.bb.if.end10.i_crit_edge
  %cmp74.i = phi i1 [ false, %if.then7.i ], [ false, %sw.bb.if.end10.i_crit_edge ], [ true, %if.else.i.if.end10.i_crit_edge ]
  %tobool78.not.i = phi i1 [ true, %if.then7.i ], [ false, %sw.bb.if.end10.i_crit_edge ], [ false, %if.else.i.if.end10.i_crit_edge ]
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flow_type.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %7, label %if.else55.i [
    i32 1, label %if.then12.i
    i32 2, label %if.then19.i
    i32 5, label %if.then33.i
    i32 6, label %if.then42.i
  ]

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #26
  %and.i = and i32 %3, -3
  %masksel148.i = select i1 %cmp.i, i32 2, i32 0
  %spec.select.i = or i32 %masksel148.i, %and.i
  br label %sw.bb.i

if.then19.i:                                      ; preds = %if.end10.i
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then19.i.if.end24.i_crit_edge

if.then19.i.if.end24.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end24.i

land.lhs.true.i:                                  ; preds = %if.then19.i
  %flags.i = getelementptr i8, ptr %dev, i32 2400
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 8
  %and21.i = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %land.lhs.true.i.sw.epilog_crit_edge, label %land.lhs.true.i.if.end24.i_crit_edge

land.lhs.true.i.if.end24.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end24.i

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.epilog

if.end24.i:                                       ; preds = %land.lhs.true.i.if.end24.i_crit_edge, %if.then19.i.if.end24.i_crit_edge
  %masksel147.i = phi i32 [ 4, %land.lhs.true.i.if.end24.i_crit_edge ], [ 0, %if.then19.i.if.end24.i_crit_edge ]
  %and25.i = and i32 %3, -5
  %spec.select132.i = or i32 %masksel147.i, %and25.i
  br label %sw.bb.i

if.then33.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #26
  %and34.i = and i32 %3, -17
  %masksel146.i = select i1 %cmp.i, i32 16, i32 0
  %spec.select133.i = or i32 %masksel146.i, %and34.i
  br label %sw.bb73.i

if.then42.i:                                      ; preds = %if.end10.i
  br i1 %cmp.i, label %land.lhs.true44.i, label %if.then42.i.if.end49.i_crit_edge

if.then42.i.if.end49.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end49.i

land.lhs.true44.i:                                ; preds = %if.then42.i
  %flags45.i = getelementptr i8, ptr %dev, i32 2400
  %11 = ptrtoint ptr %flags45.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags45.i, align 8
  %and46.i = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %land.lhs.true44.i.sw.epilog_crit_edge, label %land.lhs.true44.i.if.end49.i_crit_edge

land.lhs.true44.i.if.end49.i_crit_edge:           ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end49.i

land.lhs.true44.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.epilog

if.end49.i:                                       ; preds = %land.lhs.true44.i.if.end49.i_crit_edge, %if.then42.i.if.end49.i_crit_edge
  %masksel.i = phi i32 [ 32, %land.lhs.true44.i.if.end49.i_crit_edge ], [ 0, %if.then42.i.if.end49.i_crit_edge ]
  %and50.i = and i32 %3, -33
  %spec.select134.i = or i32 %masksel.i, %and50.i
  br label %sw.bb73.i

if.else55.i:                                      ; preds = %if.end10.i
  br i1 %cmp.i, label %if.else55.i.sw.epilog_crit_edge, label %if.end62.i

if.else55.i.sw.epilog_crit_edge:                  ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.epilog

if.end62.i:                                       ; preds = %if.else55.i
  %13 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %7, label %if.end62.i.sw.epilog_crit_edge [
    i32 17, label %if.end62.i.sw.bb73.i_crit_edge
    i32 12, label %if.end62.i.sw.bb73.i_crit_edge4
    i32 3, label %if.end62.i.sw.bb.i_crit_edge
    i32 4, label %if.end62.i.sw.bb.i_crit_edge5
    i32 9, label %if.end62.i.sw.bb.i_crit_edge6
    i32 10, label %if.end62.i.sw.bb.i_crit_edge7
    i32 16, label %if.end62.i.sw.bb.i_crit_edge8
    i32 5, label %if.end62.i.sw.bb73.i_crit_edge9
    i32 6, label %if.end62.i.sw.bb73.i_crit_edge10
    i32 7, label %if.end62.i.sw.bb73.i_crit_edge11
    i32 8, label %if.end62.i.sw.bb73.i_crit_edge12
    i32 11, label %if.end62.i.sw.bb73.i_crit_edge13
  ]

if.end62.i.sw.bb73.i_crit_edge13:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb73.i

if.end62.i.sw.bb73.i_crit_edge12:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb73.i

if.end62.i.sw.bb73.i_crit_edge11:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb73.i

if.end62.i.sw.bb73.i_crit_edge10:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb73.i

if.end62.i.sw.bb73.i_crit_edge9:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb73.i

if.end62.i.sw.bb.i_crit_edge8:                    ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb.i

if.end62.i.sw.bb.i_crit_edge7:                    ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb.i

if.end62.i.sw.bb.i_crit_edge6:                    ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb.i

if.end62.i.sw.bb.i_crit_edge5:                    ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb.i

if.end62.i.sw.bb.i_crit_edge:                     ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb.i

if.end62.i.sw.bb73.i_crit_edge4:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb73.i

if.end62.i.sw.bb73.i_crit_edge:                   ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb73.i

if.end62.i.sw.epilog_crit_edge:                   ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.epilog

sw.bb.i:                                          ; preds = %if.end62.i.sw.bb.i_crit_edge, %if.end62.i.sw.bb.i_crit_edge5, %if.end62.i.sw.bb.i_crit_edge6, %if.end62.i.sw.bb.i_crit_edge7, %if.end62.i.sw.bb.i_crit_edge8, %if.end24.i, %if.then12.i
  %rss_hash_cfg.0138.i = phi i32 [ %3, %if.end62.i.sw.bb.i_crit_edge ], [ %3, %if.end62.i.sw.bb.i_crit_edge5 ], [ %3, %if.end62.i.sw.bb.i_crit_edge6 ], [ %3, %if.end62.i.sw.bb.i_crit_edge7 ], [ %3, %if.end62.i.sw.bb.i_crit_edge8 ], [ %spec.select132.i, %if.end24.i ], [ %spec.select.i, %if.then12.i ]
  br i1 %cmp74.i, label %if.then65.i, label %if.else67.i

if.then65.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #26
  %or66.i = or i32 %rss_hash_cfg.0138.i, 1
  br label %sw.epilog.i

if.else67.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #26
  %and70.i = and i32 %rss_hash_cfg.0138.i, -2
  %spec.select135.i = select i1 %tobool78.not.i, i32 %and70.i, i32 %rss_hash_cfg.0138.i
  br label %sw.epilog.i

sw.bb73.i:                                        ; preds = %if.end62.i.sw.bb73.i_crit_edge, %if.end62.i.sw.bb73.i_crit_edge4, %if.end62.i.sw.bb73.i_crit_edge9, %if.end62.i.sw.bb73.i_crit_edge10, %if.end62.i.sw.bb73.i_crit_edge11, %if.end62.i.sw.bb73.i_crit_edge12, %if.end62.i.sw.bb73.i_crit_edge13, %if.end49.i, %if.then33.i
  %rss_hash_cfg.0143.i = phi i32 [ %3, %if.end62.i.sw.bb73.i_crit_edge ], [ %3, %if.end62.i.sw.bb73.i_crit_edge4 ], [ %3, %if.end62.i.sw.bb73.i_crit_edge9 ], [ %3, %if.end62.i.sw.bb73.i_crit_edge10 ], [ %3, %if.end62.i.sw.bb73.i_crit_edge11 ], [ %3, %if.end62.i.sw.bb73.i_crit_edge12 ], [ %3, %if.end62.i.sw.bb73.i_crit_edge13 ], [ %spec.select134.i, %if.end49.i ], [ %spec.select133.i, %if.then33.i ]
  br i1 %cmp74.i, label %if.then75.i, label %if.else77.i

if.then75.i:                                      ; preds = %sw.bb73.i
  call void @__sanitizer_cov_trace_pc() #26
  %or76.i = or i32 %rss_hash_cfg.0143.i, 8
  br label %sw.epilog.i

if.else77.i:                                      ; preds = %sw.bb73.i
  call void @__sanitizer_cov_trace_pc() #26
  %and80.i = and i32 %rss_hash_cfg.0143.i, -9
  %spec.select136.i = select i1 %tobool78.not.i, i32 %and80.i, i32 %rss_hash_cfg.0143.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.else77.i, %if.then75.i, %if.else67.i, %if.then65.i
  %rss_hash_cfg.1.i = phi i32 [ %or76.i, %if.then75.i ], [ %or66.i, %if.then65.i ], [ %spec.select135.i, %if.else67.i ], [ %spec.select136.i, %if.else77.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %rss_hash_cfg.1.i)
  %cmp84.i = icmp eq i32 %3, %rss_hash_cfg.1.i
  br i1 %cmp84.i, label %sw.epilog.i.sw.epilog_crit_edge, label %if.end86.i

sw.epilog.i.sw.epilog_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.epilog

if.end86.i:                                       ; preds = %sw.epilog.i
  %14 = ptrtoint ptr %rss_hash_cfg1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %rss_hash_cfg.1.i, ptr %rss_hash_cfg1.i, align 4
  %dev.i = getelementptr i8, ptr %dev, i32 2388
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end86.i.sw.epilog_crit_edge, label %if.then88.i

if.end86.i.sw.epilog_crit_edge:                   ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.epilog

if.then88.i:                                      ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #26
  %call89.i = tail call i32 @bnxt_close_nic(ptr noundef %add.ptr.i, i1 noundef zeroext false, i1 noundef zeroext false) #24
  %call90.i = tail call i32 @bnxt_open_nic(ptr noundef %add.ptr.i, i1 noundef zeroext false, i1 noundef zeroext false) #24
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then88.i, %if.end86.i.sw.epilog_crit_edge, %sw.epilog.i.sw.epilog_crit_edge, %if.end62.i.sw.epilog_crit_edge, %if.else55.i.sw.epilog_crit_edge, %land.lhs.true44.i.sw.epilog_crit_edge, %land.lhs.true.i.sw.epilog_crit_edge, %if.else.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ -22, %if.else.i.sw.epilog_crit_edge ], [ -22, %land.lhs.true.i.sw.epilog_crit_edge ], [ -22, %land.lhs.true44.i.sw.epilog_crit_edge ], [ -22, %if.else55.i.sw.epilog_crit_edge ], [ 0, %sw.epilog.i.sw.epilog_crit_edge ], [ %call90.i, %if.then88.i ], [ 0, %if.end86.i.sw.epilog_crit_edge ], [ 0, %if.end62.i.sw.epilog_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_flash_device(ptr noundef %dev, ptr noundef %flash) #3 align 64 {
entry:
  %fw.i19 = alloca ptr, align 4
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %dev, i32 2400
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.61) #27
  br label %return

if.end:                                           ; preds = %entry
  %region = getelementptr inbounds %struct.ethtool_flash, ptr %flash, i32 0, i32 1
  %2 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %region, align 4
  %4 = add i32 %3, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65535, i32 %4)
  %5 = icmp ult i32 %4, -65535
  br i1 %5, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.ethtool_flash, ptr %flash, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #24
  %6 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !228
  %dev1.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %call.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef %data, ptr noundef %dev1.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.62, i32 noundef %call.i, ptr noundef %data) #27
  br label %bnxt_flash_package_from_file.exit

if.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #26
  %7 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw.i, align 4
  %call2.i = call i32 @bnxt_flash_package_from_fw_obj(ptr noundef %dev, ptr noundef %8, i32 noundef %3) #24
  %9 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %10) #24
  br label %bnxt_flash_package_from_file.exit

bnxt_flash_package_from_file.exit:                ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call2.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #24
  br label %return

if.end6:                                          ; preds = %if.end
  %conv = trunc i32 %3 to i16
  %data8 = getelementptr inbounds %struct.ethtool_flash, ptr %flash, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i19) #24
  %11 = ptrtoint ptr %fw.i19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i19, align 4, !annotation !228
  %dev1.i20 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %call.i21 = call i32 @request_firmware(ptr noundef nonnull %fw.i19, ptr noundef %data8, ptr noundef %dev1.i20) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %cmp.not.i22 = icmp eq i32 %call.i21, 0
  br i1 %cmp.not.i22, label %if.end.i24, label %if.then.i23

if.then.i23:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %call.i21, ptr noundef %data8) #27
  br label %bnxt_flash_firmware_from_file.exit

if.end.i24:                                       ; preds = %if.end6
  %12 = zext i16 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.105)
  switch i16 %conv, label %if.else10.i [
    i16 3, label %if.end.i24.if.then3.i_crit_edge
    i16 4, label %if.end.i24.if.then3.i_crit_edge36
    i16 18, label %if.end.i24.if.then3.i_crit_edge37
    i16 10, label %if.end.i24.if.then3.i_crit_edge38
    i16 11, label %if.end.i24.if.then3.i_crit_edge39
    i16 12, label %if.end.i24.if.then3.i_crit_edge40
    i16 13, label %if.end.i24.if.then3.i_crit_edge41
    i16 14, label %if.end.i24.if.then3.i_crit_edge42
    i16 15, label %if.end.i24.if.then3.i_crit_edge43
    i16 7, label %if.end.i24.if.then6.i_crit_edge
    i16 6, label %if.end.i24.if.then6.i_crit_edge44
    i16 8, label %if.end.i24.if.then6.i_crit_edge45
    i16 21, label %if.end.i24.if.then6.i_crit_edge46
    i16 27, label %if.end.i24.if.then6.i_crit_edge47
    i16 19, label %if.end.i24.if.then6.i_crit_edge48
    i16 22, label %if.end.i24.if.then6.i_crit_edge49
    i16 24, label %if.end.i24.if.then6.i_crit_edge50
    i16 25, label %if.end.i24.if.then6.i_crit_edge51
  ]

if.end.i24.if.then6.i_crit_edge51:                ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then6.i

if.end.i24.if.then6.i_crit_edge50:                ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then6.i

if.end.i24.if.then6.i_crit_edge49:                ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then6.i

if.end.i24.if.then6.i_crit_edge48:                ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then6.i

if.end.i24.if.then6.i_crit_edge47:                ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then6.i

if.end.i24.if.then6.i_crit_edge46:                ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then6.i

if.end.i24.if.then6.i_crit_edge45:                ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then6.i

if.end.i24.if.then6.i_crit_edge44:                ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then6.i

if.end.i24.if.then6.i_crit_edge:                  ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then6.i

if.end.i24.if.then3.i_crit_edge43:                ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then3.i

if.end.i24.if.then3.i_crit_edge42:                ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then3.i

if.end.i24.if.then3.i_crit_edge41:                ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then3.i

if.end.i24.if.then3.i_crit_edge40:                ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then3.i

if.end.i24.if.then3.i_crit_edge39:                ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then3.i

if.end.i24.if.then3.i_crit_edge38:                ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then3.i

if.end.i24.if.then3.i_crit_edge37:                ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then3.i

if.end.i24.if.then3.i_crit_edge36:                ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then3.i

if.end.i24.if.then3.i_crit_edge:                  ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i24.if.then3.i_crit_edge, %if.end.i24.if.then3.i_crit_edge36, %if.end.i24.if.then3.i_crit_edge37, %if.end.i24.if.then3.i_crit_edge38, %if.end.i24.if.then3.i_crit_edge39, %if.end.i24.if.then3.i_crit_edge40, %if.end.i24.if.then3.i_crit_edge41, %if.end.i24.if.then3.i_crit_edge42, %if.end.i24.if.then3.i_crit_edge43
  %13 = ptrtoint ptr %fw.i19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw.i19, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %14, align 4
  %switch.tableidx = add i16 %conv, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %switch.tableidx)
  %19 = icmp ult i16 %switch.tableidx, 16
  br i1 %19, label %switch.hole_check, label %if.then3.i.sw.default.i.i_crit_edge

if.then3.i.sw.default.i.i_crit_edge:              ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.default.i.i

sw.default.i.i:                                   ; preds = %switch.hole_check.sw.default.i.i_crit_edge, %if.then3.i.sw.default.i.i_crit_edge
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.64, i32 noundef %3) #27
  br label %if.end15.i

switch.hole_check:                                ; preds = %if.then3.i
  %switch.shifted = lshr i16 -24701, %switch.tableidx
  %20 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %switch.lobit.not = icmp eq i16 %20, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default.i.i_crit_edge, label %switch.lookup

switch.hole_check.sw.default.i.i_crit_edge:       ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.default.i.i

switch.lookup:                                    ; preds = %switch.hole_check
  %21 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [16 x i32], ptr @switch.table.bnxt_flash_device, i32 0, i32 %21
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %18)
  %cmp.i.i = icmp ult i32 %18, 28
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %18) #27
  br label %if.end15.i

if.end.i.i:                                       ; preds = %switch.lookup
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1111706906, i32 %24)
  %cmp10.not.i.i = icmp eq i32 %24, 1111706906
  br i1 %cmp10.not.i.i, label %if.end14.i.i, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %25 = call i32 @llvm.bswap.i32(i32 %24) #24
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.66, i32 noundef %25) #27
  br label %if.end15.i

if.end14.i.i:                                     ; preds = %if.end.i.i
  %code_type15.i.i = getelementptr inbounds %struct.bnxt_fw_header, ptr %16, i32 0, i32 2
  %26 = ptrtoint ptr %code_type15.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %code_type15.i.i, align 1
  %conv16.i.i = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load, i32 %conv16.i.i)
  %cmp18.not.i.i = icmp eq i32 %switch.load, %conv16.i.i
  br i1 %cmp18.not.i.i, label %if.end24.i.i, label %if.then20.i.i

if.then20.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.67, i32 noundef %switch.load, i32 noundef %conv16.i.i) #27
  br label %if.end15.i

if.end24.i.i:                                     ; preds = %if.end14.i.i
  %device.i.i = getelementptr inbounds %struct.bnxt_fw_header, ptr %16, i32 0, i32 3
  %28 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %29)
  %cmp26.not.i.i = icmp eq i8 %29, 19
  br i1 %cmp26.not.i.i, label %if.end31.i.i, label %if.then28.i.i

if.then28.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %conv25.i.i = zext i8 %29 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.68, i32 noundef 19, i32 noundef %conv25.i.i) #27
  br label %if.end15.i

if.end31.i.i:                                     ; preds = %if.end24.i.i
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %18
  %add.ptr32.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -4
  %30 = ptrtoint ptr %add.ptr32.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr32.i.i, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31) #24
  %sub.i.i = add i32 %18, -4
  %call.i.i = call i32 @crc32_le(i32 noundef -1, ptr noundef %16, i32 noundef %sub.i.i) #32
  %neg.i.i = xor i32 %call.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %neg.i.i)
  %cmp33.not.i.i = icmp eq i32 %32, %neg.i.i
  br i1 %cmp33.not.i.i, label %if.end36.i.i, label %if.then35.i.i

if.then35.i.i:                                    ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %32, i32 noundef %neg.i.i) #27
  br label %if.end15.i

if.end36.i.i:                                     ; preds = %if.end31.i.i
  %call37.i.i = call fastcc i32 @bnxt_flash_nvram(ptr noundef %dev, i16 noundef zeroext %conv, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 0, ptr noundef %16, i32 noundef %18) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i)
  %cmp38.i.i = icmp eq i32 %call37.i.i, 0
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.end36.i.i.if.end15.i_crit_edge

if.end36.i.i.if.end15.i_crit_edge:                ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end15.i

if.then40.i.i:                                    ; preds = %if.end36.i.i
  %switch.tableidx27 = add i16 %conv, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %switch.tableidx27)
  %33 = icmp ult i16 %switch.tableidx27, 16
  br i1 %33, label %switch.hole_check28, label %if.then40.i.i.if.end15.i_crit_edge

if.then40.i.i.if.end15.i_crit_edge:               ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end15.i

switch.hole_check28:                              ; preds = %if.then40.i.i
  %switch.shifted30 = lshr i16 -24701, %switch.tableidx27
  %34 = and i16 %switch.shifted30, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %switch.lobit31.not = icmp eq i16 %34, 0
  br i1 %switch.lobit31.not, label %switch.hole_check28.if.end15.i_crit_edge, label %switch.lookup29

switch.hole_check28.if.end15.i_crit_edge:         ; preds = %switch.hole_check28
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end15.i

switch.lookup29:                                  ; preds = %switch.hole_check28
  call void @__sanitizer_cov_trace_pc() #26
  %35 = sext i16 %switch.tableidx27 to i32
  %switch.gep32 = getelementptr inbounds [16 x i8], ptr @switch.table.bnxt_flash_device.91, i32 0, i32 %35
  %36 = ptrtoint ptr %switch.gep32 to i32
  call void @__asan_load1_noabort(i32 %36)
  %switch.load33 = load i8, ptr %switch.gep32, align 1
  %37 = sext i16 %switch.tableidx27 to i32
  %switch.gep34 = getelementptr inbounds [16 x i8], ptr @switch.table.bnxt_flash_device.92, i32 0, i32 %37
  %38 = ptrtoint ptr %switch.gep34 to i32
  call void @__asan_load1_noabort(i32 %38)
  %switch.load35 = load i8, ptr %switch.gep34, align 1
  %call.i.i.i = call i32 @bnxt_hwrm_firmware_reset(ptr noundef %dev, i8 noundef zeroext %switch.load35, i8 noundef zeroext %switch.load33, i8 noundef zeroext 0) #24
  br label %if.end15.i

if.then6.i:                                       ; preds = %if.end.i24.if.then6.i_crit_edge, %if.end.i24.if.then6.i_crit_edge44, %if.end.i24.if.then6.i_crit_edge45, %if.end.i24.if.then6.i_crit_edge46, %if.end.i24.if.then6.i_crit_edge47, %if.end.i24.if.then6.i_crit_edge48, %if.end.i24.if.then6.i_crit_edge49, %if.end.i24.if.then6.i_crit_edge50, %if.end.i24.if.then6.i_crit_edge51
  %39 = ptrtoint ptr %fw.i19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fw.i19, align 4
  %data7.i = getelementptr inbounds %struct.firmware, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %data7.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data7.i, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %44)
  %cmp.i33.i = icmp ult i32 %44, 288
  br i1 %cmp.i33.i, label %if.then.i34.i, label %if.end.i37.i

if.then.i34.i:                                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.70, i32 noundef %44) #27
  br label %if.end15.i

if.end.i37.i:                                     ; preds = %if.then6.i
  %sub.i35.i = add i32 %44, -288
  %add.ptr.i36.i = getelementptr i8, ptr %42, i32 %sub.i35.i
  %sig.i.i = getelementptr inbounds %struct.bnxt_ucode_trailer, ptr %add.ptr.i36.i, i32 0, i32 7
  %45 = ptrtoint ptr %sig.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sig.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1416785010, i32 %46)
  %cmp1.not.i.i = icmp eq i32 %46, 1416785010
  br i1 %cmp1.not.i.i, label %if.end4.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i37.i
  call void @__sanitizer_cov_trace_pc() #26
  %47 = call i32 @llvm.bswap.i32(i32 %46) #24
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.71, i32 noundef %47) #27
  br label %if.end15.i

if.end4.i.i:                                      ; preds = %if.end.i37.i
  %dir_type5.i.i = getelementptr inbounds %struct.bnxt_ucode_trailer, ptr %add.ptr.i36.i, i32 0, i32 5
  %48 = ptrtoint ptr %dir_type5.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %dir_type5.i.i, align 4
  %50 = call i16 @llvm.bswap.i16(i16 %49) #24
  call void @__sanitizer_cov_trace_cmp2(i16 %50, i16 %conv)
  %cmp7.not.i.i = icmp eq i16 %50, %conv
  br i1 %cmp7.not.i.i, label %if.end13.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %conv.i38.i = zext i16 %50 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %3, i32 noundef %conv.i38.i) #27
  br label %if.end15.i

if.end13.i.i:                                     ; preds = %if.end4.i.i
  %trailer_length.i.i = getelementptr inbounds %struct.bnxt_ucode_trailer, ptr %add.ptr.i36.i, i32 0, i32 6
  %51 = ptrtoint ptr %trailer_length.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %trailer_length.i.i, align 2
  %53 = call i16 @llvm.bswap.i16(i16 %52) #24
  call void @__sanitizer_cov_trace_const_cmp2(i16 288, i16 %53)
  %cmp15.i.i = icmp ult i16 %53, 288
  br i1 %cmp15.i.i, label %if.then17.i.i, label %if.end20.i.i

if.then17.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %conv14.i.i = zext i16 %53 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.73, i32 noundef %conv14.i.i) #27
  br label %if.end15.i

if.end20.i.i:                                     ; preds = %if.end13.i.i
  %add.ptr21.i.i = getelementptr i8, ptr %42, i32 %44
  %add.ptr22.i.i = getelementptr i8, ptr %add.ptr21.i.i, i32 -4
  %54 = ptrtoint ptr %add.ptr22.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr22.i.i, align 4
  %56 = call i32 @llvm.bswap.i32(i32 %55) #24
  %sub23.i.i = add i32 %44, -4
  %call.i39.i = call i32 @crc32_le(i32 noundef -1, ptr noundef %42, i32 noundef %sub23.i.i) #32
  %neg.i40.i = xor i32 %call.i39.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %neg.i40.i)
  %cmp24.not.i.i = icmp eq i32 %56, %neg.i40.i
  br i1 %cmp24.not.i.i, label %if.end27.i.i, label %if.then26.i.i

if.then26.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.74, i32 noundef %56, i32 noundef %neg.i40.i) #27
  br label %if.end15.i

if.end27.i.i:                                     ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %call28.i.i = call fastcc i32 @bnxt_flash_nvram(ptr noundef %dev, i16 noundef zeroext %conv, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 0, ptr noundef %42, i32 noundef %44) #24
  br label %if.end15.i

if.else10.i:                                      ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #26
  %57 = ptrtoint ptr %fw.i19 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fw.i19, align 4
  %data11.i = getelementptr inbounds %struct.firmware, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %data11.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data11.i, align 4
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %58, align 4
  %call13.i = call fastcc i32 @bnxt_flash_nvram(ptr noundef %dev, i16 noundef zeroext %conv, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 0, ptr noundef %60, i32 noundef %62) #24
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.else10.i, %if.end27.i.i, %if.then26.i.i, %if.then17.i.i, %if.then9.i.i, %if.then2.i.i, %if.then.i34.i, %switch.lookup29, %switch.hole_check28.if.end15.i_crit_edge, %if.then40.i.i.if.end15.i_crit_edge, %if.end36.i.i.if.end15.i_crit_edge, %if.then35.i.i, %if.then28.i.i, %if.then20.i.i, %if.then12.i.i, %if.then.i.i, %sw.default.i.i
  %rc.0.i = phi i32 [ %call13.i, %if.else10.i ], [ -22, %sw.default.i.i ], [ -22, %if.then.i.i ], [ -22, %if.then12.i.i ], [ -22, %if.then20.i.i ], [ -22, %if.then28.i.i ], [ -22, %if.then35.i.i ], [ %call37.i.i, %if.end36.i.i.if.end15.i_crit_edge ], [ %call.i.i.i, %switch.lookup29 ], [ -22, %if.then40.i.i.if.end15.i_crit_edge ], [ -22, %if.then.i34.i ], [ -22, %if.then2.i.i ], [ -22, %if.then9.i.i ], [ -22, %if.then17.i.i ], [ -22, %if.then26.i.i ], [ %call28.i.i, %if.end27.i.i ], [ -22, %switch.hole_check28.if.end15.i_crit_edge ]
  %63 = ptrtoint ptr %fw.i19 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fw.i19, align 4
  call void @release_firmware(ptr noundef %64) #24
  br label %bnxt_flash_firmware_from_file.exit

bnxt_flash_firmware_from_file.exit:               ; preds = %if.end15.i, %if.then.i23
  %retval.0.i25 = phi i32 [ %call.i21, %if.then.i23 ], [ %rc.0.i, %if.end15.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i19) #24
  br label %return

return:                                           ; preds = %bnxt_flash_firmware_from_file.exit, %bnxt_flash_package_from_file.exit, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %retval.0.i, %bnxt_flash_package_from_file.exit ], [ %retval.0.i25, %bnxt_flash_firmware_from_file.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_reset(ptr noundef %dev, ptr nocapture noundef %flags) #3 align 64 {
entry:
  %req.i.i73 = alloca ptr, align 4
  %req.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags1 = getelementptr i8, ptr %dev, i32 2400
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags1, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.75) #27
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %pdev = getelementptr i8, ptr %dev, i32 2392
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %call5 = tail call i32 @pci_vfs_assigned(ptr noundef %5) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.if.end10_crit_edge, label %land.lhs.true

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end4
  %fw_cap = getelementptr i8, ptr %dev, i32 2696
  %6 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_cap, align 8
  %and7 = and i32 %7, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.76) #27
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end4.if.end10_crit_edge
  %and11 = and i32 %1, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 16711680, i32 %and11)
  %cmp = icmp eq i32 %and11, 16711680
  br i1 %cmp, label %if.then12, label %if.end10.if.end29_crit_edge

if.end10.if.end29_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end29

if.then12:                                        ; preds = %if.end10
  %hwrm_spec_code = getelementptr i8, ptr %dev, i32 2704
  %8 = ptrtoint ptr %hwrm_spec_code to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwrm_spec_code, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 67586, i32 %9)
  %cmp13 = icmp ugt i32 %9, 67586
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then12
  %fw_cap.i = getelementptr i8, ptr %dev, i32 2696
  %10 = ptrtoint ptr %fw_cap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw_cap.i, align 8
  %and.i = lshr i32 %11, 21
  %12 = trunc i32 %and.i to i8
  %13 = and i8 %12, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i.i) #24
  %14 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i.i, align 4, !annotation !228
  %call1.i.i = tail call zeroext i1 @bnxt_hwrm_reset_permitted(ptr noundef %add.ptr.i) #24
  br i1 %call1.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #26
  %dev2.i.i = getelementptr i8, ptr %dev, i32 2388
  %15 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev2.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str) #27
  br label %bnxt_firmware_reset_chip.exit.thread

if.end.i.i:                                       ; preds = %if.then14
  %call3.i.i = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req.i.i, i16 noundef zeroext 192, i32 noundef 24) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i.i, label %if.end5.i.i, label %if.end.i.i.bnxt_firmware_reset_chip.exit.thread_crit_edge

if.end.i.i.bnxt_firmware_reset_chip.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_firmware_reset_chip.exit.thread

if.end5.i.i:                                      ; preds = %if.end.i.i
  %17 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %req.i.i, align 4
  %embedded_proc_type.i.i = getelementptr inbounds %struct.hwrm_fw_reset_input, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %embedded_proc_type.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 6, ptr %embedded_proc_type.i.i, align 8
  %selfrst_status.i.i = getelementptr inbounds %struct.hwrm_fw_reset_input, ptr %18, i32 0, i32 6
  %20 = ptrtoint ptr %selfrst_status.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %selfrst_status.i.i, align 1
  %flags6.i.i = getelementptr inbounds %struct.hwrm_fw_reset_input, ptr %18, i32 0, i32 8
  %21 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %13, ptr %flags6.i.i, align 1
  %call10.i.i = call i32 @hwrm_req_send(ptr noundef %add.ptr.i, ptr noundef %18) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call10.i.i)
  %cmp11.i.i = icmp eq i32 %call10.i.i, -13
  br i1 %cmp11.i.i, label %if.then13.i.i, label %bnxt_firmware_reset_chip.exit

if.then13.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %dev.i.i.i = getelementptr i8, ptr %dev, i32 2388
  %22 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %23, ptr noundef nonnull @.str.17) #27
  br label %bnxt_firmware_reset_chip.exit.thread

bnxt_firmware_reset_chip.exit.thread:             ; preds = %if.then13.i.i, %if.end.i.i.bnxt_firmware_reset_chip.exit.thread_crit_edge, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i) #24
  br label %if.end29

bnxt_firmware_reset_chip.exit:                    ; preds = %if.end5.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool16.not = icmp eq i32 %call10.i.i, 0
  br i1 %tobool16.not, label %if.then17, label %bnxt_firmware_reset_chip.exit.if.end29_crit_edge

bnxt_firmware_reset_chip.exit.if.end29_crit_edge: ; preds = %bnxt_firmware_reset_chip.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end29

if.then17:                                        ; preds = %bnxt_firmware_reset_chip.exit
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.77) #27
  %24 = ptrtoint ptr %fw_cap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fw_cap.i, align 8
  %and19 = and i32 %25, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and23 = and i32 %27, -16711681
  store i32 %and23, ptr %flags, align 4
  br label %if.end29

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16711680, i32 %1)
  %cmp25 = icmp eq i32 %1, 16711680
  br i1 %cmp25, label %if.else.cleanup_crit_edge, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end29

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end29:                                         ; preds = %if.else.if.end29_crit_edge, %if.then17, %bnxt_firmware_reset_chip.exit.if.end29_crit_edge, %bnxt_firmware_reset_chip.exit.thread, %if.end10.if.end29_crit_edge
  %reload.1.off0 = phi i1 [ false, %bnxt_firmware_reset_chip.exit.if.end29_crit_edge ], [ %tobool20.not, %if.then17 ], [ false, %if.else.if.end29_crit_edge ], [ false, %if.end10.if.end29_crit_edge ], [ false, %bnxt_firmware_reset_chip.exit.thread ]
  %and30 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end46_crit_edge, label %if.then32

if.end29.if.end46_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end46

if.then32:                                        ; preds = %if.end29
  %hwrm_spec_code33 = getelementptr i8, ptr %dev, i32 2704
  %28 = ptrtoint ptr %hwrm_spec_code33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hwrm_spec_code33, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 67586, i32 %29)
  %cmp34 = icmp ugt i32 %29, 67586
  br i1 %cmp34, label %if.then35, label %if.else41

if.then35:                                        ; preds = %if.then32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i.i73) #24
  %30 = ptrtoint ptr %req.i.i73 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i.i73, align 4, !annotation !228
  %call1.i.i74 = call zeroext i1 @bnxt_hwrm_reset_permitted(ptr noundef %add.ptr.i) #24
  br i1 %call1.i.i74, label %if.end.i.i79, label %if.then.i.i76

if.then.i.i76:                                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #26
  %dev2.i.i75 = getelementptr i8, ptr %dev, i32 2388
  %31 = ptrtoint ptr %dev2.i.i75 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev2.i.i75, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %32, ptr noundef nonnull @.str) #27
  br label %bnxt_firmware_reset_ap.exit.thread

if.end.i.i79:                                     ; preds = %if.then35
  %call3.i.i77 = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req.i.i73, i16 noundef zeroext 192, i32 noundef 24) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i77)
  %tobool.not.i.i78 = icmp eq i32 %call3.i.i77, 0
  br i1 %tobool.not.i.i78, label %bnxt_firmware_reset_ap.exit, label %if.end.i.i79.bnxt_firmware_reset_ap.exit.thread_crit_edge

if.end.i.i79.bnxt_firmware_reset_ap.exit.thread_crit_edge: ; preds = %if.end.i.i79
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_firmware_reset_ap.exit.thread

bnxt_firmware_reset_ap.exit.thread:               ; preds = %if.end.i.i79.bnxt_firmware_reset_ap.exit.thread_crit_edge, %if.then.i.i76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i73) #24
  br label %if.end46

bnxt_firmware_reset_ap.exit:                      ; preds = %if.end.i.i79
  %33 = ptrtoint ptr %req.i.i73 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %req.i.i73, align 4
  %embedded_proc_type.i.i80 = getelementptr inbounds %struct.hwrm_fw_reset_input, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %embedded_proc_type.i.i80 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 5, ptr %embedded_proc_type.i.i80, align 8
  %selfrst_status.i.i81 = getelementptr inbounds %struct.hwrm_fw_reset_input, ptr %34, i32 0, i32 6
  %36 = ptrtoint ptr %selfrst_status.i.i81 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %selfrst_status.i.i81, align 1
  %flags6.i.i82 = getelementptr inbounds %struct.hwrm_fw_reset_input, ptr %34, i32 0, i32 8
  %37 = ptrtoint ptr %flags6.i.i82 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %flags6.i.i82, align 1
  %call9.i.i = call i32 @hwrm_req_send_silent(ptr noundef %add.ptr.i, ptr noundef %34) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i73) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool37.not = icmp eq i32 %call9.i.i, 0
  br i1 %tobool37.not, label %if.then38, label %bnxt_firmware_reset_ap.exit.if.end46_crit_edge

bnxt_firmware_reset_ap.exit.if.end46_crit_edge:   ; preds = %bnxt_firmware_reset_ap.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end46

if.then38:                                        ; preds = %bnxt_firmware_reset_ap.exit
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.78) #27
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %and39 = and i32 %39, -16777217
  store i32 %and39, ptr %flags, align 4
  br label %if.then48

if.else41:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %1)
  %cmp42 = icmp eq i32 %1, 16777216
  %reload.1.off0.not = xor i1 %reload.1.off0, true
  %brmerge = select i1 %cmp42, i1 true, i1 %reload.1.off0.not
  %.mux = select i1 %cmp42, i32 -95, i32 0
  br i1 %brmerge, label %if.else41.cleanup_crit_edge, label %if.else41.if.then48_crit_edge

if.else41.if.then48_crit_edge:                    ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then48

if.else41.cleanup_crit_edge:                      ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end46:                                         ; preds = %bnxt_firmware_reset_ap.exit.if.end46_crit_edge, %bnxt_firmware_reset_ap.exit.thread, %if.end29.if.end46_crit_edge
  br i1 %reload.1.off0, label %if.end46.if.then48_crit_edge, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end46.if.then48_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then48

if.then48:                                        ; preds = %if.end46.if.then48_crit_edge, %if.else41.if.then48_crit_edge, %if.then38
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.79) #27
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.end46.cleanup_crit_edge, %if.else41.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then9, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then3 ], [ -16, %if.then9 ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.else.cleanup_crit_edge ], [ %.mux, %if.else41.cleanup_crit_edge ], [ 0, %if.then48 ], [ 0, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bnxt_get_rxfh_key_size(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 40
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_get_rxfh(ptr nocapture noundef readonly %dev, ptr noundef writeonly %indir, ptr noundef writeonly %key, ptr noundef writeonly %hfunc) #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hfunc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %0 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %hfunc, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vnic_info = getelementptr i8, ptr %dev, i32 2548
  %1 = ptrtoint ptr %vnic_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vnic_info, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool5.not = icmp eq ptr %indir, null
  br i1 %tobool5.not, label %if.end3.if.end12_crit_edge, label %land.lhs.true

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end3
  %rss_indir_tbl = getelementptr i8, ptr %dev, i32 2556
  %3 = ptrtoint ptr %rss_indir_tbl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rss_indir_tbl, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %land.lhs.true.if.end12_crit_edge, label %if.then7

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end12

if.then7:                                         ; preds = %land.lhs.true
  %flags.i = getelementptr i8, ptr %dev, i32 2400
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then7.for.body.preheader_crit_edge, label %bnxt_get_rxfh_indir_size.exit

if.then7.for.body.preheader_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body.preheader

bnxt_get_rxfh_indir_size.exit:                    ; preds = %if.then7
  %rx_nr_rings.i = getelementptr i8, ptr %dev, i32 2480
  %7 = ptrtoint ptr %rx_nr_rings.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_nr_rings.i, align 8
  %add.i = add i32 %8, 63
  %and1.i = and i32 %add.i, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp34.not = icmp eq i32 %and1.i, 0
  br i1 %cmp34.not, label %bnxt_get_rxfh_indir_size.exit.if.end12_crit_edge, label %bnxt_get_rxfh_indir_size.exit.for.body.preheader_crit_edge

bnxt_get_rxfh_indir_size.exit.for.body.preheader_crit_edge: ; preds = %bnxt_get_rxfh_indir_size.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body.preheader

bnxt_get_rxfh_indir_size.exit.if.end12_crit_edge: ; preds = %bnxt_get_rxfh_indir_size.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end12

for.body.preheader:                               ; preds = %bnxt_get_rxfh_indir_size.exit.for.body.preheader_crit_edge, %if.then7.for.body.preheader_crit_edge
  %retval.0.i38 = phi i32 [ %and1.i, %bnxt_get_rxfh_indir_size.exit.for.body.preheader_crit_edge ], [ 128, %if.then7.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.035 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %9 = ptrtoint ptr %rss_indir_tbl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rss_indir_tbl, align 4
  %arrayidx10 = getelementptr i16, ptr %10, i32 %i.035
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx10, align 2
  %conv = zext i16 %12 to i32
  %arrayidx11 = getelementptr i32, ptr %indir, i32 %i.035
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %arrayidx11, align 4
  %inc = add nuw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, %retval.0.i38
  br i1 %exitcond.not, label %for.body.if.end12_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end12

if.end12:                                         ; preds = %for.body.if.end12_crit_edge, %bnxt_get_rxfh_indir_size.exit.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %if.end3.if.end12_crit_edge
  %tobool13.not = icmp eq ptr %key, null
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %land.lhs.true14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

land.lhs.true14:                                  ; preds = %if.end12
  %rss_hash_key = getelementptr inbounds %struct.bnxt_vnic_info, ptr %2, i32 0, i32 10
  %14 = ptrtoint ptr %rss_hash_key to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rss_hash_key, align 8
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %land.lhs.true14.cleanup_crit_edge, label %if.then16

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #26
  %16 = call ptr @memcpy(ptr %key, ptr %15, i32 40)
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %land.lhs.true14.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_set_rxfh(ptr noundef %dev, ptr noundef readonly %indir, ptr noundef readnone %key, i8 noundef zeroext %hfunc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %hfunc)
  %switch = icmp ult i8 %hfunc, 2
  %tobool3.not = icmp eq ptr %key, null
  %or.cond = and i1 %tobool3.not, %switch
  br i1 %or.cond, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end5:                                          ; preds = %entry
  %tobool6.not = icmp eq ptr %indir, null
  br i1 %tobool6.not, label %if.end5.if.end19_crit_edge, label %if.then7

if.end5.if.end19_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end19

if.then7:                                         ; preds = %if.end5
  %flags.i = getelementptr i8, ptr %dev, i32 2400
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then7.for.body.lr.ph_crit_edge, label %bnxt_get_rxfh_indir_size.exit

if.then7.for.body.lr.ph_crit_edge:                ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body.lr.ph

bnxt_get_rxfh_indir_size.exit:                    ; preds = %if.then7
  %rx_nr_rings.i = getelementptr i8, ptr %dev, i32 2480
  %2 = ptrtoint ptr %rx_nr_rings.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_nr_rings.i, align 8
  %add.i = add i32 %3, 63
  %and1.i = and i32 %add.i, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp941.not = icmp eq i32 %and1.i, 0
  br i1 %cmp941.not, label %bnxt_get_rxfh_indir_size.exit.for.end_crit_edge, label %bnxt_get_rxfh_indir_size.exit.for.body.lr.ph_crit_edge

bnxt_get_rxfh_indir_size.exit.for.body.lr.ph_crit_edge: ; preds = %bnxt_get_rxfh_indir_size.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body.lr.ph

bnxt_get_rxfh_indir_size.exit.for.end_crit_edge:  ; preds = %bnxt_get_rxfh_indir_size.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

for.body.lr.ph:                                   ; preds = %bnxt_get_rxfh_indir_size.exit.for.body.lr.ph_crit_edge, %if.then7.for.body.lr.ph_crit_edge
  %retval.0.i45 = phi i32 [ %and1.i, %bnxt_get_rxfh_indir_size.exit.for.body.lr.ph_crit_edge ], [ 128, %if.then7.for.body.lr.ph_crit_edge ]
  %rss_indir_tbl = getelementptr i8, ptr %dev, i32 2556
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %indir, i32 %i.042
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %conv11 = trunc i32 %5 to i16
  %6 = ptrtoint ptr %rss_indir_tbl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rss_indir_tbl, align 4
  %arrayidx12 = getelementptr i16, ptr %7, i32 %i.042
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv11, ptr %arrayidx12, align 2
  %inc = add nuw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %retval.0.i45
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %bnxt_get_rxfh_indir_size.exit.for.end_crit_edge
  %retval.0.i46 = phi i32 [ 0, %bnxt_get_rxfh_indir_size.exit.for.end_crit_edge ], [ %retval.0.i45, %for.body.for.end_crit_edge ]
  %rss_indir_tbl_entries = getelementptr i8, ptr %dev, i32 2560
  %9 = ptrtoint ptr %rss_indir_tbl_entries to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %rss_indir_tbl_entries, align 8
  %conv13 = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i46, i32 %conv13)
  %tobool14.not = icmp eq i32 %retval.0.i46, %conv13
  br i1 %tobool14.not, label %for.end.if.end19_crit_edge, label %if.then15

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end19

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #26
  %sub = sub i32 %conv13, %retval.0.i46
  %rss_indir_tbl16 = getelementptr i8, ptr %dev, i32 2556
  %11 = ptrtoint ptr %rss_indir_tbl16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rss_indir_tbl16, align 4
  %arrayidx17 = getelementptr i16, ptr %12, i32 %retval.0.i46
  %mul = shl i32 %sub, 1
  %13 = call ptr @memset(ptr %arrayidx17, i32 0, i32 %mul)
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %for.end.if.end19_crit_edge, %if.end5.if.end19_crit_edge
  %dev20 = getelementptr i8, ptr %dev, i32 2388
  %14 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev20, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end19.cleanup_crit_edge, label %if.then22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #26
  %call23 = tail call i32 @bnxt_close_nic(ptr noundef %add.ptr.i, i1 noundef zeroext false, i1 noundef zeroext false) #24
  %call24 = tail call i32 @bnxt_open_nic(ptr noundef %add.ptr.i, i1 noundef zeroext false, i1 noundef zeroext false) #24
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call24, %if.then22 ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnxt_get_channels(ptr noundef %dev, ptr nocapture noundef writeonly %channel) #3 align 64 {
entry:
  %max_rx_rings = alloca i32, align 4
  %max_tx_rings = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_rx_rings) #24
  %0 = ptrtoint ptr %max_rx_rings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %max_rx_rings, align 4, !annotation !228
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_tx_rings) #24
  %1 = ptrtoint ptr %max_tx_rings to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %max_tx_rings, align 4, !annotation !228
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fw_cap = getelementptr i8, ptr %dev, i32 2696
  %4 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_cap, align 8
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #26
  %call3 = tail call i32 @bnxt_hwrm_func_resc_qcaps(ptr noundef %add.ptr.i, i1 noundef zeroext false) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %max_tx_sch_inputs4 = getelementptr i8, ptr %dev, i32 3624
  %6 = ptrtoint ptr %max_tx_sch_inputs4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max_tx_sch_inputs4, align 2
  %conv = zext i16 %7 to i32
  %call5 = call i32 @bnxt_get_max_rings(ptr noundef %add.ptr.i, ptr noundef nonnull %max_rx_rings, ptr noundef nonnull %max_tx_rings, i1 noundef zeroext true) #24
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool6.not = icmp eq i16 %7, 0
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  %8 = ptrtoint ptr %max_tx_rings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_tx_rings, align 4
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 %conv)
  %11 = ptrtoint ptr %max_tx_rings to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %max_tx_rings, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %num_tc.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 140
  %12 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_tc.i, align 4
  %conv.i = sext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %13)
  %cmp12 = icmp sgt i16 %13, 1
  %14 = call i16 @llvm.smax.i16(i16 %13, i16 1)
  %15 = zext i16 %14 to i32
  %tx_nr_rings_xdp = getelementptr i8, ptr %dev, i32 2508
  %16 = ptrtoint ptr %tx_nr_rings_xdp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_nr_rings_xdp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool18.not = icmp ne i32 %17, 0
  %inc = zext i1 %tobool18.not to i32
  %tx_grps.0 = add nuw nsw i32 %inc, %15
  %18 = ptrtoint ptr %max_tx_rings to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_tx_rings, align 4
  %div = sdiv i32 %19, %tx_grps.0
  store i32 %div, ptr %max_tx_rings, align 4
  %20 = ptrtoint ptr %max_rx_rings to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_rx_rings, align 4
  %22 = call i32 @llvm.smin.i32(i32 %21, i32 %div)
  %max_combined = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 4
  %23 = ptrtoint ptr %max_combined to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %max_combined, align 4
  %call28 = call i32 @bnxt_get_max_rings(ptr noundef %add.ptr.i, ptr noundef nonnull %max_rx_rings, ptr noundef nonnull %max_tx_rings, i1 noundef zeroext false) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end9.if.end31_crit_edge, label %if.then30

if.end9.if.end31_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end31

if.then30:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #26
  %24 = ptrtoint ptr %max_rx_rings to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %max_rx_rings, align 4
  %25 = ptrtoint ptr %max_tx_rings to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %max_tx_rings, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end9.if.end31_crit_edge
  br i1 %tobool6.not, label %if.end31.if.end41_crit_edge, label %if.then33

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end41

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #26
  %26 = ptrtoint ptr %max_tx_rings to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_tx_rings, align 4
  %28 = call i32 @llvm.smin.i32(i32 %27, i32 %conv)
  %29 = ptrtoint ptr %max_tx_rings to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %max_tx_rings, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then33, %if.end31.if.end41_crit_edge
  br i1 %cmp12, label %if.then44, label %if.end41.if.end46_crit_edge

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end46

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #26
  %30 = ptrtoint ptr %max_tx_rings to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_tx_rings, align 4
  %div45 = sdiv i32 %31, %conv.i
  store i32 %div45, ptr %max_tx_rings, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end41.if.end46_crit_edge
  %32 = ptrtoint ptr %max_rx_rings to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_rx_rings, align 4
  %max_rx = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 1
  %34 = ptrtoint ptr %max_rx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %max_rx, align 4
  %35 = ptrtoint ptr %max_tx_rings to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_tx_rings, align 4
  %max_tx = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 2
  %37 = ptrtoint ptr %max_tx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %max_tx, align 4
  %max_other = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 3
  %38 = ptrtoint ptr %max_other to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %max_other, align 4
  %flags = getelementptr i8, ptr %dev, i32 2400
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 8
  %and47 = and i32 %40, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.else, label %if.then49

if.then49:                                        ; preds = %if.end46
  %rx_nr_rings = getelementptr i8, ptr %dev, i32 2480
  %41 = ptrtoint ptr %rx_nr_rings to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_nr_rings, align 8
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 8
  %43 = ptrtoint ptr %combined_count to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %combined_count, align 4
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 8
  %and51 = and i32 %45, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.then49.if.end62_crit_edge, label %if.then53

if.then49.if.end62_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end62

if.then53:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #26
  %dec = add i32 %42, -1
  %46 = ptrtoint ptr %combined_count to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %dec, ptr %combined_count, align 4
  br label %if.end62

if.else:                                          ; preds = %if.end46
  %and57 = and i32 %40, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.then59, label %if.else.if.end62_crit_edge

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end62

if.then59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #26
  %rx_nr_rings60 = getelementptr i8, ptr %dev, i32 2480
  %47 = ptrtoint ptr %rx_nr_rings60 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_nr_rings60, align 8
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 5
  %49 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %rx_count, align 4
  %tx_nr_rings_per_tc = getelementptr i8, ptr %dev, i32 2504
  %50 = ptrtoint ptr %tx_nr_rings_per_tc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_nr_rings_per_tc, align 8
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 6
  %52 = ptrtoint ptr %tx_count to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %tx_count, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.else.if.end62_crit_edge, %if.then53, %if.then49.if.end62_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_tx_rings) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_rx_rings) #24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_set_channels(ptr noundef %dev, ptr nocapture noundef readonly %channel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %other_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 7
  %0 = ptrtoint ptr %other_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %other_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 8
  %2 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %combined_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 5
  %4 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %land.lhs.true, label %land.lhs.true8

land.lhs.true:                                    ; preds = %if.end
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 6
  %6 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end15_crit_edge

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end15

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

land.lhs.true8:                                   ; preds = %if.end
  br i1 %tobool2.not, label %lor.lhs.false11, label %land.lhs.true8.cleanup_crit_edge

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

lor.lhs.false11:                                  ; preds = %land.lhs.true8
  %tx_count12 = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 6
  %8 = ptrtoint ptr %tx_count12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_count12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool13.not = icmp eq i32 %9, 0
  br i1 %tobool13.not, label %lor.lhs.false11.if.end15_crit_edge, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

lor.lhs.false11.if.end15_crit_edge:               ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end15

if.end15:                                         ; preds = %lor.lhs.false11.if.end15_crit_edge, %lor.lhs.false.if.end15_crit_edge
  %flags = getelementptr i8, ptr %dev, i32 2400
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %and = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end15.if.end24_crit_edge, label %land.lhs.true17

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end24

land.lhs.true17:                                  ; preds = %if.end15
  %rx_count18 = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 5
  %12 = ptrtoint ptr %rx_count18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_count18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool19.not = icmp eq i32 %13, 0
  br i1 %tobool19.not, label %lor.lhs.false20, label %land.lhs.true17.cleanup_crit_edge

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

lor.lhs.false20:                                  ; preds = %land.lhs.true17
  %tx_count21 = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 6
  %14 = ptrtoint ptr %tx_count21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_count21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool22.not = icmp eq i32 %15, 0
  br i1 %tobool22.not, label %lor.lhs.false20.if.end24_crit_edge, label %lor.lhs.false20.cleanup_crit_edge

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

lor.lhs.false20.if.end24_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end24

if.end24:                                         ; preds = %lor.lhs.false20.if.end24_crit_edge, %if.end15.if.end24_crit_edge
  %16 = xor i1 %tobool1.not, true
  %num_tc.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 140
  %17 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_tc.i, align 4
  %tx_count32 = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 6
  %rx_count37 = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 5
  %cond39.in = select i1 %tobool1.not, ptr %rx_count37, ptr %combined_count
  %19 = ptrtoint ptr %cond39.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %cond39 = load i32, ptr %cond39.in, align 4
  %tx_nr_rings_xdp = getelementptr i8, ptr %dev, i32 2508
  %20 = ptrtoint ptr %tx_nr_rings_xdp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_nr_rings_xdp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool40.not = icmp eq i32 %21, 0
  %brmerge = select i1 %tobool40.not, i1 true, i1 %16
  %.mux = select i1 %tobool40.not, i32 0, i32 %cond39
  br i1 %brmerge, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.80) #27
  br label %cleanup

if.end45:                                         ; preds = %if.end24
  %conv.i = sext i16 %18 to i32
  %cond.in = select i1 %tobool1.not, ptr %tx_count32, ptr %combined_count
  %22 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %cond = load i32, ptr %cond.in, align 4
  %call47 = tail call i32 @bnxt_check_rings(ptr noundef %add.ptr.i, i32 noundef %cond, i32 noundef %cond39, i1 noundef zeroext %16, i32 noundef %conv.i, i32 noundef %.mux) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.81) #27
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  %call51 = tail call i32 @bnxt_get_nr_rss_ctxs(ptr noundef %add.ptr.i, i32 noundef %cond39) #24
  %rx_nr_rings = getelementptr i8, ptr %dev, i32 2480
  %23 = ptrtoint ptr %rx_nr_rings to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_nr_rings, align 8
  %call52 = tail call i32 @bnxt_get_nr_rss_ctxs(ptr noundef %add.ptr.i, i32 noundef %24) #24
  call void @__sanitizer_cov_trace_cmp4(i32 %call51, i32 %call52)
  %cmp.not = icmp eq i32 %call51, %call52
  br i1 %cmp.not, label %if.end50.if.end56_crit_edge, label %land.lhs.true53

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end56

land.lhs.true53:                                  ; preds = %if.end50
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %25 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %26, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true53.if.end56_crit_edge, label %if.then55

land.lhs.true53.if.end56_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end56

if.then55:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.82) #27
  br label %cleanup

if.end56:                                         ; preds = %land.lhs.true53.if.end56_crit_edge, %if.end50.if.end56_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %27 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i196.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i196.not, label %if.end56.if.end69_crit_edge, label %if.then58

if.end56.if.end69_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end69

if.then58:                                        ; preds = %if.end56
  %call64 = tail call i32 @bnxt_close_nic(ptr noundef %add.ptr.i, i1 noundef zeroext true, i1 noundef zeroext false) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then58.if.end69_crit_edge, label %if.then66

if.then58.if.end69_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end69

if.then66:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #26
  %dev67 = getelementptr i8, ptr %dev, i32 2388
  %29 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev67, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.83, i32 noundef %call64) #27
  br label %cleanup

if.end69:                                         ; preds = %if.then58.if.end69_crit_edge, %if.end56.if.end69_crit_edge
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 8
  %and77 = and i32 %32, -513
  %masksel = select i1 %tobool1.not, i32 0, i32 512
  %storemerge202 = or i32 %and77, %masksel
  %storemerge201.in = select i1 %tobool1.not, ptr %rx_count37, ptr %combined_count
  %.sink.in = select i1 %tobool1.not, ptr %tx_count32, ptr %combined_count
  store i32 %storemerge202, ptr %flags, align 8
  %33 = ptrtoint ptr %storemerge201.in to i32
  call void @__asan_load4_noabort(i32 %33)
  %storemerge201 = load i32, ptr %storemerge201.in, align 4
  %34 = ptrtoint ptr %rx_nr_rings to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %storemerge201, ptr %rx_nr_rings, align 8
  %35 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %35)
  %.sink = load i32, ptr %.sink.in, align 4
  %36 = getelementptr i8, ptr %dev, i32 2504
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink, ptr %36, align 8
  %38 = ptrtoint ptr %tx_nr_rings_xdp to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.mux, ptr %tx_nr_rings_xdp, align 4
  %tx_nr_rings = getelementptr i8, ptr %dev, i32 2500
  %39 = call i16 @llvm.smax.i16(i16 %18, i16 1)
  %40 = zext i16 %39 to i32
  %spec.select = mul i32 %.sink, %40
  %storemerge = add i32 %spec.select, %.mux
  %41 = ptrtoint ptr %tx_nr_rings to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %storemerge, ptr %tx_nr_rings, align 4
  %42 = ptrtoint ptr %rx_nr_rings to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_nr_rings, align 8
  %44 = tail call i32 @llvm.smax.i32(i32 %storemerge, i32 %43)
  %add103 = add i32 %43, %storemerge
  %cond105 = select i1 %tobool1.not, i32 %add103, i32 %44
  %cp_nr_rings = getelementptr i8, ptr %dev, i32 2540
  %45 = ptrtoint ptr %cp_nr_rings to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %cond105, ptr %cp_nr_rings, align 4
  tail call void @netdev_update_features(ptr noundef %dev) #24
  %46 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %state.i, align 4
  %and1.i.i198 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i198)
  %tobool.i199.not = icmp eq i32 %and1.i.i198, 0
  br i1 %tobool.i199.not, label %if.else116, label %if.then107

if.then107:                                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #26
  %call108 = tail call i32 @bnxt_open_nic(ptr noundef %add.ptr.i, i1 noundef zeroext true, i1 noundef zeroext false) #24
  br label %cleanup

if.else116:                                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #26
  %call117 = tail call i32 @bnxt_reserve_rings(ptr noundef %add.ptr.i, i1 noundef zeroext true) #24
  br label %cleanup

cleanup:                                          ; preds = %if.else116, %if.then107, %if.then66, %if.then55, %if.then49, %if.then43, %lor.lhs.false20.cleanup_crit_edge, %land.lhs.true17.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call47, %if.then49 ], [ -22, %if.then55 ], [ %call64, %if.then66 ], [ -22, %if.then43 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %land.lhs.true8.cleanup_crit_edge ], [ -22, %lor.lhs.false20.cleanup_crit_edge ], [ -22, %land.lhs.true17.cleanup_crit_edge ], [ %call108, %if.then107 ], [ %call117, %if.else116 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_get_dump_flag(ptr noundef %dev, ptr nocapture noundef writeonly %dump) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %hwrm_spec_code = getelementptr i8, ptr %dev, i32 2704
  %0 = ptrtoint ptr %hwrm_spec_code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwrm_spec_code, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 67585, i32 %1)
  %cmp = icmp ult i32 %1, 67585
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %hwrm_fw_maj_8b = getelementptr i8, ptr %dev, i32 3104
  %2 = ptrtoint ptr %hwrm_fw_maj_8b to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hwrm_fw_maj_8b, align 4
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 %conv, 24
  %hwrm_fw_min_8b = getelementptr i8, ptr %dev, i32 3105
  %4 = ptrtoint ptr %hwrm_fw_min_8b to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hwrm_fw_min_8b, align 1
  %conv2 = zext i8 %5 to i32
  %shl3 = shl nuw nsw i32 %conv2, 16
  %or = or i32 %shl3, %shl
  %hwrm_fw_bld_8b = getelementptr i8, ptr %dev, i32 3106
  %6 = ptrtoint ptr %hwrm_fw_bld_8b to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hwrm_fw_bld_8b, align 2
  %conv5 = zext i8 %7 to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %hwrm_fw_rsvd_8b = getelementptr i8, ptr %dev, i32 3107
  %8 = ptrtoint ptr %hwrm_fw_rsvd_8b to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hwrm_fw_rsvd_8b, align 1
  %conv9 = zext i8 %9 to i32
  %or10 = or i32 %or7, %conv9
  %version = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 1
  %10 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or10, ptr %version, align 4
  %dump_flag = getelementptr i8, ptr %dev, i32 6440
  %11 = ptrtoint ptr %dump_flag to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dump_flag, align 8
  %conv11 = zext i16 %12 to i32
  %flag = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 2
  %13 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv11, ptr %flag, align 4
  %14 = load i16, ptr %dump_flag, align 8
  %call13 = tail call i32 @bnxt_get_coredump_length(ptr noundef %add.ptr.i, i16 noundef zeroext %14) #24
  %len = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 3
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call13, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_get_dump_data(ptr noundef %dev, ptr noundef %dump, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %hwrm_spec_code = getelementptr i8, ptr %dev, i32 2704
  %0 = ptrtoint ptr %hwrm_spec_code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwrm_spec_code, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 67585, i32 %1)
  %cmp = icmp ult i32 %1, 67585
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %len = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 3
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %4 = call ptr @memset(ptr %buf, i32 0, i32 %3)
  %dump_flag = getelementptr i8, ptr %dev, i32 6440
  %5 = ptrtoint ptr %dump_flag to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %dump_flag, align 8
  %conv = zext i16 %6 to i32
  %flag = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 2
  %7 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %flag, align 4
  %call4 = tail call i32 @bnxt_get_coredump(ptr noundef %add.ptr.i, i16 noundef zeroext %6, ptr noundef %buf, ptr noundef %len) #24
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_set_dump(ptr noundef %dev, ptr nocapture noundef readonly %dump) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %flag = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 2
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.84) #27
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %conv = trunc i32 %1 to i16
  %dump_flag = getelementptr i8, ptr %dev, i32 6440
  %2 = ptrtoint ptr %dump_flag to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %dump_flag, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_get_ts_info(ptr nocapture noundef readonly %dev, ptr nocapture noundef %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_cfg = getelementptr i8, ptr %dev, i32 6448
  %0 = ptrtoint ptr %ptp_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_cfg, align 8
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 26, ptr %so_timestamping, align 4
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %phc_index, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 95, ptr %so_timestamping, align 4
  %ptp_clock = getelementptr inbounds %struct.bnxt_ptp_cfg, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ptp_clock, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  %call5 = tail call i32 @ptp_clock_index(ptr noundef nonnull %6) #24
  %7 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call5, ptr %phc_index, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %8 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %9 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 577, ptr %rx_filters, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_get_module_info(ptr noundef %dev, ptr nocapture noundef writeonly %modinfo) #3 align 64 {
entry:
  %data = alloca [93 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 93, ptr nonnull %data) #24
  %0 = call ptr @memset(ptr %data, i32 255, i32 93)
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %module_status = getelementptr i8, ptr %dev, i32 6232
  %1 = ptrtoint ptr %module_status to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %module_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp = icmp ugt i8 %2, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  %hwrm_spec_code = getelementptr i8, ptr %dev, i32 2704
  %3 = ptrtoint ptr %hwrm_spec_code to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwrm_spec_code, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 66050, i32 %4)
  %cmp2 = icmp ult i32 %4, 66050
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @bnxt_read_sfp_module_eeprom_info(ptr noundef %add.ptr.i, i16 noundef zeroext 160, i16 noundef zeroext 0, i16 noundef zeroext 93, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then7, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.106)
  switch i8 %6, label %if.then7.cleanup_crit_edge [
    i8 3, label %sw.bb
    i8 12, label %if.then7.sw.bb14_crit_edge
    i8 13, label %if.then7.sw.bb14_crit_edge32
    i8 17, label %sw.bb17
  ]

if.then7.sw.bb14_crit_edge32:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb14

if.then7.sw.bb14_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb14

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

sw.bb:                                            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #26
  %arrayidx8 = getelementptr inbounds [93 x i8], ptr %data, i32 0, i32 92
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  %type = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %type, align 4
  %eeprom_len = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool10.not = icmp eq i8 %9, 0
  %spec.store.select = select i1 %tobool10.not, i32 256, i32 512
  %11 = ptrtoint ptr %eeprom_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.store.select, ptr %eeprom_len, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %if.then7.sw.bb14_crit_edge, %if.then7.sw.bb14_crit_edge32
  %type15 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %12 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %type15, align 4
  %eeprom_len16 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %13 = ptrtoint ptr %eeprom_len16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 256, ptr %eeprom_len16, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #26
  %type18 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %14 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %type18, align 4
  %eeprom_len19 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %15 = ptrtoint ptr %eeprom_len19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 256, ptr %eeprom_len19, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb17, %sw.bb14, %sw.bb, %if.then7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ 0, %sw.bb17 ], [ 0, %sw.bb14 ], [ 0, %sw.bb ], [ -95, %if.then7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 93, ptr nonnull %data) #24
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_get_module_eeprom(ptr noundef %dev, ptr nocapture noundef readonly %eeprom, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %conv1 = trunc i32 %3 to i16
  %4 = call ptr @memset(ptr %data, i32 0, i32 %3)
  %conv3 = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %conv3)
  %cmp = icmp ult i32 %conv3, 256
  br i1 %cmp, label %if.then, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end24

if.then:                                          ; preds = %entry
  %conv = trunc i32 %1 to i16
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %add = add i32 %6, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp7 = icmp ugt i32 %add, 256
  %conv11 = sub i16 256, %conv
  %length.0 = select i1 %cmp7, i16 %conv11, i16 %conv1
  %call12 = tail call fastcc i32 @bnxt_read_sfp_module_eeprom_info(ptr noundef %add.ptr.i, i16 noundef zeroext 160, i16 noundef zeroext %conv, i16 noundef zeroext %length.0, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end14, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end14:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #26
  %conv15 = zext i16 %length.0 to i32
  %add17 = add nuw nsw i32 %conv3, %conv15
  %add.ptr = getelementptr i8, ptr %data, i32 %conv15
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %9 = trunc i32 %8 to i16
  %conv23 = sub i16 %9, %length.0
  br label %if.end24

if.end24:                                         ; preds = %if.end14, %entry.if.end24_crit_edge
  %data.addr.0 = phi ptr [ %add.ptr, %if.end14 ], [ %data, %entry.if.end24_crit_edge ]
  %start.0 = phi i32 [ %add17, %if.end14 ], [ %1, %entry.if.end24_crit_edge ]
  %length.1 = phi i16 [ %conv23, %if.end14 ], [ %conv1, %entry.if.end24_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %length.1)
  %tobool25.not = icmp eq i16 %length.1, 0
  br i1 %tobool25.not, label %if.end24.cleanup_crit_edge, label %if.then26

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #26
  %10 = trunc i32 %start.0 to i16
  %conv29 = add i16 %10, -256
  %call30 = tail call fastcc i32 @bnxt_read_sfp_module_eeprom_info(ptr noundef %add.ptr.i, i16 noundef zeroext 162, i16 noundef zeroext %conv29, i16 noundef zeroext %length.1, ptr noundef %data.addr.0)
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end24.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.then.cleanup_crit_edge ], [ %call30, %if.then26 ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bnxt_get_eee(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %edata) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_flags = getelementptr i8, ptr %dev, i32 6396
  %0 = ptrtoint ptr %phy_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phy_flags, align 4
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  %eee = getelementptr i8, ptr %dev, i32 6348
  %3 = call ptr @memcpy(ptr %edata, ptr %eee, i32 40)
  %eee_enabled = getelementptr i8, ptr %dev, i32 6368
  %4 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eee_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  %advertised = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 2
  %6 = ptrtoint ptr %advertised to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %advertised, align 4
  %tx_lpi_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 6
  %7 = ptrtoint ptr %tx_lpi_enabled to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tx_lpi_enabled, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %eee_active = getelementptr i8, ptr %dev, i32 6364
  %8 = ptrtoint ptr %eee_active to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %eee_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %if.then7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #26
  %lp_advertised = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 3
  %10 = ptrtoint ptr %lp_advertised to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %lp_advertised, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_set_eee(ptr noundef %dev, ptr nocapture noundef %edata) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %flags = getelementptr i8, ptr %dev, i32 2400
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %port_partition_type = getelementptr i8, ptr %dev, i32 3384
  %2 = ptrtoint ptr %port_partition_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port_partition_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  %and6 = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %or.cond = select i1 %tobool3.not, i1 %tobool7.not, i1 false
  br i1 %or.cond, label %land.lhs.true.land.lhs.true14_crit_edge, label %land.lhs.true11

land.lhs.true.land.lhs.true14_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #26
  br label %land.lhs.true14

land.lhs.true11:                                  ; preds = %land.lhs.true
  %phy_flags = getelementptr i8, ptr %dev, i32 6396
  %4 = ptrtoint ptr %phy_flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %phy_flags, align 4
  %6 = and i8 %5, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool13.not = icmp eq i8 %6, 0
  br i1 %tobool13.not, label %land.lhs.true11.cleanup_crit_edge, label %land.lhs.true11.land.lhs.true14_crit_edge

land.lhs.true11.land.lhs.true14_crit_edge:        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #26
  br label %land.lhs.true14

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

land.lhs.true14:                                  ; preds = %land.lhs.true11.land.lhs.true14_crit_edge, %land.lhs.true.land.lhs.true14_crit_edge
  %phy_state = getelementptr i8, ptr %dev, i32 6194
  %7 = ptrtoint ptr %phy_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %phy_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp = icmp eq i8 %8, 0
  br i1 %cmp, label %if.end, label %land.lhs.true14.cleanup_crit_edge

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true14
  %phy_flags18 = getelementptr i8, ptr %dev, i32 6396
  %9 = ptrtoint ptr %phy_flags18 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %phy_flags18, align 4
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool21.not = icmp eq i8 %11, 0
  br i1 %tobool21.not, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %link_lock = getelementptr i8, ptr %dev, i32 6096
  tail call void @mutex_lock_nested(ptr noundef %link_lock, i32 noundef 0) #24
  %advertising24 = getelementptr i8, ptr %dev, i32 6242
  %12 = ptrtoint ptr %advertising24 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %advertising24, align 2
  %conv.i = zext i16 %13 to i32
  %and.i = shl nuw nsw i32 %conv.i, 2
  %14 = and i32 %and.i, 40
  %and8.i = shl nuw nsw i32 %conv.i, 10
  %15 = and i32 %and8.i, 32768
  %16 = or i32 %14, %15
  %and14.i = shl nuw nsw i32 %conv.i, 6
  %17 = and i32 %and14.i, 4096
  %18 = or i32 %16, %17
  %and20.i = shl nuw nsw i32 %conv.i, 15
  %19 = and i32 %and20.i, 16777216
  %20 = or i32 %18, %19
  %eee_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %21 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %eee_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool26.not = icmp eq i32 %22, 0
  br i1 %tobool26.not, label %if.end23.eee_ok_crit_edge, label %if.end28

if.end23.eee_ok_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #26
  br label %eee_ok

if.end28:                                         ; preds = %if.end23
  %autoneg = getelementptr i8, ptr %dev, i32 6236
  %23 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %autoneg, align 4
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool31.not = icmp eq i8 %25, 0
  br i1 %tobool31.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.85) #27
  br label %eee_exit

if.end33:                                         ; preds = %if.end28
  %tx_lpi_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 6
  %26 = ptrtoint ptr %tx_lpi_enabled to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_lpi_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool34.not = icmp eq i32 %27, 0
  br i1 %tobool34.not, label %if.end33.if.end55_crit_edge, label %if.then35

if.end33.if.end55_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end55

if.then35:                                        ; preds = %if.end33
  %lpi_tmr_hi = getelementptr i8, ptr %dev, i32 6392
  %28 = ptrtoint ptr %lpi_tmr_hi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lpi_tmr_hi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool36.not = icmp eq i32 %29, 0
  br i1 %tobool36.not, label %if.then50, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %if.then35
  %tx_lpi_timer = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 7
  %30 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_lpi_timer, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %29)
  %cmp39 = icmp ugt i32 %31, %29
  br i1 %cmp39, label %land.lhs.true37.if.then45_crit_edge, label %lor.lhs.false41

land.lhs.true37.if.then45_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then45

lor.lhs.false41:                                  ; preds = %land.lhs.true37
  %lpi_tmr_lo = getelementptr i8, ptr %dev, i32 6388
  %32 = ptrtoint ptr %lpi_tmr_lo to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lpi_tmr_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp43 = icmp ult i32 %31, %33
  br i1 %cmp43, label %lor.lhs.false41.if.then45_crit_edge, label %lor.lhs.false41.if.end55_crit_edge

lor.lhs.false41.if.end55_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end55

lor.lhs.false41.if.then45_crit_edge:              ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false41.if.then45_crit_edge, %land.lhs.true37.if.then45_crit_edge
  %lpi_tmr_lo46 = getelementptr i8, ptr %dev, i32 6388
  %34 = ptrtoint ptr %lpi_tmr_lo46 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lpi_tmr_lo46, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.86, i32 noundef %35, i32 noundef %29) #27
  br label %eee_exit

if.then50:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #26
  %tx_lpi_timer51 = getelementptr i8, ptr %dev, i32 6376
  %36 = ptrtoint ptr %tx_lpi_timer51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_lpi_timer51, align 4
  %tx_lpi_timer52 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 7
  %38 = ptrtoint ptr %tx_lpi_timer52 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %tx_lpi_timer52, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then50, %lor.lhs.false41.if.end55_crit_edge, %if.end33.if.end55_crit_edge
  %advertised = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 2
  %39 = ptrtoint ptr %advertised to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %advertised, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool56.not = icmp eq i32 %40, 0
  br i1 %tobool56.not, label %if.then57, label %if.else60

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #26
  %supported = getelementptr i8, ptr %dev, i32 6352
  %41 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %supported, align 4
  %and58 = and i32 %42, %20
  %43 = ptrtoint ptr %advertised to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and58, ptr %advertised, align 4
  br label %if.end67

if.else60:                                        ; preds = %if.end55
  %neg = xor i32 %20, -1
  %and62 = and i32 %40, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.else60.if.end67_crit_edge, label %if.then64

if.else60.if.end67_crit_edge:                     ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end67

if.then64:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.87, i32 noundef %40, i32 noundef %20) #27
  br label %eee_exit

if.end67:                                         ; preds = %if.else60.if.end67_crit_edge, %if.then57
  %44 = ptrtoint ptr %advertised to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %advertised, align 4
  %advertised69 = getelementptr i8, ptr %dev, i32 6356
  %46 = ptrtoint ptr %advertised69 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %advertised69, align 4
  %47 = ptrtoint ptr %tx_lpi_enabled to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_lpi_enabled, align 4
  %tx_lpi_enabled71 = getelementptr i8, ptr %dev, i32 6372
  %49 = ptrtoint ptr %tx_lpi_enabled71 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %tx_lpi_enabled71, align 4
  %tx_lpi_timer72 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 7
  %50 = ptrtoint ptr %tx_lpi_timer72 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_lpi_timer72, align 4
  %tx_lpi_timer73 = getelementptr i8, ptr %dev, i32 6376
  %52 = ptrtoint ptr %tx_lpi_timer73 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %tx_lpi_timer73, align 4
  br label %eee_ok

eee_ok:                                           ; preds = %if.end67, %if.end23.eee_ok_crit_edge
  %53 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %eee_enabled, align 4
  %eee_enabled75 = getelementptr i8, ptr %dev, i32 6368
  %55 = ptrtoint ptr %eee_enabled75 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %eee_enabled75, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %56 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %eee_ok.eee_exit_crit_edge, label %if.then77

eee_ok.eee_exit_crit_edge:                        ; preds = %eee_ok
  call void @__sanitizer_cov_trace_pc() #26
  br label %eee_exit

if.then77:                                        ; preds = %eee_ok
  call void @__sanitizer_cov_trace_pc() #26
  %call78 = tail call i32 @bnxt_hwrm_set_link_setting(ptr noundef %add.ptr.i, i1 noundef zeroext false, i1 noundef zeroext true) #24
  br label %eee_exit

eee_exit:                                         ; preds = %if.then77, %eee_ok.eee_exit_crit_edge, %if.then64, %if.then45, %if.then32
  %rc.0 = phi i32 [ -22, %if.then45 ], [ -22, %if.then64 ], [ %call78, %if.then77 ], [ 0, %eee_ok.eee_exit_crit_edge ], [ -22, %if.then32 ]
  tail call void @mutex_unlock(ptr noundef %link_lock) #24
  br label %cleanup

cleanup:                                          ; preds = %eee_exit, %if.end.cleanup_crit_edge, %land.lhs.true14.cleanup_crit_edge, %land.lhs.true11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %eee_exit ], [ -95, %land.lhs.true14.cleanup_crit_edge ], [ -95, %land.lhs.true11.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_get_link_ksettings(ptr noundef %dev, ptr noundef %lk_ksettings) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1
  %0 = call ptr @memset(ptr %link_modes, i32 0, i32 12)
  %link_lock = getelementptr i8, ptr %dev, i32 6096
  tail call void @mutex_lock_nested(ptr noundef %link_lock, i32 noundef 0) #24
  %support_speeds.i = getelementptr i8, ptr %dev, i32 6208
  %1 = ptrtoint ptr %support_speeds.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %support_speeds.i, align 4
  %conv.i = zext i16 %2 to i32
  %and.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %3 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %link_modes, align 4
  %or.i.i = or i32 %4, 8
  store i32 %or.i.i, ptr %link_modes, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %and2.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then4.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end8.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #26
  %5 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %link_modes, align 4
  %or.i114.i = or i32 %6, 32
  store i32 %or.i114.i, ptr %link_modes, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4.i, %if.end.i.if.end8.i_crit_edge
  %and10.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end8.i.if.end16.i_crit_edge, label %if.then12.i

if.end8.i.if.end16.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #26
  %7 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %link_modes, align 4
  %or.i115.i = or i32 %8, 4096
  store i32 %or.i115.i, ptr %link_modes, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.end8.i.if.end16.i_crit_edge
  %and18.i = and i32 %conv.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end16.i.if.end24.i_crit_edge, label %if.then20.i

if.end16.i.if.end24.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end24.i

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #26
  %9 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %link_modes, align 4
  %or.i116.i = or i32 %10, -2147483648
  store i32 %or.i116.i, ptr %link_modes, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then20.i, %if.end16.i.if.end24.i_crit_edge
  %and26.i = and i32 %conv.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end24.i.if.end32.i_crit_edge, label %if.then28.i

if.end24.i.if.end32.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end32.i

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #26
  %11 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %link_modes, align 4
  %or.i117.i = or i32 %12, 16777216
  store i32 %or.i117.i, ptr %link_modes, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then28.i, %if.end24.i.if.end32.i_crit_edge
  %and34.i = and i32 %conv.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.end32.i.if.end40.i_crit_edge, label %if.then36.i

if.end32.i.if.end40.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end40.i

if.then36.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i.i = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i, align 4
  %or.i118.i = or i32 %14, 4
  store i32 %or.i118.i, ptr %add.ptr.i.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then36.i, %if.end32.i.if.end40.i_crit_edge
  %and42.i = and i32 %conv.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.end40.i.if.end48.i_crit_edge, label %if.then44.i

if.end40.i.if.end48.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end48.i

if.then44.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i119.i = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %add.ptr.i119.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i119.i, align 4
  %or.i120.i = or i32 %16, 64
  store i32 %or.i120.i, ptr %add.ptr.i119.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then44.i, %if.end40.i.if.end48.i_crit_edge
  %support_pam4_speeds.i = getelementptr i8, ptr %dev, i32 6210
  %17 = ptrtoint ptr %support_pam4_speeds.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %support_pam4_speeds.i, align 2
  %conv49.i = zext i16 %18 to i32
  %and50.i = and i32 %conv49.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %if.end48.i.if.end56.i_crit_edge, label %if.then52.i

if.end48.i.if.end56.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end56.i

if.then52.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i121.i = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %add.ptr.i121.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i121.i, align 4
  %or.i122.i = or i32 %20, 4194304
  store i32 %or.i122.i, ptr %add.ptr.i121.i, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then52.i, %if.end48.i.if.end56.i_crit_edge
  %and58.i = and i32 %conv49.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %if.end56.i.if.end64.i_crit_edge, label %if.then60.i

if.end56.i.if.end64.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end64.i

if.then60.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i123.i = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %add.ptr.i123.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i123.i, align 4
  %or.i124.i = or i32 %22, 134217728
  store i32 %or.i124.i, ptr %add.ptr.i123.i, align 4
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then60.i, %if.end56.i.if.end64.i_crit_edge
  %and66.i = and i32 %conv49.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  br i1 %tobool67.not.i, label %if.end64.i.if.end72.i_crit_edge, label %if.then68.i

if.end64.i.if.end72.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end72.i

if.then68.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i125.i = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %add.ptr.i125.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i125.i, align 4
  %or.i126.i = or i32 %24, 4
  store i32 %or.i126.i, ptr %add.ptr.i125.i, align 4
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then68.i, %if.end64.i.if.end72.i_crit_edge
  %25 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %link_modes, align 4
  %or.i128.i = or i32 %26, 24576
  store i32 %or.i128.i, ptr %link_modes, align 4
  %support_auto_speeds.i = getelementptr i8, ptr %dev, i32 6216
  %27 = ptrtoint ptr %support_auto_speeds.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %support_auto_speeds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool80.not.i = icmp eq i16 %28, 0
  br i1 %tobool80.not.i, label %lor.lhs.false.i, label %if.end72.i.if.then83.i_crit_edge

if.end72.i.if.then83.i_crit_edge:                 ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then83.i

lor.lhs.false.i:                                  ; preds = %if.end72.i
  %support_pam4_auto_speeds.i = getelementptr i8, ptr %dev, i32 6218
  %29 = ptrtoint ptr %support_pam4_auto_speeds.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %support_pam4_auto_speeds.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool82.not.i = icmp eq i16 %30, 0
  br i1 %tobool82.not.i, label %lor.lhs.false.i.if.end87.i_crit_edge, label %lor.lhs.false.i.if.then83.i_crit_edge

lor.lhs.false.i.if.then83.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then83.i

lor.lhs.false.i.if.end87.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end87.i

if.then83.i:                                      ; preds = %lor.lhs.false.i.if.then83.i_crit_edge, %if.end72.i.if.then83.i_crit_edge
  %or.i129.i = or i32 %26, 24640
  %31 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i129.i, ptr %link_modes, align 4
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then83.i, %lor.lhs.false.i.if.end87.i_crit_edge
  %fec_cfg1.i.i = getelementptr i8, ptr %dev, i32 6234
  %32 = ptrtoint ptr %fec_cfg1.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %fec_cfg1.i.i, align 2
  %conv.i.i = zext i16 %33 to i32
  %and.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i.i.i.i = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 0, i32 1
  br label %cleanup.sink.split.i.i

if.end.i.i:                                       ; preds = %if.end87.i
  %and3.i.i = and i32 %conv.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end9.i.i_crit_edge, label %if.then5.i.i

if.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end9.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i.i32.i.i = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 0, i32 1
  %34 = ptrtoint ptr %add.ptr.i.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i.i32.i.i, align 4
  %or.i.i33.i.i = or i32 %35, 524288
  store i32 %or.i.i33.i.i, ptr %add.ptr.i.i32.i.i, align 4
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then5.i.i, %if.end.i.i.if.end9.i.i_crit_edge
  %and11.i.i = and i32 %conv.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end9.i.i.if.end17.i.i_crit_edge, label %if.then13.i.i

if.end9.i.i.if.end17.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end17.i.i

if.then13.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i.i34.i.i = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %add.ptr.i.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i.i34.i.i, align 4
  %or.i.i35.i.i = or i32 %37, 262144
  store i32 %or.i.i35.i.i, ptr %add.ptr.i.i34.i.i, align 4
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then13.i.i, %if.end9.i.i.if.end17.i.i_crit_edge
  %and19.i.i = and i32 %conv.i.i, 10240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end17.i.i.bnxt_fw_to_ethtool_support_spds.exit_crit_edge, label %if.then21.i.i

if.end17.i.i.bnxt_fw_to_ethtool_support_spds.exit_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_fw_to_ethtool_support_spds.exit

if.then21.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i.i36.i.i = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 0, i32 2
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.then21.i.i, %if.then.i.i
  %add.ptr.i.i36.sink39.i.i = phi ptr [ %add.ptr.i.i36.i.i, %if.then21.i.i ], [ %add.ptr.i.i.i.i, %if.then.i.i ]
  %.sink38.i.i = phi i32 [ 1024, %if.then21.i.i ], [ 131072, %if.then.i.i ]
  %38 = ptrtoint ptr %add.ptr.i.i36.sink39.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i36.sink39.i.i, align 4
  %or.i.i37.i.i = or i32 %39, %.sink38.i.i
  store i32 %or.i.i37.i.i, ptr %add.ptr.i.i36.sink39.i.i, align 4
  br label %bnxt_fw_to_ethtool_support_spds.exit

bnxt_fw_to_ethtool_support_spds.exit:             ; preds = %cleanup.sink.split.i.i, %if.end17.i.i.bnxt_fw_to_ethtool_support_spds.exit_crit_edge
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 1
  %40 = call ptr @memset(ptr %advertising, i32 0, i32 12)
  %autoneg = getelementptr i8, ptr %dev, i32 6236
  %41 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not = icmp eq i8 %42, 0
  br i1 %tobool.not, label %if.else19, label %if.then

if.then:                                          ; preds = %bnxt_fw_to_ethtool_support_spds.exit
  %advertising.i = getelementptr i8, ptr %dev, i32 6242
  %43 = ptrtoint ptr %advertising.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %advertising.i, align 2
  %45 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %autoneg, align 4
  %47 = and i8 %46, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i105 = icmp eq i8 %47, 0
  br i1 %tobool.not.i105, label %if.then.if.end.i109_crit_edge, label %if.then.i106

if.then.if.end.i109_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end.i109

if.then.i106:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #26
  %auto_pause_setting.i = getelementptr i8, ptr %dev, i32 6199
  %48 = ptrtoint ptr %auto_pause_setting.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %auto_pause_setting.i, align 1
  %phi.cast.i = zext i8 %49 to i32
  br label %if.end.i109

if.end.i109:                                      ; preds = %if.then.i106, %if.then.if.end.i109_crit_edge
  %fw_pause.0.i = phi i32 [ %phi.cast.i, %if.then.i106 ], [ 0, %if.then.if.end.i109_crit_edge ]
  %conv1.i = zext i16 %44 to i32
  %and2.i107 = and i32 %conv1.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i107)
  %tobool3.not.i108 = icmp eq i32 %and2.i107, 0
  br i1 %tobool3.not.i108, label %if.end.i109.if.end6.i_crit_edge, label %if.then4.i111

if.end.i109.if.end6.i_crit_edge:                  ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end6.i

if.then4.i111:                                    ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #26
  %50 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %advertising, align 4
  %or.i.i110 = or i32 %51, 8
  store i32 %or.i.i110, ptr %advertising, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i111, %if.end.i109.if.end6.i_crit_edge
  %and8.i = and i32 %conv1.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end6.i.if.end14.i_crit_edge, label %if.then10.i

if.end6.i.if.end14.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end14.i

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #26
  %52 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %advertising, align 4
  %or.i131.i = or i32 %53, 32
  store i32 %or.i131.i, ptr %advertising, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then10.i, %if.end6.i.if.end14.i_crit_edge
  %and16.i = and i32 %conv1.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.if.end22.i_crit_edge, label %if.then18.i

if.end14.i.if.end22.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end22.i

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #26
  %54 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %advertising, align 4
  %or.i132.i = or i32 %55, 4096
  store i32 %or.i132.i, ptr %advertising, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then18.i, %if.end14.i.if.end22.i_crit_edge
  %and24.i = and i32 %conv1.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end22.i.if.end30.i_crit_edge, label %if.then26.i

if.end22.i.if.end30.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end30.i

if.then26.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #26
  %56 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %advertising, align 4
  %or.i133.i = or i32 %57, -2147483648
  store i32 %or.i133.i, ptr %advertising, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then26.i, %if.end22.i.if.end30.i_crit_edge
  %and32.i = and i32 %conv1.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.end30.i.if.end38.i_crit_edge, label %if.then34.i

if.end30.i.if.end38.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end38.i

if.then34.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #26
  %58 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %advertising, align 4
  %or.i134.i = or i32 %59, 16777216
  store i32 %or.i134.i, ptr %advertising, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then34.i, %if.end30.i.if.end38.i_crit_edge
  %and40.i = and i32 %conv1.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.end38.i.if.end46.i_crit_edge, label %if.then42.i

if.end38.i.if.end46.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end46.i

if.then42.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i.i112 = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 1, i32 1
  %60 = ptrtoint ptr %add.ptr.i.i112 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr.i.i112, align 4
  %or.i135.i = or i32 %61, 4
  store i32 %or.i135.i, ptr %add.ptr.i.i112, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then42.i, %if.end38.i.if.end46.i_crit_edge
  %and48.i = and i32 %conv1.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %if.end46.i.if.end54.i_crit_edge, label %if.then50.i

if.end46.i.if.end54.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end54.i

if.then50.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i136.i = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 1, i32 1
  %62 = ptrtoint ptr %add.ptr.i136.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr.i136.i, align 4
  %or.i137.i = or i32 %63, 64
  store i32 %or.i137.i, ptr %add.ptr.i136.i, align 4
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then50.i, %if.end46.i.if.end54.i_crit_edge
  %and56.i = and i32 %fw_pause.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %if.else.i, label %if.then58.i

if.then58.i:                                      ; preds = %if.end54.i
  %64 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %advertising, align 4
  %or.i138.i = or i32 %65, 8192
  store i32 %or.i138.i, ptr %advertising, align 4
  %and63.i = and i32 %fw_pause.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  br i1 %tobool64.not.i, label %if.then65.i, label %if.then58.i.if.end78.i_crit_edge

if.then58.i.if.end78.i_crit_edge:                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end78.i

if.then65.i:                                      ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #26
  %or.i139.i = or i32 %65, 24576
  br label %if.end78.i.sink.split

if.else.i:                                        ; preds = %if.end54.i
  %and71.i = and i32 %fw_pause.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %tobool72.not.i = icmp eq i32 %and71.i, 0
  br i1 %tobool72.not.i, label %if.else.i.if.end78.i_crit_edge, label %if.then73.i

if.else.i.if.end78.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end78.i

if.then73.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #26
  %66 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %advertising, align 4
  %or.i140.i = or i32 %67, 16384
  br label %if.end78.i.sink.split

if.end78.i.sink.split:                            ; preds = %if.then73.i, %if.then65.i
  %or.i140.i.sink = phi i32 [ %or.i140.i, %if.then73.i ], [ %or.i139.i, %if.then65.i ]
  %68 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or.i140.i.sink, ptr %advertising, align 4
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.end78.i.sink.split, %if.else.i.if.end78.i_crit_edge, %if.then58.i.if.end78.i_crit_edge
  %advertising_pam4.i = getelementptr i8, ptr %dev, i32 6244
  %69 = ptrtoint ptr %advertising_pam4.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %advertising_pam4.i, align 4
  %conv79.i = zext i16 %70 to i32
  %and80.i = and i32 %conv79.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %if.end78.i.if.end86.i_crit_edge, label %if.then82.i

if.end78.i.if.end86.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end86.i

if.then82.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i141.i = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 1, i32 1
  %71 = ptrtoint ptr %add.ptr.i141.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr.i141.i, align 4
  %or.i142.i = or i32 %72, 4194304
  store i32 %or.i142.i, ptr %add.ptr.i141.i, align 4
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.then82.i, %if.end78.i.if.end86.i_crit_edge
  %and88.i = and i32 %conv79.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  br i1 %tobool89.not.i, label %if.end86.i.if.end94.i_crit_edge, label %if.then90.i

if.end86.i.if.end94.i_crit_edge:                  ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end94.i

if.then90.i:                                      ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i143.i = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 1, i32 1
  %73 = ptrtoint ptr %add.ptr.i143.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr.i143.i, align 4
  %or.i144.i = or i32 %74, 134217728
  store i32 %or.i144.i, ptr %add.ptr.i143.i, align 4
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.then90.i, %if.end86.i.if.end94.i_crit_edge
  %and96.i = and i32 %conv79.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.i)
  %tobool97.not.i = icmp eq i32 %and96.i, 0
  br i1 %tobool97.not.i, label %if.end94.i.if.end102.i_crit_edge, label %if.then98.i

if.end94.i.if.end102.i_crit_edge:                 ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end102.i

if.then98.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i145.i = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 1, i32 2
  %75 = ptrtoint ptr %add.ptr.i145.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr.i145.i, align 4
  %or.i146.i = or i32 %76, 4
  store i32 %or.i146.i, ptr %add.ptr.i145.i, align 4
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then98.i, %if.end94.i.if.end102.i_crit_edge
  %77 = ptrtoint ptr %fec_cfg1.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %fec_cfg1.i.i, align 2
  %conv.i.i114 = zext i16 %78 to i32
  %79 = and i32 %conv.i.i114, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %79)
  %.not.i.i = icmp eq i32 %79, 4
  br i1 %.not.i.i, label %if.end.i.i117, label %if.then.i.i116

if.then.i.i116:                                   ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i.i.i.i115 = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 1, i32 1
  br label %cleanup.sink.split.i.i120

if.end.i.i117:                                    ; preds = %if.end102.i
  %and6.i.i = and i32 %conv.i.i114, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end.i.i117.if.end12.i.i_crit_edge, label %if.then8.i.i

if.end.i.i117.if.end12.i.i_crit_edge:             ; preds = %if.end.i.i117
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end12.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i117
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i.i36.i.i118 = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 1, i32 1
  %80 = ptrtoint ptr %add.ptr.i.i36.i.i118 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr.i.i36.i.i118, align 4
  %or.i.i37.i.i119 = or i32 %81, 524288
  store i32 %or.i.i37.i.i119, ptr %add.ptr.i.i36.i.i118, align 4
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then8.i.i, %if.end.i.i117.if.end12.i.i_crit_edge
  %and14.i.i = and i32 %conv.i.i114, 1344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end12.i.i.if.end20.i.i_crit_edge, label %if.then16.i.i

if.end12.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end20.i.i

if.then16.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i.i38.i.i = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 1, i32 1
  %82 = ptrtoint ptr %add.ptr.i.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr.i.i38.i.i, align 4
  %or.i.i39.i.i = or i32 %83, 262144
  store i32 %or.i.i39.i.i, ptr %add.ptr.i.i38.i.i, align 4
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then16.i.i, %if.end12.i.i.if.end20.i.i_crit_edge
  %and22.i.i = and i32 %conv.i.i114, 20480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i)
  %tobool23.not.i.i = icmp eq i32 %and22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end20.i.i.bnxt_fw_to_ethtool_advertised_spds.exit_crit_edge, label %if.then24.i.i

if.end20.i.i.bnxt_fw_to_ethtool_advertised_spds.exit_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_fw_to_ethtool_advertised_spds.exit

if.then24.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i.i40.i.i = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 1, i32 2
  br label %cleanup.sink.split.i.i120

cleanup.sink.split.i.i120:                        ; preds = %if.then24.i.i, %if.then.i.i116
  %add.ptr.i.i40.sink43.i.i = phi ptr [ %add.ptr.i.i40.i.i, %if.then24.i.i ], [ %add.ptr.i.i.i.i115, %if.then.i.i116 ]
  %.sink42.i.i = phi i32 [ 1024, %if.then24.i.i ], [ 131072, %if.then.i.i116 ]
  %84 = ptrtoint ptr %add.ptr.i.i40.sink43.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr.i.i40.sink43.i.i, align 4
  %or.i.i41.i.i = or i32 %85, %.sink42.i.i
  store i32 %or.i.i41.i.i, ptr %add.ptr.i.i40.sink43.i.i, align 4
  br label %bnxt_fw_to_ethtool_advertised_spds.exit

bnxt_fw_to_ethtool_advertised_spds.exit:          ; preds = %cleanup.sink.split.i.i120, %if.end20.i.i.bnxt_fw_to_ethtool_advertised_spds.exit_crit_edge
  %86 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %advertising, align 4
  %or.i = or i32 %87, 64
  store i32 %or.i, ptr %advertising, align 4
  %autoneg8 = getelementptr inbounds %struct.ethtool_link_settings, ptr %lk_ksettings, i32 0, i32 5
  %88 = ptrtoint ptr %autoneg8 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %autoneg8, align 1
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %lk_ksettings, i32 0, i32 2
  %89 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -1, ptr %duplex, align 4
  %phy_link_status = getelementptr i8, ptr %dev, i32 6192
  %90 = ptrtoint ptr %phy_link_status to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %phy_link_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %91)
  %cmp = icmp eq i8 %91, 2
  br i1 %cmp, label %if.then10, label %bnxt_fw_to_ethtool_advertised_spds.exit.if.end17_crit_edge

bnxt_fw_to_ethtool_advertised_spds.exit.if.end17_crit_edge: ; preds = %bnxt_fw_to_ethtool_advertised_spds.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end17

if.then10:                                        ; preds = %bnxt_fw_to_ethtool_advertised_spds.exit
  %lp_auto_link_speeds.i = getelementptr i8, ptr %dev, i32 6220
  %92 = ptrtoint ptr %lp_auto_link_speeds.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %lp_auto_link_speeds.i, align 4
  %94 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %autoneg, align 4
  %96 = and i8 %95, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.not.i122 = icmp eq i8 %96, 0
  br i1 %tobool.not.i122, label %if.then10.if.end.i129_crit_edge, label %if.then.i124

if.then10.if.end.i129_crit_edge:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end.i129

if.then.i124:                                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #26
  %lp_pause.i = getelementptr i8, ptr %dev, i32 6198
  %97 = ptrtoint ptr %lp_pause.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %lp_pause.i, align 2
  %phi.cast.i123 = zext i8 %98 to i32
  br label %if.end.i129

if.end.i129:                                      ; preds = %if.then.i124, %if.then10.if.end.i129_crit_edge
  %fw_pause.0.i125 = phi i32 [ %phi.cast.i123, %if.then.i124 ], [ 0, %if.then10.if.end.i129_crit_edge ]
  %conv1.i126 = zext i16 %93 to i32
  %and2.i127 = and i32 %conv1.i126, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i127)
  %tobool3.not.i128 = icmp eq i32 %and2.i127, 0
  br i1 %tobool3.not.i128, label %if.end.i129.if.end5.i_crit_edge, label %if.then4.i131

if.end.i129.if.end5.i_crit_edge:                  ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end5.i

if.then4.i131:                                    ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #26
  %lp_advertising.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 2
  %99 = ptrtoint ptr %lp_advertising.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %lp_advertising.i, align 4
  %or.i.i130 = or i32 %100, 8
  store i32 %or.i.i130, ptr %lp_advertising.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i131, %if.end.i129.if.end5.i_crit_edge
  %and7.i = and i32 %conv1.i126, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end5.i.if.end13.i_crit_edge, label %if.then9.i

if.end5.i.if.end13.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end13.i

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #26
  %lp_advertising11.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 2
  %101 = ptrtoint ptr %lp_advertising11.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %lp_advertising11.i, align 4
  %or.i128.i132 = or i32 %102, 32
  store i32 %or.i128.i132, ptr %lp_advertising11.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i, %if.end5.i.if.end13.i_crit_edge
  %and15.i = and i32 %conv1.i126, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end13.i.if.end21.i_crit_edge, label %if.then17.i

if.end13.i.if.end21.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #26
  %lp_advertising19.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 2
  %103 = ptrtoint ptr %lp_advertising19.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %lp_advertising19.i, align 4
  %or.i129.i133 = or i32 %104, 4096
  store i32 %or.i129.i133, ptr %lp_advertising19.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end13.i.if.end21.i_crit_edge
  %and23.i = and i32 %conv1.i126, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end21.i.if.end29.i_crit_edge, label %if.then25.i

if.end21.i.if.end29.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end29.i

if.then25.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #26
  %lp_advertising27.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 2
  %105 = ptrtoint ptr %lp_advertising27.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %lp_advertising27.i, align 4
  %or.i130.i = or i32 %106, -2147483648
  store i32 %or.i130.i, ptr %lp_advertising27.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then25.i, %if.end21.i.if.end29.i_crit_edge
  %and31.i = and i32 %conv1.i126, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.end29.i.if.end37.i_crit_edge, label %if.then33.i

if.end29.i.if.end37.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end37.i

if.then33.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #26
  %lp_advertising35.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 2
  %107 = ptrtoint ptr %lp_advertising35.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %lp_advertising35.i, align 4
  %or.i131.i134 = or i32 %108, 16777216
  store i32 %or.i131.i134, ptr %lp_advertising35.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then33.i, %if.end29.i.if.end37.i_crit_edge
  %and39.i = and i32 %conv1.i126, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.end37.i.if.end45.i_crit_edge, label %if.then41.i

if.end37.i.if.end45.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end45.i

if.then41.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i.i135 = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 2, i32 1
  %109 = ptrtoint ptr %add.ptr.i.i135 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %add.ptr.i.i135, align 4
  %or.i132.i136 = or i32 %110, 4
  store i32 %or.i132.i136, ptr %add.ptr.i.i135, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then41.i, %if.end37.i.if.end45.i_crit_edge
  %and47.i = and i32 %conv1.i126, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.end45.i.if.end53.i_crit_edge, label %if.then49.i

if.end45.i.if.end53.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end53.i

if.then49.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i133.i = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 2, i32 1
  %111 = ptrtoint ptr %add.ptr.i133.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %add.ptr.i133.i, align 4
  %or.i134.i137 = or i32 %112, 64
  store i32 %or.i134.i137, ptr %add.ptr.i133.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then49.i, %if.end45.i.if.end53.i_crit_edge
  %and55.i = and i32 %fw_pause.0.i125, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %if.else.i139, label %if.then57.i

if.then57.i:                                      ; preds = %if.end53.i
  %lp_advertising59.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 2
  %113 = ptrtoint ptr %lp_advertising59.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %lp_advertising59.i, align 4
  %or.i135.i138 = or i32 %114, 8192
  store i32 %or.i135.i138, ptr %lp_advertising59.i, align 4
  %and62.i = and i32 %fw_pause.0.i125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i, label %if.then64.i, label %if.then57.i.if.end77.i_crit_edge

if.then57.i.if.end77.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end77.i

if.then64.i:                                      ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #26
  %or.i136.i = or i32 %114, 24576
  %115 = ptrtoint ptr %lp_advertising59.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %or.i136.i, ptr %lp_advertising59.i, align 4
  br label %if.end77.i

if.else.i139:                                     ; preds = %if.end53.i
  %and70.i = and i32 %fw_pause.0.i125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %tobool71.not.i = icmp eq i32 %and70.i, 0
  br i1 %tobool71.not.i, label %if.else.i139.if.end77.i_crit_edge, label %if.then72.i

if.else.i139.if.end77.i_crit_edge:                ; preds = %if.else.i139
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end77.i

if.then72.i:                                      ; preds = %if.else.i139
  call void @__sanitizer_cov_trace_pc() #26
  %lp_advertising74.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 2
  %116 = ptrtoint ptr %lp_advertising74.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %lp_advertising74.i, align 4
  %or.i137.i140 = or i32 %117, 16384
  store i32 %or.i137.i140, ptr %lp_advertising74.i, align 4
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then72.i, %if.else.i139.if.end77.i_crit_edge, %if.then64.i, %if.then57.i.if.end77.i_crit_edge
  %lp_auto_pam4_link_speeds.i = getelementptr i8, ptr %dev, i32 6222
  %118 = ptrtoint ptr %lp_auto_pam4_link_speeds.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %lp_auto_pam4_link_speeds.i, align 2
  %conv78.i = zext i16 %119 to i32
  %and79.i = and i32 %conv78.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i141 = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i141, label %if.end77.i.if.end85.i_crit_edge, label %if.then81.i

if.end77.i.if.end85.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end85.i

if.then81.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i138.i = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 2, i32 1
  %120 = ptrtoint ptr %add.ptr.i138.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %add.ptr.i138.i, align 4
  %or.i139.i142 = or i32 %121, 4194304
  store i32 %or.i139.i142, ptr %add.ptr.i138.i, align 4
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then81.i, %if.end77.i.if.end85.i_crit_edge
  %and87.i = and i32 %conv78.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp eq i32 %and87.i, 0
  br i1 %tobool88.not.i, label %if.end85.i.if.end93.i_crit_edge, label %if.then89.i

if.end85.i.if.end93.i_crit_edge:                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end93.i

if.then89.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i140.i = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 2, i32 1
  %122 = ptrtoint ptr %add.ptr.i140.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %add.ptr.i140.i, align 4
  %or.i141.i = or i32 %123, 134217728
  store i32 %or.i141.i, ptr %add.ptr.i140.i, align 4
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then89.i, %if.end85.i.if.end93.i_crit_edge
  %and95.i = and i32 %conv78.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %tobool96.not.i = icmp eq i32 %and95.i, 0
  br i1 %tobool96.not.i, label %if.end93.i.bnxt_fw_to_ethtool_lp_adv.exit_crit_edge, label %if.then97.i

if.end93.i.bnxt_fw_to_ethtool_lp_adv.exit_crit_edge: ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_fw_to_ethtool_lp_adv.exit

if.then97.i:                                      ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr.i142.i = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 2, i32 2
  %124 = ptrtoint ptr %add.ptr.i142.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %add.ptr.i142.i, align 4
  %or.i143.i = or i32 %125, 4
  store i32 %or.i143.i, ptr %add.ptr.i142.i, align 4
  br label %bnxt_fw_to_ethtool_lp_adv.exit

bnxt_fw_to_ethtool_lp_adv.exit:                   ; preds = %if.then97.i, %if.end93.i.bnxt_fw_to_ethtool_lp_adv.exit_crit_edge
  %duplex11 = getelementptr i8, ptr %dev, i32 6196
  %126 = ptrtoint ptr %duplex11 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %duplex11, align 4
  %128 = and i8 %127, 1
  %129 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %duplex, align 4
  br label %if.end17

if.end17:                                         ; preds = %bnxt_fw_to_ethtool_lp_adv.exit, %bnxt_fw_to_ethtool_advertised_spds.exit.if.end17_crit_edge
  %link_speed = getelementptr i8, ptr %dev, i32 6206
  %130 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %link_speed, align 2
  %132 = zext i16 %131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.107)
  switch i16 %131, label %sw.default.i [
    i16 1, label %if.end17.if.end29_crit_edge
    i16 10, label %sw.bb1.i
    i16 25, label %sw.bb2.i
    i16 100, label %sw.bb3.i
    i16 200, label %sw.bb4.i
    i16 250, label %sw.bb5.i
    i16 400, label %sw.bb6.i
    i16 500, label %sw.bb7.i
    i16 1000, label %sw.bb8.i
  ]

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end29

sw.bb1.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end29

sw.bb2.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end29

sw.bb3.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end29

sw.bb4.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end29

sw.bb5.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end29

sw.bb6.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end29

sw.bb7.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end29

sw.bb8.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end29

sw.default.i:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end29

if.else19:                                        ; preds = %bnxt_fw_to_ethtool_support_spds.exit
  %autoneg20 = getelementptr inbounds %struct.ethtool_link_settings, ptr %lk_ksettings, i32 0, i32 5
  %133 = ptrtoint ptr %autoneg20 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %autoneg20, align 1
  %req_link_speed = getelementptr i8, ptr %dev, i32 6240
  %134 = ptrtoint ptr %req_link_speed to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %req_link_speed, align 4
  %136 = zext i16 %135 to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.108)
  switch i16 %135, label %sw.default.i151 [
    i16 1, label %if.else19.bnxt_fw_to_ethtool_speed.exit153_crit_edge
    i16 10, label %sw.bb1.i143
    i16 25, label %sw.bb2.i144
    i16 100, label %sw.bb3.i145
    i16 200, label %sw.bb4.i146
    i16 250, label %sw.bb5.i147
    i16 400, label %sw.bb6.i148
    i16 500, label %sw.bb7.i149
    i16 1000, label %sw.bb8.i150
  ]

if.else19.bnxt_fw_to_ethtool_speed.exit153_crit_edge: ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_fw_to_ethtool_speed.exit153

sw.bb1.i143:                                      ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_fw_to_ethtool_speed.exit153

sw.bb2.i144:                                      ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_fw_to_ethtool_speed.exit153

sw.bb3.i145:                                      ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_fw_to_ethtool_speed.exit153

sw.bb4.i146:                                      ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_fw_to_ethtool_speed.exit153

sw.bb5.i147:                                      ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_fw_to_ethtool_speed.exit153

sw.bb6.i148:                                      ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_fw_to_ethtool_speed.exit153

sw.bb7.i149:                                      ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_fw_to_ethtool_speed.exit153

sw.bb8.i150:                                      ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_fw_to_ethtool_speed.exit153

sw.default.i151:                                  ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_fw_to_ethtool_speed.exit153

bnxt_fw_to_ethtool_speed.exit153:                 ; preds = %sw.default.i151, %sw.bb8.i150, %sw.bb7.i149, %sw.bb6.i148, %sw.bb5.i147, %sw.bb4.i146, %sw.bb3.i145, %sw.bb2.i144, %sw.bb1.i143, %if.else19.bnxt_fw_to_ethtool_speed.exit153_crit_edge
  %retval.0.i152 = phi i32 [ -1, %sw.default.i151 ], [ 100000, %sw.bb8.i150 ], [ 50000, %sw.bb7.i149 ], [ 40000, %sw.bb6.i148 ], [ 25000, %sw.bb5.i147 ], [ 20000, %sw.bb4.i146 ], [ 10000, %sw.bb3.i145 ], [ 2500, %sw.bb2.i144 ], [ 1000, %sw.bb1.i143 ], [ 100, %if.else19.bnxt_fw_to_ethtool_speed.exit153_crit_edge ]
  %duplex22 = getelementptr inbounds %struct.ethtool_link_settings, ptr %lk_ksettings, i32 0, i32 2
  %137 = ptrtoint ptr %duplex22 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %duplex22, align 4
  %req_duplex = getelementptr i8, ptr %dev, i32 6238
  %138 = ptrtoint ptr %req_duplex to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %req_duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %139)
  %cmp24 = icmp eq i8 %139, 1
  %spec.store.select = zext i1 %cmp24 to i8
  %140 = ptrtoint ptr %duplex22 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %spec.store.select, ptr %duplex22, align 4
  br label %if.end29

if.end29:                                         ; preds = %bnxt_fw_to_ethtool_speed.exit153, %sw.default.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end17.if.end29_crit_edge
  %ethtool_speed.0 = phi i32 [ %retval.0.i152, %bnxt_fw_to_ethtool_speed.exit153 ], [ -1, %sw.default.i ], [ 100000, %sw.bb8.i ], [ 50000, %sw.bb7.i ], [ 40000, %sw.bb6.i ], [ 25000, %sw.bb5.i ], [ 20000, %sw.bb4.i ], [ 10000, %sw.bb3.i ], [ 2500, %sw.bb2.i ], [ 1000, %sw.bb1.i ], [ 100, %if.end17.if.end29_crit_edge ]
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %lk_ksettings, i32 0, i32 1
  %141 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %ethtool_speed.0, ptr %speed, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %lk_ksettings, i32 0, i32 3
  %142 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 -17, ptr %port, align 1
  %media_type = getelementptr i8, ptr %dev, i32 6189
  %143 = ptrtoint ptr %media_type to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %media_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %144)
  %cmp31 = icmp eq i8 %144, 1
  br i1 %cmp31, label %if.then33, label %if.else41

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #26
  %145 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %port, align 1
  %146 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %link_modes, align 4
  %or.i101 = or i32 %147, 128
  store i32 %or.i101, ptr %link_modes, align 4
  %148 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %advertising, align 4
  %or.i102 = or i32 %149, 128
  store i32 %or.i102, ptr %advertising, align 4
  br label %if.end63

if.else41:                                        ; preds = %if.end29
  %150 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %link_modes, align 4
  %or.i103 = or i32 %151, 1024
  store i32 %or.i103, ptr %link_modes, align 4
  %152 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %advertising, align 4
  %or.i104 = or i32 %153, 1024
  store i32 %or.i104, ptr %advertising, align 4
  %154 = ptrtoint ptr %media_type to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %media_type, align 1
  %156 = zext i8 %155 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values.109)
  switch i8 %155, label %if.else41.if.end63_crit_edge [
    i8 2, label %if.then52
    i8 3, label %if.then59
  ]

if.else41.if.end63_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end63

if.then52:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #26
  %157 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 5, ptr %port, align 1
  br label %if.end63

if.then59:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #26
  %158 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 3, ptr %port, align 1
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %if.then52, %if.else41.if.end63_crit_edge, %if.then33
  %phy_addr = getelementptr i8, ptr %dev, i32 6191
  %159 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %phy_addr, align 1
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %lk_ksettings, i32 0, i32 4
  %161 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %phy_address, align 2
  tail call void @mutex_unlock(ptr noundef %link_lock) #24
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_set_link_ksettings(ptr noundef %dev, ptr noundef %lk_ksettings) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %link_info1 = getelementptr i8, ptr %dev, i32 6188
  %flags = getelementptr i8, ptr %dev, i32 2400
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.cleanup189_crit_edge

entry.cleanup189_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup189

land.lhs.true:                                    ; preds = %entry
  %port_partition_type = getelementptr i8, ptr %dev, i32 3384
  %2 = ptrtoint ptr %port_partition_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port_partition_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  %and6 = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %or.cond = select i1 %tobool3.not, i1 %tobool7.not, i1 false
  br i1 %or.cond, label %land.lhs.true.land.lhs.true14_crit_edge, label %land.lhs.true11

land.lhs.true.land.lhs.true14_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #26
  br label %land.lhs.true14

land.lhs.true11:                                  ; preds = %land.lhs.true
  %phy_flags = getelementptr i8, ptr %dev, i32 6396
  %4 = ptrtoint ptr %phy_flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %phy_flags, align 4
  %6 = and i8 %5, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool13.not = icmp eq i8 %6, 0
  br i1 %tobool13.not, label %land.lhs.true11.cleanup189_crit_edge, label %land.lhs.true11.land.lhs.true14_crit_edge

land.lhs.true11.land.lhs.true14_crit_edge:        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #26
  br label %land.lhs.true14

land.lhs.true11.cleanup189_crit_edge:             ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup189

land.lhs.true14:                                  ; preds = %land.lhs.true11.land.lhs.true14_crit_edge, %land.lhs.true.land.lhs.true14_crit_edge
  %phy_state = getelementptr i8, ptr %dev, i32 6194
  %7 = ptrtoint ptr %phy_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %phy_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp = icmp eq i8 %8, 0
  br i1 %cmp, label %if.end, label %land.lhs.true14.cleanup189_crit_edge

land.lhs.true14.cleanup189_crit_edge:             ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup189

if.end:                                           ; preds = %land.lhs.true14
  %link_lock = getelementptr i8, ptr %dev, i32 6096
  tail call void @mutex_lock_nested(ptr noundef %link_lock, i32 noundef 0) #24
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %lk_ksettings, i32 0, i32 5
  %9 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp19 = icmp eq i8 %10, 1
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end
  %advertising = getelementptr i8, ptr %dev, i32 6242
  %11 = ptrtoint ptr %advertising to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %advertising, align 2
  %advertising_pam4 = getelementptr i8, ptr %dev, i32 6244
  %12 = ptrtoint ptr %advertising_pam4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %advertising_pam4, align 4
  %advertising22 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %advertising22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %advertising22, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool24.not = icmp eq i32 %15, 0
  br i1 %tobool24.not, label %lor.lhs.false25, label %if.then21.if.then31_crit_edge

if.then21.if.then31_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then31

lor.lhs.false25:                                  ; preds = %if.then21
  %16 = ptrtoint ptr %advertising22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %advertising22, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool30.not = icmp eq i32 %18, 0
  br i1 %tobool30.not, label %lor.lhs.false25.if.end35_crit_edge, label %lor.lhs.false25.if.then31_crit_edge

lor.lhs.false25.if.then31_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then31

lor.lhs.false25.if.end35_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end35

if.then31:                                        ; preds = %lor.lhs.false25.if.then31_crit_edge, %if.then21.if.then31_crit_edge
  %19 = ptrtoint ptr %advertising to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %advertising, align 2
  %21 = or i16 %20, 2
  store i16 %21, ptr %advertising, align 2
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %lor.lhs.false25.if.end35_crit_edge
  %22 = ptrtoint ptr %advertising22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %advertising22, align 4
  %24 = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool40.not = icmp eq i32 %24, 0
  br i1 %tobool40.not, label %lor.lhs.false41, label %if.end35.if.then47_crit_edge

if.end35.if.then47_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then47

lor.lhs.false41:                                  ; preds = %if.end35
  %25 = ptrtoint ptr %advertising22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %advertising22, align 4
  %27 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool46.not = icmp eq i32 %27, 0
  br i1 %tobool46.not, label %lor.lhs.false41.if.end52_crit_edge, label %lor.lhs.false41.if.then47_crit_edge

lor.lhs.false41.if.then47_crit_edge:              ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then47

lor.lhs.false41.if.end52_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end52

if.then47:                                        ; preds = %lor.lhs.false41.if.then47_crit_edge, %if.end35.if.then47_crit_edge
  %28 = ptrtoint ptr %advertising to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %advertising, align 2
  %30 = or i16 %29, 8
  store i16 %30, ptr %advertising, align 2
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %lor.lhs.false41.if.end52_crit_edge
  %31 = ptrtoint ptr %advertising22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %advertising22, align 4
  %33 = and i32 %32, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool57.not = icmp eq i32 %33, 0
  br i1 %tobool57.not, label %if.end52.if.end63_crit_edge, label %if.then58

if.end52.if.end63_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end63

if.then58:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #26
  %34 = ptrtoint ptr %advertising to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %advertising, align 2
  %36 = or i16 %35, 64
  store i16 %36, ptr %advertising, align 2
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %if.end52.if.end63_crit_edge
  %37 = ptrtoint ptr %advertising22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %advertising22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %tobool68.not = icmp sgt i32 %38, -1
  br i1 %tobool68.not, label %if.end63.if.end74_crit_edge, label %if.then69

if.end63.if.end74_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end74

if.then69:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #26
  %39 = ptrtoint ptr %advertising to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %advertising, align 2
  %41 = or i16 %40, 256
  store i16 %41, ptr %advertising, align 2
  br label %if.end74

if.end74:                                         ; preds = %if.then69, %if.end63.if.end74_crit_edge
  %42 = ptrtoint ptr %advertising22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %advertising22, align 4
  %44 = and i32 %43, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool79.not = icmp eq i32 %44, 0
  br i1 %tobool79.not, label %if.end74.if.end85_crit_edge, label %if.then80

if.end74.if.end85_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end85

if.then80:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #26
  %45 = ptrtoint ptr %advertising to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %advertising, align 2
  %47 = or i16 %46, 512
  store i16 %47, ptr %advertising, align 2
  br label %if.end85

if.end85:                                         ; preds = %if.then80, %if.end74.if.end85_crit_edge
  %arrayidx.i = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 1, i32 1
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %arrayidx.i, align 4
  %50 = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool90.not = icmp eq i32 %50, 0
  br i1 %tobool90.not, label %if.end85.if.end96_crit_edge, label %if.then91

if.end85.if.end96_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end96

if.then91:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #26
  %51 = ptrtoint ptr %advertising to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %advertising, align 2
  %53 = or i16 %52, 1024
  store i16 %53, ptr %advertising, align 2
  br label %if.end96

if.end96:                                         ; preds = %if.then91, %if.end85.if.end96_crit_edge
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %arrayidx.i, align 4
  %56 = and i32 %55, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool101.not = icmp eq i32 %56, 0
  br i1 %tobool101.not, label %if.end96.if.end107_crit_edge, label %if.then102

if.end96.if.end107_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end107

if.then102:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #26
  %57 = ptrtoint ptr %advertising to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %advertising, align 2
  %59 = or i16 %58, 2048
  store i16 %59, ptr %advertising, align 2
  br label %if.end107

if.end107:                                        ; preds = %if.then102, %if.end96.if.end107_crit_edge
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %arrayidx.i, align 4
  %62 = and i32 %61, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool112.not = icmp eq i32 %62, 0
  br i1 %tobool112.not, label %if.end107.if.end118_crit_edge, label %if.then113

if.end107.if.end118_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end118

if.then113:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #26
  %63 = ptrtoint ptr %advertising_pam4 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %advertising_pam4, align 4
  %65 = or i16 %64, 1
  store i16 %65, ptr %advertising_pam4, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then113, %if.end107.if.end118_crit_edge
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %arrayidx.i, align 4
  %68 = and i32 %67, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool123.not = icmp eq i32 %68, 0
  br i1 %tobool123.not, label %if.end118.if.end129_crit_edge, label %if.then124

if.end118.if.end129_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end129

if.then124:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #26
  %69 = ptrtoint ptr %advertising_pam4 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %advertising_pam4, align 4
  %71 = or i16 %70, 2
  store i16 %71, ptr %advertising_pam4, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then124, %if.end118.if.end129_crit_edge
  %arrayidx.i269 = getelementptr %struct.ethtool_link_ksettings, ptr %lk_ksettings, i32 0, i32 1, i32 1, i32 2
  %72 = ptrtoint ptr %arrayidx.i269 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %arrayidx.i269, align 4
  %74 = and i32 %73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool134.not = icmp eq i32 %74, 0
  br i1 %tobool134.not, label %if.end129.if.end140_crit_edge, label %if.then135

if.end129.if.end140_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end140

if.then135:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #26
  %75 = ptrtoint ptr %advertising_pam4 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %advertising_pam4, align 4
  %77 = or i16 %76, 4
  store i16 %77, ptr %advertising_pam4, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.then135, %if.end129.if.end140_crit_edge
  %autoneg141 = getelementptr i8, ptr %dev, i32 6236
  %78 = ptrtoint ptr %autoneg141 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %autoneg141, align 4
  %80 = or i8 %79, 1
  store i8 %80, ptr %autoneg141, align 4
  %81 = ptrtoint ptr %advertising to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %advertising, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool146.not = icmp eq i16 %82, 0
  br i1 %tobool146.not, label %land.lhs.true147, label %if.end140.if.end182_crit_edge

if.end140.if.end182_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end182

land.lhs.true147:                                 ; preds = %if.end140
  %83 = ptrtoint ptr %advertising_pam4 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %advertising_pam4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool149.not = icmp eq i16 %84, 0
  br i1 %tobool149.not, label %if.then150, label %land.lhs.true147.if.end182_crit_edge

land.lhs.true147.if.end182_crit_edge:             ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end182

if.then150:                                       ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #26
  %support_auto_speeds = getelementptr i8, ptr %dev, i32 6216
  %85 = ptrtoint ptr %support_auto_speeds to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %support_auto_speeds, align 4
  %87 = ptrtoint ptr %advertising to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %advertising, align 2
  %support_pam4_auto_speeds = getelementptr i8, ptr %dev, i32 6218
  %88 = ptrtoint ptr %support_pam4_auto_speeds to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %support_pam4_auto_speeds, align 2
  %90 = ptrtoint ptr %advertising_pam4 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %advertising_pam4, align 4
  br label %if.end182

if.else:                                          ; preds = %if.end
  %91 = ptrtoint ptr %link_info1 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %link_info1, align 4
  %93 = and i8 %92, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %93)
  %switch246 = icmp eq i8 %93, 8
  br i1 %switch246, label %if.else.if.then166_crit_edge, label %lor.lhs.false162

if.else.if.then166_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then166

lor.lhs.false162:                                 ; preds = %if.else
  %media_type = getelementptr i8, ptr %dev, i32 6189
  %94 = ptrtoint ptr %media_type to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %media_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %95)
  %cmp164 = icmp eq i8 %95, 1
  br i1 %cmp164, label %lor.lhs.false162.if.then166_crit_edge, label %if.end167

lor.lhs.false162.if.then166_crit_edge:            ; preds = %lor.lhs.false162
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then166

if.then166:                                       ; preds = %lor.lhs.false162.if.then166_crit_edge, %if.else.if.then166_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.88) #27
  br label %set_setting_exit

if.end167:                                        ; preds = %lor.lhs.false162
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %lk_ksettings, i32 0, i32 2
  %96 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp169 = icmp eq i8 %97, 0
  br i1 %cmp169, label %if.then171, label %if.end172

if.then171:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.89) #27
  br label %set_setting_exit

if.end172:                                        ; preds = %if.end167
  %speed173 = getelementptr inbounds %struct.ethtool_link_settings, ptr %lk_ksettings, i32 0, i32 1
  %98 = ptrtoint ptr %speed173 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %speed173, align 4
  %support_pam4_speeds.i = getelementptr i8, ptr %dev, i32 6210
  %100 = ptrtoint ptr %support_pam4_speeds.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %support_pam4_speeds.i, align 2
  %support_speeds.i = getelementptr i8, ptr %dev, i32 6208
  %102 = ptrtoint ptr %support_speeds.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %support_speeds.i, align 4
  %104 = zext i32 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %99, label %if.end172.if.then176_crit_edge [
    i32 100, label %sw.bb.i
    i32 1000, label %sw.bb2.i
    i32 2500, label %sw.bb8.i
    i32 10000, label %sw.bb14.i
    i32 20000, label %sw.bb20.i
    i32 25000, label %sw.bb26.i
    i32 40000, label %sw.epilog.i
    i32 50000, label %sw.bb38.i
    i32 100000, label %sw.bb49.i
    i32 200000, label %sw.bb61.i
  ]

if.end172.if.then176_crit_edge:                   ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then176

sw.bb.i:                                          ; preds = %if.end172
  %105 = and i16 %103, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool.not.i = icmp eq i16 %105, 0
  br i1 %tobool.not.i, label %sw.bb.i.if.then176_crit_edge, label %sw.bb.i.if.end69.i_crit_edge

sw.bb.i.if.end69.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end69.i

sw.bb.i.if.then176_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then176

sw.bb2.i:                                         ; preds = %if.end172
  %106 = and i16 %103, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %106)
  %tobool5.not.i = icmp eq i16 %106, 0
  br i1 %tobool5.not.i, label %sw.bb2.i.if.then176_crit_edge, label %sw.bb2.i.if.end69.i_crit_edge

sw.bb2.i.if.end69.i_crit_edge:                    ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end69.i

sw.bb2.i.if.then176_crit_edge:                    ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then176

sw.bb8.i:                                         ; preds = %if.end172
  %107 = and i16 %103, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %tobool11.not.i = icmp eq i16 %107, 0
  br i1 %tobool11.not.i, label %sw.bb8.i.if.then176_crit_edge, label %sw.bb8.i.if.end69.i_crit_edge

sw.bb8.i.if.end69.i_crit_edge:                    ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end69.i

sw.bb8.i.if.then176_crit_edge:                    ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then176

sw.bb14.i:                                        ; preds = %if.end172
  %108 = and i16 %103, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %tobool17.not.i = icmp eq i16 %108, 0
  br i1 %tobool17.not.i, label %sw.bb14.i.if.then176_crit_edge, label %sw.bb14.i.if.end69.i_crit_edge

sw.bb14.i.if.end69.i_crit_edge:                   ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end69.i

sw.bb14.i.if.then176_crit_edge:                   ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then176

sw.bb20.i:                                        ; preds = %if.end172
  %109 = and i16 %103, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %tobool23.not.i = icmp eq i16 %109, 0
  br i1 %tobool23.not.i, label %sw.bb20.i.if.then176_crit_edge, label %sw.bb20.i.if.end69.i_crit_edge

sw.bb20.i.if.end69.i_crit_edge:                   ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end69.i

sw.bb20.i.if.then176_crit_edge:                   ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then176

sw.bb26.i:                                        ; preds = %if.end172
  %110 = and i16 %103, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool29.not.i = icmp eq i16 %110, 0
  br i1 %tobool29.not.i, label %sw.bb26.i.if.then176_crit_edge, label %sw.bb26.i.if.end69.i_crit_edge

sw.bb26.i.if.end69.i_crit_edge:                   ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end69.i

sw.bb26.i.if.then176_crit_edge:                   ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then176

sw.bb38.i:                                        ; preds = %if.end172
  %111 = and i16 %103, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool41.not.i = icmp eq i16 %111, 0
  br i1 %tobool41.not.i, label %if.else.i, label %sw.bb38.i.if.end69.i_crit_edge

sw.bb38.i.if.end69.i_crit_edge:                   ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end69.i

if.else.i:                                        ; preds = %sw.bb38.i
  %112 = and i16 %101, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool45.not.i = icmp eq i16 %112, 0
  br i1 %tobool45.not.i, label %if.else.i.if.then176_crit_edge, label %if.else.i.if.end69.i_crit_edge

if.else.i.if.end69.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end69.i

if.else.i.if.then176_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then176

sw.bb49.i:                                        ; preds = %if.end172
  %113 = and i16 %103, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool52.not.i = icmp eq i16 %113, 0
  br i1 %tobool52.not.i, label %if.else54.i, label %sw.bb49.i.if.end69.i_crit_edge

sw.bb49.i.if.end69.i_crit_edge:                   ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end69.i

if.else54.i:                                      ; preds = %sw.bb49.i
  %114 = and i16 %101, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool57.not.i = icmp eq i16 %114, 0
  br i1 %tobool57.not.i, label %if.else54.i.if.then176_crit_edge, label %if.else54.i.if.end69.i_crit_edge

if.else54.i.if.end69.i_crit_edge:                 ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end69.i

if.else54.i.if.then176_crit_edge:                 ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then176

sw.bb61.i:                                        ; preds = %if.end172
  %115 = and i16 %101, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %tobool64.not.i = icmp eq i16 %115, 0
  br i1 %tobool64.not.i, label %sw.bb61.i.if.then176_crit_edge, label %sw.bb61.i.if.end69.i_crit_edge

sw.bb61.i.if.end69.i_crit_edge:                   ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end69.i

sw.bb61.i.if.then176_crit_edge:                   ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then176

sw.epilog.i:                                      ; preds = %if.end172
  %116 = and i16 %103, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %tobool35.not.i = icmp eq i16 %116, 0
  br i1 %tobool35.not.i, label %sw.epilog.i.if.then176_crit_edge, label %sw.epilog.i.if.end69.i_crit_edge

sw.epilog.i.if.end69.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end69.i

sw.epilog.i.if.then176_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then176

if.end69.i:                                       ; preds = %sw.epilog.i.if.end69.i_crit_edge, %sw.bb61.i.if.end69.i_crit_edge, %if.else54.i.if.end69.i_crit_edge, %sw.bb49.i.if.end69.i_crit_edge, %if.else.i.if.end69.i_crit_edge, %sw.bb38.i.if.end69.i_crit_edge, %sw.bb26.i.if.end69.i_crit_edge, %sw.bb20.i.if.end69.i_crit_edge, %sw.bb14.i.if.end69.i_crit_edge, %sw.bb8.i.if.end69.i_crit_edge, %sw.bb2.i.if.end69.i_crit_edge, %sw.bb.i.if.end69.i_crit_edge
  %fw_speed.0132.i = phi i16 [ 400, %sw.epilog.i.if.end69.i_crit_edge ], [ 1, %sw.bb.i.if.end69.i_crit_edge ], [ 10, %sw.bb2.i.if.end69.i_crit_edge ], [ 25, %sw.bb8.i.if.end69.i_crit_edge ], [ 100, %sw.bb14.i.if.end69.i_crit_edge ], [ 200, %sw.bb20.i.if.end69.i_crit_edge ], [ 250, %sw.bb26.i.if.end69.i_crit_edge ], [ 1000, %sw.bb49.i.if.end69.i_crit_edge ], [ 500, %sw.bb38.i.if.end69.i_crit_edge ], [ 500, %if.else.i.if.end69.i_crit_edge ], [ 1000, %if.else54.i.if.end69.i_crit_edge ], [ 2000, %sw.bb61.i.if.end69.i_crit_edge ]
  %sig_mode.0131.i = phi i8 [ 0, %sw.epilog.i.if.end69.i_crit_edge ], [ 0, %sw.bb.i.if.end69.i_crit_edge ], [ 0, %sw.bb2.i.if.end69.i_crit_edge ], [ 0, %sw.bb8.i.if.end69.i_crit_edge ], [ 0, %sw.bb14.i.if.end69.i_crit_edge ], [ 0, %sw.bb20.i.if.end69.i_crit_edge ], [ 0, %sw.bb26.i.if.end69.i_crit_edge ], [ 0, %sw.bb49.i.if.end69.i_crit_edge ], [ 0, %sw.bb38.i.if.end69.i_crit_edge ], [ 1, %if.else.i.if.end69.i_crit_edge ], [ 1, %if.else54.i.if.end69.i_crit_edge ], [ 1, %sw.bb61.i.if.end69.i_crit_edge ]
  %req_link_speed.i = getelementptr i8, ptr %dev, i32 6240
  %117 = ptrtoint ptr %req_link_speed.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %req_link_speed.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %118, i16 %fw_speed.0132.i)
  %cmp.i = icmp eq i16 %118, %fw_speed.0132.i
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end69.i.cleanup_crit_edge

if.end69.i.cleanup_crit_edge:                     ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end69.i
  %req_signal_mode.i = getelementptr i8, ptr %dev, i32 6237
  %119 = ptrtoint ptr %req_signal_mode.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %req_signal_mode.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %120, i8 %sig_mode.0131.i)
  %cmp75.i = icmp eq i8 %120, %sig_mode.0131.i
  br i1 %cmp75.i, label %land.lhs.true77.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

land.lhs.true77.i:                                ; preds = %land.lhs.true.i
  %autoneg.i = getelementptr i8, ptr %dev, i32 6236
  %121 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %autoneg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %cmp79.i = icmp eq i8 %122, 0
  br i1 %cmp79.i, label %land.lhs.true77.i.set_setting_exit_crit_edge, label %land.lhs.true77.i.cleanup_crit_edge

land.lhs.true77.i.cleanup_crit_edge:              ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

land.lhs.true77.i.set_setting_exit_crit_edge:     ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %set_setting_exit

if.then176:                                       ; preds = %sw.epilog.i.if.then176_crit_edge, %sw.bb61.i.if.then176_crit_edge, %if.else54.i.if.then176_crit_edge, %if.else.i.if.then176_crit_edge, %sw.bb26.i.if.then176_crit_edge, %sw.bb20.i.if.then176_crit_edge, %sw.bb14.i.if.then176_crit_edge, %sw.bb8.i.if.then176_crit_edge, %sw.bb2.i.if.then176_crit_edge, %sw.bb.i.if.then176_crit_edge, %if.end172.if.then176_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.90) #27
  br label %set_setting_exit

cleanup:                                          ; preds = %land.lhs.true77.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end69.i.cleanup_crit_edge
  %123 = ptrtoint ptr %req_link_speed.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %fw_speed.0132.i, ptr %req_link_speed.i, align 4
  %req_signal_mode84.i = getelementptr i8, ptr %dev, i32 6237
  %124 = ptrtoint ptr %req_signal_mode84.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %sig_mode.0131.i, ptr %req_signal_mode84.i, align 1
  %req_duplex.i = getelementptr i8, ptr %dev, i32 6238
  %125 = ptrtoint ptr %req_duplex.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 1, ptr %req_duplex.i, align 2
  %autoneg85.i = getelementptr i8, ptr %dev, i32 6236
  %126 = ptrtoint ptr %autoneg85.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %autoneg85.i, align 4
  %advertising.i = getelementptr i8, ptr %dev, i32 6242
  %127 = ptrtoint ptr %advertising.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 0, ptr %advertising.i, align 2
  %advertising_pam4.i = getelementptr i8, ptr %dev, i32 6244
  %128 = ptrtoint ptr %advertising_pam4.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 0, ptr %advertising_pam4.i, align 4
  br label %if.end182

if.end182:                                        ; preds = %cleanup, %if.then150, %land.lhs.true147.if.end182_crit_edge, %if.end140.if.end182_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %129 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end182.set_setting_exit_crit_edge, label %if.then184

if.end182.set_setting_exit_crit_edge:             ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #26
  br label %set_setting_exit

if.then184:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #26
  %call186 = tail call i32 @bnxt_hwrm_set_link_setting(ptr noundef %add.ptr.i, i1 noundef zeroext %cmp19, i1 noundef zeroext false) #24
  br label %set_setting_exit

set_setting_exit:                                 ; preds = %if.then184, %if.end182.set_setting_exit_crit_edge, %if.then176, %land.lhs.true77.i.set_setting_exit_crit_edge, %if.then171, %if.then166
  %rc.2 = phi i32 [ %call186, %if.then184 ], [ 0, %if.end182.set_setting_exit_crit_edge ], [ 0, %land.lhs.true77.i.set_setting_exit_crit_edge ], [ -22, %if.then176 ], [ -22, %if.then171 ], [ -22, %if.then166 ]
  tail call void @mutex_unlock(ptr noundef %link_lock) #24
  br label %cleanup189

cleanup189:                                       ; preds = %set_setting_exit, %land.lhs.true14.cleanup189_crit_edge, %land.lhs.true11.cleanup189_crit_edge, %entry.cleanup189_crit_edge
  %retval.0 = phi i32 [ %rc.2, %set_setting_exit ], [ -95, %land.lhs.true14.cleanup189_crit_edge ], [ -95, %land.lhs.true11.cleanup189_crit_edge ], [ -95, %entry.cleanup189_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bnxt_get_fec_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %fec_stats) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %dev, i32 2400
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %2 = and i32 %1, 268435458
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %2)
  %.not = icmp eq i32 %2, 268435456
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %rx_port_stats_ext = getelementptr i8, ptr %dev, i32 2932
  %3 = ptrtoint ptr %rx_port_stats_ext to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_port_stats_ext, align 4
  %add.ptr = getelementptr i64, ptr %4, i32 40
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr, align 8
  %corrected_bits = getelementptr inbounds %struct.ethtool_fec_stats, ptr %fec_stats, i32 0, i32 2
  %7 = ptrtoint ptr %corrected_bits to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %corrected_bits, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bnxt_get_fecparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef %fec) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %fec_cfg2 = getelementptr i8, ptr %dev, i32 6234
  %0 = ptrtoint ptr %fec_cfg2 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fec_cfg2, align 2
  %active_fec_sig_mode = getelementptr i8, ptr %dev, i32 6233
  %2 = ptrtoint ptr %active_fec_sig_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active_fec_sig_mode, align 1
  %conv4 = zext i16 %1 to i32
  %and5 = and i32 %conv4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %fec6 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fec, i32 0, i32 2
  %4 = ptrtoint ptr %fec6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %fec6, align 4
  %active_fec7 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fec, i32 0, i32 1
  %5 = ptrtoint ptr %active_fec7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %active_fec7, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %and9 = and i32 %conv4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end13_crit_edge, label %if.then11

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  %fec12 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fec, i32 0, i32 2
  %6 = ptrtoint ptr %fec12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fec12, align 4
  %or = or i32 %7, 2
  store i32 %or, ptr %fec12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  %and15 = and i32 %conv4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.if.end20_crit_edge, label %if.then17

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end20

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #26
  %fec18 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fec, i32 0, i32 2
  %8 = ptrtoint ptr %fec18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fec18, align 4
  %or19 = or i32 %9, 16
  store i32 %or19, ptr %fec18, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end13.if.end20_crit_edge
  %and22 = and i32 %conv4, 1344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end27_crit_edge, label %if.then24

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #26
  %fec25 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fec, i32 0, i32 2
  %10 = ptrtoint ptr %fec25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fec25, align 4
  %or26 = or i32 %11, 8
  store i32 %or26, ptr %fec25, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end20.if.end27_crit_edge
  %and29 = and i32 %conv4, 20480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.if.end34_crit_edge, label %if.then31

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end34

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #26
  %fec32 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fec, i32 0, i32 2
  %12 = ptrtoint ptr %fec32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fec32, align 4
  %or33 = or i32 %13, 32
  store i32 %or33, ptr %fec32, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end27.if.end34_crit_edge
  %14 = lshr i8 %3, 4
  %15 = zext i8 %14 to i32
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %15, label %if.end34.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %if.end34.sw.bb38_crit_edge
    i32 3, label %if.end34.sw.bb38_crit_edge64
    i32 4, label %if.end34.sw.bb38_crit_edge65
    i32 5, label %if.end34.sw.bb41_crit_edge
    i32 6, label %if.end34.sw.bb41_crit_edge66
    i32 0, label %sw.bb44
  ]

if.end34.sw.bb41_crit_edge66:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb41

if.end34.sw.bb41_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb41

if.end34.sw.bb38_crit_edge65:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb38

if.end34.sw.bb38_crit_edge64:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb38

if.end34.sw.bb38_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.bb38

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

sw.bb:                                            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #26
  %active_fec36 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fec, i32 0, i32 1
  %17 = ptrtoint ptr %active_fec36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %active_fec36, align 4
  %or37 = or i32 %18, 16
  store i32 %or37, ptr %active_fec36, align 4
  br label %cleanup

sw.bb38:                                          ; preds = %if.end34.sw.bb38_crit_edge, %if.end34.sw.bb38_crit_edge64, %if.end34.sw.bb38_crit_edge65
  %active_fec39 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fec, i32 0, i32 1
  %19 = ptrtoint ptr %active_fec39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %active_fec39, align 4
  %or40 = or i32 %20, 8
  store i32 %or40, ptr %active_fec39, align 4
  br label %cleanup

sw.bb41:                                          ; preds = %if.end34.sw.bb41_crit_edge, %if.end34.sw.bb41_crit_edge66
  %active_fec42 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fec, i32 0, i32 1
  %21 = ptrtoint ptr %active_fec42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %active_fec42, align 4
  %or43 = or i32 %22, 32
  store i32 %or43, ptr %active_fec42, align 4
  br label %cleanup

sw.bb44:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #26
  %active_fec45 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fec, i32 0, i32 1
  %23 = ptrtoint ptr %active_fec45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %active_fec45, align 4
  %or46 = or i32 %24, 4
  store i32 %or46, ptr %active_fec45, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb44, %sw.bb41, %sw.bb38, %sw.bb, %if.end34.cleanup_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_set_fecparam(ptr noundef %dev, ptr nocapture noundef readonly %fecparam) #3 align 64 {
entry:
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #24
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !228
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %fec1 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fecparam, i32 0, i32 2
  %1 = ptrtoint ptr %fec1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fec1, align 4
  %fec_cfg3 = getelementptr i8, ptr %dev, i32 6234
  %3 = ptrtoint ptr %fec_cfg3 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %fec_cfg3, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  %and4 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end11, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  %support_pam4_speeds = getelementptr i8, ptr %dev, i32 6210
  %5 = ptrtoint ptr %support_pam4_speeds to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %support_pam4_speeds, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool8.not = icmp eq i16 %6, 0
  %or10 = select i1 %tobool8.not, i32 10752, i32 5581312
  br label %apply_fec

if.end11:                                         ; preds = %if.end
  %and12 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %tobool13.not.not = xor i1 %tobool13.not, true
  %and15 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %or.cond = select i1 %tobool13.not.not, i1 %tobool16.not, i1 false
  br i1 %or.cond, label %if.end11.cleanup_crit_edge, label %lor.lhs.false

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end11
  %and17 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp ne i32 %and17, 0
  %and21 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %or.cond85 = select i1 %tobool18.not, i1 %tobool22.not, i1 false
  br i1 %or.cond85, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false23

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %and24 = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp ne i32 %and24, 0
  %and28 = and i32 %conv, 10240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %or.cond86 = select i1 %tobool25.not, i1 %tobool29.not, i1 false
  br i1 %or.cond86, label %lor.lhs.false23.cleanup_crit_edge, label %lor.lhs.false30

lor.lhs.false23.cleanup_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

lor.lhs.false30:                                  ; preds = %lor.lhs.false23
  %and31 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp ne i32 %and31, 0
  %and35 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %or.cond87 = select i1 %tobool32.not, i1 %tobool36.not, i1 false
  br i1 %or.cond87, label %lor.lhs.false30.cleanup_crit_edge, label %if.end38

lor.lhs.false30.cleanup_crit_edge:                ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end38:                                         ; preds = %lor.lhs.false30
  br i1 %tobool13.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %if.end38
  %autoneg = getelementptr i8, ptr %dev, i32 6236
  %7 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool42.not = icmp eq i8 %8, 0
  br i1 %tobool42.not, label %if.then41.cleanup_crit_edge, label %if.then41.apply_fec_crit_edge

if.then41.apply_fec_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #26
  br label %apply_fec

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.else:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool.not.i = icmp eq i32 %and31, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #26
  %support_pam4_speeds.i = getelementptr i8, ptr %dev, i32 6210
  %9 = ptrtoint ptr %support_pam4_speeds.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %support_pam4_speeds.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool1.not.i = icmp eq i16 %10, 0
  %or3.i = select i1 %tobool1.not.i, i32 9728, i32 5580288
  br label %apply_fec

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool5.not.i = icmp eq i32 %and17, 0
  br i1 %tobool5.not.i, label %if.else13.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #26
  %support_pam4_speeds7.i = getelementptr i8, ptr %dev, i32 6210
  %11 = ptrtoint ptr %support_pam4_speeds7.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %support_pam4_speeds7.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool9.not.i = icmp eq i16 %12, 0
  %or12.i = select i1 %tobool9.not.i, i32 6656, i32 5413376
  br label %apply_fec

if.else13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool15.not.i = icmp eq i32 %and24, 0
  %spec.select.i = select i1 %tobool15.not.i, i32 512, i32 2955776
  br label %apply_fec

apply_fec:                                        ; preds = %if.else13.i, %if.then6.i, %if.then.i, %if.then41.apply_fec_crit_edge, %if.then6
  %new_cfg.0 = phi i32 [ %or10, %if.then6 ], [ 256, %if.then41.apply_fec_crit_edge ], [ %or3.i, %if.then.i ], [ %or12.i, %if.then6.i ], [ %spec.select.i, %if.else13.i ]
  %call47 = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req, i16 noundef zeroext 32, i32 noundef 56) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %apply_fec.cleanup_crit_edge

apply_fec.cleanup_crit_edge:                      ; preds = %apply_fec
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end50:                                         ; preds = %apply_fec
  %or51 = or i32 %new_cfg.0, 1
  %13 = call i32 @llvm.bswap.i32(i32 %or51)
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %req, align 4
  %flags = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %flags, align 8
  %call52 = call i32 @hwrm_req_send(ptr noundef %add.ptr.i, ptr noundef %15) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then54, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #26
  %link_lock = getelementptr i8, ptr %dev, i32 6096
  call void @mutex_lock_nested(ptr noundef %link_lock, i32 noundef 0) #24
  %call55 = call i32 @bnxt_update_link(ptr noundef %add.ptr.i, i1 noundef zeroext false) #24
  call void @mutex_unlock(ptr noundef %link_lock) #24
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %if.end50.cleanup_crit_edge, %apply_fec.cleanup_crit_edge, %if.then41.cleanup_crit_edge, %lor.lhs.false30.cleanup_crit_edge, %lor.lhs.false23.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false30.cleanup_crit_edge ], [ -22, %lor.lhs.false23.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -22, %if.then41.cleanup_crit_edge ], [ %call47, %apply_fec.cleanup_crit_edge ], [ 0, %if.then54 ], [ %call52, %if.end50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #24
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bnxt_get_eth_phy_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %phy_stats) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %dev, i32 2400
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %2 = and i32 %1, 268435458
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %2)
  %.not = icmp eq i32 %2, 268435456
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %rx_port_stats_ext = getelementptr i8, ptr %dev, i32 2932
  %3 = ptrtoint ptr %rx_port_stats_ext to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_port_stats_ext, align 4
  %add.ptr = getelementptr i64, ptr %4, i32 39
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr, align 8
  %7 = ptrtoint ptr %phy_stats to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %phy_stats, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bnxt_get_eth_mac_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %mac_stats) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %dev, i32 2400
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %2 = and i32 %1, 1026
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %2)
  %.not = icmp eq i32 %2, 1024
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %port_stats = getelementptr i8, ptr %dev, i32 2912
  %3 = ptrtoint ptr %port_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port_stats, align 8
  %add.ptr6 = getelementptr i64, ptr %4, i32 34
  %5 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr6, align 8
  %FramesReceivedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 3
  %7 = ptrtoint ptr %FramesReceivedOK to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %FramesReceivedOK, align 8
  %add.ptr7 = getelementptr i64, ptr %4, i32 141
  %8 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr7, align 8
  %10 = ptrtoint ptr %mac_stats to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %mac_stats, align 8
  %add.ptr8 = getelementptr i64, ptr %4, i32 15
  %11 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %add.ptr8, align 8
  %FrameCheckSequenceErrors = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 4
  %13 = ptrtoint ptr %FrameCheckSequenceErrors to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %FrameCheckSequenceErrors, align 8
  %add.ptr9 = getelementptr i64, ptr %4, i32 22
  %14 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr9, align 8
  %AlignmentErrors = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 5
  %16 = ptrtoint ptr %AlignmentErrors to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %AlignmentErrors, align 8
  %add.ptr10 = getelementptr i64, ptr %4, i32 23
  %17 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %add.ptr10, align 8
  %OutOfRangeLengthField = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 20
  %19 = ptrtoint ptr %OutOfRangeLengthField to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %OutOfRangeLengthField, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bnxt_get_eth_ctrl_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ctrl_stats) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %dev, i32 2400
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %2 = and i32 %1, 1026
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %2)
  %.not = icmp eq i32 %2, 1024
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %port_stats = getelementptr i8, ptr %dev, i32 2912
  %3 = ptrtoint ptr %port_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port_stats, align 8
  %add.ptr = getelementptr i64, ptr %4, i32 16
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr, align 8
  %MACControlFramesReceived = getelementptr inbounds %struct.ethtool_eth_ctrl_stats, ptr %ctrl_stats, i32 0, i32 1
  %7 = ptrtoint ptr %MACControlFramesReceived to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %MACControlFramesReceived, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bnxt_get_rmon_stats(ptr nocapture noundef readonly %dev, ptr noundef writeonly %rmon_stats, ptr nocapture noundef writeonly %ranges) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %dev, i32 2400
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %2 = and i32 %1, 1026
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %2)
  %.not = icmp eq i32 %2, 1024
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %port_stats = getelementptr i8, ptr %dev, i32 2912
  %3 = ptrtoint ptr %port_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port_stats, align 8
  %add.ptr = getelementptr i64, ptr %4, i32 130
  %add.ptr6 = getelementptr i64, ptr %4, i32 27
  %5 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr6, align 8
  %jabbers = getelementptr inbounds %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 3
  %7 = ptrtoint ptr %jabbers to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %jabbers, align 8
  %add.ptr7 = getelementptr i64, ptr %4, i32 26
  %8 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr7, align 8
  %oversize_pkts = getelementptr inbounds %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 1
  %10 = ptrtoint ptr %oversize_pkts to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %oversize_pkts, align 8
  %add.ptr8 = getelementptr i64, ptr %4, i32 52
  %11 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %add.ptr8, align 8
  %13 = ptrtoint ptr %rmon_stats to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %rmon_stats, align 8
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %4, align 8
  %hist = getelementptr inbounds %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 4
  %16 = ptrtoint ptr %hist to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %hist, align 8
  %add.ptr10 = getelementptr i64, ptr %4, i32 1
  %17 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %add.ptr10, align 8
  %arrayidx12 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %arrayidx12, align 8
  %add.ptr13 = getelementptr i64, ptr %4, i32 2
  %20 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %add.ptr13, align 8
  %arrayidx15 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %arrayidx15, align 8
  %add.ptr16 = getelementptr i64, ptr %4, i32 3
  %23 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %add.ptr16, align 8
  %arrayidx18 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 4, i32 3
  %25 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %arrayidx18, align 8
  %add.ptr19 = getelementptr i64, ptr %4, i32 4
  %26 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %add.ptr19, align 8
  %arrayidx21 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 4, i32 4
  %28 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx21, align 8
  %add.ptr22 = getelementptr i64, ptr %4, i32 5
  %29 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %add.ptr22, align 8
  %arrayidx24 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 4, i32 5
  %31 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %arrayidx24, align 8
  %add.ptr25 = getelementptr i64, ptr %4, i32 7
  %32 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %add.ptr25, align 8
  %arrayidx27 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 4, i32 6
  %34 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %arrayidx27, align 8
  %add.ptr28 = getelementptr i64, ptr %4, i32 8
  %35 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %add.ptr28, align 8
  %arrayidx30 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 4, i32 7
  %37 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %arrayidx30, align 8
  %add.ptr31 = getelementptr i64, ptr %4, i32 9
  %38 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %add.ptr31, align 8
  %arrayidx33 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 4, i32 8
  %40 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx33, align 8
  %add.ptr34 = getelementptr i64, ptr %4, i32 10
  %41 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %add.ptr34, align 8
  %arrayidx36 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 4, i32 9
  %43 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %arrayidx36, align 8
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %add.ptr, align 8
  %hist_tx = getelementptr inbounds %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 5
  %46 = ptrtoint ptr %hist_tx to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %hist_tx, align 8
  %add.ptr39 = getelementptr i64, ptr %4, i32 131
  %47 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %add.ptr39, align 8
  %arrayidx41 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 5, i32 1
  %49 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %arrayidx41, align 8
  %add.ptr42 = getelementptr i64, ptr %4, i32 132
  %50 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %add.ptr42, align 8
  %arrayidx44 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 5, i32 2
  %52 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %arrayidx44, align 8
  %add.ptr45 = getelementptr i64, ptr %4, i32 133
  %53 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %add.ptr45, align 8
  %arrayidx47 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 5, i32 3
  %55 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %arrayidx47, align 8
  %add.ptr48 = getelementptr i64, ptr %4, i32 134
  %56 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %add.ptr48, align 8
  %arrayidx50 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 5, i32 4
  %58 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %arrayidx50, align 8
  %add.ptr51 = getelementptr i64, ptr %4, i32 135
  %59 = ptrtoint ptr %add.ptr51 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %add.ptr51, align 8
  %arrayidx53 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 5, i32 5
  %61 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %arrayidx53, align 8
  %add.ptr54 = getelementptr i64, ptr %4, i32 137
  %62 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %add.ptr54, align 8
  %arrayidx56 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 5, i32 6
  %64 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %arrayidx56, align 8
  %add.ptr57 = getelementptr i64, ptr %4, i32 138
  %65 = ptrtoint ptr %add.ptr57 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %add.ptr57, align 8
  %arrayidx59 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 5, i32 7
  %67 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %arrayidx59, align 8
  %add.ptr60 = getelementptr i64, ptr %4, i32 139
  %68 = ptrtoint ptr %add.ptr60 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %add.ptr60, align 8
  %arrayidx62 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 5, i32 8
  %70 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %arrayidx62, align 8
  %add.ptr63 = getelementptr i64, ptr %4, i32 140
  %71 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %add.ptr63, align 8
  %arrayidx65 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon_stats, i32 0, i32 5, i32 9
  %73 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %arrayidx65, align 8
  %74 = ptrtoint ptr %ranges to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @bnxt_rmon_ranges, ptr %ranges, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #20

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_dbg_hwrm_rd_reg(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_hwrm_alloc_wol_fltr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_hwrm_free_wol_fltr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_hwrm_set_link_setting(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_close_nic(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_open_nic(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_hwrm_set_coal(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnxt_set_ring_params(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_hwrm_set_pause(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnxt_run_fw_tests(ptr noundef %bp, i8 noundef zeroext %test_mask, ptr nocapture noundef writeonly %test_results) unnamed_addr #3 align 64 {
entry:
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #24
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !228
  %call = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req, i16 noundef zeroext 513, i32 noundef 24) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %1 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %req, align 4
  %test_info = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 140
  %3 = ptrtoint ptr %test_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %test_info, align 8
  %timeout = getelementptr inbounds %struct.bnxt_test_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %timeout to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %timeout, align 2
  %conv = zext i16 %6 to i32
  call void @hwrm_req_timeout(ptr noundef %bp, ptr noundef %2, i32 noundef %conv) #24
  %7 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req, align 4
  %flags = getelementptr inbounds %struct.hwrm_selftest_exec_input, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %test_mask, ptr %flags, align 8
  %call1 = call ptr @hwrm_req_hold(ptr noundef %bp, ptr noundef %8) #24
  %10 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %req, align 4
  %call2 = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %11) #24
  %test_success = getelementptr inbounds %struct.hwrm_selftest_exec_output, ptr %call1, i32 0, i32 5
  %12 = ptrtoint ptr %test_success to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %test_success, align 1
  %14 = ptrtoint ptr %test_results to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %test_results, align 1
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %req, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %16) #24
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnxt_ulp_stop(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnxt_ulp_start(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnxt_hwrm_mac_loopback(ptr noundef %bp, i1 noundef zeroext %enable) unnamed_addr #3 align 64 {
entry:
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #24
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !228
  %call = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req, i16 noundef zeroext 33, i32 noundef 48) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %1 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %req, align 4
  %enables = getelementptr inbounds %struct.hwrm_port_mac_cfg_input, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %enables to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 33554432, ptr %enables, align 4
  %spec.select = zext i1 %enable to i8
  %4 = getelementptr inbounds %struct.hwrm_port_mac_cfg_input, ptr %2, i32 0, i32 9
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %spec.select, ptr %4, align 1
  %call5 = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %2) #24
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_half_open_nic(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnxt_run_loopback(ptr noundef %bp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 15
  %0 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring, align 8
  %rx_ring = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 14
  %2 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ring, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %cp_ring = getelementptr inbounds %struct.bnxt_napi, ptr %5, i32 0, i32 3
  %flags = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 11
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %cp_ring_arr = getelementptr inbounds %struct.bnxt_napi, ptr %5, i32 0, i32 3, i32 16
  %8 = ptrtoint ptr %cp_ring_arr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cp_ring_arr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cpr.0 = phi ptr [ %9, %if.then ], [ %cp_ring, %entry.if.end_crit_edge ]
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mtu, align 4
  %add = add i32 %13, 14
  %rx_copy_thresh = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 28
  %14 = ptrtoint ptr %rx_copy_thresh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_copy_thresh, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %add, i32 %15)
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %11, i32 noundef %16, i32 noundef 2592) #24
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %16) #24
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %23 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %call7, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 4
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call7, i32 4
  %26 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %add.ptr1.i, align 2
  %arrayidx11 = getelementptr i8, ptr %call7, i32 6
  %27 = load ptr, ptr %dev, align 4
  %dev_addr13 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 86
  %28 = ptrtoint ptr %dev_addr13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_addr13, align 64
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %32 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx11, align 4
  %add.ptr.i79 = getelementptr i8, ptr %29, i32 4
  %33 = ptrtoint ptr %add.ptr.i79 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i79, align 2
  %add.ptr1.i80 = getelementptr i8, ptr %call7, i32 10
  %35 = ptrtoint ptr %add.ptr1.i80 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %add.ptr1.i80, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %16)
  %cmp1593 = icmp sgt i32 %16, 12
  br i1 %cmp1593, label %if.end6.for.body_crit_edge, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6.for.body_crit_edge
  %i.094 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 12, %if.end6.for.body_crit_edge ]
  %conv = trunc i32 %i.094 to i8
  %arrayidx17 = getelementptr i8, ptr %call7, i32 %i.094
  %36 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv, ptr %arrayidx17, align 1
  %inc = add nuw nsw i32 %i.094, 1
  %exitcond.not = icmp eq i32 %inc, %16
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  %pdev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 9
  %37 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev, align 8
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %data19 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %39 = ptrtoint ptr %data19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data19, align 4
  %call.i81 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %40) #24
  br i1 %call.i81, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %for.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !232

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev18) #24
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44, i32 3
  %41 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #26
  %43 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev18, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %44, %if.end.i.i ], [ %42, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #24
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @debug_dma_map_single(ptr noundef %dev18, ptr noundef %40, i32 noundef %16) #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %45 = load ptr, ptr @mem_map, align 4
  %46 = ptrtoint ptr %40 to i32
  %sub.i = add i32 %46, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i82 = getelementptr %struct.page, ptr %45, i32 %shr.i
  %and.i = and i32 %46, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev18, ptr noundef %add.ptr.i82, i32 noundef %and.i, i32 noundef %16, i32 noundef 1, i32 noundef 0) #24
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %47 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev, align 8
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev22, i32 noundef %retval.0.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup.sink.split_crit_edge, label %if.end26

dma_map_single_attrs.exit.cleanup.sink.split_crit_edge: ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup.sink.split

if.end26:                                         ; preds = %dma_map_single_attrs.exit
  %call27 = tail call ptr @bnxt_xmit_bd(ptr noundef %bp, ptr noundef %1, i32 noundef %retval.0.i, i32 noundef %16) #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !233
  tail call void @arm_heavy_mb() #24
  %tx_db = getelementptr inbounds %struct.bnxt_tx_ring_info, ptr %1, i32 0, i32 5
  %tx_prod = getelementptr inbounds %struct.bnxt_tx_ring_info, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %tx_prod to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %tx_prod, align 4
  %conv28 = zext i16 %50 to i32
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 8
  %and.i83 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i83)
  %tobool.not.i = icmp eq i32 %and.i83, 0
  %53 = getelementptr inbounds %struct.bnxt_tx_ring_info, ptr %1, i32 0, i32 5, i32 1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i84

if.then.i84:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #26
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %53, align 8
  %56 = ptrtoint ptr %tx_db to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tx_db, align 8
  %db_lock.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %db_lock.i.i) #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !234
  tail call void @arm_heavy_mb() #24
  %58 = trunc i64 %55 to i32
  %conv.i.i.i = or i32 %58, %conv28
  %59 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i.i) #24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %59) #24, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !236
  tail call void @arm_heavy_mb() #24
  %shr.i.i.i = lshr i64 %55, 32
  %conv3.i.i.i = trunc i64 %shr.i.i.i to i32
  %60 = tail call i32 @llvm.bswap.i32(i32 %conv3.i.i.i) #24
  %add.ptr.i.i.i = getelementptr i8, ptr %57, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %60) #24, !srcloc !235
  tail call void @_raw_spin_unlock(ptr noundef %db_lock.i.i) #24
  br label %bnxt_db_write.exit

if.else.i:                                        ; preds = %if.end26
  %61 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %53, align 8
  %or1.i = or i32 %62, %conv28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !237
  tail call void @arm_heavy_mb() #24
  %63 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #24
  %64 = ptrtoint ptr %tx_db to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tx_db, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #24, !srcloc !235
  %66 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags, align 8
  %and4.i = and i32 %67, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else.i.bnxt_db_write.exit_crit_edge, label %do.body7.i

if.else.i.bnxt_db_write.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_db_write.exit

do.body7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !238
  tail call void @arm_heavy_mb() #24
  %68 = ptrtoint ptr %tx_db to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tx_db, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %63) #24, !srcloc !235
  br label %bnxt_db_write.exit

bnxt_db_write.exit:                               ; preds = %do.body7.i, %if.else.i.bnxt_db_write.exit_crit_edge, %if.then.i84
  %cp_raw_cons.i = getelementptr inbounds %struct.bnxt_cp_ring_info, ptr %cpr.0, i32 0, i32 1
  %70 = ptrtoint ptr %cp_raw_cons.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cp_raw_cons.i, align 4
  %cp_ring_mask.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 45
  %72 = getelementptr inbounds %struct.bnxt_cp_ring_info, ptr %cpr.0, i32 0, i32 10
  %cp_bit.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 46
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %bnxt_db_write.exit
  %i.034.i = phi i32 [ 0, %bnxt_db_write.exit ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %raw_cons.033.i = phi i32 [ %71, %bnxt_db_write.exit ], [ %raw_cons.1.i, %for.inc.i.for.body.i_crit_edge ]
  %73 = ptrtoint ptr %cp_ring_mask.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cp_ring_mask.i, align 8
  %and.i85 = and i32 %74, %raw_cons.033.i
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %72, align 8
  %shr.i86 = lshr i32 %and.i85, 8
  %arrayidx.i = getelementptr ptr, ptr %76, i32 %shr.i86
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i, align 4
  %and2.i = and i32 %and.i85, 255
  %tx_cmp_errors_v.i = getelementptr %struct.tx_cmp, ptr %78, i32 %and2.i, i32 2
  %79 = ptrtoint ptr %tx_cmp_errors_v.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tx_cmp_errors_v.i, align 4
  %81 = ptrtoint ptr %cp_bit.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cp_bit.i, align 4
  %and6.i = and i32 %82, %raw_cons.033.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp ne i32 %and6.i, 0
  %83 = and i32 %80, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %84 = icmp ne i32 %83, 0
  %cmp10.i = xor i1 %84, %tobool7.not.i
  br i1 %cmp10.i, label %if.end.i, label %if.then.i87

if.then.i87:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 1073740) #24
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %arrayidx3.i = getelementptr %struct.tx_cmp, ptr %78, i32 %and2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #24, !srcloc !239
  %86 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx3.i, align 4
  %88 = and i32 %87, 1056964608
  call void @__sanitizer_cov_trace_const_cmp4(i32 285212672, i32 %88)
  %cmp12.i = icmp eq i32 %88, 285212672
  br i1 %cmp12.i, label %if.then13.i, label %if.end15.i

if.then13.i:                                      ; preds = %if.end.i
  %89 = ptrtoint ptr %cpr.0 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cpr.0, align 8
  %rx_ring.i.i = getelementptr inbounds %struct.bnxt_napi, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %rx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rx_ring.i.i, align 8
  %93 = ptrtoint ptr %cp_ring_mask.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cp_ring_mask.i, align 8
  %and.i.i = and i32 %94, %raw_cons.033.i
  %95 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %72, align 8
  %and3.i.i = lshr i32 %and.i.i, 8
  %shr.i.i = and i32 %and3.i.i, 255
  %arrayidx.i.i = getelementptr ptr, ptr %96, i32 %shr.i.i
  %97 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.i.i, align 4
  %and5.i.i = and i32 %and.i.i, 255
  %arrayidx6.i.i = getelementptr %struct.tx_cmp, ptr %98, i32 %and5.i.i
  %rx_cmp_opaque.i.i = getelementptr inbounds %struct.rx_cmp, ptr %arrayidx6.i.i, i32 0, i32 1
  %99 = ptrtoint ptr %rx_cmp_opaque.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rx_cmp_opaque.i.i, align 4
  %rx_buf_ring.i.i = getelementptr inbounds %struct.bnxt_rx_ring_info, ptr %92, i32 0, i32 9
  %101 = ptrtoint ptr %rx_buf_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rx_buf_ring.i.i, align 4
  %idxprom.i.i = and i32 %100, 65535
  %data_ptr.i.i = getelementptr %struct.bnxt_sw_rx_bd, ptr %102, i32 %idxprom.i.i, i32 1
  %103 = ptrtoint ptr %data_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %data_ptr.i.i, align 4
  %105 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx6.i.i, align 4
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #24
  %shr9.i.i = lshr i32 %107, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr9.i.i, i32 %16)
  %cmp.not.i.i = icmp eq i32 %shr9.i.i, %16
  br i1 %cmp.not.i.i, label %if.end.i.i89, label %if.then13.i.bnxt_rx_loopback.exit.i_crit_edge

if.then13.i.bnxt_rx_loopback.exit.i_crit_edge:    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_rx_loopback.exit.i

if.end.i.i89:                                     ; preds = %if.then13.i
  %add.ptr.i.i = getelementptr i8, ptr %104, i32 6
  %bp11.i.i = getelementptr inbounds %struct.bnxt_napi, ptr %90, i32 0, i32 1
  %108 = ptrtoint ptr %bp11.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bp11.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.bnxt, ptr %109, i32 0, i32 8
  %110 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev.i.i, align 4
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %111, i32 0, i32 86
  %112 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev_addr.i.i, align 64
  %114 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %add.ptr.i.i, align 4
  %116 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %113, align 4
  %xor.i.i.i = xor i32 %117, %115
  %add.ptr.i.i.i88 = getelementptr i8, ptr %104, i32 10
  %118 = ptrtoint ptr %add.ptr.i.i.i88 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %add.ptr.i.i.i88, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %113, i32 4
  %120 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %121, %119
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp ne i32 %or.i.i.i, 0
  %cmp1593.not = xor i1 %cmp1593, true
  %brmerge = or i1 %cmp.i.i.i, %cmp1593.not
  %.mux = select i1 %cmp.i.i.i, i32 -5, i32 0
  br i1 %brmerge, label %if.end.i.i89.bnxt_rx_loopback.exit.i_crit_edge, label %if.end.i.i89.for.body.i.i_crit_edge

if.end.i.i89.for.body.i.i_crit_edge:              ; preds = %if.end.i.i89
  br label %for.body.i.i

if.end.i.i89.bnxt_rx_loopback.exit.i_crit_edge:   ; preds = %if.end.i.i89
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_rx_loopback.exit.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.045.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %16
  br i1 %exitcond.not.i.i, label %for.cond.i.i.bnxt_rx_loopback.exit.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body.i.i

for.cond.i.i.bnxt_rx_loopback.exit.i_crit_edge:   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_rx_loopback.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end.i.i89.for.body.i.i_crit_edge
  %i.045.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 12, %if.end.i.i89.for.body.i.i_crit_edge ]
  %arrayidx16.i.i = getelementptr i8, ptr %104, i32 %i.045.i.i
  %122 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx16.i.i, align 1
  %124 = trunc i32 %i.045.i.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %123, i8 %124)
  %cmp21.not.i.i = icmp eq i8 %123, %124
  br i1 %cmp21.not.i.i, label %for.cond.i.i, label %for.body.i.i.bnxt_rx_loopback.exit.i_crit_edge

for.body.i.i.bnxt_rx_loopback.exit.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_rx_loopback.exit.i

bnxt_rx_loopback.exit.i:                          ; preds = %for.body.i.i.bnxt_rx_loopback.exit.i_crit_edge, %for.cond.i.i.bnxt_rx_loopback.exit.i_crit_edge, %if.end.i.i89.bnxt_rx_loopback.exit.i_crit_edge, %if.then13.i.bnxt_rx_loopback.exit.i_crit_edge
  %retval.0.i.i90 = phi i32 [ -5, %if.then13.i.bnxt_rx_loopback.exit.i_crit_edge ], [ %.mux, %if.end.i.i89.bnxt_rx_loopback.exit.i_crit_edge ], [ -5, %for.body.i.i.bnxt_rx_loopback.exit.i_crit_edge ], [ 0, %for.cond.i.i.bnxt_rx_loopback.exit.i_crit_edge ]
  %add14.i = add i32 %raw_cons.033.i, 2
  br label %bnxt_poll_loopback.exit

if.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #26
  %add16.i = add i32 %raw_cons.033.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end15.i, %if.then.i87
  %raw_cons.1.i = phi i32 [ %add16.i, %if.end15.i ], [ %raw_cons.033.i, %if.then.i87 ]
  %inc.i = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 200
  br i1 %exitcond.not.i, label %for.inc.i.bnxt_poll_loopback.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body.i

for.inc.i.bnxt_poll_loopback.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_poll_loopback.exit

bnxt_poll_loopback.exit:                          ; preds = %for.inc.i.bnxt_poll_loopback.exit_crit_edge, %bnxt_rx_loopback.exit.i
  %rc.0.i = phi i32 [ %retval.0.i.i90, %bnxt_rx_loopback.exit.i ], [ -5, %for.inc.i.bnxt_poll_loopback.exit_crit_edge ]
  %raw_cons.2.i = phi i32 [ %add14.i, %bnxt_rx_loopback.exit.i ], [ %raw_cons.1.i, %for.inc.i.bnxt_poll_loopback.exit_crit_edge ]
  %125 = ptrtoint ptr %cp_raw_cons.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %raw_cons.2.i, ptr %cp_raw_cons.i, align 4
  %126 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pdev, align 8
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %127, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev31, i32 noundef %retval.0.i, i32 noundef %16, i32 noundef 1, i32 noundef 0) #24
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %bnxt_poll_loopback.exit, %dma_map_single_attrs.exit.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %rc.0.i, %bnxt_poll_loopback.exit ], [ -5, %dma_map_single_attrs.exit.cleanup.sink.split_crit_edge ]
  tail call void @consume_skb(ptr noundef nonnull %call.i) #24
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnxt_hwrm_phy_loopback(ptr noundef %bp, i1 noundef zeroext %enable, i1 noundef zeroext %ext) unnamed_addr #3 align 64 {
entry:
  %req.i.i = alloca ptr, align 4
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #24
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !228
  %call = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req, i16 noundef zeroext 32, i32 noundef 56) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %req, align 4
  %call2 = call ptr @hwrm_req_hold(ptr noundef %bp, ptr noundef %2) #24
  %3 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %req, align 4
  br i1 %enable, label %if.then4, label %if.else10

if.then4:                                         ; preds = %if.end
  %autoneg.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 134, i32 31
  %5 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %autoneg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.then4.bnxt_disable_an_for_lpbk.exit_crit_edge, label %lor.lhs.false.i

if.then4.bnxt_disable_an_for_lpbk.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_disable_an_for_lpbk.exit

lor.lhs.false.i:                                  ; preds = %if.then4
  %phy_flags.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 138
  %7 = ptrtoint ptr %phy_flags.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %phy_flags.i, align 4
  %9 = and i8 %8, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not.i = icmp eq i8 %9, 0
  br i1 %tobool2.not.i, label %if.end.i, label %lor.lhs.false.i.bnxt_disable_an_for_lpbk.exit_crit_edge

lor.lhs.false.i.bnxt_disable_an_for_lpbk.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %bnxt_disable_an_for_lpbk.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i.i) #24
  %10 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i.i, align 4, !annotation !228
  %call.i.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i.i, i16 noundef zeroext 42, i32 noundef 24) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %bnxt_query_force_speeds.exit.thread.i

bnxt_query_force_speeds.exit.thread.i:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i) #24
  br label %bnxt_disable_an_for_lpbk.exit

if.end.i.i:                                       ; preds = %if.end.i
  %11 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req.i.i, align 4
  %call1.i.i = call ptr @hwrm_req_hold(ptr noundef %bp, ptr noundef %12) #24
  %13 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %req.i.i, align 4
  %call2.i.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %14) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i, label %bnxt_query_force_speeds.exit.i

bnxt_query_force_speeds.exit.i:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %15 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %req.i.i, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %16) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i) #24
  br label %bnxt_disable_an_for_lpbk.exit

if.end5.i:                                        ; preds = %if.end.i.i
  %supported_speeds_force_mode.i.i = getelementptr inbounds %struct.hwrm_port_phy_qcaps_output, ptr %call1.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %supported_speeds_force_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %supported_speeds_force_mode.i.i, align 2
  %19 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %req.i.i, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %20) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i) #24
  %link_up.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 134, i32 7
  %21 = ptrtoint ptr %link_up.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %link_up.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool7.not.i = icmp eq i8 %22, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #26
  %link_speed.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 134, i32 16
  %23 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %link_speed.i, align 2
  br label %if.end33.i

if.else.i:                                        ; preds = %if.end5.i
  %25 = call i16 @llvm.bswap.i16(i16 %18) #24
  %conv10.i = zext i16 %25 to i32
  %and11.i = and i32 %conv10.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.else14.i, label %if.else.i.if.end33.i_crit_edge

if.else.i.if.end33.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end33.i

if.else14.i:                                      ; preds = %if.else.i
  %and16.i = and i32 %conv10.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.else19.i, label %if.else14.i.if.end33.i_crit_edge

if.else14.i.if.end33.i_crit_edge:                 ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end33.i

if.else19.i:                                      ; preds = %if.else14.i
  %and21.i = and i32 %conv10.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.else24.i, label %if.else19.i.if.end33.i_crit_edge

if.else19.i.if.end33.i_crit_edge:                 ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end33.i

if.else24.i:                                      ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #26
  %and26.i = and i32 %conv10.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  %spec.select.i = select i1 %tobool27.not.i, i16 10, i16 500
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else24.i, %if.else19.i.if.end33.i_crit_edge, %if.else14.i.if.end33.i_crit_edge, %if.else.i.if.end33.i_crit_edge, %if.then8.i
  %fw_speed.0.i = phi i16 [ %24, %if.then8.i ], [ 100, %if.else.i.if.end33.i_crit_edge ], [ 250, %if.else14.i.if.end33.i_crit_edge ], [ 400, %if.else19.i.if.end33.i_crit_edge ], [ %spec.select.i, %if.else24.i ]
  %26 = call i16 @llvm.bswap.i16(i16 %fw_speed.0.i) #24
  %force_link_speed.i = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, ptr %4, i32 0, i32 8
  %27 = ptrtoint ptr %force_link_speed.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %force_link_speed.i, align 2
  %flags.i = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, ptr %4, i32 0, i32 5
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %29, 83886080
  store i32 %or.i, ptr %flags.i, align 8
  %call34.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %4) #24
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %flags.i, align 8
  %31 = ptrtoint ptr %force_link_speed.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %force_link_speed.i, align 2
  br label %bnxt_disable_an_for_lpbk.exit

bnxt_disable_an_for_lpbk.exit:                    ; preds = %if.end33.i, %bnxt_query_force_speeds.exit.i, %bnxt_query_force_speeds.exit.thread.i, %lor.lhs.false.i.bnxt_disable_an_for_lpbk.exit_crit_edge, %if.then4.bnxt_disable_an_for_lpbk.exit_crit_edge
  %32 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %req, align 4
  %lpbk = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, ptr %33, i32 0, i32 16
  br i1 %ext, label %if.then7, label %if.else

if.then7:                                         ; preds = %bnxt_disable_an_for_lpbk.exit
  call void @__sanitizer_cov_trace_pc() #26
  %34 = ptrtoint ptr %lpbk to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 3, ptr %lpbk, align 1
  br label %if.end12

if.else:                                          ; preds = %bnxt_disable_an_for_lpbk.exit
  call void @__sanitizer_cov_trace_pc() #26
  %35 = ptrtoint ptr %lpbk to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %lpbk, align 1
  br label %if.end12

if.else10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  %lpbk11 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, ptr %4, i32 0, i32 16
  %36 = ptrtoint ptr %lpbk11 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %lpbk11, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.else, %if.then7
  %37 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %req, align 4
  %enables = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %enables to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1073741824, ptr %enables, align 4
  %call13 = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %38) #24
  %40 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %req, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %41) #24
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnxt_half_close_nic(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bnxt_xmit_bd(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #20

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #21 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #22

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #21 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #23

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_vfs_assigned(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_hwrm_func_resc_qcaps(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_get_max_rings(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_check_rings(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_get_nr_rss_ctxs(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_reserve_rings(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_get_coredump_length(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_get_coredump(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnxt_read_sfp_module_eeprom_info(ptr noundef %bp, i16 noundef zeroext %i2c_addr, i16 noundef zeroext %start_addr, i16 noundef zeroext %data_length, ptr nocapture noundef writeonly %buf) unnamed_addr #3 align 64 {
entry:
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #24
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !228
  %call = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req, i16 noundef zeroext 44, i32 noundef 40) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %req, align 4
  %call1 = call ptr @hwrm_req_hold(ptr noundef %bp, ptr noundef %2) #24
  %conv = trunc i16 %i2c_addr to i8
  %3 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %req, align 4
  %i2c_slave_addr = getelementptr inbounds %struct.hwrm_port_phy_i2c_read_input, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %i2c_slave_addr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %i2c_slave_addr, align 2
  %page_number2 = getelementptr inbounds %struct.hwrm_port_phy_i2c_read_input, ptr %4, i32 0, i32 10
  %6 = ptrtoint ptr %page_number2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %page_number2, align 4
  %port_id = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120, i32 1
  %7 = ptrtoint ptr %port_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %port_id, align 2
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %port_id3 = getelementptr inbounds %struct.hwrm_port_phy_i2c_read_input, ptr %4, i32 0, i32 7
  %10 = ptrtoint ptr %port_id3 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %port_id3, align 8
  %conv13 = zext i16 %start_addr to i32
  %data = getelementptr inbounds %struct.hwrm_port_phy_i2c_read_output, ptr %call1, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %if.then23.do.body_crit_edge, %if.end
  %data_length.addr.0 = phi i16 [ %data_length, %if.end ], [ %sub, %if.then23.do.body_crit_edge ]
  %byte_offset.0 = phi i32 [ 0, %if.end ], [ %add27, %if.then23.do.body_crit_edge ]
  %11 = call i16 @llvm.umin.i16(i16 %data_length.addr.0, i16 64)
  %add = add i32 %byte_offset.0, %conv13
  %conv14 = trunc i32 %add to i16
  %12 = call i16 @llvm.bswap.i16(i16 %conv14)
  %13 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %req, align 4
  %page_offset = getelementptr inbounds %struct.hwrm_port_phy_i2c_read_input, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %page_offset to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %12, ptr %page_offset, align 2
  %conv15 = trunc i16 %11 to i8
  %data_length16 = getelementptr inbounds %struct.hwrm_port_phy_i2c_read_input, ptr %14, i32 0, i32 12
  %16 = ptrtoint ptr %data_length16 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv15, ptr %data_length16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool19.not.not = icmp eq i32 %add, 0
  %17 = select i1 %tobool19.not.not, i32 0, i32 16777216
  %enables = getelementptr inbounds %struct.hwrm_port_phy_i2c_read_input, ptr %14, i32 0, i32 6
  %18 = ptrtoint ptr %enables to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %enables, align 4
  %call21 = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %14) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.end

if.then23:                                        ; preds = %do.body
  %sub = sub i16 %data_length.addr.0, %11
  %conv10 = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %buf, i32 %byte_offset.0
  %19 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %conv10)
  %add27 = add i32 %byte_offset.0, %conv10
  %cmp30.not = icmp eq i16 %sub, 0
  br i1 %cmp30.not, label %if.then23.do.end_crit_edge, label %if.then23.do.body_crit_edge

if.then23.do.body_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.body

if.then23.do.end_crit_edge:                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.end

do.end:                                           ; preds = %if.then23.do.end_crit_edge, %do.body.do.end_crit_edge
  %20 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %req, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %21) #24
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %do.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #24
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_update_link(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #24

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #25 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #25 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #21 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #22 = { nounwind readonly }
attributes #23 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #24 = { nounwind }
attributes #25 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #26 = { nomerge }
attributes #27 = { cold nounwind }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { nobuiltin nounwind }
attributes #30 = { nounwind allocsize(2) }
attributes #31 = { nobuiltin }
attributes #32 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !147, !149, !150, !151, !153, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216}
!llvm.named.register.sp = !{!218}
!llvm.module.flags = !{!219, !220, !221, !222, !223, !224, !225, !226}
!llvm.ident = !{!227}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 2219, i32 24}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 2563, i32 20}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 2567, i32 20}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 2622, i32 21}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 2634, i32 19}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 2878, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @bnxt_get_pkginfo._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @bnxt_get_pkginfo._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 3789, i32 16}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 3791, i32 16}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 3793, i32 16}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 3795, i32 16}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 3798, i32 17}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 3800, i32 18}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 3803, i32 18}
!32 = !{ptr @bnxt_ethtool_ops, !33, !"bnxt_ethtool_ops", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 3945, i32 26}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 2162, i32 23}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 2909, i32 5}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 1363, i32 24}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 2927, i32 19}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 2957, i32 19}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 3538, i32 21}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @bnxt_get_strings.str, !51, !"str", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 688, i32 29}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 697, i32 19}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 790, i32 23}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 170, i32 2}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 171, i32 2}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 172, i32 2}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 173, i32 2}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 174, i32 2}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 175, i32 2}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 176, i32 2}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 177, i32 2}
!72 = distinct !{null, !73, !"bnxt_ring_rx_stats_str", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 169, i32 27}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 181, i32 2}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 182, i32 2}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 183, i32 2}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 184, i32 2}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 185, i32 2}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 186, i32 2}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 187, i32 2}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 188, i32 2}
!90 = distinct !{null, !91, !"bnxt_ring_tx_stats_str", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 180, i32 27}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 199, i32 2}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 200, i32 2}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 201, i32 2}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 202, i32 2}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 203, i32 2}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 204, i32 2}
!104 = !{ptr @bnxt_ring_tpa2_stats_str, !105, !"bnxt_ring_tpa2_stats_str", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 198, i32 27}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 192, i32 2}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 193, i32 2}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 194, i32 2}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 195, i32 2}
!114 = !{ptr @bnxt_ring_tpa_stats_str, !115, !"bnxt_ring_tpa_stats_str", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 191, i32 27}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 208, i32 2}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 209, i32 2}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 210, i32 2}
!122 = distinct !{null, !123, !"bnxt_rx_sw_stats_str", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 207, i32 27}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 214, i32 2}
!126 = distinct !{null, !127, !"bnxt_cmn_sw_stats_str", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 213, i32 27}
!128 = !{ptr @bnxt_sw_func_stats, !129, !"bnxt_sw_func_stats", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 336, i32 3}
!130 = !{ptr @bnxt_port_stats_arr, !131, !"bnxt_port_stats_arr", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 350, i32 3}
!132 = !{ptr @bnxt_port_stats_ext_arr, !133, !"bnxt_port_stats_ext_arr", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 436, i32 3}
!134 = !{ptr @bnxt_tx_port_stats_ext_arr, !135, !"bnxt_tx_port_stats_ext_arr", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 456, i32 3}
!136 = !{ptr @bnxt_rx_bytes_pri_arr, !137, !"bnxt_rx_bytes_pri_arr", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 464, i32 3}
!138 = !{ptr @bnxt_rx_pkts_pri_arr, !139, !"bnxt_rx_pkts_pri_arr", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 471, i32 3}
!140 = !{ptr @bnxt_tx_bytes_pri_arr, !141, !"bnxt_tx_bytes_pri_arr", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 478, i32 3}
!142 = !{ptr @bnxt_tx_pkts_pri_arr, !143, !"bnxt_tx_pkts_pri_arr", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 485, i32 3}
!144 = distinct !{null, !145, !"__warned", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 1002, i32 3}
!146 = !{ptr @.str.57, !145, !"<string literal>", i1 false, i1 false}
!147 = distinct !{null, !148, !"__warned", i1 false, i1 false}
!148 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!149 = !{ptr @.str.58, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.59, !148, !"<string literal>", i1 false, i1 false}
!151 = distinct !{null, !152, !"__warned", i1 false, i1 false}
!152 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!153 = !{ptr @.str.60, !152, !"<string literal>", i1 false, i1 false}
!154 = distinct !{null, !155, !"__warned", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 1031, i32 3}
!156 = !{ptr @.str.61, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 2667, i32 19}
!158 = !{ptr @.str.62, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 2651, i32 19}
!160 = !{ptr @.str.63, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 2481, i32 19}
!162 = !{ptr @.str.64, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 2337, i32 19}
!164 = !{ptr @.str.65, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 2342, i32 19}
!166 = !{ptr @.str.66, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 2347, i32 19}
!168 = !{ptr @.str.67, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 2352, i32 19}
!170 = !{ptr @.str.68, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 2357, i32 19}
!172 = !{ptr @.str.69, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 2366, i32 19}
!174 = !{ptr @.str.70, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 2390, i32 19}
!176 = !{ptr @.str.71, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 2397, i32 19}
!178 = !{ptr @.str.72, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 2402, i32 19}
!180 = !{ptr @.str.73, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 2408, i32 19}
!182 = !{ptr @.str.74, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 2419, i32 7}
!184 = !{ptr @.str.75, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 3623, i32 19}
!186 = !{ptr @.str.76, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 3630, i32 7}
!188 = !{ptr @.str.77, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 3638, i32 22}
!190 = !{ptr @.str.78, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 3652, i32 22}
!192 = !{ptr @.str.79, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 3662, i32 20}
!194 = !{ptr @.str.80, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 924, i32 20}
!196 = !{ptr @.str.81, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 931, i32 20}
!198 = !{ptr @.str.82, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 938, i32 20}
!200 = !{ptr @.str.83, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 950, i32 24}
!202 = !{ptr @.str.84, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 3672, i32 20}
!204 = !{ptr @.str.85, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 3009, i32 20}
!206 = !{ptr @.str.86, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 3016, i32 21}
!208 = !{ptr @.str.87, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 3027, i32 20}
!210 = !{ptr @.str.88, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 1908, i32 20}
!212 = !{ptr @.str.89, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 1913, i32 20}
!214 = !{ptr @.str.90, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 1830, i32 19}
!216 = !{ptr @bnxt_rmon_ranges, !217, !"bnxt_rmon_ranges", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c", i32 3864, i32 45}
!218 = !{!"sp"}
!219 = !{i32 1, !"wchar_size", i32 2}
!220 = !{i32 1, !"min_enum_size", i32 4}
!221 = !{i32 8, !"branch-target-enforcement", i32 0}
!222 = !{i32 8, !"sign-return-address", i32 0}
!223 = !{i32 8, !"sign-return-address-all", i32 0}
!224 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!225 = !{i32 7, !"uwtable", i32 1}
!226 = !{i32 7, !"frame-pointer", i32 2}
!227 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!228 = !{!"auto-init"}
!229 = !{i32 0, i32 33}
!230 = !{i64 2149547968}
!231 = !{i64 2149548234}
!232 = !{!"branch_weights", i32 2000, i32 1}
!233 = !{i64 2159655406}
!234 = !{i64 2159337789}
!235 = !{i64 6282254}
!236 = !{i64 2159338162}
!237 = !{i64 2159343701}
!238 = !{i64 2159344101}
!239 = !{i64 2159653097}
