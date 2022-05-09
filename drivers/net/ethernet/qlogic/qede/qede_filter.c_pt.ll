; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qede/qede_filter.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qede/qede_filter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.17 }
%union.anon.17 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.qede_arfs_fltr_node = type { i32, ptr, i32, i32, %struct.qede_arfs_tuple, i32, i64, i16, i16, i8, i8, i8, i8, i8, %struct.hlist_node }
%struct.qede_arfs_tuple = type { %union.anon, %union.anon.1, i16, i16, i16, i8, i32, ptr, ptr, ptr }
%union.anon = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }
%union.anon.1 = type { %struct.in6_addr }
%struct.qede_dev = type { ptr, ptr, ptr, ptr, i32, i8, i32, ptr, ptr, i64, %struct.qed_dev_eth_info, ptr, ptr, i8, i8, i8, i8, i16, i16, i16, %struct.qed_int_info, %struct.mutex, i32, i16, i32, %struct.qede_stats, i32, [128 x i16], [10 x i32], i8, i16, i16, i8, %struct.list_head, i16, i16, i8, %struct.delayed_work, i32, i16, i16, ptr, i8, %struct.qede_rdma_dev, ptr, i32, i32, %struct.qede_dump_info }
%struct.qed_dev_eth_info = type { %struct.qed_dev_info, i8, i8, [6 x i8], i16, i16, i8, i8 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.qed_int_info = type { ptr, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.16 }
%union.anon.16 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.qede_stats = type { %struct.qede_stats_common, %union.anon.203 }
%struct.qede_stats_common = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.anon.203 = type { %struct.qede_stats_bb }
%struct.qede_stats_bb = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.qede_rdma_dev = type { ptr, %struct.list_head, %struct.list_head, ptr, %struct.kref, %struct.completion, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.qede_dump_info = type { i32, i8, [4 x i32] }
%struct.qede_arfs = type { [16 x %struct.hlist_head], %struct.spinlock, ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.15 }
%union.anon.15 = type { %struct.raw_spinlock }
%struct.qed_ntuple_filter_params = type { i32, i16, i16, i8, i8, i8, i8, i8 }
%struct.qed_eth_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.196, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.196 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.195, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.195 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.2, %union.anon.5, %union.anon.124, [48 x i8], %union.anon.125, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.127, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, ptr, %union.anon.4 }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
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
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.page = type { i32, %union.anon.13, %union.anon.109, %struct.atomic_t, i32 }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.109 = type { %struct.atomic_t }
%struct.qede_fastpath = type { ptr, i8, i8, i8, %struct.napi_struct, ptr, ptr, ptr, ptr, [24 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.qede_rx_queue = type { ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i16, i16, i32, i32, ptr, %struct.qed_chain, [124 x i8], %struct.qed_chain, [64 x %struct.qede_agg_info], i64, i64, i64, i64, i64, ptr, [116 x i8], %struct.xdp_rxq_info }
%struct.qed_chain = type { ptr, ptr, %struct.anon.197, %union.anon.199, i32, i32, i32, i16, i16, i16, i16, i16, i8, i32, i32, %struct.anon.200, ptr, i32, i32, i32, i8 }
%struct.anon.197 = type { ptr, %union.anon.198 }
%union.anon.198 = type { %struct.qed_chain_pbl_u32 }
%struct.qed_chain_pbl_u32 = type { i32, i32 }
%union.anon.199 = type { %struct.qed_chain_u32 }
%struct.qed_chain_u32 = type { i32, i32 }
%struct.anon.200 = type { ptr, i32, i32 }
%struct.qede_agg_info = type { %struct.sw_rx_data, ptr, i16, i8, i8, i8, i8 }
%struct.sw_rx_data = type { ptr, i32, i32 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.qed_update_vport_rss_params = type { [128 x ptr], [10 x i32], i8 }
%struct.qed_filter_ucast_params = type { i32, i8, i16, i8, [6 x i8] }
%struct.qede_vlan = type { %struct.list_head, i16, i8 }
%struct.qed_update_vport_params = type { i8, i8, i8, i8, i8, i8, i8, i8, %struct.qed_update_vport_rss_params }
%struct.qede_reload_args = type { ptr, %union.anon.209 }
%union.anon.209 = type { i64 }
%struct.netdev_bpf = type { i32, %union.anon.144 }
%union.anon.144 = type { %struct.anon.145 }
%struct.anon.145 = type { i32, ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.qed_common_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_filter_mcast_params = type { i32, i8, [64 x [6 x i8]] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.188, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.188 = type { i32 }
%struct.ethtool_tcpip4_spec = type { i32, i32, i16, i16, i8 }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.210, ptr }
%union.anon.210 = type { %struct.anon.218 }
%struct.anon.218 = type { i32, i64, i64, i64, i32 }
%struct.flow_match_basic = type { ptr, ptr }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.anon.216 = type { i32, i32, i8 }
%struct.ethtool_rx_flow_spec_input = type { ptr, i32 }
%struct.qed_tunn_params = type { i16, i8, i16, i8 }
%struct.udp_tunnel_info = type { i16, i16, i16, i8 }
%struct.flow_match_ipv4_addrs = type { ptr, ptr }
%struct.flow_dissector_key_ipv4_addrs = type { i32, i32 }
%struct.flow_match_ports = type { ptr, ptr }
%struct.anon.227 = type { i16, i16 }
%struct.flow_match_ipv6_addrs = type { ptr, ptr }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }

@qede_arfs_filter_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"\015[%s:%d(%s)]Failed arfs filter configuration fw_rc=%d, flow_id=%d, sw_id=0x%llx, src_port=%d, dst_port=%d, rxq=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qede_arfs_filter_op\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/qlogic/qede/qede_filter.c\00", [49 x i8] zeroinitializer }, align 32
@qede_arfs_filter_op._entry_ptr = internal global ptr @qede_arfs_filter_op._entry, section ".printk_index", align 4
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@qede_poll_for_freeing_arfs_filters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015[%s:%d(%s)]Timeout in polling for arfs filter free\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"qede_poll_for_freeing_arfs_filters\00", [61 x i8] zeroinitializer }, align 32
@qede_poll_for_freeing_arfs_filters._entry_ptr = internal global ptr @qede_poll_for_freeing_arfs_filters._entry, section ".printk_index", align 4
@qede_alloc_arfs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&edev->arfs->arfs_list_lock\00", [36 x i8] zeroinitializer }, align 32
@qede_vlan_rx_add_vid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015[%s:%d(%s)]Adding vlan 0x%04x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qede_vlan_rx_add_vid\00", [43 x i8] zeroinitializer }, align 32
@qede_vlan_rx_add_vid._entry_ptr = internal global ptr @qede_vlan_rx_add_vid._entry, section ".printk_index", align 4
@qede_vlan_rx_add_vid._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015[%s:%d(%s)]Failed to allocate struct for vlan\0A\00", [47 x i8] zeroinitializer }, align 32
@qede_vlan_rx_add_vid._entry_ptr.11 = internal global ptr @qede_vlan_rx_add_vid._entry.9, section ".printk_index", align 4
@qede_vlan_rx_add_vid._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015[%s:%d(%s)]vlan already configured\0A\00", [58 x i8] zeroinitializer }, align 32
@qede_vlan_rx_add_vid._entry_ptr.14 = internal global ptr @qede_vlan_rx_add_vid._entry.12, section ".printk_index", align 4
@qede_vlan_rx_add_vid._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.2, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\015[%s:%d(%s)]Interface is down, VLAN %d will be configured when interface is up\0A\00", [47 x i8] zeroinitializer }, align 32
@qede_vlan_rx_add_vid._entry_ptr.17 = internal global ptr @qede_vlan_rx_add_vid._entry.15, section ".printk_index", align 4
@qede_vlan_rx_add_vid._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.2, i32 727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013[%s:%d(%s)]Failed to configure VLAN %d\0A\00", [54 x i8] zeroinitializer }, align 32
@qede_vlan_rx_add_vid._entry_ptr.20 = internal global ptr @qede_vlan_rx_add_vid._entry.18, section ".printk_index", align 4
@qede_configure_vlan_filters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015[%s:%d(%s)]Adding vlan %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qede_configure_vlan_filters\00", [36 x i8] zeroinitializer }, align 32
@qede_configure_vlan_filters._entry_ptr = internal global ptr @qede_configure_vlan_filters._entry, section ".printk_index", align 4
@qede_configure_vlan_filters._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013[%s:%d(%s)]Failed to configure VLAN %u\0A\00", [54 x i8] zeroinitializer }, align 32
@qede_configure_vlan_filters._entry_ptr.25 = internal global ptr @qede_configure_vlan_filters._entry.23, section ".printk_index", align 4
@qede_vlan_rx_kill_vid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015[%s:%d(%s)]Removing vlan 0x%04x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qede_vlan_rx_kill_vid\00", [42 x i8] zeroinitializer }, align 32
@qede_vlan_rx_kill_vid._entry_ptr = internal global ptr @qede_vlan_rx_kill_vid._entry, section ".printk_index", align 4
@qede_vlan_rx_kill_vid._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015[%s:%d(%s)]Vlan isn't configured\0A\00", [60 x i8] zeroinitializer }, align 32
@qede_vlan_rx_kill_vid._entry_ptr.30 = internal global ptr @qede_vlan_rx_kill_vid._entry.28, section ".printk_index", align 4
@qede_vlan_rx_kill_vid._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\015[%s:%d(%s)]Interface is down, removing VLAN from list only\0A\00", [34 x i8] zeroinitializer }, align 32
@qede_vlan_rx_kill_vid._entry_ptr.33 = internal global ptr @qede_vlan_rx_kill_vid._entry.31, section ".printk_index", align 4
@qede_vlan_rx_kill_vid._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.2, i32 864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013[%s:%d(%s)]Failed to remove VLAN %d\0A\00", [57 x i8] zeroinitializer }, align 32
@qede_vlan_rx_kill_vid._entry_ptr.36 = internal global ptr @qede_vlan_rx_kill_vid._entry.34, section ".printk_index", align 4
@qede_vlan_mark_nonconfigured._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]marked vlan %d as non-configured\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qede_vlan_mark_nonconfigured\00", [35 x i8] zeroinitializer }, align 32
@qede_vlan_mark_nonconfigured._entry_ptr = internal global ptr @qede_vlan_mark_nonconfigured._entry, section ".printk_index", align 4
@qede_udp_tunnels_both = internal constant { %struct.udp_tunnel_nic_info, [44 x i8] } { %struct.udp_tunnel_nic_info { ptr null, ptr null, ptr @qede_udp_tunnel_sync, ptr null, i32 1, [4 x %struct.udp_tunnel_nic_table_info] [%struct.udp_tunnel_nic_table_info { i32 1, i32 1 }, %struct.udp_tunnel_nic_table_info { i32 1, i32 2 }, %struct.udp_tunnel_nic_table_info zeroinitializer, %struct.udp_tunnel_nic_table_info zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@qede_udp_tunnels_vxlan = internal constant { %struct.udp_tunnel_nic_info, [44 x i8] } { %struct.udp_tunnel_nic_info { ptr null, ptr null, ptr @qede_udp_tunnel_sync, ptr null, i32 1, [4 x %struct.udp_tunnel_nic_table_info] [%struct.udp_tunnel_nic_table_info { i32 1, i32 1 }, %struct.udp_tunnel_nic_table_info zeroinitializer, %struct.udp_tunnel_nic_table_info zeroinitializer, %struct.udp_tunnel_nic_table_info zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@qede_udp_tunnels_geneve = internal constant { %struct.udp_tunnel_nic_info, [44 x i8] } { %struct.udp_tunnel_nic_info { ptr null, ptr null, ptr @qede_udp_tunnel_sync, ptr null, i32 1, [4 x %struct.udp_tunnel_nic_table_info] [%struct.udp_tunnel_nic_table_info { i32 1, i32 2 }, %struct.udp_tunnel_nic_table_info zeroinitializer, %struct.udp_tunnel_nic_table_info zeroinitializer, %struct.udp_tunnel_nic_table_info zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@qede_set_mac_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 1084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015[%s:%d(%s)]The MAC address is not valid\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qede_set_mac_addr\00", [46 x i8] zeroinitializer }, align 32
@qede_set_mac_addr._entry_ptr = internal global ptr @qede_set_mac_addr._entry, section ".printk_index", align 4
@qede_set_mac_addr._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 1091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015[%s:%d(%s)]qed prevents setting MAC %pM\0A\00", [53 x i8] zeroinitializer }, align 32
@qede_set_mac_addr._entry_ptr.43 = internal global ptr @qede_set_mac_addr._entry.41, section ".printk_index", align 4
@qede_set_mac_addr._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.2, i32 1105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015[%s:%d(%s)]Setting device MAC to %pM\0A\00", [56 x i8] zeroinitializer }, align 32
@qede_set_mac_addr._entry_ptr.46 = internal global ptr @qede_set_mac_addr._entry.44, section ".printk_index", align 4
@qede_set_mac_addr._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.40, ptr @.str.2, i32 1109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015[%s:%d(%s)]The device is currently down\0A\00", [53 x i8] zeroinitializer }, align 32
@qede_set_mac_addr._entry_ptr.49 = internal global ptr @qede_set_mac_addr._entry.47, section ".printk_index", align 4
@qede_config_rx_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 1206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\015[%s:%d(%s)]Failed to allocate memory for unicast MACs\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qede_config_rx_mode\00", [44 x i8] zeroinitializer }, align 32
@qede_config_rx_mode._entry_ptr = internal global ptr @qede_config_rx_mode._entry, section ".printk_index", align 4
@qede_get_cls_rule_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 1337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015[%s:%d(%s)]Rule not found - location=0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qede_get_cls_rule_entry\00", [40 x i8] zeroinitializer }, align 32
@qede_get_cls_rule_entry._entry_ptr = internal global ptr @qede_get_cls_rule_entry._entry, section ".printk_index", align 4
@qede_add_tc_flower_fltr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 1890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"\015[%s:%d(%s)]Filter configuration invalidated, filter mode=0x%x, configured mode=0x%x, filter count=0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qede_add_tc_flower_fltr\00", [40 x i8] zeroinitializer }, align 32
@qede_add_tc_flower_fltr._entry_ptr = internal global ptr @qede_add_tc_flower_fltr._entry, section ".printk_index", align 4
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@qede_configure_arfs_fltr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\015[%s:%d(%s)]%s sw_id[0x%llx]: %s [vf %u queue %d]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qede_configure_arfs_fltr\00", [39 x i8] zeroinitializer }, align 32
@qede_configure_arfs_fltr._entry_ptr = internal global ptr @qede_configure_arfs_fltr._entry, section ".printk_index", align 4
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Adding\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Deleting\00", [23 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@qede_enqueue_fltr_and_config_searcher._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015[%s:%d(%s)]Failed to map DMA memory for rule\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"qede_enqueue_fltr_and_config_searcher\00", [58 x i8] zeroinitializer }, align 32
@qede_enqueue_fltr_and_config_searcher._entry_ptr = internal global ptr @qede_enqueue_fltr_and_config_searcher._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qede_config_accept_any_vlan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013[%s:%d(%s)]Failed to %s accept-any-vlan\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qede_config_accept_any_vlan\00", [36 x i8] zeroinitializer }, align 32
@qede_config_accept_any_vlan._entry_ptr = internal global ptr @qede_config_accept_any_vlan._entry, section ".printk_index", align 4
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@qede_config_accept_any_vlan._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.66, ptr @.str.2, i32 669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015[%s:%d(%s)]%s accept-any-vlan\0A\00", [63 x i8] zeroinitializer }, align 32
@qede_config_accept_any_vlan._entry_ptr.71 = internal global ptr @qede_config_accept_any_vlan._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@udp_tunnel_nic_ops = external dso_local local_unnamed_addr global ptr, align 4
@qede_configure_mcast_filtering._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 1141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\015[%s:%d(%s)]Failed to allocate memory for multicast MACs\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qede_configure_mcast_filtering\00", [33 x i8] zeroinitializer }, align 32
@qede_configure_mcast_filtering._entry_ptr = internal global ptr @qede_configure_mcast_filtering._entry, section ".printk_index", align 4
@qede_poll_arfs_filter_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 1391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]Timeout in polling filter config\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qede_poll_arfs_filter_config\00", [35 x i8] zeroinitializer }, align 32
@qede_poll_arfs_filter_config._entry_ptr = internal global ptr @qede_poll_arfs_filter_config._entry, section ".printk_index", align 4
@qede_parse_flow_attr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 1836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015[%s:%d(%s)]Unsupported key set:0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qede_parse_flow_attr\00", [43 x i8] zeroinitializer }, align 32
@qede_parse_flow_attr._entry_ptr = internal global ptr @qede_parse_flow_attr._entry, section ".printk_index", align 4
@qede_parse_flow_attr._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 1842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]Unsupported proto=0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@qede_parse_flow_attr._entry_ptr.82 = internal global ptr @qede_parse_flow_attr._entry.80, section ".printk_index", align 4
@qede_parse_flow_attr._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.2, i32 1862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015[%s:%d(%s)]Invalid protocol request\0A\00", [57 x i8] zeroinitializer }, align 32
@qede_parse_flow_attr._entry_ptr.85 = internal global ptr @qede_parse_flow_attr._entry.83, section ".printk_index", align 4
@qede_flow_parse_v4_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 1765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]Do not support ipv4 prefix/masks\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qede_flow_parse_v4_common\00", [38 x i8] zeroinitializer }, align 32
@qede_flow_parse_v4_common._entry_ptr = internal global ptr @qede_flow_parse_v4_common._entry, section ".printk_index", align 4
@qede_flow_parse_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 1712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015[%s:%d(%s)]Do not support ports masks\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qede_flow_parse_ports\00", [42 x i8] zeroinitializer }, align 32
@qede_flow_parse_ports._entry_ptr = internal global ptr @qede_flow_parse_ports._entry, section ".printk_index", align 4
@qede_set_v4_tuple_to_profile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 1541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015[%s:%d(%s)]Invalid N-tuple\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qede_set_v4_tuple_to_profile\00", [35 x i8] zeroinitializer }, align 32
@qede_set_v4_tuple_to_profile._entry_ptr = internal global ptr @qede_set_v4_tuple_to_profile._entry, section ".printk_index", align 4
@.str.92 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TCP\00", [28 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UDP\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s %pI4 (%04x) -> %pI4 (%04x)\00", [34 x i8] zeroinitializer }, align 32
@qede_flow_parse_v6_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 1741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015[%s:%d(%s)]Do not support IPv6 address prefix/mask\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qede_flow_parse_v6_common\00", [38 x i8] zeroinitializer }, align 32
@qede_flow_parse_v6_common._entry_ptr = internal global ptr @qede_flow_parse_v6_common._entry, section ".printk_index", align 4
@qede_set_v6_tuple_to_profile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.97, ptr @.str.2, i32 1576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qede_set_v6_tuple_to_profile\00", [35 x i8] zeroinitializer }, align 32
@qede_set_v6_tuple_to_profile._entry_ptr = internal global ptr @qede_set_v6_tuple_to_profile._entry, section ".printk_index", align 4
@qede_parse_actions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 1674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015[%s:%d(%s)]No actions received\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qede_parse_actions\00", [45 x i8] zeroinitializer }, align 32
@qede_parse_actions._entry_ptr = internal global ptr @qede_parse_actions._entry, section ".printk_index", align 4
@qede_parse_actions._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.2, i32 1690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015[%s:%d(%s)]Queue out-of-bounds\0A\00", [62 x i8] zeroinitializer }, align 32
@qede_parse_actions._entry_ptr.102 = internal global ptr @qede_parse_actions._entry.100, section ".printk_index", align 4
@__flow_action_hw_stats_check.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/net/flow_offload.h\00", [37 x i8] zeroinitializer }, align 32
@__flow_action_hw_stats_check.__msg = internal constant [55 x i8] c"qede: Driver supports only default HW stats type \22any\22\00", align 1
@flow_action_mixed_hw_stats_check.__msg = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"qede: Mixing HW stats types for actions is not supported\00", [39 x i8] zeroinitializer }, align 32
@qede_flow_spec_to_rule._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 1992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015[%s:%d(%s)]Can't support flow of type %08x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qede_flow_spec_to_rule\00", [41 x i8] zeroinitializer }, align 32
@qede_flow_spec_to_rule._entry_ptr = internal global ptr @qede_flow_spec_to_rule._entry, section ".printk_index", align 4
@qede_flow_spec_validate_unused._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.2, i32 1504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015[%s:%d(%s)]Don't support MAC extensions\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qede_flow_spec_validate_unused\00", [33 x i8] zeroinitializer }, align 32
@qede_flow_spec_validate_unused._entry_ptr = internal global ptr @qede_flow_spec_validate_unused._entry, section ".printk_index", align 4
@qede_flow_spec_validate_unused._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.2, i32 1510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015[%s:%d(%s)]Don't support vlan-based classification\0A\00", [42 x i8] zeroinitializer }, align 32
@qede_flow_spec_validate_unused._entry_ptr.111 = internal global ptr @qede_flow_spec_validate_unused._entry.109, section ".printk_index", align 4
@qede_flow_spec_validate_unused._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.108, ptr @.str.2, i32 1516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015[%s:%d(%s)]Don't support user defined data\0A\00", [50 x i8] zeroinitializer }, align 32
@qede_flow_spec_validate_unused._entry_ptr.114 = internal global ptr @qede_flow_spec_validate_unused._entry.112, section ".printk_index", align 4
@qede_flow_spec_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 1944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]Location out-of-bounds\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qede_flow_spec_validate\00", [40 x i8] zeroinitializer }, align 32
@qede_flow_spec_validate._entry_ptr = internal global ptr @qede_flow_spec_validate._entry, section ".printk_index", align 4
@qede_flow_spec_validate._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.2, i32 1950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015[%s:%d(%s)]Location already in use\0A\00", [58 x i8] zeroinitializer }, align 32
@qede_flow_spec_validate._entry_ptr.119 = internal global ptr @qede_flow_spec_validate._entry.117, section ".printk_index", align 4
@qede_flow_spec_validate._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.2, i32 1959, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\015[%s:%d(%s)]flow_spec would require filtering mode %08x, but %08x is configured\0A\00", [46 x i8] zeroinitializer }, align 32
@qede_flow_spec_validate._entry_ptr.122 = internal global ptr @qede_flow_spec_validate._entry.120, section ".printk_index", align 4
@qede_flow_set_destination._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.2, i32 1622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015[%s:%d(%s)]Configuring N-tuple for VF 0x%02x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qede_flow_set_destination\00", [38 x i8] zeroinitializer }, align 32
@qede_flow_set_destination._entry_ptr = internal global ptr @qede_flow_set_destination._entry, section ".printk_index", align 4
@switch.table.qede_add_cls_rule = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 2048, i16 2048, i16 2048, i16 2048, i16 -31011, i16 -31011], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 20]
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 194, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 303, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 321, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 683, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 687, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 697, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 707, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 726, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 794, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 799, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 835, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 844, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 853, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 864, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 900, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant [22 x i8] c"qede_udp_tunnels_both\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 988, i32 41 }
@___asan_gen_.246 = private unnamed_addr constant [23 x i8] c"qede_udp_tunnels_vxlan\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 995, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant [24 x i8] c"qede_udp_tunnels_geneve\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1001, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1084, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1090, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1105, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1108, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1206, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1336, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1888, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 4963, i32 10 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 115, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 145, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 326, i32 6 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 665, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 668, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1140, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1391, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1835, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1842, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1862, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1765, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1712, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1541, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1450, i32 52 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1450, i32 60 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1453, i32 4 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1740, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1576, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1674, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1690, i32 5 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 354, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.475 = private unnamed_addr constant [30 x i8] c"../include/net/flow_offload.h\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 323, i32 4 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1991, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1504, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1510, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1516, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1944, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1950, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1957, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.534 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.535 = private constant [50 x i8] c"../drivers/net/ethernet/qlogic/qede/qede_filter.c\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1621, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant [31 x i8] c"switch.table.qede_add_cls_rule\00", align 1
@llvm.compiler.used = appending global [182 x ptr] [ptr @qede_add_tc_flower_fltr._entry, ptr @qede_add_tc_flower_fltr._entry_ptr, ptr @qede_arfs_filter_op._entry, ptr @qede_arfs_filter_op._entry_ptr, ptr @qede_config_accept_any_vlan._entry, ptr @qede_config_accept_any_vlan._entry.69, ptr @qede_config_accept_any_vlan._entry_ptr, ptr @qede_config_accept_any_vlan._entry_ptr.71, ptr @qede_config_rx_mode._entry, ptr @qede_config_rx_mode._entry_ptr, ptr @qede_configure_arfs_fltr._entry, ptr @qede_configure_arfs_fltr._entry_ptr, ptr @qede_configure_mcast_filtering._entry, ptr @qede_configure_mcast_filtering._entry_ptr, ptr @qede_configure_vlan_filters._entry, ptr @qede_configure_vlan_filters._entry.23, ptr @qede_configure_vlan_filters._entry_ptr, ptr @qede_configure_vlan_filters._entry_ptr.25, ptr @qede_enqueue_fltr_and_config_searcher._entry, ptr @qede_enqueue_fltr_and_config_searcher._entry_ptr, ptr @qede_flow_parse_ports._entry, ptr @qede_flow_parse_ports._entry_ptr, ptr @qede_flow_parse_v4_common._entry, ptr @qede_flow_parse_v4_common._entry_ptr, ptr @qede_flow_parse_v6_common._entry, ptr @qede_flow_parse_v6_common._entry_ptr, ptr @qede_flow_set_destination._entry, ptr @qede_flow_set_destination._entry_ptr, ptr @qede_flow_spec_to_rule._entry, ptr @qede_flow_spec_to_rule._entry_ptr, ptr @qede_flow_spec_validate._entry, ptr @qede_flow_spec_validate._entry.117, ptr @qede_flow_spec_validate._entry.120, ptr @qede_flow_spec_validate._entry_ptr, ptr @qede_flow_spec_validate._entry_ptr.119, ptr @qede_flow_spec_validate._entry_ptr.122, ptr @qede_flow_spec_validate_unused._entry, ptr @qede_flow_spec_validate_unused._entry.109, ptr @qede_flow_spec_validate_unused._entry.112, ptr @qede_flow_spec_validate_unused._entry_ptr, ptr @qede_flow_spec_validate_unused._entry_ptr.111, ptr @qede_flow_spec_validate_unused._entry_ptr.114, ptr @qede_get_cls_rule_entry._entry, ptr @qede_get_cls_rule_entry._entry_ptr, ptr @qede_parse_actions._entry, ptr @qede_parse_actions._entry.100, ptr @qede_parse_actions._entry_ptr, ptr @qede_parse_actions._entry_ptr.102, ptr @qede_parse_flow_attr._entry, ptr @qede_parse_flow_attr._entry.80, ptr @qede_parse_flow_attr._entry.83, ptr @qede_parse_flow_attr._entry_ptr, ptr @qede_parse_flow_attr._entry_ptr.82, ptr @qede_parse_flow_attr._entry_ptr.85, ptr @qede_poll_arfs_filter_config._entry, ptr @qede_poll_arfs_filter_config._entry_ptr, ptr @qede_poll_for_freeing_arfs_filters._entry, ptr @qede_poll_for_freeing_arfs_filters._entry_ptr, ptr @qede_set_mac_addr._entry, ptr @qede_set_mac_addr._entry.41, ptr @qede_set_mac_addr._entry.44, ptr @qede_set_mac_addr._entry.47, ptr @qede_set_mac_addr._entry_ptr, ptr @qede_set_mac_addr._entry_ptr.43, ptr @qede_set_mac_addr._entry_ptr.46, ptr @qede_set_mac_addr._entry_ptr.49, ptr @qede_set_v4_tuple_to_profile._entry, ptr @qede_set_v4_tuple_to_profile._entry_ptr, ptr @qede_set_v6_tuple_to_profile._entry, ptr @qede_set_v6_tuple_to_profile._entry_ptr, ptr @qede_vlan_mark_nonconfigured._entry, ptr @qede_vlan_mark_nonconfigured._entry_ptr, ptr @qede_vlan_rx_add_vid._entry, ptr @qede_vlan_rx_add_vid._entry.12, ptr @qede_vlan_rx_add_vid._entry.15, ptr @qede_vlan_rx_add_vid._entry.18, ptr @qede_vlan_rx_add_vid._entry.9, ptr @qede_vlan_rx_add_vid._entry_ptr, ptr @qede_vlan_rx_add_vid._entry_ptr.11, ptr @qede_vlan_rx_add_vid._entry_ptr.14, ptr @qede_vlan_rx_add_vid._entry_ptr.17, ptr @qede_vlan_rx_add_vid._entry_ptr.20, ptr @qede_vlan_rx_kill_vid._entry, ptr @qede_vlan_rx_kill_vid._entry.28, ptr @qede_vlan_rx_kill_vid._entry.31, ptr @qede_vlan_rx_kill_vid._entry.34, ptr @qede_vlan_rx_kill_vid._entry_ptr, ptr @qede_vlan_rx_kill_vid._entry_ptr.30, ptr @qede_vlan_rx_kill_vid._entry_ptr.33, ptr @qede_vlan_rx_kill_vid._entry_ptr.36, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @qede_alloc_arfs.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @qede_udp_tunnels_both, ptr @qede_udp_tunnels_vxlan, ptr @qede_udp_tunnels_geneve, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @flow_action_mixed_hw_stats_check.__msg, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @switch.table.qede_add_cls_rule], section "llvm.metadata"
@0 = internal global [137 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_arfs_filter_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_poll_for_freeing_arfs_filters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_alloc_arfs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_vlan_rx_add_vid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_vlan_rx_add_vid._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_vlan_rx_add_vid._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_vlan_rx_add_vid._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_vlan_rx_add_vid._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_configure_vlan_filters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_configure_vlan_filters._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_vlan_rx_kill_vid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_vlan_rx_kill_vid._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_vlan_rx_kill_vid._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_vlan_rx_kill_vid._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_vlan_mark_nonconfigured._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_udp_tunnels_both to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_udp_tunnels_vxlan to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_udp_tunnels_geneve to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_mac_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_mac_addr._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_mac_addr._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_mac_addr._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_config_rx_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_get_cls_rule_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_add_tc_flower_fltr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_configure_arfs_fltr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_enqueue_fltr_and_config_searcher._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_config_accept_any_vlan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_config_accept_any_vlan._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_configure_mcast_filtering._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_poll_arfs_filter_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_parse_flow_attr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_parse_flow_attr._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_parse_flow_attr._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_flow_parse_v4_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_flow_parse_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_v4_tuple_to_profile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_flow_parse_v6_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_v6_tuple_to_profile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_parse_actions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_parse_actions._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_action_mixed_hw_stats_check.__msg to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_flow_spec_to_rule._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_flow_spec_validate_unused._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_flow_spec_validate_unused._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_flow_spec_validate_unused._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_flow_spec_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_flow_spec_validate._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_flow_spec_validate._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_flow_set_destination._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qede_add_cls_rule to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qede_arfs_filter_op(ptr nocapture noundef readonly %dev, ptr noundef %filter, i8 noundef zeroext %fw_rc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_rc1 = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %filter, i32 0, i32 12
  %0 = ptrtoint ptr %fw_rc1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %fw_rc, ptr %fw_rc1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %fw_rc)
  %tobool.not = icmp eq i8 %fw_rc, 0
  br i1 %tobool.not, label %if.end20, label %do.body

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp = icmp ult i8 %2, 3
  br i1 %cmp, label %do.end, label %do.body.do.end17_crit_edge, !prof !252

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end17

do.end:                                           ; preds = %do.body
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ndev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call ptr @strchr(ptr noundef %4, i32 noundef 37) #18
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool7.not = icmp eq ptr %4, null
  %or.cond = and i1 %tobool7.not, %tobool2.not.i
  %spec.select.i85 = select i1 %tobool2.not.i, ptr %4, ptr @.str.56
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i85
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.56, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %conv10 = zext i8 %fw_rc to i32
  %flow_id = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %filter, i32 0, i32 5
  %7 = ptrtoint ptr %flow_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flow_id, align 8
  %sw_id = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %filter, i32 0, i32 6
  %9 = ptrtoint ptr %sw_id to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sw_id, align 8
  %src_port = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %filter, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %src_port to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %src_port, align 8
  %conv11 = zext i16 %12 to i32
  %dst_port = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %filter, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %dst_port to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %dst_port, align 2
  %conv13 = zext i16 %14 to i32
  %rxq_id = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %filter, i32 0, i32 7
  %15 = ptrtoint ptr %rxq_id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %rxq_id, align 8
  %conv14 = zext i16 %16 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 198, ptr noundef %cond, i32 noundef %conv10, i32 noundef %8, i64 noundef %10, i32 noundef %conv11, i32 noundef %conv13, i32 noundef %conv14) #21
  br label %do.end17

do.end17:                                         ; preds = %cond.end, %do.body.do.end17_crit_edge
  %arfs = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 41
  %17 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arfs, align 8
  %arfs_list_lock = getelementptr inbounds %struct.qede_arfs, ptr %18, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %arfs_list_lock) #18
  %used = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %filter, i32 0, i32 11
  %19 = ptrtoint ptr %used to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %used, align 2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %filter) #18
  br label %cleanup

if.end20:                                         ; preds = %entry
  %arfs21 = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 41
  %20 = ptrtoint ptr %arfs21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arfs21, align 8
  %arfs_list_lock22 = getelementptr inbounds %struct.qede_arfs, ptr %21, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %arfs_list_lock22) #18
  %used23 = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %filter, i32 0, i32 11
  %22 = ptrtoint ptr %used23 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %used23, align 2
  %filter_op = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %filter, i32 0, i32 10
  %23 = ptrtoint ptr %filter_op to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %filter_op, align 1, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool24.not = icmp eq i8 %24, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end20
  tail call void @_set_bit(i32 noundef 0, ptr noundef %filter) #18
  %rxq_id27 = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %filter, i32 0, i32 7
  %25 = ptrtoint ptr %rxq_id27 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rxq_id27, align 8
  %next_rxq_id = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %filter, i32 0, i32 8
  %27 = ptrtoint ptr %next_rxq_id to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %next_rxq_id, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %28)
  %cmp30.not = icmp eq i16 %26, %28
  br i1 %cmp30.not, label %if.then25.cleanup_crit_edge, label %if.then32

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then32:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @qede_configure_arfs_fltr(ptr noundef %dev, ptr noundef %filter, i16 noundef zeroext %26, i1 noundef zeroext false)
  br label %cleanup

if.else:                                          ; preds = %if.end20
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %filter) #18
  %rxq_id36 = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %filter, i32 0, i32 7
  %29 = ptrtoint ptr %rxq_id36 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %rxq_id36, align 8
  %next_rxq_id38 = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %filter, i32 0, i32 8
  %31 = ptrtoint ptr %next_rxq_id38 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %next_rxq_id38, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %32)
  %cmp40.not = icmp eq i16 %30, %32
  br i1 %cmp40.not, label %if.else.cleanup_crit_edge, label %if.then42

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %33 = ptrtoint ptr %rxq_id36 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %rxq_id36, align 8
  tail call fastcc void @qede_configure_arfs_fltr(ptr noundef %dev, ptr noundef %filter, i16 noundef zeroext %32, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.else.cleanup_crit_edge, %if.then32, %if.then25.cleanup_crit_edge, %do.end17
  %arfs21.sink = phi ptr [ %arfs, %do.end17 ], [ %arfs21, %if.else.cleanup_crit_edge ], [ %arfs21, %if.then42 ], [ %arfs21, %if.then25.cleanup_crit_edge ], [ %arfs21, %if.then32 ]
  %34 = ptrtoint ptr %arfs21.sink to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arfs21.sink, align 8
  %arfs_list_lock49 = getelementptr inbounds %struct.qede_arfs, ptr %35, i32 0, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %arfs_list_lock49) #18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qede_configure_arfs_fltr(ptr nocapture noundef readonly %edev, ptr noundef %n, i16 noundef zeroext %rxq_id, i1 noundef zeroext %add_fltr) unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.qed_ntuple_filter_params, align 4
  %tuple_buffer = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %add_fltr to i8
  %ops = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 7
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %params) #18
  %used = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %n, i32 0, i32 11
  %2 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %used, align 2, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds i8, ptr %params, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %4, align 4
  %mapping = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %n, i32 0, i32 2
  %6 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mapping, align 8
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %params, align 4
  %buf_len = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %n, i32 0, i32 3
  %9 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buf_len, align 4
  %conv = trunc i32 %10 to i16
  %length = getelementptr inbounds %struct.qed_ntuple_filter_params, ptr %params, i32 0, i32 1
  %11 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %length, align 4
  %qid = getelementptr inbounds %struct.qed_ntuple_filter_params, ptr %params, i32 0, i32 2
  %12 = ptrtoint ptr %qid to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %rxq_id, ptr %qid, align 2
  %b_is_add = getelementptr inbounds %struct.qed_ntuple_filter_params, ptr %params, i32 0, i32 6
  %13 = ptrtoint ptr %b_is_add to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %b_is_add, align 1
  %b_is_drop = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %n, i32 0, i32 13
  %14 = ptrtoint ptr %b_is_drop to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %b_is_drop, align 8, !range !253
  %b_is_drop4 = getelementptr inbounds %struct.qed_ntuple_filter_params, ptr %params, i32 0, i32 7
  %16 = ptrtoint ptr %b_is_drop4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %b_is_drop4, align 4
  %vfid = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %n, i32 0, i32 9
  %17 = ptrtoint ptr %vfid to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vfid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool6.not = icmp eq i8 %18, 0
  br i1 %tobool6.not, label %if.end.if.end11_crit_edge, label %if.then7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %b_is_vf = getelementptr inbounds %struct.qed_ntuple_filter_params, ptr %params, i32 0, i32 3
  %19 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %b_is_vf, align 4
  %sub = add i8 %18, -1
  %vf_id = getelementptr inbounds %struct.qed_ntuple_filter_params, ptr %params, i32 0, i32 5
  %20 = ptrtoint ptr %vf_id to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %sub, ptr %vf_id, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.if.end11_crit_edge
  %stringify = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %n, i32 0, i32 4, i32 9
  %21 = ptrtoint ptr %stringify to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stringify, align 4
  %tobool12.not = icmp eq ptr %22, null
  br i1 %tobool12.not, label %if.end11.if.end38_crit_edge, label %if.then13

if.end11.if.end38_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38

if.then13:                                        ; preds = %if.end11
  %tuple = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %n, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tuple_buffer) #18
  %23 = call ptr @memset(ptr %tuple_buffer, i32 255, i32 64)
  call void %22(ptr noundef %tuple, ptr noundef nonnull %tuple_buffer) #18
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %24 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp = icmp eq i8 %25, 0
  br i1 %cmp, label %land.rhs, label %if.then13.do.end37_crit_edge

if.then13.do.end37_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end37

land.rhs:                                         ; preds = %if.then13
  %dp_module = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 4
  %26 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dp_module, align 8
  %and = and i32 %27, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %land.rhs.do.end37_crit_edge, label %do.end, !prof !254

land.rhs.do.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end37

do.end:                                           ; preds = %land.rhs
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %28 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ndev, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = call ptr @strchr(ptr noundef %29, i32 noundef 37) #18
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool24.not = icmp eq ptr %29, null
  %or.cond = and i1 %tobool24.not, %tobool2.not.i
  %spec.select.i68 = select i1 %tobool2.not.i, ptr %29, ptr @.str.56
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i68
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.56, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %cond29 = select i1 %add_fltr, ptr @.str.59, ptr @.str.60
  %sw_id = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %n, i32 0, i32 6
  %32 = ptrtoint ptr %sw_id to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %sw_id, align 8
  %34 = ptrtoint ptr %vfid to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %vfid, align 4
  %conv32 = zext i8 %35 to i32
  %conv33 = zext i16 %rxq_id to i32
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 118, ptr noundef %cond, ptr noundef nonnull %cond29, i64 noundef %33, ptr noundef nonnull %tuple_buffer, i32 noundef %conv32, i32 noundef %conv33) #21
  br label %do.end37

do.end37:                                         ; preds = %cond.end, %land.rhs.do.end37_crit_edge, %if.then13.do.end37_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tuple_buffer) #18
  br label %if.end38

if.end38:                                         ; preds = %do.end37, %if.end11.if.end38_crit_edge
  %36 = ptrtoint ptr %used to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %used, align 2
  %filter_op = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %n, i32 0, i32 10
  %37 = ptrtoint ptr %filter_op to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %frombool, ptr %filter_op, align 1
  %ntuple_filter_config = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 21
  %38 = ptrtoint ptr %ntuple_filter_config to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ntuple_filter_config, align 4
  %40 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %edev, align 8
  %call42 = call i32 %39(ptr noundef %41, ptr noundef %n, ptr noundef nonnull %params) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %params) #18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qede_process_arfs_filters(ptr noundef %edev, i1 noundef zeroext %free_fltr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arfs = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 41
  %state = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 22
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %i.083 = phi i32 [ 0, %entry ], [ %inc, %for.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arfs, align 8
  %arrayidx = getelementptr [16 x %struct.hlist_head], ptr %1, i32 0, i32 %i.083
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  %add.ptr = getelementptr i8, ptr %3, i32 -100
  %tobool3.not8084 = icmp eq ptr %add.ptr, null
  %tobool3.not80 = or i1 %tobool.not, %tobool3.not8084
  br i1 %tobool3.not80, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

land.rhs:                                         ; preds = %if.end26.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %fltr.081 = phi ptr [ %add.ptr35, %if.end26.land.rhs_crit_edge ], [ %add.ptr, %for.body.land.rhs_crit_edge ]
  %node = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.081, i32 0, i32 14
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp7.not.not = icmp ne i32 %7, 1
  %8 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arfs, align 8
  %arfs_list_lock = getelementptr inbounds %struct.qede_arfs, ptr %9, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %arfs_list_lock) #18
  %10 = ptrtoint ptr %fltr.081 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %fltr.081, align 4
  %and1.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool10.not = icmp eq i32 %and1.i, 0
  br i1 %tobool10.not, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %land.rhs
  %used = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.081, i32 0, i32 11
  %12 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %used, align 2, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not = icmp eq i8 %13, 0
  %brmerge = or i1 %tobool11.not, %free_fltr
  br i1 %brmerge, label %land.lhs.true.if.then13_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

land.lhs.true.if.then13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then13

lor.lhs.false:                                    ; preds = %land.rhs
  br i1 %free_fltr, label %lor.lhs.false.if.then13_crit_edge, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %land.lhs.true.if.then13_crit_edge
  tail call fastcc void @qede_dequeue_fltr_and_config_searcher(ptr noundef %edev, ptr noundef nonnull %fltr.081)
  br label %if.end26

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %land.lhs.true.if.else_crit_edge
  %14 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev, align 4
  %rxq_id = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.081, i32 0, i32 7
  %16 = ptrtoint ptr %rxq_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %rxq_id, align 8
  %flow_id = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.081, i32 0, i32 5
  %18 = ptrtoint ptr %flow_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flow_id, align 8
  %sw_id = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.081, i32 0, i32 6
  %20 = ptrtoint ptr %sw_id to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %sw_id, align 8
  %conv = trunc i64 %21 to i16
  %call14 = tail call zeroext i1 @rps_may_expire_flow(ptr noundef %15, i16 noundef zeroext %17, i32 noundef %19, i16 noundef zeroext %conv) #18
  %brmerge76 = select i1 %call14, i1 true, i1 %cmp7.not.not
  br i1 %brmerge76, label %if.then23, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %22 = ptrtoint ptr %rxq_id to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %rxq_id, align 8
  tail call fastcc void @qede_configure_arfs_fltr(ptr noundef %edev, ptr noundef nonnull %fltr.081, i16 noundef zeroext %23, i1 noundef zeroext false)
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.else.if.end26_crit_edge, %if.then13
  %24 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arfs, align 8
  %arfs_list_lock28 = getelementptr inbounds %struct.qede_arfs, ptr %25, i32 0, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %arfs_list_lock28) #18
  %tobool31.not = icmp eq ptr %5, null
  %add.ptr35 = getelementptr i8, ptr %5, i32 -100
  %tobool3.not85 = icmp eq ptr %add.ptr35, null
  %tobool3.not = or i1 %tobool31.not, %tobool3.not85
  br i1 %tobool3.not, label %if.end26.for.end_crit_edge, label %if.end26.land.rhs_crit_edge

if.end26.land.rhs_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %if.end26.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc = add nuw nsw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end40, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end40:                                        ; preds = %for.end
  %26 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arfs, align 8
  %arfs_list_lock42 = getelementptr inbounds %struct.qede_arfs, ptr %27, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %arfs_list_lock42) #18
  %28 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arfs, align 8
  %filter_count = getelementptr inbounds %struct.qede_arfs, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %filter_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %filter_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool44.not = icmp eq i32 %31, 0
  br i1 %tobool44.not, label %for.end40.if.end47_crit_edge, label %if.then45

for.end40.if.end47_crit_edge:                     ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47

if.then45:                                        ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #20
  %sp_flags = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 38
  tail call void @_set_bit(i32 noundef 5, ptr noundef %sp_flags) #18
  %sp_task = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %32 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %sp_task, i32 noundef 500) #18
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %for.end40.if.end47_crit_edge
  %33 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arfs, align 8
  %arfs_list_lock49 = getelementptr inbounds %struct.qede_arfs, ptr %34, i32 0, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %arfs_list_lock49) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qede_dequeue_fltr_and_config_searcher(ptr nocapture noundef readonly %edev, ptr noundef %fltr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %node = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr, i32 0, i32 14
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %pprev2.i.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr, i32 0, i32 14, i32 1
  %2 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev2.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %1, ptr %3, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.hlist_del.exit_crit_edge, label %do.body13.i.i

entry.hlist_del.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %entry.hlist_del.exit_crit_edge
  %6 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %7 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %pdev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 2
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %mapping = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr, i32 0, i32 2
  %10 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mapping, align 8
  %buf_len = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr, i32 0, i32 3
  %12 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %11, i32 noundef %13, i32 noundef 1, i32 noundef 0) #18
  %data.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr, i32 0, i32 1
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  tail call void @kfree(ptr noundef %15) #18
  %sw_id.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr, i32 0, i32 6
  %16 = ptrtoint ptr %sw_id.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %sw_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %17)
  %cmp.i = icmp ult i64 %17, 256
  br i1 %cmp.i, label %if.then.i, label %hlist_del.exit.qede_free_arfs_filter.exit_crit_edge

hlist_del.exit.qede_free_arfs_filter.exit_crit_edge: ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %qede_free_arfs_filter.exit

if.then.i:                                        ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i = trunc i64 %17 to i32
  %arfs.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 41
  %18 = ptrtoint ptr %arfs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arfs.i, align 8
  %arfs_fltr_bmap.i = getelementptr inbounds %struct.qede_arfs, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %arfs_fltr_bmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arfs_fltr_bmap.i, align 4
  tail call void @_clear_bit(i32 noundef %conv.i, ptr noundef %21) #18
  br label %qede_free_arfs_filter.exit

qede_free_arfs_filter.exit:                       ; preds = %if.then.i, %hlist_del.exit.qede_free_arfs_filter.exit_crit_edge
  tail call void @kfree(ptr noundef %fltr) #18
  %arfs = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 41
  %22 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arfs, align 8
  %filter_count = getelementptr inbounds %struct.qede_arfs, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %filter_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %filter_count, align 4
  %dec = add i32 %25, -1
  store i32 %dec, ptr %filter_count, align 4
  %26 = load ptr, ptr %arfs, align 8
  %filter_count2 = getelementptr inbounds %struct.qede_arfs, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %filter_count2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %filter_count2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %land.lhs.true, label %qede_free_arfs_filter.exit.if.end_crit_edge

qede_free_arfs_filter.exit.if.end_crit_edge:      ; preds = %qede_free_arfs_filter.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %qede_free_arfs_filter.exit
  %mode = getelementptr inbounds %struct.qede_arfs, ptr %26, i32 0, i32 4
  %29 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not = icmp eq i32 %30, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %ops = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 7
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops, align 4
  %configure_arfs_searcher = getelementptr inbounds %struct.qed_eth_ops, ptr %32, i32 0, i32 22
  %33 = ptrtoint ptr %configure_arfs_searcher to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %configure_arfs_searcher, align 4
  %35 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %edev, align 8
  %call = tail call i32 %34(ptr noundef %36, i32 noundef 0) #18
  %37 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arfs, align 8
  %mode6 = getelementptr inbounds %struct.qede_arfs, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %mode6 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %mode6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %qede_free_arfs_filter.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rps_may_expire_flow(ptr noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qede_poll_for_freeing_arfs_filters(ptr noundef %edev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arfs = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 41
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %count.034 = phi i32 [ 100, %entry ], [ %dec, %if.end.while.body_crit_edge ]
  tail call void @qede_process_arfs_filters(ptr noundef %edev, i1 noundef zeroext false)
  %0 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arfs, align 8
  %filter_count = getelementptr inbounds %struct.qede_arfs, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %filter_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %filter_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %while.body.if.end16_crit_edge, label %if.end

while.body.if.end16_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

if.end:                                           ; preds = %while.body
  tail call void @msleep(i32 noundef 100) #18
  %dec = add nsw i32 %count.034, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.body.critedge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

do.body.critedge:                                 ; preds = %if.end
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp ult i8 %5, 3
  br i1 %cmp, label %do.end, label %do.body.critedge.do.end15_crit_edge, !prof !252

do.body.critedge.do.end15_crit_edge:              ; preds = %do.body.critedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end15

do.end:                                           ; preds = %do.body.critedge
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call ptr @strchr(ptr noundef %7, i32 noundef 37) #18
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool9.not = icmp eq ptr %7, null
  %or.cond = and i1 %tobool9.not, %tobool2.not.i
  %spec.select.i27 = select i1 %tobool2.not.i, ptr %7, ptr @.str.56
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i27
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.56, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 303, ptr noundef %cond) #21
  br label %do.end15

do.end15:                                         ; preds = %cond.end, %do.body.critedge.do.end15_crit_edge
  tail call void @qede_process_arfs_filters(ptr noundef %edev, i1 noundef zeroext true)
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %while.body.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_alloc_arfs(ptr nocapture noundef %edev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %b_arfs_capable = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 10, i32 0, i32 11
  %0 = ptrtoint ptr %b_arfs_capable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %b_arfs_capable, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call noalias ptr @vzalloc(i32 noundef 120) #22
  %arfs = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 41
  %2 = ptrtoint ptr %arfs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %arfs, align 8
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body:                                          ; preds = %if.end
  %arfs_list_lock = getelementptr inbounds %struct.qede_arfs, ptr %call, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %arfs_list_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @qede_alloc_arfs.__key, i16 noundef signext 3) #18
  %3 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arfs, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %4, align 4
  %6 = load ptr, ptr %arfs, align 8
  %arrayidx.1 = getelementptr [16 x %struct.hlist_head], ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx.1, align 4
  %8 = load ptr, ptr %arfs, align 8
  %arrayidx.2 = getelementptr [16 x %struct.hlist_head], ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx.2, align 4
  %10 = load ptr, ptr %arfs, align 8
  %arrayidx.3 = getelementptr [16 x %struct.hlist_head], ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.3, align 4
  %12 = load ptr, ptr %arfs, align 8
  %arrayidx.4 = getelementptr [16 x %struct.hlist_head], ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx.4, align 4
  %14 = load ptr, ptr %arfs, align 8
  %arrayidx.5 = getelementptr [16 x %struct.hlist_head], ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx.5, align 4
  %16 = load ptr, ptr %arfs, align 8
  %arrayidx.6 = getelementptr [16 x %struct.hlist_head], ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx.6, align 4
  %18 = load ptr, ptr %arfs, align 8
  %arrayidx.7 = getelementptr [16 x %struct.hlist_head], ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx.7, align 4
  %20 = load ptr, ptr %arfs, align 8
  %arrayidx.8 = getelementptr [16 x %struct.hlist_head], ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx.8, align 4
  %22 = load ptr, ptr %arfs, align 8
  %arrayidx.9 = getelementptr [16 x %struct.hlist_head], ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx.9, align 4
  %24 = load ptr, ptr %arfs, align 8
  %arrayidx.10 = getelementptr [16 x %struct.hlist_head], ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx.10, align 4
  %26 = load ptr, ptr %arfs, align 8
  %arrayidx.11 = getelementptr [16 x %struct.hlist_head], ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx.11, align 4
  %28 = load ptr, ptr %arfs, align 8
  %arrayidx.12 = getelementptr [16 x %struct.hlist_head], ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx.12, align 4
  %30 = load ptr, ptr %arfs, align 8
  %arrayidx.13 = getelementptr [16 x %struct.hlist_head], ptr %30, i32 0, i32 13
  %31 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx.13, align 4
  %32 = load ptr, ptr %arfs, align 8
  %arrayidx.14 = getelementptr [16 x %struct.hlist_head], ptr %32, i32 0, i32 14
  %33 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx.14, align 4
  %34 = load ptr, ptr %arfs, align 8
  %arrayidx.15 = getelementptr [16 x %struct.hlist_head], ptr %34, i32 0, i32 15
  %35 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx.15, align 4
  %call9 = tail call noalias ptr @vzalloc(i32 noundef 32) #22
  %36 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arfs, align 8
  %arfs_fltr_bmap = getelementptr inbounds %struct.qede_arfs, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %arfs_fltr_bmap to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call9, ptr %arfs_fltr_bmap, align 4
  %39 = load ptr, ptr %arfs, align 8
  %arfs_fltr_bmap12 = getelementptr inbounds %struct.qede_arfs, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %arfs_fltr_bmap12 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arfs_fltr_bmap12, align 4
  %tobool13.not = icmp eq ptr %41, null
  br i1 %tobool13.not, label %do.body.cleanup.sink.split_crit_edge, label %if.end17

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.end17:                                         ; preds = %do.body
  %num_queues = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 18
  %42 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %num_queues, align 2
  %conv = zext i16 %43 to i32
  %fp_num_tx = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 14
  %44 = ptrtoint ptr %fp_num_tx to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %fp_num_tx, align 1
  %conv18 = zext i8 %45 to i32
  %sub = sub nsw i32 %conv, %conv18
  %call.i = tail call ptr @alloc_cpu_rmap(i32 noundef %sub, i32 noundef 3264) #18
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %46 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ndev, align 4
  %rx_cpu_rmap = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 100
  %48 = ptrtoint ptr %rx_cpu_rmap to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %rx_cpu_rmap, align 4
  %49 = load ptr, ptr %ndev, align 4
  %rx_cpu_rmap21 = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 100
  %50 = ptrtoint ptr %rx_cpu_rmap21 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_cpu_rmap21, align 4
  %tobool22.not = icmp eq ptr %51, null
  br i1 %tobool22.not, label %if.then23, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  %52 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arfs, align 8
  %arfs_fltr_bmap25 = getelementptr inbounds %struct.qede_arfs, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %arfs_fltr_bmap25 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arfs_fltr_bmap25, align 4
  tail call void @vfree(ptr noundef %55) #18
  %56 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arfs, align 8
  %arfs_fltr_bmap27 = getelementptr inbounds %struct.qede_arfs, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %arfs_fltr_bmap27 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %arfs_fltr_bmap27, align 4
  %59 = load ptr, ptr %arfs, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then23, %do.body.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %59, %if.then23 ], [ %39, %do.body.cleanup.sink.split_crit_edge ]
  tail call void @vfree(ptr noundef %.sink) #18
  %60 = ptrtoint ptr %arfs to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %arfs, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ -12, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qede_free_arfs(ptr nocapture noundef %edev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arfs = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 41
  %0 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arfs, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %rx_cpu_rmap = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 100
  %4 = ptrtoint ptr %rx_cpu_rmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_cpu_rmap, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @free_irq_cpu_rmap(ptr noundef nonnull %5) #18
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 4
  %rx_cpu_rmap7 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 100
  %8 = ptrtoint ptr %rx_cpu_rmap7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rx_cpu_rmap7, align 4
  %9 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arfs, align 8
  %arfs_fltr_bmap = getelementptr inbounds %struct.qede_arfs, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %arfs_fltr_bmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arfs_fltr_bmap, align 4
  tail call void @vfree(ptr noundef %12) #18
  %13 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arfs, align 8
  %arfs_fltr_bmap10 = getelementptr inbounds %struct.qede_arfs, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %arfs_fltr_bmap10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arfs_fltr_bmap10, align 4
  %16 = load ptr, ptr %arfs, align 8
  tail call void @vfree(ptr noundef %16) #18
  %17 = ptrtoint ptr %arfs to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arfs, align 8
  br label %return

return:                                           ; preds = %if.end5, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_irq_cpu_rmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_rx_flow_steer(ptr noundef %dev, ptr noundef readonly %skb, i16 noundef zeroext %rxq_index, i32 noundef %flow_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %encapsulation, align 8
  %1 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %if.end.cleanup_crit_edge [
    i16 2048, label %if.then12
    i16 -31011, label %if.else
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %protocol14 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %head.i.i183 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i183 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i183, align 8
  %network_header.i.i184 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %11 = ptrtoint ptr %network_header.i.i184 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %network_header.i.i184, align 4
  %conv.i.i185 = zext i16 %12 to i32
  %add.ptr.i.i186 = getelementptr i8, ptr %10, i32 %conv.i.i185
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i186, i32 0, i32 3
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then12
  %tp_offset.0 = phi i32 [ 20, %if.then12 ], [ 40, %if.else ]
  %ip_proto.0.in = phi ptr [ %protocol14, %if.then12 ], [ %nexthdr, %if.else ]
  %13 = ptrtoint ptr %ip_proto.0.in to i32
  call void @__asan_load1_noabort(i32 %13)
  %ip_proto.0 = load i8, ptr %ip_proto.0.in, align 1
  %14 = zext i8 %ip_proto.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %ip_proto.0, label %if.end16.cleanup_crit_edge [
    i8 6, label %if.end16.if.end25_crit_edge
    i8 17, label %if.end16.if.end25_crit_edge221
  ]

if.end16.if.end25_crit_edge221:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end25:                                         ; preds = %if.end16.if.end25_crit_edge, %if.end16.if.end25_crit_edge221
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %tp_offset.0
  %hash.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %17 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hash.i, align 4
  %19 = trunc i32 %18 to i16
  %conv27 = and i16 %19, 15
  %arfs = getelementptr i8, ptr %dev, i32 3504
  %20 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arfs, align 8
  %arfs_list_lock = getelementptr inbounds %struct.qede_arfs, ptr %21, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %arfs_list_lock) #18
  %22 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arfs, align 8
  %idxprom = zext i16 %conv27 to i32
  %arrayidx = getelementptr [16 x %struct.hlist_head], ptr %23, i32 0, i32 %idxprom
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr, align 2
  %arrayidx30 = getelementptr i16, ptr %add.ptr, i32 1
  %26 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx30, align 2
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %29, null
  %add.ptr.i187 = getelementptr i8, ptr %29, i32 -100
  %tobool2.not5256.i = icmp eq ptr %add.ptr.i187, null
  %tobool2.not52.i = or i1 %tobool.not.i, %tobool2.not5256.i
  br i1 %tobool2.not52.i, label %if.end25.if.end52_crit_edge, label %for.body.lr.ph.i

if.end25.if.end52_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

for.body.lr.ph.i:                                 ; preds = %if.end25
  %head.i.i38.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %network_header.i.i39.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tpos.053.i = phi ptr [ %add.ptr.i187, %for.body.lr.ph.i ], [ %add.ptr33.i, %for.inc.i.for.body.i_crit_edge ]
  %ip_proto3.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %tpos.053.i, i32 0, i32 4, i32 5
  %30 = ptrtoint ptr %ip_proto3.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ip_proto3.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %ip_proto.0)
  %cmp.i = icmp eq i8 %31, %ip_proto.0
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %eth_proto.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %tpos.053.i, i32 0, i32 4, i32 4
  %32 = ptrtoint ptr %eth_proto.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %eth_proto.i, align 4
  %34 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %35)
  %cmp9.i = icmp eq i16 %33, %35
  br i1 %cmp9.i, label %land.lhs.true11.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %33)
  %cmp.i.i = icmp eq i16 %33, 2048
  %tuple.i.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %tpos.053.i, i32 0, i32 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else9.i.i

if.then.i.i:                                      ; preds = %land.lhs.true11.i
  %36 = ptrtoint ptr %tuple.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tuple.i.i, align 8
  %38 = ptrtoint ptr %head.i.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i38.i.i, align 8
  %40 = ptrtoint ptr %network_header.i.i39.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %network_header.i.i39.i.i, align 4
  %conv.i.i.i.i = zext i16 %41 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %39, i32 %conv.i.i.i.i
  %saddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 8
  %42 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %saddr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %43)
  %cmp2.i.i = icmp eq i32 %37, %43
  br i1 %cmp2.i.i, label %land.lhs.true.i.i, label %if.then.i.i.for.inc.i_crit_edge

if.then.i.i.for.inc.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %44 = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %tpos.053.i, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %daddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 9
  %47 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %daddr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp6.i.i = icmp eq i32 %46, %48
  br i1 %cmp6.i.i, label %land.lhs.true.i.i.land.lhs.true13.i_crit_edge, label %land.lhs.true.i.i.for.inc.i_crit_edge

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true.i.i.land.lhs.true13.i_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true13.i

if.else9.i.i:                                     ; preds = %land.lhs.true11.i
  %49 = ptrtoint ptr %head.i.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %head.i.i38.i.i, align 8
  %51 = ptrtoint ptr %network_header.i.i39.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %network_header.i.i39.i.i, align 4
  %conv.i.i40.i.i = zext i16 %52 to i32
  %add.ptr.i.i41.i.i = getelementptr i8, ptr %50, i32 %conv.i.i40.i.i
  %saddr12.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i41.i.i, i32 0, i32 5
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %tuple.i.i, ptr noundef dereferenceable(16) %saddr12.i.i, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true15.i.i, label %if.else9.i.i.for.inc.i_crit_edge

if.else9.i.i.for.inc.i_crit_edge:                 ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true15.i.i:                              ; preds = %if.else9.i.i
  %53 = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %tpos.053.i, i32 0, i32 4, i32 1
  %daddr18.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i41.i.i, i32 0, i32 6
  %bcmp33.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %53, ptr noundef dereferenceable(16) %daddr18.i.i, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp33.i.i)
  %tobool21.not.i.i = icmp eq i32 %bcmp33.i.i, 0
  br i1 %tobool21.not.i.i, label %land.lhs.true15.i.i.land.lhs.true13.i_crit_edge, label %land.lhs.true15.i.i.for.inc.i_crit_edge

land.lhs.true15.i.i.for.inc.i_crit_edge:          ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true15.i.i.land.lhs.true13.i_crit_edge:  ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true13.i

land.lhs.true13.i:                                ; preds = %land.lhs.true15.i.i.land.lhs.true13.i_crit_edge, %land.lhs.true.i.i.land.lhs.true13.i_crit_edge
  %src_port15.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %tpos.053.i, i32 0, i32 4, i32 2
  %54 = ptrtoint ptr %src_port15.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %src_port15.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %55, i16 %25)
  %cmp18.i = icmp eq i16 %55, %25
  br i1 %cmp18.i, label %land.lhs.true20.i, label %land.lhs.true13.i.for.inc.i_crit_edge

land.lhs.true13.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true20.i:                                ; preds = %land.lhs.true13.i
  %dst_port22.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %tpos.053.i, i32 0, i32 4, i32 3
  %56 = ptrtoint ptr %dst_port22.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %dst_port22.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %27)
  %cmp25.i = icmp eq i16 %57, %27
  br i1 %cmp25.i, label %if.then33, label %land.lhs.true20.i.for.inc.i_crit_edge

land.lhs.true20.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true20.i.for.inc.i_crit_edge, %land.lhs.true13.i.for.inc.i_crit_edge, %land.lhs.true15.i.i.for.inc.i_crit_edge, %if.else9.i.i.for.inc.i_crit_edge, %land.lhs.true.i.i.for.inc.i_crit_edge, %if.then.i.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %node.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %tpos.053.i, i32 0, i32 14
  %58 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %node.i, align 4
  %tobool29.not.i = icmp eq ptr %59, null
  %add.ptr33.i = getelementptr i8, ptr %59, i32 -100
  %tobool2.not57.i = icmp eq ptr %add.ptr33.i, null
  %tobool2.not.i = or i1 %tobool29.not.i, %tobool2.not57.i
  br i1 %tobool2.not.i, label %for.inc.i.if.end52_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.if.end52_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

if.then33:                                        ; preds = %land.lhs.true20.i
  %next_rxq_id = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %tpos.053.i, i32 0, i32 8
  %60 = ptrtoint ptr %next_rxq_id to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %rxq_index, ptr %next_rxq_id, align 2
  %61 = ptrtoint ptr %tpos.053.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %tpos.053.i, align 4
  %and1.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool35.not = icmp eq i32 %and1.i, 0
  br i1 %tobool35.not, label %if.else44, label %if.then36

if.then36:                                        ; preds = %if.then33
  %rxq_id = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %tpos.053.i, i32 0, i32 7
  %63 = ptrtoint ptr %rxq_id to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %rxq_id, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %64, i16 %rxq_index)
  %cmp39.not = icmp eq i16 %64, %rxq_index
  br i1 %cmp39.not, label %if.then36.if.end50_crit_edge, label %if.then41

if.then36.if.end50_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end50

if.then41:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @qede_configure_arfs_fltr(ptr noundef %add.ptr.i, ptr noundef nonnull %tpos.053.i, i16 noundef zeroext %64, i1 noundef zeroext false)
  br label %if.end50

if.else44:                                        ; preds = %if.then33
  %used = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %tpos.053.i, i32 0, i32 11
  %65 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %used, align 2, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool45.not = icmp eq i8 %66, 0
  br i1 %tobool45.not, label %if.then46, label %if.else44.if.end50_crit_edge

if.else44.if.end50_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end50

if.then46:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #20
  %rxq_id47 = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %tpos.053.i, i32 0, i32 7
  %67 = ptrtoint ptr %rxq_id47 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %rxq_index, ptr %rxq_id47, align 8
  tail call fastcc void @qede_configure_arfs_fltr(ptr noundef %add.ptr.i, ptr noundef nonnull %tpos.053.i, i16 noundef zeroext %rxq_index, i1 noundef zeroext true)
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %if.else44.if.end50_crit_edge, %if.then41, %if.then36.if.end50_crit_edge
  %sw_id = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %tpos.053.i, i32 0, i32 6
  %68 = ptrtoint ptr %sw_id to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %sw_id, align 8
  %conv51 = trunc i64 %69 to i32
  br label %ret_unlock

if.end52:                                         ; preds = %for.inc.i.if.end52_crit_edge, %if.end25.if.end52_crit_edge
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %70 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %72 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %71, %73
  %add = add i32 %sub.i, 14
  %arfs_fltr_bmap.i = getelementptr inbounds %struct.qede_arfs, ptr %23, i32 0, i32 2
  %74 = ptrtoint ptr %arfs_fltr_bmap.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arfs_fltr_bmap.i, align 4
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %75, i32 noundef 256) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call.i)
  %cmp.i188 = icmp sgt i32 %call.i, 255
  br i1 %cmp.i188, label %if.end52.ret_unlock_crit_edge, label %if.end.i

if.end52.ret_unlock_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #20
  br label %ret_unlock

if.end.i:                                         ; preds = %if.end52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %76 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %76, i32 noundef 2848, i32 noundef 112) #24
  %tobool.not.i189 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i189, label %if.end.i.ret_unlock_crit_edge, label %if.end8.i.i.i

if.end.i.ret_unlock_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %ret_unlock

if.end8.i.i.i:                                    ; preds = %if.end.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 2848) #22
  %data.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call9.i.i.i, ptr %data.i, align 4
  %tobool6.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end57

if.then7.i:                                       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #18
  br label %ret_unlock

if.end57:                                         ; preds = %if.end8.i.i.i
  %conv.mask.i = and i32 %call.i, 65535
  %conv9.i = zext i32 %conv.mask.i to i64
  %sw_id.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i.i, i32 0, i32 6
  %78 = ptrtoint ptr %sw_id.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %conv9.i, ptr %sw_id.i, align 8
  %79 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arfs, align 8
  %arfs_fltr_bmap11.i = getelementptr inbounds %struct.qede_arfs, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %arfs_fltr_bmap11.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arfs_fltr_bmap11.i, align 4
  tail call void @_set_bit(i32 noundef %call.i, ptr noundef %82) #18
  %buf_len = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i.i, i32 0, i32 3
  %83 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %add, ptr %buf_len, align 4
  %rxq_id58 = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i.i, i32 0, i32 7
  %84 = ptrtoint ptr %rxq_id58 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %rxq_index, ptr %rxq_id58, align 8
  %next_rxq_id59 = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i.i, i32 0, i32 8
  %85 = ptrtoint ptr %next_rxq_id59 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %rxq_index, ptr %next_rxq_id59, align 2
  %86 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %add.ptr, align 2
  %tuple = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i.i, i32 0, i32 4
  %src_port = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i.i, i32 0, i32 4, i32 2
  %88 = ptrtoint ptr %src_port to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %src_port, align 8
  %89 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx30, align 2
  %dst_port = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i.i, i32 0, i32 4, i32 3
  %91 = ptrtoint ptr %dst_port to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %dst_port, align 2
  %flow_id63 = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i.i, i32 0, i32 5
  %92 = ptrtoint ptr %flow_id63 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %flow_id, ptr %flow_id63, align 8
  %93 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %94)
  %cmp66 = icmp eq i16 %94, 2048
  %head.i.i190 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %95 = ptrtoint ptr %head.i.i190 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %head.i.i190, align 8
  %network_header.i.i191 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %97 = ptrtoint ptr %network_header.i.i191 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %network_header.i.i191, align 4
  %conv.i.i192 = zext i16 %98 to i32
  %add.ptr.i.i193 = getelementptr i8, ptr %96, i32 %conv.i.i192
  br i1 %cmp66, label %if.then68, label %if.else73

if.then68:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #20
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i193, i32 0, i32 8
  %99 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %saddr, align 4
  %101 = ptrtoint ptr %tuple to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %tuple, align 8
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i193, i32 0, i32 9
  %102 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %daddr, align 4
  %104 = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %103, ptr %104, align 8
  br label %if.end80

if.else73:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #20
  %saddr76 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i193, i32 0, i32 5
  %106 = call ptr @memcpy(ptr %tuple, ptr %saddr76, i32 16)
  %107 = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %daddr79 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i193, i32 0, i32 6
  %108 = call ptr @memcpy(ptr %107, ptr %daddr79, i32 16)
  br label %if.end80

if.end80:                                         ; preds = %if.else73, %if.then68
  %data81 = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i.i, i32 0, i32 1
  %109 = ptrtoint ptr %data81 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data81, align 4
  %111 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %protocol, align 8
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %110, i32 0, i32 2
  %113 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %113, i32 2)
  store i16 %112, ptr %h_proto, align 1
  %114 = load i16, ptr %protocol, align 8
  %eth_proto = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i.i, i32 0, i32 4, i32 4
  %115 = ptrtoint ptr %eth_proto to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %114, ptr %eth_proto, align 4
  %ip_proto86 = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i.i, i32 0, i32 4, i32 5
  %116 = ptrtoint ptr %ip_proto86 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %ip_proto.0, ptr %ip_proto86, align 2
  %mode = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i.i, i32 0, i32 4, i32 6
  %117 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1, ptr %mode, align 8
  %118 = load ptr, ptr %data81, align 4
  %add.ptr89 = getelementptr i8, ptr %118, i32 14
  %119 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %data, align 4
  %121 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %len.i, align 4
  %123 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %data_len.i, align 8
  %sub.i208 = sub i32 %122, %124
  %125 = call ptr @memcpy(ptr %add.ptr89, ptr %120, i32 %sub.i208)
  %call92 = tail call fastcc i32 @qede_enqueue_fltr_and_config_searcher(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext %conv27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.end80.ret_unlock_crit_edge

if.end80.ret_unlock_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #20
  br label %ret_unlock

if.end95:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #20
  %126 = ptrtoint ptr %rxq_id58 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %rxq_id58, align 8
  tail call fastcc void @qede_configure_arfs_fltr(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext %127, i1 noundef zeroext true)
  %128 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arfs, align 8
  %arfs_list_lock98 = getelementptr inbounds %struct.qede_arfs, ptr %129, i32 0, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %arfs_list_lock98) #18
  %sp_flags = getelementptr i8, ptr %dev, i32 3496
  tail call void @_set_bit(i32 noundef 5, ptr noundef %sp_flags) #18
  %sp_task = getelementptr i8, ptr %dev, i32 3396
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %130 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %130, ptr noundef %sp_task, i32 noundef 0) #18
  %131 = ptrtoint ptr %sw_id.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %sw_id.i, align 8
  %conv101 = trunc i64 %132 to i32
  br label %cleanup

ret_unlock:                                       ; preds = %if.end80.ret_unlock_crit_edge, %if.then7.i, %if.end.i.ret_unlock_crit_edge, %if.end52.ret_unlock_crit_edge, %if.end50
  %rc.0 = phi i32 [ %conv51, %if.end50 ], [ %call92, %if.end80.ret_unlock_crit_edge ], [ -12, %if.then7.i ], [ -12, %if.end52.ret_unlock_crit_edge ], [ -12, %if.end.i.ret_unlock_crit_edge ]
  %133 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arfs, align 8
  %arfs_list_lock103 = getelementptr inbounds %struct.qede_arfs, ptr %134, i32 0, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %arfs_list_lock103) #18
  br label %cleanup

cleanup:                                          ; preds = %ret_unlock, %if.end95, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %ret_unlock ], [ %conv101, %if.end95 ], [ -93, %entry.cleanup_crit_edge ], [ -93, %if.end.cleanup_crit_edge ], [ -93, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qede_enqueue_fltr_and_config_searcher(ptr nocapture noundef readonly %edev, ptr noundef %fltr, i16 noundef zeroext %bucket_idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %data = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %buf_len = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr, i32 0, i32 3
  %4 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %3) #18
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !254

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #18
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.63, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.64, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #18
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %3, i32 noundef %5) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %11 = ptrtoint ptr %3 to i32
  %sub.i = add i32 %11, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %10, i32 %shr.i
  %and.i = and i32 %11, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %5, i32 noundef 1, i32 noundef 0) #18
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %mapping = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr, i32 0, i32 2
  %12 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i, ptr %mapping, align 8
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev2, i32 noundef %retval.0.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %do.body, label %if.end16

do.body:                                          ; preds = %dma_map_single_attrs.exit
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %15 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %cmp = icmp ult i8 %16, 3
  br i1 %cmp, label %do.end, label %do.body.do.end15_crit_edge, !prof !252

do.body.do.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end15

do.end:                                           ; preds = %do.body
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %17 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %call.i54 = tail call ptr @strchr(ptr noundef %18, i32 noundef 37) #18
  %tobool2.not.i = icmp eq ptr %call.i54, null
  %tobool11.not = icmp eq ptr %18, null
  %or.cond = and i1 %tobool11.not, %tobool2.not.i
  %spec.select.i59 = select i1 %tobool2.not.i, ptr %18, ptr @.str.56
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i59
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.56, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 145, ptr noundef %cond) #21
  br label %do.end15

do.end15:                                         ; preds = %cond.end, %do.body.do.end15_crit_edge
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %22) #18
  %sw_id.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr, i32 0, i32 6
  %23 = ptrtoint ptr %sw_id.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %sw_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %24)
  %cmp.i63 = icmp ult i64 %24, 256
  br i1 %cmp.i63, label %if.then.i64, label %do.end15.qede_free_arfs_filter.exit_crit_edge

do.end15.qede_free_arfs_filter.exit_crit_edge:    ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %qede_free_arfs_filter.exit

if.then.i64:                                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i = trunc i64 %24 to i32
  %arfs.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 41
  %25 = ptrtoint ptr %arfs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arfs.i, align 8
  %arfs_fltr_bmap.i = getelementptr inbounds %struct.qede_arfs, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %arfs_fltr_bmap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arfs_fltr_bmap.i, align 4
  tail call void @_clear_bit(i32 noundef %conv.i, ptr noundef %28) #18
  br label %qede_free_arfs_filter.exit

qede_free_arfs_filter.exit:                       ; preds = %if.then.i64, %do.end15.qede_free_arfs_filter.exit_crit_edge
  tail call void @kfree(ptr noundef %fltr) #18
  br label %return

if.end16:                                         ; preds = %dma_map_single_attrs.exit
  %node = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr, i32 0, i32 14
  %29 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %node, align 4
  %pprev.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr, i32 0, i32 14, i32 1
  %30 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %pprev.i, align 4
  %arfs = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 41
  %31 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arfs, align 8
  %idxprom = zext i16 %bucket_idx to i32
  %arrayidx = getelementptr [16 x %struct.hlist_head], ptr %32, i32 0, i32 %idxprom
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  store volatile ptr %34, ptr %node, align 4
  %tobool.not.i65 = icmp eq ptr %34, null
  br i1 %tobool.not.i65, label %if.end16.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end16.hlist_add_head.exit_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  %pprev.i66 = getelementptr inbounds %struct.hlist_node, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %pprev.i66 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %node, ptr %pprev.i66, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end16.hlist_add_head.exit_crit_edge
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %node, ptr %arrayidx, align 4
  %37 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %arrayidx, ptr %pprev.i, align 4
  %38 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arfs, align 8
  %filter_count = getelementptr inbounds %struct.qede_arfs, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %filter_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %filter_count, align 4
  %inc = add i32 %41, 1
  store i32 %inc, ptr %filter_count, align 4
  %42 = load ptr, ptr %arfs, align 8
  %filter_count20 = getelementptr inbounds %struct.qede_arfs, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %filter_count20 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %filter_count20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp21 = icmp eq i32 %44, 1
  br i1 %cmp21, label %land.lhs.true, label %hlist_add_head.exit.return_crit_edge

hlist_add_head.exit.return_crit_edge:             ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

land.lhs.true:                                    ; preds = %hlist_add_head.exit
  %mode = getelementptr inbounds %struct.qede_arfs, ptr %42, i32 0, i32 4
  %45 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp24 = icmp eq i32 %46, 0
  br i1 %cmp24, label %if.then26, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %ops = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 7
  %47 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops, align 4
  %configure_arfs_searcher = getelementptr inbounds %struct.qed_eth_ops, ptr %48, i32 0, i32 22
  %49 = ptrtoint ptr %configure_arfs_searcher to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %configure_arfs_searcher, align 4
  %51 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %edev, align 8
  %mode27 = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr, i32 0, i32 4, i32 6
  %53 = ptrtoint ptr %mode27 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mode27, align 8
  %call28 = tail call i32 %50(ptr noundef %52, i32 noundef %54) #18
  %55 = ptrtoint ptr %mode27 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mode27, align 8
  %57 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arfs, align 8
  %mode32 = getelementptr inbounds %struct.qede_arfs, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %mode32 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %56, ptr %mode32, align 4
  br label %return

return:                                           ; preds = %if.then26, %land.lhs.true.return_crit_edge, %hlist_add_head.exit.return_crit_edge, %qede_free_arfs_filter.exit
  %retval.0 = phi i32 [ -12, %qede_free_arfs_filter.exit ], [ 0, %if.then26 ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %hlist_add_head.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qede_udp_ports_update(ptr nocapture noundef %dev, i16 noundef zeroext %vxlan_port, i16 noundef zeroext %geneve_port) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %vxlan_dst_port = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 39
  %0 = ptrtoint ptr %vxlan_dst_port to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vxlan_dst_port, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %vxlan_port)
  %cmp.not = icmp eq i16 %1, %vxlan_port
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %2 = ptrtoint ptr %vxlan_dst_port to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %vxlan_dst_port, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %geneve_dst_port = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 40
  %3 = ptrtoint ptr %geneve_dst_port to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %geneve_dst_port, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %geneve_port)
  %cmp6.not = icmp eq i16 %4, %geneve_port
  br i1 %cmp6.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %5 = ptrtoint ptr %geneve_dst_port to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %geneve_dst_port, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qede_force_mac(ptr noundef %dev, ptr noundef %mac, i1 noundef zeroext %forced) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__qede_lock(ptr noundef %dev) #18
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %mac, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev, align 4
  tail call void @dev_addr_mod(ptr noundef %6, i32 noundef 0, ptr noundef %mac, i32 noundef 6) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @__qede_unlock(ptr noundef %dev) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__qede_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__qede_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qede_fill_rss_params(ptr noundef %edev, ptr nocapture noundef writeonly %rss, ptr nocapture noundef writeonly %update) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %num_queues = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 18
  %0 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_queues, align 2
  %conv = zext i16 %1 to i32
  %fp_num_tx = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 14
  %2 = ptrtoint ptr %fp_num_tx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fp_num_tx, align 1
  %conv1 = zext i8 %3 to i32
  %sub = sub nsw i32 %conv, %conv1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp = icmp slt i32 %sub, 2
  br i1 %cmp, label %if.then, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %arrayidx109 = getelementptr %struct.qede_dev, ptr %edev, i32 0, i32 27, i32 0
  %4 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx109, align 2
  %conv5110 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv5110)
  %cmp11.not111 = icmp sgt i32 %sub, %conv5110
  br i1 %cmp11.not111, label %for.body.preheader.for.cond_crit_edge, label %for.body.preheader.for.end_crit_edge

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.preheader.for.cond_crit_edge:            ; preds = %for.body.preheader
  br label %for.cond

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %6 = call ptr @memset(ptr %rss, i32 0, i32 556)
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.preheader.for.cond_crit_edge
  %i.0103112 = phi i32 [ %inc, %for.body.for.cond_crit_edge ], [ 0, %for.body.preheader.for.cond_crit_edge ]
  %inc = add nuw nsw i32 %i.0103112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.cond.for.end.loopexit_crit_edge, label %for.body

for.cond.for.end.loopexit_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.loopexit

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr %struct.qede_dev, ptr %edev, i32 0, i32 27, i32 %inc
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %conv5 = zext i16 %8 to i32
  %cmp11.not = icmp sgt i32 %sub, %conv5
  br i1 %cmp11.not, label %for.body.for.cond_crit_edge, label %for.body.for.end.loopexit_crit_edge

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.loopexit

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond

for.end.loopexit:                                 ; preds = %for.body.for.end.loopexit_crit_edge, %for.cond.for.end.loopexit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %i.0103112)
  %cmp3.le = icmp ult i32 %i.0103112, 127
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.body.preheader.for.end_crit_edge
  %cmp3.lcssa = phi i1 [ true, %for.body.preheader.for.end_crit_edge ], [ %cmp3.le, %for.end.loopexit ]
  %rss_params_inited = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 26
  %9 = ptrtoint ptr %rss_params_inited to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rss_params_inited, align 8
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %brmerge = select i1 %tobool.not, i1 true, i1 %cmp3.lcssa
  br i1 %brmerge, label %for.end.for.body21_crit_edge, label %for.end.if.end36_crit_edge

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end36

for.end.for.body21_crit_edge:                     ; preds = %for.end
  br label %for.body21

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.end.for.body21_crit_edge
  %i.1105 = phi i32 [ %inc33, %for.body21.for.body21_crit_edge ], [ 0, %for.end.for.body21_crit_edge ]
  %11 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_queues, align 2
  %13 = ptrtoint ptr %fp_num_tx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fp_num_tx, align 1
  %conv25 = zext i8 %14 to i16
  %sub26 = sub i16 %12, %conv25
  %conv28 = zext i16 %sub26 to i32
  %rem.i = urem i32 %i.1105, %conv28
  %conv29 = trunc i32 %rem.i to i16
  %arrayidx31 = getelementptr %struct.qede_dev, ptr %edev, i32 0, i32 27, i32 %i.1105
  %15 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv29, ptr %arrayidx31, align 2
  %inc33 = add nuw nsw i32 %i.1105, 1
  %exitcond107.not = icmp eq i32 %inc33, 128
  br i1 %exitcond107.not, label %for.end34, label %for.body21.for.body21_crit_edge

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body21

for.end34:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #20
  %16 = ptrtoint ptr %rss_params_inited to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rss_params_inited, align 8
  %or = or i32 %17, 1
  store i32 %or, ptr %rss_params_inited, align 8
  br label %if.end36

if.end36:                                         ; preds = %for.end34, %for.end.if.end36_crit_edge
  %fp_array = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 11
  br label %for.body40

for.body40:                                       ; preds = %for.body40.for.body40_crit_edge, %if.end36
  %i.2106 = phi i32 [ 0, %if.end36 ], [ %inc47, %for.body40.for.body40_crit_edge ]
  %arrayidx42 = getelementptr %struct.qede_dev, ptr %edev, i32 0, i32 27, i32 %i.2106
  %18 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx42, align 2
  %20 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fp_array, align 4
  %idxprom = zext i16 %19 to i32
  %rxq = getelementptr %struct.qede_fastpath, ptr %21, i32 %idxprom, i32 6
  %22 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rxq, align 4
  %handle = getelementptr inbounds %struct.qede_rx_queue, ptr %23, i32 0, i32 23
  %24 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %handle, align 8
  %arrayidx45 = getelementptr [128 x ptr], ptr %rss, i32 0, i32 %i.2106
  %26 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %arrayidx45, align 4
  %inc47 = add nuw nsw i32 %i.2106, 1
  %exitcond108.not = icmp eq i32 %inc47, 128
  br i1 %exitcond108.not, label %for.end48, label %for.body40.for.body40_crit_edge

for.body40.for.body40_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body40

for.end48:                                        ; preds = %for.body40
  %27 = ptrtoint ptr %rss_params_inited to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rss_params_inited, align 8
  %and50 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.then52, label %for.end48.if.end55_crit_edge

for.end48.if.end55_crit_edge:                     ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end55

if.then52:                                        ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #20
  %rss_key = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 28
  tail call void @netdev_rss_key_fill(ptr noundef %rss_key, i32 noundef 40) #18
  %29 = ptrtoint ptr %rss_params_inited to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rss_params_inited, align 8
  %or54 = or i32 %30, 2
  store i32 %or54, ptr %rss_params_inited, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %for.end48.if.end55_crit_edge
  %rss_key56 = getelementptr inbounds %struct.qed_update_vport_rss_params, ptr %rss, i32 0, i32 1
  %rss_key58 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 28
  %31 = call ptr @memcpy(ptr %rss_key56, ptr %rss_key58, i32 40)
  %32 = ptrtoint ptr %rss_params_inited to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rss_params_inited, align 8
  %and61 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.then63, label %if.end55.if.end66_crit_edge

if.end55.if.end66_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end66

if.then63:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #20
  %rss_caps = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 29
  %34 = ptrtoint ptr %rss_caps to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 15, ptr %rss_caps, align 4
  %or65 = or i32 %33, 4
  %35 = ptrtoint ptr %rss_params_inited to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or65, ptr %rss_params_inited, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end55.if.end66_crit_edge
  %rss_caps67 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 29
  %36 = ptrtoint ptr %rss_caps67 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rss_caps67, align 4
  %rss_caps68 = getelementptr inbounds %struct.qed_update_vport_rss_params, ptr %rss, i32 0, i32 2
  %38 = ptrtoint ptr %rss_caps68 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %rss_caps68, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.then
  %storemerge = phi i8 [ 1, %if.end66 ], [ 0, %if.then ]
  %39 = ptrtoint ptr %update to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %storemerge, ptr %update, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rss_key_fill(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_vlan_rx_add_vid(ptr noundef %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  %ucast.i = alloca %struct.qed_filter_ucast_params, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end13_crit_edge

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end13

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr i8, ptr %dev, i32 2320
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 8
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end13_crit_edge, label %do.end, !prof !254

land.rhs.do.end13_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end13

do.end:                                           ; preds = %land.rhs
  %ndev = getelementptr i8, ptr %dev, i32 2308
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call ptr @strchr(ptr noundef %5, i32 noundef 37) #18
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool7.not = icmp eq ptr %5, null
  %or.cond = and i1 %tobool7.not, %tobool2.not.i
  %spec.select.i261 = select i1 %tobool2.not.i, ptr %5, ptr @.str.56
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i261
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.56, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %conv10 = zext i16 %vid to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 683, ptr noundef %cond, i32 noundef %conv10) #21
  br label %do.end13

do.end13:                                         ; preds = %cond.end, %land.rhs.do.end13_crit_edge, %entry.do.end13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 12) #24
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %do.body17, label %if.end46

do.body17:                                        ; preds = %do.end13
  %9 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp20 = icmp ult i8 %10, 2
  br i1 %cmp20, label %do.end31, label %do.body17.cleanup_crit_edge, !prof !252

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end31:                                         ; preds = %do.body17
  %ndev33 = getelementptr i8, ptr %dev, i32 2308
  %11 = ptrtoint ptr %ndev33 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndev33, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i265 = icmp eq i8 %14, 0
  br i1 %tobool.not.i265, label %do.end31.cond.end40_crit_edge, label %lor.lhs.false.i269

do.end31.cond.end40_crit_edge:                    ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end40

lor.lhs.false.i269:                               ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #20
  %call.i266 = tail call ptr @strchr(ptr noundef %12, i32 noundef 37) #18
  %tobool2.not.i267 = icmp eq ptr %call.i266, null
  %tobool35.not = icmp eq ptr %12, null
  %or.cond346 = and i1 %tobool35.not, %tobool2.not.i267
  %spec.select.i275 = select i1 %tobool2.not.i267, ptr %12, ptr @.str.56
  %spec.select350 = select i1 %or.cond346, ptr @.str.3, ptr %spec.select.i275
  br label %cond.end40

cond.end40:                                       ; preds = %lor.lhs.false.i269, %do.end31.cond.end40_crit_edge
  %cond41 = phi ptr [ @.str.56, %do.end31.cond.end40_crit_edge ], [ %spec.select350, %lor.lhs.false.i269 ]
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef 687, ptr noundef %cond41) #21
  br label %cleanup

if.end46:                                         ; preds = %do.end13
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %vid47 = getelementptr inbounds %struct.qede_vlan, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %vid47 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %vid, ptr %vid47, align 8
  %configured = getelementptr inbounds %struct.qede_vlan, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %configured to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %configured, align 2
  %vlan_list = getelementptr i8, ptr %dev, i32 3380
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end46
  %tmp.0.in = phi ptr [ %vlan_list, %if.end46 ], [ %tmp.0, %for.body.for.cond_crit_edge ]
  %19 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp51.not = icmp eq ptr %tmp.0, %vlan_list
  br i1 %cmp51.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %vid55 = getelementptr inbounds %struct.qede_vlan, ptr %tmp.0, i32 0, i32 1
  %20 = ptrtoint ptr %vid55 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vid55, align 4
  %cmp59 = icmp eq i16 %21, %vid
  br i1 %cmp59, label %do.body62, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond

do.body62:                                        ; preds = %for.body
  %22 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp65 = icmp eq i8 %23, 0
  br i1 %cmp65, label %land.rhs67, label %do.body62.do.end95_crit_edge

do.body62.do.end95_crit_edge:                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end95

land.rhs67:                                       ; preds = %do.body62
  %dp_module68 = getelementptr i8, ptr %dev, i32 2320
  %24 = ptrtoint ptr %dp_module68 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dp_module68, align 8
  %and69 = and i32 %25, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %land.rhs67.do.end95_crit_edge, label %do.end81, !prof !254

land.rhs67.do.end95_crit_edge:                    ; preds = %land.rhs67
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end95

do.end81:                                         ; preds = %land.rhs67
  %ndev83 = getelementptr i8, ptr %dev, i32 2308
  %26 = ptrtoint ptr %ndev83 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ndev83, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i279 = icmp eq i8 %29, 0
  br i1 %tobool.not.i279, label %do.end81.cond.end90_crit_edge, label %lor.lhs.false.i283

do.end81.cond.end90_crit_edge:                    ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end90

lor.lhs.false.i283:                               ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #20
  %call.i280 = tail call ptr @strchr(ptr noundef %27, i32 noundef 37) #18
  %tobool2.not.i281 = icmp eq ptr %call.i280, null
  %tobool85.not = icmp eq ptr %27, null
  %or.cond347 = and i1 %tobool85.not, %tobool2.not.i281
  %spec.select.i289 = select i1 %tobool2.not.i281, ptr %27, ptr @.str.56
  %spec.select351 = select i1 %or.cond347, ptr @.str.3, ptr %spec.select.i289
  br label %cond.end90

cond.end90:                                       ; preds = %lor.lhs.false.i283, %do.end81.cond.end90_crit_edge
  %cond91 = phi ptr [ @.str.56, %do.end81.cond.end90_crit_edge ], [ %spec.select351, %lor.lhs.false.i283 ]
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.8, i32 noundef 698, ptr noundef %cond91) #21
  br label %do.end95

do.end95:                                         ; preds = %cond.end90, %land.rhs67.do.end95_crit_edge, %do.body62.do.end95_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #18
  br label %cleanup

for.end:                                          ; preds = %for.cond
  tail call void @__qede_lock(ptr noundef %add.ptr.i) #18
  %state = getelementptr i8, ptr %dev, i32 2548
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp102.not = icmp eq i32 %31, 1
  br i1 %cmp102.not, label %if.end147, label %do.body105

do.body105:                                       ; preds = %for.end
  %32 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp108 = icmp eq i8 %33, 0
  br i1 %cmp108, label %land.rhs110, label %do.body105.do.end139_crit_edge

do.body105.do.end139_crit_edge:                   ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end139

land.rhs110:                                      ; preds = %do.body105
  %dp_module111 = getelementptr i8, ptr %dev, i32 2320
  %34 = ptrtoint ptr %dp_module111 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dp_module111, align 8
  %and112 = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %land.rhs110.do.end139_crit_edge, label %do.end124, !prof !254

land.rhs110.do.end139_crit_edge:                  ; preds = %land.rhs110
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end139

do.end124:                                        ; preds = %land.rhs110
  %ndev126 = getelementptr i8, ptr %dev, i32 2308
  %36 = ptrtoint ptr %ndev126 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ndev126, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i293 = icmp eq i8 %39, 0
  br i1 %tobool.not.i293, label %do.end124.cond.end133_crit_edge, label %lor.lhs.false.i297

do.end124.cond.end133_crit_edge:                  ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end133

lor.lhs.false.i297:                               ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #20
  %call.i294 = tail call ptr @strchr(ptr noundef %37, i32 noundef 37) #18
  %tobool2.not.i295 = icmp eq ptr %call.i294, null
  %tobool128.not = icmp eq ptr %37, null
  %or.cond348 = and i1 %tobool128.not, %tobool2.not.i295
  %spec.select.i303 = select i1 %tobool2.not.i295, ptr %37, ptr @.str.56
  %spec.select352 = select i1 %or.cond348, ptr @.str.3, ptr %spec.select.i303
  br label %cond.end133

cond.end133:                                      ; preds = %lor.lhs.false.i297, %do.end124.cond.end133_crit_edge
  %cond134 = phi ptr [ @.str.56, %do.end124.cond.end133_crit_edge ], [ %spec.select352, %lor.lhs.false.i297 ]
  %conv135 = zext i16 %vid to i32
  %call136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.8, i32 noundef 709, ptr noundef %cond134, i32 noundef %conv135) #21
  br label %do.end139

do.end139:                                        ; preds = %cond.end133, %land.rhs110.do.end139_crit_edge, %do.body105.do.end139_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %cmp141.not = icmp eq i16 %vid, 0
  br i1 %cmp141.not, label %do.end139.if.end144_crit_edge, label %if.then143

do.end139.if.end144_crit_edge:                    ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end144

if.then143:                                       ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #20
  %non_configured_vlans = getelementptr i8, ptr %dev, i32 3390
  %40 = ptrtoint ptr %non_configured_vlans to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %non_configured_vlans, align 2
  %inc = add i16 %41, 1
  store i16 %inc, ptr %non_configured_vlans, align 2
  br label %if.end144

if.end144:                                        ; preds = %if.then143, %do.end139.if.end144_crit_edge
  %42 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vlan_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %vlan_list, ptr noundef %43) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.end144.out_crit_edge

if.end144.out_crit_edge:                          ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end.i.i:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #20
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %call7.i.i, align 8
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %vlan_list, ptr %prev.i, align 4
  %47 = ptrtoint ptr %vlan_list to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %call7.i.i, ptr %vlan_list, align 4
  br label %out

if.end147:                                        ; preds = %for.end
  %configured_vlans = getelementptr i8, ptr %dev, i32 3388
  %48 = ptrtoint ptr %configured_vlans to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %configured_vlans, align 4
  %num_vlan_filters = getelementptr i8, ptr %dev, i32 2420
  %50 = ptrtoint ptr %num_vlan_filters to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %num_vlan_filters, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %49, i16 %51)
  %cmp150 = icmp ult i16 %49, %51
  br i1 %cmp150, label %if.end147.if.then156_crit_edge, label %lor.lhs.false

if.end147.if.then156_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then156

lor.lhs.false:                                    ; preds = %if.end147
  %52 = ptrtoint ptr %vid47 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vid47, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp154 = icmp eq i16 %53, 0
  br i1 %cmp154, label %lor.lhs.false.if.then156_crit_edge, label %if.else

lor.lhs.false.if.then156_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then156

if.then156:                                       ; preds = %lor.lhs.false.if.then156_crit_edge, %if.end147.if.then156_crit_edge
  %54 = ptrtoint ptr %vid47 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vid47, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ucast.i) #18
  %56 = getelementptr inbounds i8, ptr %ucast.i, i32 4
  %57 = call ptr @memset(ptr %ucast.i, i32 0, i32 16)
  %58 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %56, align 4
  %vlan.i = getelementptr inbounds %struct.qed_filter_ucast_params, ptr %ucast.i, i32 0, i32 2
  %59 = ptrtoint ptr %vlan.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %55, ptr %vlan.i, align 2
  %ops.i = getelementptr i8, ptr %dev, i32 2332
  %60 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i, align 4
  %filter_config_ucast.i = getelementptr inbounds %struct.qed_eth_ops, ptr %61, i32 0, i32 15
  %62 = ptrtoint ptr %filter_config_ucast.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %filter_config_ucast.i, align 4
  %64 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr.i, align 8
  %call.i307 = call i32 %63(ptr noundef %65, ptr noundef nonnull %ucast.i) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ucast.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i307)
  %tobool159.not = icmp eq i32 %call.i307, 0
  br i1 %tobool159.not, label %if.end180, label %do.end164

do.end164:                                        ; preds = %if.then156
  %ndev166 = getelementptr i8, ptr %dev, i32 2308
  %66 = ptrtoint ptr %ndev166 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ndev166, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i308 = icmp eq i8 %69, 0
  br i1 %tobool.not.i308, label %do.end164.cond.end173_crit_edge, label %lor.lhs.false.i312

do.end164.cond.end173_crit_edge:                  ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end173

lor.lhs.false.i312:                               ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #20
  %call.i309 = call ptr @strchr(ptr noundef %67, i32 noundef 37) #18
  %tobool2.not.i310 = icmp eq ptr %call.i309, null
  %tobool168.not = icmp eq ptr %67, null
  %or.cond349 = and i1 %tobool168.not, %tobool2.not.i310
  %spec.select.i318 = select i1 %tobool2.not.i310, ptr %67, ptr @.str.56
  %spec.select353 = select i1 %or.cond349, ptr @.str.3, ptr %spec.select.i318
  br label %cond.end173

cond.end173:                                      ; preds = %lor.lhs.false.i312, %do.end164.cond.end173_crit_edge
  %cond174 = phi ptr [ @.str.56, %do.end164.cond.end173_crit_edge ], [ %spec.select353, %lor.lhs.false.i312 ]
  %70 = ptrtoint ptr %vid47 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %vid47, align 8
  %conv176 = zext i16 %71 to i32
  %call177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.8, i32 noundef 727, ptr noundef %cond174, i32 noundef %conv176) #21
  call void @kfree(ptr noundef nonnull %call7.i.i) #18
  br label %out

if.end180:                                        ; preds = %if.then156
  %72 = ptrtoint ptr %configured to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %configured, align 2
  %73 = ptrtoint ptr %vid47 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %vid47, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %cmp184.not = icmp eq i16 %74, 0
  br i1 %cmp184.not, label %if.end180.if.end200_crit_edge, label %if.then186

if.end180.if.end200_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end200

if.then186:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #20
  %75 = ptrtoint ptr %configured_vlans to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %configured_vlans, align 4
  %inc188 = add i16 %76, 1
  store i16 %inc188, ptr %configured_vlans, align 4
  br label %if.end200

if.else:                                          ; preds = %lor.lhs.false
  %non_configured_vlans190 = getelementptr i8, ptr %dev, i32 3390
  %77 = ptrtoint ptr %non_configured_vlans190 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %non_configured_vlans190, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool191.not = icmp eq i16 %78, 0
  br i1 %tobool191.not, label %if.then192, label %if.else.if.end197_crit_edge

if.else.if.end197_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end197

if.then192:                                       ; preds = %if.else
  %call193 = tail call fastcc i32 @qede_config_accept_any_vlan(ptr noundef %add.ptr.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %if.then192.if.end197_crit_edge, label %if.then195

if.then192.if.end197_crit_edge:                   ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end197

if.then195:                                       ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #18
  br label %out

if.end197:                                        ; preds = %if.then192.if.end197_crit_edge, %if.else.if.end197_crit_edge
  %79 = ptrtoint ptr %non_configured_vlans190 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %non_configured_vlans190, align 2
  %inc199 = add i16 %80, 1
  store i16 %inc199, ptr %non_configured_vlans190, align 2
  br label %if.end200

if.end200:                                        ; preds = %if.end197, %if.then186, %if.end180.if.end200_crit_edge
  %81 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %vlan_list, align 4
  %call.i.i322 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %vlan_list, ptr noundef %82) #18
  br i1 %call.i.i322, label %if.end.i.i325, label %if.end200.out_crit_edge

if.end200.out_crit_edge:                          ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end.i.i325:                                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #20
  %prev1.i.i323 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i323 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call7.i.i, ptr %prev1.i.i323, align 4
  %84 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %82, ptr %call7.i.i, align 8
  %85 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %vlan_list, ptr %prev.i, align 4
  %86 = ptrtoint ptr %vlan_list to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %call7.i.i, ptr %vlan_list, align 4
  br label %out

out:                                              ; preds = %if.end.i.i325, %if.end200.out_crit_edge, %if.then195, %cond.end173, %if.end.i.i, %if.end144.out_crit_edge
  %rc.2 = phi i32 [ %call.i307, %cond.end173 ], [ %call193, %if.then195 ], [ 0, %if.end144.out_crit_edge ], [ 0, %if.end.i.i ], [ 0, %if.end200.out_crit_edge ], [ 0, %if.end.i.i325 ]
  call void @__qede_unlock(ptr noundef %add.ptr.i) #18
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end95, %cond.end40, %do.body17.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %do.end95 ], [ %rc.2, %out ], [ -12, %cond.end40 ], [ -12, %do.body17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qede_config_accept_any_vlan(ptr nocapture noundef %edev, i1 noundef zeroext %action) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %action to i8
  %accept_any_vlan = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 36
  %0 = ptrtoint ptr %accept_any_vlan to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %accept_any_vlan, align 8, !range !253
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %frombool)
  %cmp = icmp eq i8 %1, %frombool
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call noalias ptr @vzalloc(i32 noundef 564) #22
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %call, align 4
  %accept_any_vlan9 = getelementptr inbounds %struct.qed_update_vport_params, ptr %call, i32 0, i32 6
  %3 = ptrtoint ptr %accept_any_vlan9 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %accept_any_vlan9, align 2
  %update_accept_any_vlan_flg = getelementptr inbounds %struct.qed_update_vport_params, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %update_accept_any_vlan_flg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %update_accept_any_vlan_flg, align 1
  %ops = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 7
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %vport_update = getelementptr inbounds %struct.qed_eth_ops, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %vport_update to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vport_update, align 4
  %9 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %edev, align 8
  %call10 = tail call i32 %8(ptr noundef %10, ptr noundef nonnull %call) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body24, label %do.end

do.end:                                           ; preds = %if.end6
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %11 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call ptr @strchr(ptr noundef %12, i32 noundef 37) #18
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool15.not = icmp eq ptr %12, null
  %or.cond = and i1 %tobool15.not, %tobool2.not.i
  %spec.select.i76 = select i1 %tobool2.not.i, ptr %12, ptr @.str.56
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i76
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.56, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %cond20 = select i1 %action, ptr @.str.67, ptr @.str.68
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef 666, ptr noundef %cond, ptr noundef nonnull %cond20) #21
  br label %if.end54

do.body24:                                        ; preds = %if.end6
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %15 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp26 = icmp ult i8 %16, 2
  br i1 %cmp26, label %do.end33, label %do.body24.do.end50_crit_edge, !prof !252

do.body24.do.end50_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end50

do.end33:                                         ; preds = %do.body24
  %ndev35 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %17 = ptrtoint ptr %ndev35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev35, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i80 = icmp eq i8 %20, 0
  br i1 %tobool.not.i80, label %do.end33.cond.end42_crit_edge, label %lor.lhs.false.i84

do.end33.cond.end42_crit_edge:                    ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end42

lor.lhs.false.i84:                                ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #20
  %call.i81 = tail call ptr @strchr(ptr noundef %18, i32 noundef 37) #18
  %tobool2.not.i82 = icmp eq ptr %call.i81, null
  %tobool37.not = icmp eq ptr %18, null
  %or.cond101 = and i1 %tobool37.not, %tobool2.not.i82
  %spec.select.i90 = select i1 %tobool2.not.i82, ptr %18, ptr @.str.56
  %spec.select102 = select i1 %or.cond101, ptr @.str.3, ptr %spec.select.i90
  br label %cond.end42

cond.end42:                                       ; preds = %lor.lhs.false.i84, %do.end33.cond.end42_crit_edge
  %cond43 = phi ptr [ @.str.56, %do.end33.cond.end42_crit_edge ], [ %spec.select102, %lor.lhs.false.i84 ]
  %cond46 = select i1 %action, ptr @.str.72, ptr @.str.73
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.66, i32 noundef 669, ptr noundef %cond43, ptr noundef nonnull %cond46) #21
  br label %do.end50

do.end50:                                         ; preds = %cond.end42, %do.body24.do.end50_crit_edge
  %21 = ptrtoint ptr %accept_any_vlan to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool, ptr %accept_any_vlan, align 8
  br label %if.end54

if.end54:                                         ; preds = %do.end50, %cond.end
  tail call void @vfree(ptr noundef nonnull %call) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end54 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_configure_vlan_filters(ptr noundef %edev) local_unnamed_addr #0 align 64 {
entry:
  %ucast.i = alloca %struct.qed_filter_ucast_params, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_list = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 33
  %0 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %vlan_list, align 4
  %cmp.i.not = icmp eq ptr %1, %vlan_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %vlan.0149 = load ptr, ptr %vlan_list, align 4
  %cmp.not150 = icmp eq ptr %vlan.0149, %vlan_list
  br i1 %cmp.not150, label %for.cond.preheader.if.else_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.else_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %configured_vlans = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 34
  %num_vlan_filters = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 10, i32 4
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %dp_module = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 4
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %ucast.i, i32 4
  %vlan.i = getelementptr inbounds %struct.qed_filter_ucast_params, ptr %ucast.i, i32 0, i32 2
  %ops.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 7
  %non_configured_vlans = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 35
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %vlan.0155 = phi ptr [ %vlan.0149, %for.body.lr.ph ], [ %vlan.0, %for.inc.for.body_crit_edge ]
  %rc.0154 = phi i32 [ 0, %for.body.lr.ph ], [ %rc.1, %for.inc.for.body_crit_edge ]
  %real_rc.0152 = phi i32 [ 0, %for.body.lr.ph ], [ %real_rc.1, %for.inc.for.body_crit_edge ]
  %accept_any_vlan.0151 = phi i32 [ 0, %for.body.lr.ph ], [ %accept_any_vlan.1, %for.inc.for.body_crit_edge ]
  %configured = getelementptr inbounds %struct.qede_vlan, ptr %vlan.0155, i32 0, i32 2
  %4 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %configured, align 2, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.end6, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %vid = getelementptr inbounds %struct.qede_vlan, ptr %vlan.0155, i32 0, i32 1
  %6 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp7.not = icmp eq i16 %7, 0
  br i1 %cmp7.not, label %if.end6.do.body_crit_edge, label %land.lhs.true

if.end6.do.body_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

land.lhs.true:                                    ; preds = %if.end6
  %8 = ptrtoint ptr %configured_vlans to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %configured_vlans, align 4
  %10 = ptrtoint ptr %num_vlan_filters to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_vlan_filters, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp11 = icmp eq i16 %9, %11
  br i1 %cmp11, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %if.end6.do.body_crit_edge
  %12 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp16 = icmp eq i8 %13, 0
  br i1 %cmp16, label %land.rhs, label %do.body.do.end34_crit_edge

do.body.do.end34_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end34

land.rhs:                                         ; preds = %do.body
  %14 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dp_module, align 8
  %and = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %land.rhs.do.end34_crit_edge, label %do.end, !prof !254

land.rhs.do.end34_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end34

do.end:                                           ; preds = %land.rhs
  %16 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = call ptr @strchr(ptr noundef %17, i32 noundef 37) #18
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool26.not = icmp eq ptr %17, null
  %or.cond147 = and i1 %tobool26.not, %tobool2.not.i
  %spec.select.i121 = select i1 %tobool2.not.i, ptr %17, ptr @.str.56
  %spec.select = select i1 %or.cond147, ptr @.str.3, ptr %spec.select.i121
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.56, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %conv30 = zext i16 %7 to i32
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 794, ptr noundef %cond, i32 noundef %conv30) #21
  br label %do.end34

do.end34:                                         ; preds = %cond.end, %land.rhs.do.end34_crit_edge, %do.body.do.end34_crit_edge
  %20 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vid, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ucast.i) #18
  %22 = call ptr @memset(ptr %ucast.i, i32 0, i32 16)
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %3, align 4
  %24 = ptrtoint ptr %vlan.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %21, ptr %vlan.i, align 2
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %filter_config_ucast.i = getelementptr inbounds %struct.qed_eth_ops, ptr %26, i32 0, i32 15
  %27 = ptrtoint ptr %filter_config_ucast.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %filter_config_ucast.i, align 4
  %29 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %edev, align 8
  %call.i125 = call i32 %28(ptr noundef %30, ptr noundef nonnull %ucast.i) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ucast.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool37.not = icmp eq i32 %call.i125, 0
  br i1 %tobool37.not, label %if.end58, label %do.end42

do.end42:                                         ; preds = %do.end34
  %31 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ndev, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i126 = icmp eq i8 %34, 0
  br i1 %tobool.not.i126, label %do.end42.cond.end51_crit_edge, label %lor.lhs.false.i130

do.end42.cond.end51_crit_edge:                    ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end51

lor.lhs.false.i130:                               ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #20
  %call.i127 = call ptr @strchr(ptr noundef %32, i32 noundef 37) #18
  %tobool2.not.i128 = icmp eq ptr %call.i127, null
  %tobool46.not = icmp eq ptr %32, null
  %or.cond148 = and i1 %tobool46.not, %tobool2.not.i128
  %spec.select.i136 = select i1 %tobool2.not.i128, ptr %32, ptr @.str.56
  %spec.select165 = select i1 %or.cond148, ptr @.str.3, ptr %spec.select.i136
  br label %cond.end51

cond.end51:                                       ; preds = %lor.lhs.false.i130, %do.end42.cond.end51_crit_edge
  %cond52 = phi ptr [ @.str.56, %do.end42.cond.end51_crit_edge ], [ %spec.select165, %lor.lhs.false.i130 ]
  %35 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vid, align 4
  %conv54 = zext i16 %36 to i32
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef 800, ptr noundef %cond52, i32 noundef %conv54) #21
  br label %for.inc

if.end58:                                         ; preds = %do.end34
  %37 = ptrtoint ptr %configured to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %configured, align 2
  %38 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp62.not = icmp eq i16 %39, 0
  br i1 %cmp62.not, label %if.end58.for.inc_crit_edge, label %if.then64

if.end58.for.inc_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then64:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #20
  %40 = ptrtoint ptr %non_configured_vlans to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %non_configured_vlans, align 2
  %dec = add i16 %41, -1
  store i16 %dec, ptr %non_configured_vlans, align 2
  %42 = ptrtoint ptr %configured_vlans to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %configured_vlans, align 4
  %inc = add i16 %43, 1
  store i16 %inc, ptr %configured_vlans, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then64, %if.end58.for.inc_crit_edge, %cond.end51, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %accept_any_vlan.1 = phi i32 [ %accept_any_vlan.0151, %for.body.for.inc_crit_edge ], [ %accept_any_vlan.0151, %cond.end51 ], [ %accept_any_vlan.0151, %if.then64 ], [ %accept_any_vlan.0151, %if.end58.for.inc_crit_edge ], [ 1, %land.lhs.true.for.inc_crit_edge ]
  %real_rc.1 = phi i32 [ %real_rc.0152, %for.body.for.inc_crit_edge ], [ %call.i125, %cond.end51 ], [ %real_rc.0152, %if.then64 ], [ %real_rc.0152, %if.end58.for.inc_crit_edge ], [ %real_rc.0152, %land.lhs.true.for.inc_crit_edge ]
  %rc.1 = phi i32 [ %rc.0154, %for.body.for.inc_crit_edge ], [ %call.i125, %cond.end51 ], [ 0, %if.then64 ], [ 0, %if.end58.for.inc_crit_edge ], [ %rc.0154, %land.lhs.true.for.inc_crit_edge ]
  %44 = ptrtoint ptr %vlan.0155 to i32
  call void @__asan_load4_noabort(i32 %44)
  %vlan.0 = load ptr, ptr %vlan.0155, align 4
  %cmp.not = icmp eq ptr %vlan.0, %vlan_list
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %accept_any_vlan.1)
  %tobool72.not = icmp eq i32 %accept_any_vlan.1, 0
  br i1 %tobool72.not, label %for.end.if.else_crit_edge, label %for.end.if.end80.sink.split_crit_edge

for.end.if.end80.sink.split_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end80.sink.split

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

if.else:                                          ; preds = %for.end.if.else_crit_edge, %for.cond.preheader.if.else_crit_edge
  %rc.0.lcssa164 = phi i32 [ %rc.1, %for.end.if.else_crit_edge ], [ 0, %for.cond.preheader.if.else_crit_edge ]
  %real_rc.0.lcssa163 = phi i32 [ %real_rc.1, %for.end.if.else_crit_edge ], [ 0, %for.cond.preheader.if.else_crit_edge ]
  %non_configured_vlans75 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 35
  %45 = ptrtoint ptr %non_configured_vlans75 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %non_configured_vlans75, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool76.not = icmp eq i16 %46, 0
  br i1 %tobool76.not, label %if.else.if.end80.sink.split_crit_edge, label %if.else.if.end80_crit_edge

if.else.if.end80_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end80

if.else.if.end80.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end80.sink.split

if.end80.sink.split:                              ; preds = %if.else.if.end80.sink.split_crit_edge, %for.end.if.end80.sink.split_crit_edge
  %.sink = phi i1 [ true, %for.end.if.end80.sink.split_crit_edge ], [ false, %if.else.if.end80.sink.split_crit_edge ]
  %real_rc.0.lcssa162.ph = phi i32 [ %real_rc.1, %for.end.if.end80.sink.split_crit_edge ], [ %real_rc.0.lcssa163, %if.else.if.end80.sink.split_crit_edge ]
  %call78 = call fastcc i32 @qede_config_accept_any_vlan(ptr noundef %edev, i1 noundef zeroext %.sink)
  br label %if.end80

if.end80:                                         ; preds = %if.end80.sink.split, %if.else.if.end80_crit_edge
  %real_rc.0.lcssa162 = phi i32 [ %real_rc.0.lcssa163, %if.else.if.end80_crit_edge ], [ %real_rc.0.lcssa162.ph, %if.end80.sink.split ]
  %rc.2 = phi i32 [ %rc.0.lcssa164, %if.else.if.end80_crit_edge ], [ %call78, %if.end80.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2)
  %tobool81.not = icmp ne i32 %rc.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %real_rc.0.lcssa162)
  %tobool83.not = icmp eq i32 %real_rc.0.lcssa162, 0
  %or.cond = select i1 %tobool81.not, i1 %tobool83.not, i1 false
  %real_rc.2 = select i1 %or.cond, i32 %rc.2, i32 %real_rc.0.lcssa162
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %real_rc.2, %if.end80 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_vlan_rx_kill_vid(ptr noundef %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  %ucast.i = alloca %struct.qed_filter_ucast_params, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end12

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr i8, ptr %dev, i32 2320
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 8
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end12_crit_edge, label %do.end, !prof !254

land.rhs.do.end12_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end12

do.end:                                           ; preds = %land.rhs
  %ndev = getelementptr i8, ptr %dev, i32 2308
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call ptr @strchr(ptr noundef %5, i32 noundef 37) #18
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool6.not = icmp eq ptr %5, null
  %or.cond = and i1 %tobool6.not, %tobool2.not.i
  %spec.select.i171 = select i1 %tobool2.not.i, ptr %5, ptr @.str.56
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i171
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.56, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %conv9 = zext i16 %vid to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 835, ptr noundef %cond, i32 noundef %conv9) #21
  br label %do.end12

do.end12:                                         ; preds = %cond.end, %land.rhs.do.end12_crit_edge, %entry.do.end12_crit_edge
  tail call void @__qede_lock(ptr noundef %add.ptr.i) #18
  %vlan_list = getelementptr i8, ptr %dev, i32 3380
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end12
  %vlan.0.in = phi ptr [ %vlan_list, %do.end12 ], [ %vlan.0, %for.body.for.cond_crit_edge ]
  %8 = ptrtoint ptr %vlan.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %vlan.0 = load ptr, ptr %vlan.0.in, align 4
  %cmp15 = icmp eq ptr %vlan.0, %vlan_list
  br i1 %cmp15, label %do.body36.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %vid19 = getelementptr inbounds %struct.qede_vlan, ptr %vlan.0, i32 0, i32 1
  %9 = ptrtoint ptr %vid19 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vid19, align 4
  %cmp22 = icmp eq i16 %10, %vid
  br i1 %cmp22, label %if.end70, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond

do.body36.critedge:                               ; preds = %for.cond
  %11 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp39 = icmp eq i8 %12, 0
  br i1 %cmp39, label %land.rhs41, label %do.body36.critedge.out_crit_edge

do.body36.critedge.out_crit_edge:                 ; preds = %do.body36.critedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

land.rhs41:                                       ; preds = %do.body36.critedge
  %dp_module42 = getelementptr i8, ptr %dev, i32 2320
  %13 = ptrtoint ptr %dp_module42 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dp_module42, align 8
  %and43 = and i32 %14, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %land.rhs41.out_crit_edge, label %do.end55, !prof !254

land.rhs41.out_crit_edge:                         ; preds = %land.rhs41
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

do.end55:                                         ; preds = %land.rhs41
  %ndev57 = getelementptr i8, ptr %dev, i32 2308
  %15 = ptrtoint ptr %ndev57 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndev57, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i175 = icmp eq i8 %18, 0
  br i1 %tobool.not.i175, label %do.end55.cond.end64_crit_edge, label %lor.lhs.false.i179

do.end55.cond.end64_crit_edge:                    ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end64

lor.lhs.false.i179:                               ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #20
  %call.i176 = tail call ptr @strchr(ptr noundef %16, i32 noundef 37) #18
  %tobool2.not.i177 = icmp eq ptr %call.i176, null
  %tobool59.not = icmp eq ptr %16, null
  %or.cond252 = and i1 %tobool59.not, %tobool2.not.i177
  %spec.select.i185 = select i1 %tobool2.not.i177, ptr %16, ptr @.str.56
  %spec.select261 = select i1 %or.cond252, ptr @.str.3, ptr %spec.select.i185
  br label %cond.end64

cond.end64:                                       ; preds = %lor.lhs.false.i179, %do.end55.cond.end64_crit_edge
  %cond65 = phi ptr [ @.str.56, %do.end55.cond.end64_crit_edge ], [ %spec.select261, %lor.lhs.false.i179 ]
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef 845, ptr noundef %cond65) #21
  br label %out

if.end70:                                         ; preds = %for.body
  %vid19.le = getelementptr inbounds %struct.qede_vlan, ptr %vlan.0, i32 0, i32 1
  %state = getelementptr i8, ptr %dev, i32 2548
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp71.not = icmp eq i32 %20, 1
  br i1 %cmp71.not, label %if.end108, label %do.body74

do.body74:                                        ; preds = %if.end70
  %21 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp77 = icmp eq i8 %22, 0
  br i1 %cmp77, label %land.rhs79, label %do.body74.do.end107_crit_edge

do.body74.do.end107_crit_edge:                    ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end107

land.rhs79:                                       ; preds = %do.body74
  %dp_module80 = getelementptr i8, ptr %dev, i32 2320
  %23 = ptrtoint ptr %dp_module80 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dp_module80, align 8
  %and81 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %land.rhs79.do.end107_crit_edge, label %do.end93, !prof !254

land.rhs79.do.end107_crit_edge:                   ; preds = %land.rhs79
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end107

do.end93:                                         ; preds = %land.rhs79
  %ndev95 = getelementptr i8, ptr %dev, i32 2308
  %25 = ptrtoint ptr %ndev95 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ndev95, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i189 = icmp eq i8 %28, 0
  br i1 %tobool.not.i189, label %do.end93.cond.end102_crit_edge, label %lor.lhs.false.i193

do.end93.cond.end102_crit_edge:                   ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end102

lor.lhs.false.i193:                               ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #20
  %call.i190 = tail call ptr @strchr(ptr noundef %26, i32 noundef 37) #18
  %tobool2.not.i191 = icmp eq ptr %call.i190, null
  %tobool97.not = icmp eq ptr %26, null
  %or.cond253 = and i1 %tobool97.not, %tobool2.not.i191
  %spec.select.i199 = select i1 %tobool2.not.i191, ptr %26, ptr @.str.56
  %spec.select262 = select i1 %or.cond253, ptr @.str.3, ptr %spec.select.i199
  br label %cond.end102

cond.end102:                                      ; preds = %lor.lhs.false.i193, %do.end93.cond.end102_crit_edge
  %cond103 = phi ptr [ @.str.56, %do.end93.cond.end102_crit_edge ], [ %spec.select262, %lor.lhs.false.i193 ]
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.27, i32 noundef 854, ptr noundef %cond103) #21
  br label %do.end107

do.end107:                                        ; preds = %cond.end102, %land.rhs79.do.end107_crit_edge, %do.body74.do.end107_crit_edge
  %29 = ptrtoint ptr %vid19.le to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vid19.le, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp.not.i = icmp eq i16 %30, 0
  br i1 %cmp.not.i, label %do.end107.if.end4.i_crit_edge, label %if.then.i

do.end107.if.end4.i_crit_edge:                    ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4.i

if.then.i:                                        ; preds = %do.end107
  %configured.i = getelementptr inbounds %struct.qede_vlan, ptr %vlan.0, i32 0, i32 2
  %31 = ptrtoint ptr %configured.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %configured.i, align 2, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i203 = icmp eq i8 %32, 0
  br i1 %tobool.not.i203, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %configured_vlans.i = getelementptr i8, ptr %dev, i32 3388
  %33 = ptrtoint ptr %configured_vlans.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %configured_vlans.i, align 4
  %dec.i = add i16 %34, -1
  store i16 %dec.i, ptr %configured_vlans.i, align 4
  br label %if.end4.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %non_configured_vlans.i = getelementptr i8, ptr %dev, i32 3390
  %35 = ptrtoint ptr %non_configured_vlans.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %non_configured_vlans.i, align 2
  %dec3.i = add i16 %36, -1
  store i16 %dec3.i, ptr %non_configured_vlans.i, align 2
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else.i, %if.then2.i, %do.end107.if.end4.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vlan.0) #18
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.i.qede_del_vlan_from_list.exit_crit_edge

if.end4.i.qede_del_vlan_from_list.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %qede_del_vlan_from_list.exit

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %vlan.0, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i, align 4
  %39 = ptrtoint ptr %vlan.0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vlan.0, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %qede_del_vlan_from_list.exit

qede_del_vlan_from_list.exit:                     ; preds = %if.end.i.i.i, %if.end4.i.qede_del_vlan_from_list.exit_crit_edge
  %43 = ptrtoint ptr %vlan.0 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %vlan.0, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %vlan.0, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %vlan.0) #18
  br label %out

if.end108:                                        ; preds = %if.end70
  %configured = getelementptr inbounds %struct.qede_vlan, ptr %vlan.0, i32 0, i32 2
  %45 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %configured, align 2, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool109.not = icmp eq i8 %46, 0
  br i1 %tobool109.not, label %if.end108.if.end133_crit_edge, label %if.then110

if.end108.if.end133_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end133

if.then110:                                       ; preds = %if.end108
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ucast.i) #18
  %47 = getelementptr inbounds i8, ptr %ucast.i, i32 4
  %48 = call ptr @memset(ptr %47, i32 0, i32 12)
  %49 = ptrtoint ptr %ucast.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %ucast.i, align 4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %47, align 4
  %vlan.i = getelementptr inbounds %struct.qed_filter_ucast_params, ptr %ucast.i, i32 0, i32 2
  %51 = ptrtoint ptr %vlan.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %vid, ptr %vlan.i, align 2
  %ops.i = getelementptr i8, ptr %dev, i32 2332
  %52 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i, align 4
  %filter_config_ucast.i = getelementptr inbounds %struct.qed_eth_ops, ptr %53, i32 0, i32 15
  %54 = ptrtoint ptr %filter_config_ucast.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %filter_config_ucast.i, align 4
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i, align 8
  %call.i204 = call i32 %55(ptr noundef %57, ptr noundef nonnull %ucast.i) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ucast.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204)
  %tobool112.not = icmp eq i32 %call.i204, 0
  br i1 %tobool112.not, label %if.then110.if.end133_crit_edge, label %do.end117

if.then110.if.end133_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end133

do.end117:                                        ; preds = %if.then110
  %ndev119 = getelementptr i8, ptr %dev, i32 2308
  %58 = ptrtoint ptr %ndev119 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ndev119, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %59, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i205 = icmp eq i8 %61, 0
  br i1 %tobool.not.i205, label %do.end117.cond.end126_crit_edge, label %lor.lhs.false.i209

do.end117.cond.end126_crit_edge:                  ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end126

lor.lhs.false.i209:                               ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #20
  %call.i206 = call ptr @strchr(ptr noundef %59, i32 noundef 37) #18
  %tobool2.not.i207 = icmp eq ptr %call.i206, null
  %tobool121.not = icmp eq ptr %59, null
  %or.cond254 = and i1 %tobool121.not, %tobool2.not.i207
  %spec.select.i215 = select i1 %tobool2.not.i207, ptr %59, ptr @.str.56
  %spec.select263 = select i1 %or.cond254, ptr @.str.3, ptr %spec.select.i215
  br label %cond.end126

cond.end126:                                      ; preds = %lor.lhs.false.i209, %do.end117.cond.end126_crit_edge
  %cond127 = phi ptr [ @.str.56, %do.end117.cond.end126_crit_edge ], [ %spec.select263, %lor.lhs.false.i209 ]
  %conv128 = zext i16 %vid to i32
  %call129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.27, i32 noundef 864, ptr noundef %cond127, i32 noundef %conv128) #21
  br label %out

if.end133:                                        ; preds = %if.then110.if.end133_crit_edge, %if.end108.if.end133_crit_edge
  %62 = ptrtoint ptr %vid19.le to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vid19.le, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp.not.i220 = icmp eq i16 %63, 0
  br i1 %cmp.not.i220, label %if.end133.if.end4.i231_crit_edge, label %if.then.i223

if.end133.if.end4.i231_crit_edge:                 ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4.i231

if.then.i223:                                     ; preds = %if.end133
  %64 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %configured, align 2, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i222 = icmp eq i8 %65, 0
  br i1 %tobool.not.i222, label %if.else.i229, label %if.then2.i226

if.then2.i226:                                    ; preds = %if.then.i223
  call void @__sanitizer_cov_trace_pc() #20
  %configured_vlans.i224 = getelementptr i8, ptr %dev, i32 3388
  %66 = ptrtoint ptr %configured_vlans.i224 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %configured_vlans.i224, align 4
  %dec.i225 = add i16 %67, -1
  store i16 %dec.i225, ptr %configured_vlans.i224, align 4
  br label %if.end4.i231

if.else.i229:                                     ; preds = %if.then.i223
  call void @__sanitizer_cov_trace_pc() #20
  %non_configured_vlans.i227 = getelementptr i8, ptr %dev, i32 3390
  %68 = ptrtoint ptr %non_configured_vlans.i227 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %non_configured_vlans.i227, align 2
  %dec3.i228 = add i16 %69, -1
  store i16 %dec3.i228, ptr %non_configured_vlans.i227, align 2
  br label %if.end4.i231

if.end4.i231:                                     ; preds = %if.else.i229, %if.then2.i226, %if.end133.if.end4.i231_crit_edge
  %call.i.i.i230 = call zeroext i1 @__list_del_entry_valid(ptr noundef %vlan.0) #18
  br i1 %call.i.i.i230, label %if.end.i.i.i234, label %if.end4.i231.qede_del_vlan_from_list.exit236_crit_edge

if.end4.i231.qede_del_vlan_from_list.exit236_crit_edge: ; preds = %if.end4.i231
  call void @__sanitizer_cov_trace_pc() #20
  br label %qede_del_vlan_from_list.exit236

if.end.i.i.i234:                                  ; preds = %if.end4.i231
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i.i232 = getelementptr inbounds %struct.list_head, ptr %vlan.0, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i.i.i232 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i.i232, align 4
  %72 = ptrtoint ptr %vlan.0 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %vlan.0, align 4
  %prev1.i.i.i.i233 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i.i.i233 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev1.i.i.i.i233, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %73, ptr %71, align 4
  br label %qede_del_vlan_from_list.exit236

qede_del_vlan_from_list.exit236:                  ; preds = %if.end.i.i.i234, %if.end4.i231.qede_del_vlan_from_list.exit236_crit_edge
  %76 = ptrtoint ptr %vlan.0 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 256 to ptr), ptr %vlan.0, align 4
  %prev.i.i235 = getelementptr inbounds %struct.list_head, ptr %vlan.0, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i.i235 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i235, align 4
  call void @kfree(ptr noundef %vlan.0) #18
  %call134 = call i32 @qede_configure_vlan_filters(ptr noundef %add.ptr.i)
  br label %out

out:                                              ; preds = %qede_del_vlan_from_list.exit236, %cond.end126, %qede_del_vlan_from_list.exit, %cond.end64, %land.rhs41.out_crit_edge, %do.body36.critedge.out_crit_edge
  %rc.0 = phi i32 [ 0, %cond.end64 ], [ 0, %land.rhs41.out_crit_edge ], [ 0, %qede_del_vlan_from_list.exit ], [ %call.i204, %cond.end126 ], [ %call134, %qede_del_vlan_from_list.exit236 ], [ 0, %do.body36.critedge.out_crit_edge ]
  call void @__qede_unlock(ptr noundef %add.ptr.i) #18
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qede_vlan_mark_nonconfigured(ptr noundef %edev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_list = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 33
  %0 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %vlan_list, align 4
  %cmp.i.not = icmp eq ptr %1, %vlan_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %vlan.060 = load ptr, ptr %vlan_list, align 4
  %cmp.not61 = icmp eq ptr %vlan.060, %vlan_list
  br i1 %cmp.not61, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %non_configured_vlans = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 35
  %configured_vlans = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 34
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %dp_module = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 4
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %vlan.062 = phi ptr [ %vlan.060, %for.body.lr.ph ], [ %vlan.0, %for.inc.for.body_crit_edge ]
  %configured = getelementptr inbounds %struct.qede_vlan, ptr %vlan.062, i32 0, i32 2
  %3 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %configured, align 2, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.end5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %5 = ptrtoint ptr %configured to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %configured, align 2
  %vid = getelementptr inbounds %struct.qede_vlan, ptr %vlan.062, i32 0, i32 1
  %6 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp7.not = icmp eq i16 %7, 0
  br i1 %cmp7.not, label %if.end5.do.body_crit_edge, label %if.then9

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  %8 = ptrtoint ptr %non_configured_vlans to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %non_configured_vlans, align 2
  %inc = add i16 %9, 1
  store i16 %inc, ptr %non_configured_vlans, align 2
  %10 = ptrtoint ptr %configured_vlans to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %configured_vlans, align 4
  %dec = add i16 %11, -1
  store i16 %dec, ptr %configured_vlans, align 4
  br label %do.body

do.body:                                          ; preds = %if.then9, %if.end5.do.body_crit_edge
  %12 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp12 = icmp eq i8 %13, 0
  br i1 %cmp12, label %land.rhs, label %do.body.for.inc_crit_edge

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.rhs:                                         ; preds = %do.body
  %14 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dp_module, align 8
  %and = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %land.rhs.for.inc_crit_edge, label %do.end, !prof !254

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

do.end:                                           ; preds = %land.rhs
  %16 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call ptr @strchr(ptr noundef %17, i32 noundef 37) #18
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool22.not = icmp eq ptr %17, null
  %or.cond = and i1 %tobool22.not, %tobool2.not.i
  %spec.select.i53 = select i1 %tobool2.not.i, ptr %17, ptr @.str.56
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i53
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.56, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %20 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vid, align 4
  %conv26 = zext i16 %21 to i32
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 901, ptr noundef %cond, i32 noundef %conv26) #21
  br label %for.inc

for.inc:                                          ; preds = %cond.end, %land.rhs.for.inc_crit_edge, %do.body.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %22 = ptrtoint ptr %vlan.062 to i32
  call void @__asan_load4_noabort(i32 %22)
  %vlan.0 = load ptr, ptr %vlan.062, align 4
  %cmp.not = icmp eq ptr %vlan.0, %vlan_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %accept_any_vlan = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 36
  %23 = ptrtoint ptr %accept_any_vlan to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %accept_any_vlan, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @qede_fix_features(ptr nocapture noundef readonly %dev, i64 noundef %features) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %xdp_prog = getelementptr i8, ptr %dev, i32 3600
  %0 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xdp_prog, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %ndev = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %5)
  %cmp = icmp ugt i32 %5, 4096
  %and = and i64 %features, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool2.not = icmp eq i64 %and, 0
  %or.cond = or i1 %tobool2.not, %cmp
  br i1 %or.cond, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %and3 = and i64 %features, -36028797018963969
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %features.addr.0 = phi i64 [ %and3, %if.then ], [ %features, %lor.lhs.false.if.end_crit_edge ]
  ret i64 %features.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_set_features(ptr noundef %dev, i64 noundef %features) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.qede_reload_args, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %features1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 36028797018963968
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not.not = icmp eq i64 %and, 0
  br i1 %tobool.not.not, label %entry.cleanup_crit_edge, label %if.then3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then3:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args) #18
  %2 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %args, align 8
  %u = getelementptr inbounds %struct.qede_reload_args, ptr %args, i32 0, i32 1
  %3 = ptrtoint ptr %u to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %features, ptr %u, align 8
  store ptr @qede_set_features_reload, ptr %args, align 8
  tail call void @__qede_lock(ptr noundef %add.ptr.i) #18
  %xdp_prog = getelementptr i8, ptr %dev, i32 3600
  %4 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xdp_prog, align 8
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args, align 8
  call void %7(ptr noundef %add.ptr.i, ptr noundef nonnull %args) #18
  br label %if.end7

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  call void @qede_reload(ptr noundef %add.ptr.i, ptr noundef nonnull %args, i1 noundef zeroext true) #18
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  call void @__qede_unlock(ptr noundef %add.ptr.i) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end7 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qede_set_features_reload(ptr nocapture noundef readonly %edev, ptr nocapture noundef readonly %args) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.qede_reload_args, ptr %args, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %u, align 8
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %1, ptr %features, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_reload(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qede_set_udp_tunnels(ptr nocapture noundef readonly %edev) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %vxlan_enable = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 10, i32 0, i32 21
  %0 = ptrtoint ptr %vxlan_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vxlan_enable, align 8, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %geneve_enable14 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 10, i32 0, i32 23
  %2 = ptrtoint ptr %geneve_enable14 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %geneve_enable14, align 2, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool15.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else11, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ndev9 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %4 = ptrtoint ptr %ndev9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev9, align 4
  %udp_tunnel_nic_info10 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 152
  br i1 %tobool15.not, label %if.then8, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %udp_tunnel_nic_info10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @qede_udp_tunnels_both, ptr %udp_tunnel_nic_info10, align 4
  br label %if.end20

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %7 = ptrtoint ptr %udp_tunnel_nic_info10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @qede_udp_tunnels_vxlan, ptr %udp_tunnel_nic_info10, align 4
  br label %if.end20

if.else11:                                        ; preds = %entry
  br i1 %tobool15.not, label %if.else11.if.end20_crit_edge, label %if.then16

if.else11.if.end20_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.then16:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #20
  %ndev17 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %8 = ptrtoint ptr %ndev17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev17, align 4
  %udp_tunnel_nic_info18 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 152
  %10 = ptrtoint ptr %udp_tunnel_nic_info18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @qede_udp_tunnels_geneve, ptr %udp_tunnel_nic_info18, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.else11.if.end20_crit_edge, %if.then8, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_xdp(ptr noundef %dev, ptr nocapture noundef readonly %xdp) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.qede_reload_args, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xdp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %prog = getelementptr inbounds %struct.netdev_bpf, ptr %xdp, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prog, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i) #18
  %4 = call ptr @memset(ptr %args.i, i32 255, i32 16)
  %5 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @qede_xdp_reload_func, ptr %args.i, align 8
  %u.i = getelementptr inbounds %struct.qede_reload_args, ptr %args.i, i32 0, i32 1
  %6 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %u.i, align 8
  call void @qede_reload(ptr noundef %add.ptr.i, ptr noundef nonnull %args.i, i1 noundef zeroext false) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #18
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_set_mac_addr(ptr noundef %ndev, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %ucast.i231 = alloca %struct.qed_filter_ucast_params, align 4
  %ucast.i = alloca %struct.qed_filter_ucast_params, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  tail call void @__qede_lock(ptr noundef %add.ptr.i) #18
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.body_crit_edge, label %if.end14

is_valid_ether_addr.exit.do.body_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

do.body:                                          ; preds = %is_valid_ether_addr.exit.do.body_crit_edge, %entry.do.body_crit_edge
  %dp_level = getelementptr i8, ptr %ndev, i32 2324
  %5 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp = icmp ult i8 %6, 3
  br i1 %cmp, label %do.end, label %do.body.out_crit_edge, !prof !252

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

do.end:                                           ; preds = %do.body
  %ndev6 = getelementptr i8, ptr %ndev, i32 2308
  %7 = ptrtoint ptr %ndev6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev6, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call ptr @strchr(ptr noundef %8, i32 noundef 37) #18
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool8.not = icmp eq ptr %8, null
  %or.cond = and i1 %tobool8.not, %tobool2.not.i
  %spec.select.i183 = select i1 %tobool2.not.i, ptr %8, ptr @.str.56
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i183
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.56, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef 1084, ptr noundef %cond) #21
  br label %out

if.end14:                                         ; preds = %is_valid_ether_addr.exit
  %ops = getelementptr i8, ptr %ndev, i32 2332
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %check_mac = getelementptr inbounds %struct.qed_eth_ops, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %check_mac to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %check_mac, align 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  %call17 = tail call zeroext i1 %14(ptr noundef %16, ptr noundef %sa_data) #18
  br i1 %call17, label %if.end50, label %do.body19

do.body19:                                        ; preds = %if.end14
  %dp_level20 = getelementptr i8, ptr %ndev, i32 2324
  %17 = ptrtoint ptr %dp_level20 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dp_level20, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cmp22 = icmp ult i8 %18, 3
  br i1 %cmp22, label %do.end33, label %do.body19.out_crit_edge, !prof !252

do.body19.out_crit_edge:                          ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

do.end33:                                         ; preds = %do.body19
  %ndev35 = getelementptr i8, ptr %ndev, i32 2308
  %19 = ptrtoint ptr %ndev35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ndev35, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i187 = icmp eq i8 %22, 0
  br i1 %tobool.not.i187, label %do.end33.cond.end42_crit_edge, label %lor.lhs.false.i191

do.end33.cond.end42_crit_edge:                    ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end42

lor.lhs.false.i191:                               ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #20
  %call.i188 = tail call ptr @strchr(ptr noundef %20, i32 noundef 37) #18
  %tobool2.not.i189 = icmp eq ptr %call.i188, null
  %tobool37.not = icmp eq ptr %20, null
  %or.cond254 = and i1 %tobool37.not, %tobool2.not.i189
  %spec.select.i197 = select i1 %tobool2.not.i189, ptr %20, ptr @.str.56
  %spec.select257 = select i1 %or.cond254, ptr @.str.3, ptr %spec.select.i197
  br label %cond.end42

cond.end42:                                       ; preds = %lor.lhs.false.i191, %do.end33.cond.end42_crit_edge
  %cond43 = phi ptr [ @.str.56, %do.end33.cond.end42_crit_edge ], [ %spec.select257, %lor.lhs.false.i191 ]
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, i32 noundef 1091, ptr noundef %cond43, ptr noundef %sa_data) #21
  br label %out

if.end50:                                         ; preds = %if.end14
  %state = getelementptr i8, ptr %ndev, i32 2548
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp51 = icmp eq i32 %24, 1
  br i1 %cmp51, label %if.then53, label %if.end50.if.end58_crit_edge

if.end50.if.end58_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end58

if.then53:                                        ; preds = %if.end50
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %25 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_addr, align 64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ucast.i) #18
  %27 = getelementptr inbounds i8, ptr %ucast.i, i32 4
  %28 = call ptr @memset(ptr %27, i32 0, i32 12)
  %29 = ptrtoint ptr %ucast.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %ucast.i, align 4
  %mac_valid.i = getelementptr inbounds %struct.qed_filter_ucast_params, ptr %ucast.i, i32 0, i32 3
  %30 = ptrtoint ptr %mac_valid.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %mac_valid.i, align 4
  %mac1.i = getelementptr inbounds %struct.qed_filter_ucast_params, ptr %ucast.i, i32 0, i32 4
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %26, align 4
  %33 = ptrtoint ptr %mac1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %mac1.i, align 4
  %add.ptr.i.i201 = getelementptr i8, ptr %26, i32 4
  %34 = ptrtoint ptr %add.ptr.i.i201 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr.i.i201, align 2
  %add.ptr1.i.i = getelementptr inbounds %struct.qed_filter_ucast_params, ptr %ucast.i, i32 0, i32 4, i32 4
  %36 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %add.ptr1.i.i, align 2
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops, align 4
  %filter_config_ucast.i = getelementptr inbounds %struct.qed_eth_ops, ptr %38, i32 0, i32 15
  %39 = ptrtoint ptr %filter_config_ucast.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %filter_config_ucast.i, align 4
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 8
  %call.i202 = call i32 %40(ptr noundef %42, ptr noundef nonnull %ucast.i) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ucast.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %tobool55.not = icmp eq i32 %call.i202, 0
  br i1 %tobool55.not, label %if.then53.if.end58_crit_edge, label %if.then53.out_crit_edge

if.then53.out_crit_edge:                          ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then53.if.end58_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end58

if.end58:                                         ; preds = %if.then53.if.end58_crit_edge, %if.end50.if.end58_crit_edge
  call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #18
  %dp_level62 = getelementptr i8, ptr %ndev, i32 2324
  %43 = ptrtoint ptr %dp_level62 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %dp_level62, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %44)
  %cmp64 = icmp ult i8 %44, 2
  br i1 %cmp64, label %do.end75, label %if.end58.do.end91_crit_edge, !prof !252

if.end58.do.end91_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end91

do.end75:                                         ; preds = %if.end58
  %ndev77 = getelementptr i8, ptr %ndev, i32 2308
  %45 = ptrtoint ptr %ndev77 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ndev77, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i203 = icmp eq i8 %48, 0
  br i1 %tobool.not.i203, label %do.end75.cond.end84_crit_edge, label %lor.lhs.false.i207

do.end75.cond.end84_crit_edge:                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end84

lor.lhs.false.i207:                               ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #20
  %call.i204 = call ptr @strchr(ptr noundef %46, i32 noundef 37) #18
  %tobool2.not.i205 = icmp eq ptr %call.i204, null
  %tobool79.not = icmp eq ptr %46, null
  %or.cond255 = and i1 %tobool79.not, %tobool2.not.i205
  %spec.select.i213 = select i1 %tobool2.not.i205, ptr %46, ptr @.str.56
  %spec.select258 = select i1 %or.cond255, ptr @.str.3, ptr %spec.select.i213
  br label %cond.end84

cond.end84:                                       ; preds = %lor.lhs.false.i207, %do.end75.cond.end84_crit_edge
  %cond85 = phi ptr [ @.str.56, %do.end75.cond.end84_crit_edge ], [ %spec.select258, %lor.lhs.false.i207 ]
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.40, i32 noundef 1105, ptr noundef %cond85, ptr noundef %sa_data) #21
  br label %do.end91

do.end91:                                         ; preds = %cond.end84, %if.end58.do.end91_crit_edge
  %49 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp93.not = icmp eq i32 %50, 1
  br i1 %cmp93.not, label %if.end137, label %do.body96

do.body96:                                        ; preds = %do.end91
  %51 = ptrtoint ptr %dp_level62 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %dp_level62, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp99 = icmp eq i8 %52, 0
  br i1 %cmp99, label %land.rhs, label %do.body96.do.end125_crit_edge

do.body96.do.end125_crit_edge:                    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end125

land.rhs:                                         ; preds = %do.body96
  %dp_module = getelementptr i8, ptr %ndev, i32 2320
  %53 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dp_module, align 8
  %and = and i32 %54, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool101.not = icmp eq i32 %and, 0
  br i1 %tobool101.not, label %land.rhs.do.end125_crit_edge, label %do.end111, !prof !254

land.rhs.do.end125_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end125

do.end111:                                        ; preds = %land.rhs
  %ndev113 = getelementptr i8, ptr %ndev, i32 2308
  %55 = ptrtoint ptr %ndev113 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ndev113, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i217 = icmp eq i8 %58, 0
  br i1 %tobool.not.i217, label %do.end111.cond.end120_crit_edge, label %lor.lhs.false.i221

do.end111.cond.end120_crit_edge:                  ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end120

lor.lhs.false.i221:                               ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #20
  %call.i218 = call ptr @strchr(ptr noundef %56, i32 noundef 37) #18
  %tobool2.not.i219 = icmp eq ptr %call.i218, null
  %tobool115.not = icmp eq ptr %56, null
  %or.cond256 = and i1 %tobool115.not, %tobool2.not.i219
  %spec.select.i227 = select i1 %tobool2.not.i219, ptr %56, ptr @.str.56
  %spec.select259 = select i1 %or.cond256, ptr @.str.3, ptr %spec.select.i227
  br label %cond.end120

cond.end120:                                      ; preds = %lor.lhs.false.i221, %do.end111.cond.end120_crit_edge
  %cond121 = phi ptr [ @.str.56, %do.end111.cond.end120_crit_edge ], [ %spec.select259, %lor.lhs.false.i221 ]
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.40, i32 noundef 1109, ptr noundef %cond121) #21
  br label %do.end125

do.end125:                                        ; preds = %cond.end120, %land.rhs.do.end125_crit_edge, %do.body96.do.end125_crit_edge
  %flags = getelementptr i8, ptr %ndev, i32 2328
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool127.not = icmp eq i32 %and1.i, 0
  br i1 %tobool127.not, label %do.end125.out_crit_edge, label %land.lhs.true

do.end125.out_crit_edge:                          ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

land.lhs.true:                                    ; preds = %do.end125
  %61 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops, align 4
  %req_bulletin_update_mac = getelementptr inbounds %struct.qed_eth_ops, ptr %62, i32 0, i32 24
  %63 = ptrtoint ptr %req_bulletin_update_mac to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %req_bulletin_update_mac, align 4
  %tobool129.not = icmp eq ptr %64, null
  br i1 %tobool129.not, label %land.lhs.true.out_crit_edge, label %if.then130

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then130:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i, align 8
  %dev_addr134 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %67 = ptrtoint ptr %dev_addr134 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_addr134, align 64
  %call135 = call i32 %64(ptr noundef %66, ptr noundef %68) #18
  br label %out

if.end137:                                        ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #20
  %69 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %update_mac = getelementptr inbounds %struct.qed_common_ops, ptr %72, i32 0, i32 36
  %73 = ptrtoint ptr %update_mac to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %update_mac, align 4
  %75 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %add.ptr.i, align 8
  %dev_addr140 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %77 = ptrtoint ptr %dev_addr140 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_addr140, align 64
  %call141 = call i32 %74(ptr noundef %76, ptr noundef %78) #18
  %79 = ptrtoint ptr %dev_addr140 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev_addr140, align 64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ucast.i231) #18
  %mac_valid.i232 = getelementptr inbounds %struct.qed_filter_ucast_params, ptr %ucast.i231, i32 0, i32 3
  %81 = call ptr @memset(ptr %ucast.i231, i32 0, i32 16)
  %82 = ptrtoint ptr %mac_valid.i232 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %mac_valid.i232, align 4
  %mac1.i233 = getelementptr inbounds %struct.qed_filter_ucast_params, ptr %ucast.i231, i32 0, i32 4
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %80, align 4
  %85 = ptrtoint ptr %mac1.i233 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %mac1.i233, align 4
  %add.ptr.i.i234 = getelementptr i8, ptr %80, i32 4
  %86 = ptrtoint ptr %add.ptr.i.i234 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %add.ptr.i.i234, align 2
  %add.ptr1.i.i235 = getelementptr inbounds %struct.qed_filter_ucast_params, ptr %ucast.i231, i32 0, i32 4, i32 4
  %88 = ptrtoint ptr %add.ptr1.i.i235 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %add.ptr1.i.i235, align 2
  %89 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ops, align 4
  %filter_config_ucast.i237 = getelementptr inbounds %struct.qed_eth_ops, ptr %90, i32 0, i32 15
  %91 = ptrtoint ptr %filter_config_ucast.i237 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %filter_config_ucast.i237, align 4
  %93 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %add.ptr.i, align 8
  %call.i238 = call i32 %92(ptr noundef %94, ptr noundef nonnull %ucast.i231) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ucast.i231) #18
  br label %out

out:                                              ; preds = %if.end137, %if.then130, %land.lhs.true.out_crit_edge, %do.end125.out_crit_edge, %if.then53.out_crit_edge, %cond.end42, %do.body19.out_crit_edge, %cond.end, %do.body.out_crit_edge
  %rc.1 = phi i32 [ %call.i202, %if.then53.out_crit_edge ], [ 0, %if.then130 ], [ 0, %land.lhs.true.out_crit_edge ], [ 0, %do.end125.out_crit_edge ], [ %call.i238, %if.end137 ], [ -14, %cond.end ], [ -14, %do.body.out_crit_edge ], [ -22, %cond.end42 ], [ -22, %do.body19.out_crit_edge ]
  call void @__qede_unlock(ptr noundef %add.ptr.i) #18
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qede_set_rx_mode(ptr noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sp_flags = getelementptr i8, ptr %ndev, i32 3496
  tail call void @_set_bit(i32 noundef 1, ptr noundef %sp_flags) #18
  %sp_task = getelementptr i8, ptr %ndev, i32 3396
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %sp_task, i32 noundef 0) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qede_config_rx_mode(ptr noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  %mcast.i81.i = alloca %struct.qed_filter_mcast_params, align 4
  %mcast.i.i = alloca %struct.qed_filter_mcast_params, align 4
  %ucast.i126 = alloca %struct.qed_filter_ucast_params, align 4
  %ucast.i = alloca %struct.qed_filter_ucast_params, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %nested_level.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 73
  %0 = ptrtoint ptr %nested_level.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nested_level.i, align 1
  tail call fastcc void @local_bh_disable() #18
  %addr_list_lock.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 63
  %conv.i = zext i8 %1 to i32
  tail call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i, i32 noundef %conv.i) #18
  %uc = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 65
  %count = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 65, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  %mul = mul i32 %3, 6
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 2848) #22
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %do.body, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %uc to i32
  call void @__asan_load4_noabort(i32 %4)
  %ha.0152 = load ptr, ptr %uc, align 4
  %cmp21.not153 = icmp eq ptr %ha.0152, %uc
  br i1 %cmp21.not153, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

do.body:                                          ; preds = %entry
  %dp_level = getelementptr i8, ptr %ndev, i32 2324
  %5 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp = icmp ult i8 %6, 3
  br i1 %cmp, label %do.end, label %do.body.do.end14_crit_edge, !prof !252

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end14

do.end:                                           ; preds = %do.body
  %ndev7 = getelementptr i8, ptr %ndev, i32 2308
  %7 = ptrtoint ptr %ndev7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev7, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call ptr @strchr(ptr noundef %8, i32 noundef 37) #18
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool9.not = icmp eq ptr %8, null
  %or.cond = and i1 %tobool9.not, %tobool2.not.i
  %spec.select.i118 = select i1 %tobool2.not.i, ptr %8, ptr @.str.56
  %spec.select162 = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i118
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.56, %do.end.cond.end_crit_edge ], [ %spec.select162, %lor.lhs.false.i ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef 1206, ptr noundef %cond) #21
  br label %do.end14

do.end14:                                         ; preds = %cond.end, %do.body.do.end14_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i) #18
  br label %cleanup72

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ha.0155 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.0152, %for.cond.preheader.for.body_crit_edge ]
  %temp.0154 = phi ptr [ %add.ptr25, %for.body.for.body_crit_edge ], [ %call9.i.i, %for.cond.preheader.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0155, i32 0, i32 2
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr, align 4
  %13 = ptrtoint ptr %temp.0154 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %temp.0154, align 4
  %add.ptr.i123 = getelementptr %struct.netdev_hw_addr, ptr %ha.0155, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %add.ptr.i123 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i123, align 2
  %add.ptr1.i = getelementptr i8, ptr %temp.0154, i32 4
  %16 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %add.ptr1.i, align 2
  %add.ptr25 = getelementptr i8, ptr %temp.0154, i32 6
  %17 = ptrtoint ptr %ha.0155 to i32
  call void @__asan_load4_noabort(i32 %17)
  %ha.0 = load ptr, ptr %ha.0155, align 4
  %cmp21.not = icmp eq ptr %ha.0, %uc
  br i1 %cmp21.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i) #18
  %ndev31 = getelementptr i8, ptr %ndev, i32 2308
  %18 = ptrtoint ptr %ndev31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndev31, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 86
  %20 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_addr, align 64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ucast.i) #18
  %22 = getelementptr inbounds i8, ptr %ucast.i, i32 4
  %23 = call ptr @memset(ptr %22, i32 0, i32 12)
  %24 = ptrtoint ptr %ucast.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %ucast.i, align 4
  %mac_valid.i = getelementptr inbounds %struct.qed_filter_ucast_params, ptr %ucast.i, i32 0, i32 3
  %25 = ptrtoint ptr %mac_valid.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %mac_valid.i, align 4
  %mac1.i = getelementptr inbounds %struct.qed_filter_ucast_params, ptr %ucast.i, i32 0, i32 4
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %21, align 4
  %28 = ptrtoint ptr %mac1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %mac1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr inbounds %struct.qed_filter_ucast_params, ptr %ucast.i, i32 0, i32 4, i32 4
  %31 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %add.ptr1.i.i, align 2
  %ops.i = getelementptr i8, ptr %ndev, i32 2332
  %32 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i, align 4
  %filter_config_ucast.i = getelementptr inbounds %struct.qed_eth_ops, ptr %33, i32 0, i32 15
  %34 = ptrtoint ptr %filter_config_ucast.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %filter_config_ucast.i, align 4
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 8
  %call.i125 = call i32 %35(ptr noundef %37, ptr noundef nonnull %ucast.i) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ucast.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool33.not = icmp eq i32 %call.i125, 0
  br i1 %tobool33.not, label %if.end35, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end35:                                         ; preds = %for.end
  %flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 8
  %and = lshr i32 %39, 7
  %40 = and i32 %and, 2
  %num_mac_filters = getelementptr i8, ptr %ndev, i32 2422
  %41 = ptrtoint ptr %num_mac_filters to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %num_mac_filters, align 2
  %conv39 = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv39)
  %cmp40 = icmp slt i32 %3, %conv39
  br i1 %cmp40, label %for.cond43.preheader, label %if.end35.if.end55_crit_edge

if.end35.if.end55_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end55

for.cond43.preheader:                             ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp44156 = icmp sgt i32 %3, 0
  br i1 %cmp44156, label %for.body46.lr.ph, label %for.cond43.preheader.if.end55_crit_edge

for.cond43.preheader.if.end55_crit_edge:          ; preds = %for.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end55

for.body46.lr.ph:                                 ; preds = %for.cond43.preheader
  %mac_valid.i127 = getelementptr inbounds %struct.qed_filter_ucast_params, ptr %ucast.i126, i32 0, i32 3
  %mac1.i128 = getelementptr inbounds %struct.qed_filter_ucast_params, ptr %ucast.i126, i32 0, i32 4
  %add.ptr1.i.i130 = getelementptr inbounds %struct.qed_filter_ucast_params, ptr %ucast.i126, i32 0, i32 4, i32 4
  br label %for.body46

for.body46:                                       ; preds = %if.end50.for.body46_crit_edge, %for.body46.lr.ph
  %i.0158 = phi i32 [ 0, %for.body46.lr.ph ], [ %inc, %if.end50.for.body46_crit_edge ]
  %temp.1157 = phi ptr [ %call9.i.i, %for.body46.lr.ph ], [ %add.ptr51, %if.end50.for.body46_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ucast.i126) #18
  %43 = call ptr @memset(ptr %ucast.i126, i32 0, i32 16)
  %44 = ptrtoint ptr %mac_valid.i127 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %mac_valid.i127, align 4
  %45 = ptrtoint ptr %temp.1157 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %temp.1157, align 4
  %47 = ptrtoint ptr %mac1.i128 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %mac1.i128, align 4
  %add.ptr.i.i129 = getelementptr i8, ptr %temp.1157, i32 4
  %48 = ptrtoint ptr %add.ptr.i.i129 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %add.ptr.i.i129, align 2
  %50 = ptrtoint ptr %add.ptr1.i.i130 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %add.ptr1.i.i130, align 2
  %51 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i, align 4
  %filter_config_ucast.i132 = getelementptr inbounds %struct.qed_eth_ops, ptr %52, i32 0, i32 15
  %53 = ptrtoint ptr %filter_config_ucast.i132 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %filter_config_ucast.i132, align 4
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i, align 8
  %call.i133 = call i32 %54(ptr noundef %56, ptr noundef nonnull %ucast.i126) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ucast.i126) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %tobool48.not = icmp eq i32 %call.i133, 0
  br i1 %tobool48.not, label %if.end50, label %for.body46.out_crit_edge

for.body46.out_crit_edge:                         ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end50:                                         ; preds = %for.body46
  %add.ptr51 = getelementptr i8, ptr %temp.1157, i32 6
  %inc = add nuw nsw i32 %i.0158, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %if.end50.if.end55_crit_edge, label %if.end50.for.body46_crit_edge

if.end50.for.body46_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body46

if.end50.if.end55_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end55

if.end55:                                         ; preds = %if.end50.if.end55_crit_edge, %for.cond43.preheader.if.end55_crit_edge, %if.end35.if.end55_crit_edge
  %accept_flags.0 = phi i32 [ 2, %if.end35.if.end55_crit_edge ], [ %40, %for.cond43.preheader.if.end55_crit_edge ], [ %40, %if.end50.if.end55_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3520, i32 noundef 384) #24
  %tobool.not.i135 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i135, label %do.body.i, label %if.end15.i

do.body.i:                                        ; preds = %if.end55
  %dp_level.i = getelementptr i8, ptr %ndev, i32 2324
  %58 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %59)
  %cmp.i = icmp ult i8 %59, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.qede_configure_mcast_filtering.exit.thread_crit_edge, !prof !252

do.body.i.qede_configure_mcast_filtering.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %qede_configure_mcast_filtering.exit.thread

do.end.i:                                         ; preds = %do.body.i
  %60 = ptrtoint ptr %ndev31 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ndev31, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i.i = icmp eq i8 %63, 0
  br i1 %tobool.not.i.i, label %do.end.i.cond.end.i_crit_edge, label %lor.lhs.false.i.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end.i

lor.lhs.false.i.i:                                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i = call ptr @strchr(ptr noundef %61, i32 noundef 37) #18
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  %tobool9.not.i = icmp eq ptr %61, null
  %or.cond100.i = and i1 %tobool9.not.i, %tobool2.not.i.i
  %spec.select.i73.i = select i1 %tobool2.not.i.i, ptr %61, ptr @.str.56
  %spec.select.i136 = select i1 %or.cond100.i, ptr @.str.3, ptr %spec.select.i73.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %lor.lhs.false.i.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ @.str.56, %do.end.i.cond.end.i_crit_edge ], [ %spec.select.i136, %lor.lhs.false.i.i ]
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 1141, ptr noundef %cond.i) #21
  br label %qede_configure_mcast_filtering.exit.thread

if.end15.i:                                       ; preds = %if.end55
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %mcast.i.i) #18
  %64 = getelementptr inbounds i8, ptr %mcast.i.i, i32 4
  %65 = getelementptr inbounds i8, ptr %mcast.i.i, i32 8
  %66 = call ptr @memset(ptr %65, i32 0, i32 384)
  %67 = ptrtoint ptr %mcast.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %mcast.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %64, align 4
  %arrayidx.i.i = getelementptr inbounds %struct.qed_filter_mcast_params, ptr %mcast.i.i, i32 0, i32 2, i32 0
  %69 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %call7.i.i.i, align 8
  %71 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 4
  %72 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %add.ptr.i.i.i, align 4
  %add.ptr1.i.i.i = getelementptr inbounds %struct.qed_filter_mcast_params, ptr %mcast.i.i, i32 0, i32 2, i32 0, i32 4
  %74 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %add.ptr1.i.i.i, align 2
  %75 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops.i, align 4
  %filter_config_mcast.i.i = getelementptr inbounds %struct.qed_eth_ops, ptr %76, i32 0, i32 16
  %77 = ptrtoint ptr %filter_config_mcast.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %filter_config_mcast.i.i, align 4
  %79 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i, align 8
  %call.i78.i = call i32 %78(ptr noundef %80, ptr noundef nonnull %mcast.i.i) #18
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %mcast.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.i)
  %tobool17.not.i = icmp eq i32 %call.i78.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end15.i.qede_configure_mcast_filtering.exit.thread_crit_edge

if.end15.i.qede_configure_mcast_filtering.exit.thread_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %qede_configure_mcast_filtering.exit.thread

if.end19.i:                                       ; preds = %if.end15.i
  %81 = ptrtoint ptr %nested_level.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %nested_level.i, align 1
  call fastcc void @local_bh_disable() #18
  %conv.i.i = zext i8 %82 to i32
  call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i, i32 noundef %conv.i.i) #18
  %mc.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66
  %count.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66, i32 1
  %83 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %84)
  %cmp20.i = icmp slt i32 %84, 65
  br i1 %cmp20.i, label %for.cond.preheader.i, label %if.end19.i.if.end38.i_crit_edge

if.end19.i.if.end38.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38.i

for.cond.preheader.i:                             ; preds = %if.end19.i
  %85 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %ha.0101.i = load ptr, ptr %mc.i, align 4
  %cmp28.not102.i = icmp eq ptr %ha.0101.i, %mc.i
  br i1 %cmp28.not102.i, label %for.cond.preheader.i.if.end38.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end38.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %ha.0104.i = phi ptr [ %ha.0.i, %for.body.i.for.body.i_crit_edge ], [ %ha.0101.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %temp.0103.i = phi ptr [ %add.ptr32.i, %for.body.i.for.body.i_crit_edge ], [ %call7.i.i.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0104.i, i32 0, i32 2
  %86 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %addr.i, align 4
  %88 = ptrtoint ptr %temp.0103.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %temp.0103.i, align 4
  %add.ptr.i79.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0104.i, i32 0, i32 2, i32 4
  %89 = ptrtoint ptr %add.ptr.i79.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %add.ptr.i79.i, align 2
  %add.ptr1.i.i137 = getelementptr i8, ptr %temp.0103.i, i32 4
  %91 = ptrtoint ptr %add.ptr1.i.i137 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %add.ptr1.i.i137, align 2
  %add.ptr32.i = getelementptr i8, ptr %temp.0103.i, i32 6
  %92 = ptrtoint ptr %ha.0104.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %ha.0.i = load ptr, ptr %ha.0104.i, align 4
  %cmp28.not.i = icmp eq ptr %ha.0.i, %mc.i
  br i1 %cmp28.not.i, label %for.body.i.if.end38.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.body.i.if.end38.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38.i

if.end38.i:                                       ; preds = %for.body.i.if.end38.i_crit_edge, %for.cond.preheader.i.if.end38.i_crit_edge, %if.end19.i.if.end38.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i) #18
  %93 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags, align 8
  %and.i = and i32 %94, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool39.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %84)
  %cmp40.i = icmp sgt i32 %84, 64
  %or.cond.i = select i1 %tobool39.not.i, i1 true, i1 %cmp40.i
  br i1 %or.cond.i, label %if.then42.i, label %if.else.i

if.then42.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %accept_flags.0)
  %cmp43.i = icmp eq i32 %accept_flags.0, 0
  %spec.select = select i1 %cmp43.i, i32 1, i32 %accept_flags.0
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #18
  br label %if.end59

if.else.i:                                        ; preds = %if.end38.i
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %mcast.i81.i) #18
  %95 = getelementptr inbounds i8, ptr %mcast.i81.i, i32 4
  %conv.i82.i = trunc i32 %84 to i8
  %96 = call ptr @memset(ptr %mcast.i81.i, i32 0, i32 392)
  %97 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv.i82.i, ptr %95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp8.i.i = icmp sgt i32 %84, 0
  br i1 %cmp8.i.i, label %if.else.i.for.body.i92.i_crit_edge, label %if.else.i.qede_configure_mcast_filtering.exit_crit_edge

if.else.i.qede_configure_mcast_filtering.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %qede_configure_mcast_filtering.exit

if.else.i.for.body.i92.i_crit_edge:               ; preds = %if.else.i
  br label %for.body.i92.i

for.body.i92.i:                                   ; preds = %for.body.i92.i.for.body.i92.i_crit_edge, %if.else.i.for.body.i92.i_crit_edge
  %i.010.i84.i = phi i32 [ %inc.i89.i, %for.body.i92.i.for.body.i92.i_crit_edge ], [ 0, %if.else.i.for.body.i92.i_crit_edge ]
  %mac.addr.09.i85.i = phi ptr [ %add.ptr.i90.i, %for.body.i92.i.for.body.i92.i_crit_edge ], [ %call7.i.i.i, %if.else.i.for.body.i92.i_crit_edge ]
  %arrayidx.i86.i = getelementptr %struct.qed_filter_mcast_params, ptr %mcast.i81.i, i32 0, i32 2, i32 %i.010.i84.i
  %98 = ptrtoint ptr %mac.addr.09.i85.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mac.addr.09.i85.i, align 4
  %100 = ptrtoint ptr %arrayidx.i86.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %arrayidx.i86.i, align 4
  %add.ptr.i.i87.i = getelementptr i8, ptr %mac.addr.09.i85.i, i32 4
  %101 = ptrtoint ptr %add.ptr.i.i87.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %add.ptr.i.i87.i, align 2
  %add.ptr1.i.i88.i = getelementptr i8, ptr %arrayidx.i86.i, i32 4
  %103 = ptrtoint ptr %add.ptr1.i.i88.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %add.ptr1.i.i88.i, align 2
  %inc.i89.i = add nuw nsw i32 %i.010.i84.i, 1
  %add.ptr.i90.i = getelementptr i8, ptr %mac.addr.09.i85.i, i32 6
  %exitcond.not.i91.i = icmp eq i32 %inc.i89.i, %84
  br i1 %exitcond.not.i91.i, label %for.body.i92.i.qede_configure_mcast_filtering.exit_crit_edge, label %for.body.i92.i.for.body.i92.i_crit_edge

for.body.i92.i.for.body.i92.i_crit_edge:          ; preds = %for.body.i92.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i92.i

for.body.i92.i.qede_configure_mcast_filtering.exit_crit_edge: ; preds = %for.body.i92.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %qede_configure_mcast_filtering.exit

qede_configure_mcast_filtering.exit.thread:       ; preds = %if.end15.i.qede_configure_mcast_filtering.exit.thread_crit_edge, %cond.end.i, %do.body.i.qede_configure_mcast_filtering.exit.thread_crit_edge
  call void @kfree(ptr noundef %call7.i.i.i) #18
  br label %out

qede_configure_mcast_filtering.exit:              ; preds = %for.body.i92.i.qede_configure_mcast_filtering.exit_crit_edge, %if.else.i.qede_configure_mcast_filtering.exit_crit_edge
  %104 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ops.i, align 4
  %filter_config_mcast.i94.i = getelementptr inbounds %struct.qed_eth_ops, ptr %105, i32 0, i32 16
  %106 = ptrtoint ptr %filter_config_mcast.i94.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %filter_config_mcast.i94.i, align 4
  %108 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %add.ptr.i, align 8
  %call.i95.i = call i32 %107(ptr noundef %109, ptr noundef nonnull %mcast.i81.i) #18
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %mcast.i81.i) #18
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95.i)
  %tobool57.not = icmp eq i32 %call.i95.i, 0
  br i1 %tobool57.not, label %qede_configure_mcast_filtering.exit.if.end59_crit_edge, label %qede_configure_mcast_filtering.exit.out_crit_edge

qede_configure_mcast_filtering.exit.out_crit_edge: ; preds = %qede_configure_mcast_filtering.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

qede_configure_mcast_filtering.exit.if.end59_crit_edge: ; preds = %qede_configure_mcast_filtering.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end59

if.end59:                                         ; preds = %qede_configure_mcast_filtering.exit.if.end59_crit_edge, %if.then42.i
  %accept_flags.1151 = phi i32 [ %spec.select, %if.then42.i ], [ %accept_flags.0, %qede_configure_mcast_filtering.exit.if.end59_crit_edge ]
  %110 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flags, align 8
  %and61 = and i32 %111, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.else65, label %if.end59.if.end70.sink.split_crit_edge

if.end59.if.end70.sink.split_crit_edge:           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end70.sink.split

if.else65:                                        ; preds = %if.end59
  %non_configured_vlans = getelementptr i8, ptr %ndev, i32 3390
  %112 = ptrtoint ptr %non_configured_vlans to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %non_configured_vlans, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool66.not = icmp eq i16 %113, 0
  br i1 %tobool66.not, label %if.else65.if.end70.sink.split_crit_edge, label %if.else65.if.end70_crit_edge

if.else65.if.end70_crit_edge:                     ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end70

if.else65.if.end70.sink.split_crit_edge:          ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end70.sink.split

if.end70.sink.split:                              ; preds = %if.else65.if.end70.sink.split_crit_edge, %if.end59.if.end70.sink.split_crit_edge
  %114 = xor i1 %tobool62.not, true
  %call68 = call fastcc i32 @qede_config_accept_any_vlan(ptr noundef %add.ptr.i, i1 noundef zeroext %114)
  br label %if.end70

if.end70:                                         ; preds = %if.end70.sink.split, %if.else65.if.end70_crit_edge
  %115 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ops.i, align 4
  %filter_config_rx_mode = getelementptr inbounds %struct.qed_eth_ops, ptr %116, i32 0, i32 14
  %117 = ptrtoint ptr %filter_config_rx_mode to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %filter_config_rx_mode, align 4
  %119 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %add.ptr.i, align 8
  %call71 = call i32 %118(ptr noundef %120, i32 noundef %accept_flags.1151) #18
  br label %out

out:                                              ; preds = %if.end70, %qede_configure_mcast_filtering.exit.out_crit_edge, %qede_configure_mcast_filtering.exit.thread, %for.body46.out_crit_edge, %for.end.out_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #18
  br label %cleanup72

cleanup72:                                        ; preds = %out, %do.end14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_get_cls_rule_all(ptr noundef %edev, ptr nocapture noundef %info, ptr nocapture noundef writeonly %rule_locs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 256, ptr %data, align 8
  tail call void @__qede_lock(ptr noundef %edev) #18
  %arfs = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 41
  %1 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arfs, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool2.not = icmp eq ptr %4, null
  %add.ptr = getelementptr i8, ptr %4, i32 -100
  %tobool4.not3639 = icmp eq ptr %add.ptr, null
  %tobool4.not36 = or i1 %tobool2.not, %tobool4.not3639
  br i1 %tobool4.not36, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %5 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %for.body.lr.ph
  %fltr.038 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr14, %if.end6.for.body_crit_edge ]
  %cnt.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end6.for.body_crit_edge ]
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.037, i32 %7)
  %cmp = icmp eq i32 %cnt.037, %7
  br i1 %cmp, label %for.body.unlock_crit_edge, label %if.end6

for.body.unlock_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.end6:                                          ; preds = %for.body
  %sw_id = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.038, i32 0, i32 6
  %8 = ptrtoint ptr %sw_id to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sw_id, align 8
  %conv = trunc i64 %9 to i32
  %arrayidx7 = getelementptr i32, ptr %rule_locs, i32 %cnt.037
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %arrayidx7, align 4
  %inc = add i32 %cnt.037, 1
  %node = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.038, i32 0, i32 14
  %11 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %node, align 4
  %tobool10.not = icmp eq ptr %12, null
  %add.ptr14 = getelementptr i8, ptr %12, i32 -100
  %tobool4.not40 = icmp eq ptr %add.ptr14, null
  %tobool4.not = or i1 %tobool10.not, %tobool4.not40
  br i1 %tobool4.not, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %if.end6.for.end_crit_edge, %if.end.for.end_crit_edge
  %cnt.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %inc, %if.end6.for.end_crit_edge ]
  %13 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cnt.0.lcssa, ptr %13, align 8
  br label %unlock

unlock:                                           ; preds = %for.end, %for.body.unlock_crit_edge, %entry.unlock_crit_edge
  %rc.0 = phi i32 [ 0, %for.end ], [ -1, %entry.unlock_crit_edge ], [ -90, %for.body.unlock_crit_edge ]
  tail call void @__qede_unlock(ptr noundef %edev) #18
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_get_cls_rule_entry(ptr noundef %edev, ptr nocapture noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %fs = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 256, ptr %data, align 8
  tail call void @__qede_lock(ptr noundef %edev) #18
  %arfs = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 41
  %1 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arfs, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.end:                                           ; preds = %entry
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %3 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %location, align 8
  %conv = zext i32 %4 to i64
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %tobool.not.i = icmp eq ptr %6, null
  %add.ptr.i = getelementptr i8, ptr %6, i32 -100
  %tobool2.not2225.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not22.i = or i1 %tobool.not.i, %tobool2.not2225.i
  br i1 %tobool2.not22.i, label %if.end.do.body_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %fltr.023.i = phi ptr [ %add.ptr9.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end.for.body.i_crit_edge ]
  %sw_id.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.023.i, i32 0, i32 6
  %7 = ptrtoint ptr %sw_id.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %sw_id.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %conv)
  %cmp.i = icmp eq i64 %8, %conv
  br i1 %cmp.i, label %if.end19, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %node.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.023.i, i32 0, i32 14
  %9 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node.i, align 4
  %tobool5.not.i = icmp eq ptr %10, null
  %add.ptr9.i = getelementptr i8, ptr %10, i32 -100
  %tobool2.not26.i = icmp eq ptr %add.ptr9.i, null
  %tobool2.not.i = or i1 %tobool5.not.i, %tobool2.not26.i
  br i1 %tobool2.not.i, label %for.inc.i.do.body_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.do.body_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

do.body:                                          ; preds = %for.inc.i.do.body_crit_edge, %if.end.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %11 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp = icmp ult i8 %12, 3
  br i1 %cmp, label %do.end, label %do.body.unlock_crit_edge, !prof !252

do.body.unlock_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

do.end:                                           ; preds = %do.body
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %13 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i114 = icmp eq i8 %16, 0
  br i1 %tobool.not.i114, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call ptr @strchr(ptr noundef %14, i32 noundef 37) #18
  %tobool2.not.i115 = icmp eq ptr %call.i, null
  %tobool11.not = icmp eq ptr %14, null
  %or.cond = and i1 %tobool11.not, %tobool2.not.i115
  %spec.select.i119 = select i1 %tobool2.not.i115, ptr %14, ptr @.str.56
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i119
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.56, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef 1337, ptr noundef %cond, i32 noundef %4) #21
  br label %unlock

if.end19:                                         ; preds = %for.body.i
  %tuple = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.023.i, i32 0, i32 4
  %eth_proto = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.023.i, i32 0, i32 4, i32 4
  %17 = ptrtoint ptr %eth_proto to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %eth_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %18)
  %cmp21 = icmp eq i16 %18, 2048
  %ip_proto = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.023.i, i32 0, i32 4, i32 5
  %19 = ptrtoint ptr %ip_proto to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ip_proto, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %20)
  %cmp26 = icmp eq i8 %20, 6
  br i1 %cmp21, label %if.then23, label %if.else38

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  %. = select i1 %cmp26, i32 1, i32 2
  %21 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %., ptr %fs, align 8
  %src_port = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.023.i, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %src_port to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %src_port, align 8
  %h_u = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %psrc = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %24 = ptrtoint ptr %psrc to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %psrc, align 4
  %dst_port = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.023.i, i32 0, i32 4, i32 3
  %25 = ptrtoint ptr %dst_port to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %dst_port, align 2
  %pdst = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %h_u, i32 0, i32 3
  %27 = ptrtoint ptr %pdst to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %pdst, align 2
  %28 = ptrtoint ptr %tuple to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tuple, align 8
  %30 = ptrtoint ptr %h_u to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %h_u, align 4
  %31 = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.023.i, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %ip4dst = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %ip4dst to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %ip4dst, align 4
  br label %if.end61

if.else38:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  %.113 = select i1 %cmp26, i32 5, i32 6
  %35 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.113, ptr %fs, align 8
  %src_port50 = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.023.i, i32 0, i32 4, i32 2
  %36 = ptrtoint ptr %src_port50 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %src_port50, align 8
  %h_u51 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %psrc52 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 2
  %38 = ptrtoint ptr %psrc52 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %psrc52, align 4
  %dst_port54 = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.023.i, i32 0, i32 4, i32 3
  %39 = ptrtoint ptr %dst_port54 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %dst_port54, align 2
  %pdst56 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 3
  %41 = ptrtoint ptr %pdst56 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %pdst56, align 2
  %42 = call ptr @memcpy(ptr %h_u51, ptr %tuple, i32 16)
  %ip6dst = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 1
  %43 = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.023.i, i32 0, i32 4, i32 1
  %44 = call ptr @memcpy(ptr %ip6dst, ptr %43, i32 16)
  br label %if.end61

if.end61:                                         ; preds = %if.else38, %if.then23
  %rxq_id = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.023.i, i32 0, i32 7
  %45 = ptrtoint ptr %rxq_id to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %rxq_id, align 8
  %conv62 = zext i16 %46 to i64
  %ring_cookie = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 5
  %47 = ptrtoint ptr %ring_cookie to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv62, ptr %ring_cookie, align 8
  %vfid = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.023.i, i32 0, i32 9
  %48 = ptrtoint ptr %vfid to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %vfid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool63.not = icmp eq i8 %49, 0
  br i1 %tobool63.not, label %if.end61.if.end68_crit_edge, label %if.then64

if.end61.if.end68_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end68

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  %conv66 = zext i8 %49 to i64
  %shl = shl nuw nsw i64 %conv66, 32
  %or = or i64 %shl, %conv62
  %50 = ptrtoint ptr %ring_cookie to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %or, ptr %ring_cookie, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %if.end61.if.end68_crit_edge
  %b_is_drop = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.023.i, i32 0, i32 13
  %51 = ptrtoint ptr %b_is_drop to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %b_is_drop, align 8, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool69.not = icmp eq i8 %52, 0
  br i1 %tobool69.not, label %if.end68.unlock_crit_edge, label %if.then70

if.end68.unlock_crit_edge:                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.then70:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #20
  %53 = ptrtoint ptr %ring_cookie to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 -1, ptr %ring_cookie, align 8
  br label %unlock

unlock:                                           ; preds = %if.then70, %if.end68.unlock_crit_edge, %cond.end, %do.body.unlock_crit_edge, %entry.unlock_crit_edge
  %rc.0 = phi i32 [ 0, %if.then70 ], [ 0, %if.end68.unlock_crit_edge ], [ -1, %entry.unlock_crit_edge ], [ -22, %cond.end ], [ -22, %do.body.unlock_crit_edge ]
  tail call void @__qede_unlock(ptr noundef %edev) #18
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_delete_flow_filter(ptr noundef %edev, i64 noundef %cookie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__qede_lock(ptr noundef %edev) #18
  %arfs = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 41
  %0 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arfs, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %add.ptr.i = getelementptr i8, ptr %3, i32 -100
  %tobool2.not2225.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not22.i = or i1 %tobool.not.i, %tobool2.not2225.i
  br i1 %tobool2.not22.i, label %if.end.unlock_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %fltr.023.i = phi ptr [ %add.ptr9.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end.for.body.i_crit_edge ]
  %sw_id.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.023.i, i32 0, i32 6
  %4 = ptrtoint ptr %sw_id.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sw_id.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %cookie)
  %cmp.i = icmp eq i64 %5, %cookie
  br i1 %cmp.i, label %if.end4, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %node.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.023.i, i32 0, i32 14
  %6 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node.i, align 4
  %tobool5.not.i = icmp eq ptr %7, null
  %add.ptr9.i = getelementptr i8, ptr %7, i32 -100
  %tobool2.not26.i = icmp eq ptr %add.ptr9.i, null
  %tobool2.not.i = or i1 %tobool5.not.i, %tobool2.not26.i
  br i1 %tobool2.not.i, label %for.inc.i.unlock_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.unlock_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.end4:                                          ; preds = %for.body.i
  %rxq_id = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.023.i, i32 0, i32 7
  %8 = ptrtoint ptr %rxq_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rxq_id, align 8
  tail call fastcc void @qede_configure_arfs_fltr(ptr noundef %edev, ptr noundef nonnull %fltr.023.i, i16 noundef zeroext %9, i1 noundef zeroext false)
  %call5 = tail call fastcc i32 @qede_poll_arfs_filter_config(ptr noundef %edev, ptr noundef nonnull %fltr.023.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then6, label %if.end4.unlock_crit_edge

if.end4.unlock_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @qede_dequeue_fltr_and_config_searcher(ptr noundef %edev, ptr noundef nonnull %fltr.023.i)
  br label %unlock

unlock:                                           ; preds = %if.then6, %if.end4.unlock_crit_edge, %for.inc.i.unlock_crit_edge, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  %rc.0 = phi i32 [ 0, %if.then6 ], [ %call5, %if.end4.unlock_crit_edge ], [ -1, %entry.unlock_crit_edge ], [ -1, %if.end.unlock_crit_edge ], [ -1, %for.inc.i.unlock_crit_edge ]
  tail call void @__qede_unlock(ptr noundef %edev) #18
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qede_poll_arfs_filter_config(ptr nocapture noundef readonly %edev, ptr noundef %fltr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %used = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr, i32 0, i32 11
  %0 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %used, align 2, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not38 = icmp eq i8 %1, 0
  br i1 %tobool.not38, label %entry.lor.lhs.false_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %count.039 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %entry.while.body_crit_edge ]
  tail call void @msleep(i32 noundef 20) #18
  %dec = add nsw i32 %count.039, -1
  %2 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %used, align 2, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool1.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.end:                                        ; preds = %while.body
  br i1 %tobool1.not, label %while.end.do.body_crit_edge, label %while.end.lor.lhs.false_crit_edge

while.end.lor.lhs.false_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

lor.lhs.false:                                    ; preds = %while.end.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %fw_rc = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr, i32 0, i32 12
  %4 = ptrtoint ptr %fw_rc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_rc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %while.end.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %6 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp4 = icmp ult i8 %7, 3
  br i1 %cmp4, label %do.end, label %do.body.do.end15_crit_edge, !prof !252

do.body.do.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end15

do.end:                                           ; preds = %do.body
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %8 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call ptr @strchr(ptr noundef %9, i32 noundef 37) #18
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool10.not = icmp eq ptr %9, null
  %or.cond37 = and i1 %tobool10.not, %tobool2.not.i
  %spec.select.i30 = select i1 %tobool2.not.i, ptr %9, ptr @.str.56
  %spec.select = select i1 %or.cond37, ptr @.str.3, ptr %spec.select.i30
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.56, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, i32 noundef 1391, ptr noundef %cond) #21
  br label %do.end15

do.end15:                                         ; preds = %cond.end, %do.body.do.end15_crit_edge
  tail call fastcc void @qede_dequeue_fltr_and_config_searcher(ptr noundef %edev, ptr noundef %fltr)
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end15 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_get_arfs_filter_count(ptr noundef %edev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__qede_lock(ptr noundef %edev) #18
  %arfs = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 41
  %0 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arfs, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %filter_count = getelementptr inbounds %struct.qede_arfs, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %filter_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %filter_count, align 4
  br label %unlock

unlock:                                           ; preds = %if.end, %entry.unlock_crit_edge
  %count.0 = phi i32 [ %3, %if.end ], [ 0, %entry.unlock_crit_edge ]
  tail call void @__qede_unlock(ptr noundef %edev) #18
  ret i32 %count.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_add_tc_flower_fltr(ptr noundef %edev, i16 noundef zeroext %proto, ptr nocapture noundef readonly %f) local_unnamed_addr #0 align 64 {
entry:
  %t = alloca %struct.qede_arfs_tuple, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %t) #18
  %0 = call ptr @memset(ptr %t, i32 255, i32 56)
  tail call void @__qede_lock(ptr noundef %edev) #18
  %arfs = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 41
  %1 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arfs, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.end:                                           ; preds = %entry
  %rule = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 3
  %3 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rule, align 8
  %call = call fastcc i32 @qede_parse_flow_attr(ptr noundef %edev, i16 noundef zeroext %proto, ptr noundef %4, ptr noundef nonnull %t)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arfs, align 8
  %filter_count = getelementptr inbounds %struct.qede_arfs, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %filter_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %filter_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %if.end3.if.end31_crit_edge, label %land.lhs.true

if.end3.if.end31_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end3
  %mode = getelementptr inbounds %struct.qede_arfs, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  %mode7 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 6
  %11 = ptrtoint ptr %mode7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not = icmp ne i32 %10, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %8)
  %cmp10 = icmp eq i32 %8, 256
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp10
  br i1 %or.cond, label %do.body, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end31

do.body:                                          ; preds = %land.lhs.true
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %13 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp12 = icmp ult i8 %14, 3
  br i1 %cmp12, label %do.end, label %do.body.unlock_crit_edge, !prof !252

do.body.unlock_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

do.end:                                           ; preds = %do.body
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %15 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndev, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call ptr @strchr(ptr noundef %16, i32 noundef 37) #18
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool19.not = icmp eq ptr %16, null
  %or.cond114 = and i1 %tobool19.not, %tobool2.not.i
  %spec.select.i98 = select i1 %tobool2.not.i, ptr %16, ptr @.str.56
  %spec.select = select i1 %or.cond114, ptr @.str.3, ptr %spec.select.i98
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.56, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %19 = ptrtoint ptr %mode7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mode7, align 4
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode, align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef 1890, ptr noundef %cond, i32 noundef %20, i32 noundef %22, i32 noundef %8) #21
  br label %unlock

if.end31:                                         ; preds = %land.lhs.true.if.end31_crit_edge, %if.end3.if.end31_crit_edge
  %23 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rule, align 8
  %action = getelementptr inbounds %struct.flow_rule, ptr %24, i32 0, i32 1
  %extack = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %25 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %extack, align 4
  %call33 = tail call fastcc i32 @qede_parse_actions(ptr noundef %edev, ptr noundef %action, ptr noundef %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end31.unlock_crit_edge

if.end31.unlock_crit_edge:                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.end36:                                         ; preds = %if.end31
  %27 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arfs, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %tobool.not.i102 = icmp eq ptr %30, null
  %add.ptr.i = getelementptr i8, ptr %30, i32 -100
  %tobool2.not5255.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not52.i = or i1 %tobool.not.i102, %tobool2.not5255.i
  br i1 %tobool2.not52.i, label %if.end36.if.end40_crit_edge, label %land.rhs.lr.ph.i

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end40

land.rhs.lr.ph.i:                                 ; preds = %if.end36
  %ip_proto5.i = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 5
  %src_port10.i = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 2
  %dst_port17.i = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 3
  %ip_comp.i = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 7
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %fltr.053.i = phi ptr [ %add.ptr.i, %land.rhs.lr.ph.i ], [ %add.ptr30.i, %for.inc.i.land.rhs.i_crit_edge ]
  %node.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.053.i, i32 0, i32 14
  %31 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %node.i, align 4
  %tuple.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.053.i, i32 0, i32 4
  %ip_proto.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.053.i, i32 0, i32 4, i32 5
  %33 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ip_proto.i, align 2
  %35 = ptrtoint ptr %ip_proto5.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ip_proto5.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %36)
  %cmp.i = icmp eq i8 %34, %36
  br i1 %cmp.i, label %land.lhs.true.i, label %land.rhs.i.for.inc.i_crit_edge

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %land.rhs.i
  %src_port.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.053.i, i32 0, i32 4, i32 2
  %37 = ptrtoint ptr %src_port.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %src_port.i, align 8
  %39 = ptrtoint ptr %src_port10.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %src_port10.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %40)
  %cmp12.i = icmp eq i16 %38, %40
  br i1 %cmp12.i, label %land.lhs.true14.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true14.i:                                ; preds = %land.lhs.true.i
  %dst_port.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.053.i, i32 0, i32 4, i32 3
  %41 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %dst_port.i, align 2
  %43 = ptrtoint ptr %dst_port17.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %dst_port17.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %42, i16 %44)
  %cmp19.i = icmp eq i16 %42, %44
  br i1 %cmp19.i, label %land.lhs.true21.i, label %land.lhs.true14.i.for.inc.i_crit_edge

land.lhs.true14.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true21.i:                                ; preds = %land.lhs.true14.i
  %45 = ptrtoint ptr %ip_comp.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ip_comp.i, align 4
  %call.i103 = call zeroext i1 %46(ptr noundef %tuple.i, ptr noundef nonnull %t) #18
  br i1 %call.i103, label %land.lhs.true21.i.unlock_crit_edge, label %land.lhs.true21.i.for.inc.i_crit_edge

land.lhs.true21.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true21.i.unlock_crit_edge:               ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

for.inc.i:                                        ; preds = %land.lhs.true21.i.for.inc.i_crit_edge, %land.lhs.true14.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %land.rhs.i.for.inc.i_crit_edge
  %tobool26.not.i = icmp eq ptr %32, null
  %add.ptr30.i = getelementptr i8, ptr %32, i32 -100
  %tobool2.not56.i = icmp eq ptr %add.ptr30.i, null
  %tobool2.not.i104 = or i1 %tobool26.not.i, %tobool2.not56.i
  br i1 %tobool2.not.i104, label %for.inc.i.if.end40_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs.i

for.inc.i.if.end40_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end40

if.end40:                                         ; preds = %for.inc.i.if.end40_crit_edge, %if.end36.if.end40_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 112) #24
  %tobool42.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool42.not, label %if.end40.unlock_crit_edge, label %if.end44

if.end40.unlock_crit_edge:                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.end44:                                         ; preds = %if.end40
  %eth_proto.i = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 4
  %48 = ptrtoint ptr %eth_proto.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %eth_proto.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %49)
  %cmp.i105 = icmp eq i16 %49, 2048
  %..i = select i1 %cmp.i105, i32 34, i32 54
  %ip_proto.i106 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 5
  %50 = ptrtoint ptr %ip_proto.i106 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ip_proto.i106, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %51)
  %cmp4.i = icmp eq i8 %51, 6
  %add7.i = add nuw nsw i32 %..i, 20
  %add9.i = or i32 %..i, 8
  %size.1.i = select i1 %cmp4.i, i32 %add7.i, i32 %add9.i
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %size.1.i, i32 noundef 3520) #22
  %data = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call9.i.i, ptr %data, align 4
  %tobool48.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool48.not, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #20
  call void @kfree(ptr noundef nonnull %call7.i.i) #18
  br label %unlock

if.end50:                                         ; preds = %if.end44
  %tuple = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i, i32 0, i32 4
  %53 = call ptr @memcpy(ptr %tuple, ptr %t, i32 56)
  %buf_len = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %size.1.i, ptr %buf_len, align 4
  %b_is_drop = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i, i32 0, i32 13
  %55 = ptrtoint ptr %b_is_drop to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %b_is_drop, align 8
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 2
  %56 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cookie, align 4
  %conv51 = zext i32 %57 to i64
  %sw_id = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i, i32 0, i32 6
  %58 = ptrtoint ptr %sw_id to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %conv51, ptr %sw_id, align 8
  %build_hdr = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i, i32 0, i32 4, i32 8
  %59 = ptrtoint ptr %build_hdr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %build_hdr, align 8
  call void %60(ptr noundef %tuple, ptr noundef nonnull %call9.i.i) #18
  %call55 = call fastcc i32 @qede_enqueue_fltr_and_config_searcher(ptr noundef %edev, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end50.unlock_crit_edge

if.end50.unlock_crit_edge:                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.end58:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #20
  %rxq_id = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i, i32 0, i32 7
  %61 = ptrtoint ptr %rxq_id to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %rxq_id, align 8
  call fastcc void @qede_configure_arfs_fltr(ptr noundef %edev, ptr noundef nonnull %call7.i.i, i16 noundef zeroext %62, i1 noundef zeroext true)
  %call59 = call fastcc i32 @qede_poll_arfs_filter_config(ptr noundef %edev, ptr noundef nonnull %call7.i.i)
  br label %unlock

unlock:                                           ; preds = %if.end58, %if.end50.unlock_crit_edge, %if.then49, %if.end40.unlock_crit_edge, %land.lhs.true21.i.unlock_crit_edge, %if.end31.unlock_crit_edge, %cond.end, %do.body.unlock_crit_edge, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  %rc.0 = phi i32 [ -22, %if.end.unlock_crit_edge ], [ -22, %cond.end ], [ -22, %do.body.unlock_crit_edge ], [ -22, %if.end31.unlock_crit_edge ], [ %call55, %if.end50.unlock_crit_edge ], [ %call59, %if.end58 ], [ -12, %if.then49 ], [ -1, %entry.unlock_crit_edge ], [ -12, %if.end40.unlock_crit_edge ], [ -17, %land.lhs.true21.i.unlock_crit_edge ]
  call void @__qede_unlock(ptr noundef %edev) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %t) #18
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qede_parse_flow_attr(ptr nocapture noundef readonly %edev, i16 noundef zeroext %proto, ptr noundef %rule, ptr nocapture noundef %tuple) unnamed_addr #0 align 64 {
entry:
  %match55 = alloca %struct.flow_match_basic, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 8
  %2 = call ptr @memset(ptr %tuple, i32 0, i32 56)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %4)
  %tobool.not = icmp ult i32 %4, 32
  br i1 %tobool.not, label %if.end14, label %do.body

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %5 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp = icmp ult i8 %6, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !252

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end:                                           ; preds = %do.body
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %7 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call ptr @strchr(ptr noundef %8, i32 noundef 37) #18
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool7.not = icmp eq ptr %8, null
  %or.cond248 = and i1 %tobool7.not, %tobool2.not.i
  %spec.select.i170 = select i1 %tobool2.not.i, ptr %8, ptr @.str.56
  %spec.select = select i1 %or.cond248, ptr @.str.3, ptr %spec.select.i170
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.56, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef 1836, ptr noundef %cond, i32 noundef %4) #21
  br label %cleanup

if.end14:                                         ; preds = %entry
  %conv15 = zext i16 %proto to i32
  %11 = zext i16 %proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.126)
  switch i16 %proto, label %do.body22 [
    i16 2048, label %if.end14.if.end52_crit_edge
    i16 -31011, label %if.end14.if.end52_crit_edge253
  ]

if.end14.if.end52_crit_edge253:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

if.end14.if.end52_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

do.body22:                                        ; preds = %if.end14
  %dp_level23 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %12 = ptrtoint ptr %dp_level23 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dp_level23, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp25 = icmp ult i8 %13, 3
  br i1 %cmp25, label %do.end36, label %do.body22.cleanup_crit_edge, !prof !252

do.body22.cleanup_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end36:                                         ; preds = %do.body22
  %ndev38 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %14 = ptrtoint ptr %ndev38 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev38, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i174 = icmp eq i8 %17, 0
  br i1 %tobool.not.i174, label %do.end36.cond.end45_crit_edge, label %lor.lhs.false.i178

do.end36.cond.end45_crit_edge:                    ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end45

lor.lhs.false.i178:                               ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #20
  %call.i175 = tail call ptr @strchr(ptr noundef %15, i32 noundef 37) #18
  %tobool2.not.i176 = icmp eq ptr %call.i175, null
  %tobool40.not = icmp eq ptr %15, null
  %or.cond249 = and i1 %tobool40.not, %tobool2.not.i176
  %spec.select.i184 = select i1 %tobool2.not.i176, ptr %15, ptr @.str.56
  %spec.select251 = select i1 %or.cond249, ptr @.str.3, ptr %spec.select.i184
  br label %cond.end45

cond.end45:                                       ; preds = %lor.lhs.false.i178, %do.end36.cond.end45_crit_edge
  %cond46 = phi ptr [ @.str.56, %do.end36.cond.end45_crit_edge ], [ %spec.select251, %lor.lhs.false.i178 ]
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.79, i32 noundef 1842, ptr noundef %cond46, i32 noundef %conv15) #21
  br label %cleanup

if.end52:                                         ; preds = %if.end14.if.end52_crit_edge, %if.end14.if.end52_crit_edge253
  %18 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rule, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %and.i.i = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %if.end52.do.body97_crit_edge, label %if.end57

if.end52.do.body97_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body97

if.end57:                                         ; preds = %if.end52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match55) #18
  %22 = ptrtoint ptr %match55 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %match55, align 4, !annotation !255
  %23 = getelementptr inbounds %struct.flow_match_basic, ptr %match55, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %23, align 4, !annotation !255
  call void @flow_rule_match_basic(ptr noundef %rule, ptr noundef nonnull %match55) #18
  %25 = ptrtoint ptr %match55 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %match55, align 4
  %ip_proto56 = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %ip_proto56 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ip_proto56, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match55) #18
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %28)
  %cmp59 = icmp eq i8 %28, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %proto)
  %cmp63 = icmp eq i16 %proto, 2048
  %or.cond = and i1 %cmp63, %cmp59
  br i1 %or.cond, label %if.then65, label %if.else

if.then65:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #20
  %ip_proto.i = getelementptr inbounds %struct.qede_arfs_tuple, ptr %tuple, i32 0, i32 5
  %29 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 6, ptr %ip_proto.i, align 2
  %eth_proto.i = getelementptr inbounds %struct.qede_arfs_tuple, ptr %tuple, i32 0, i32 4
  %30 = ptrtoint ptr %eth_proto.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 2048, ptr %eth_proto.i, align 4
  %call.i188 = call fastcc i32 @qede_flow_parse_v4_common(ptr noundef %edev, ptr noundef %rule, ptr noundef %tuple) #18
  br label %cleanup

if.else:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %proto)
  %cmp72 = icmp eq i16 %proto, -31011
  %or.cond164 = and i1 %cmp72, %cmp59
  br i1 %or.cond164, label %if.then74, label %if.else76

if.then74:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %ip_proto.i189 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %tuple, i32 0, i32 5
  %31 = ptrtoint ptr %ip_proto.i189 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 6, ptr %ip_proto.i189, align 2
  %eth_proto.i190 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %tuple, i32 0, i32 4
  %32 = ptrtoint ptr %eth_proto.i190 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -31011, ptr %eth_proto.i190, align 4
  %call.i191 = call fastcc i32 @qede_flow_parse_v6_common(ptr noundef %edev, ptr noundef %rule, ptr noundef %tuple) #18
  br label %cleanup

if.else76:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %28)
  %cmp78 = icmp eq i8 %28, 17
  %or.cond165 = and i1 %cmp63, %cmp78
  br i1 %or.cond165, label %if.then84, label %if.else86

if.then84:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #20
  %ip_proto.i192 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %tuple, i32 0, i32 5
  %33 = ptrtoint ptr %ip_proto.i192 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 17, ptr %ip_proto.i192, align 2
  %eth_proto.i193 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %tuple, i32 0, i32 4
  %34 = ptrtoint ptr %eth_proto.i193 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 2048, ptr %eth_proto.i193, align 4
  %call.i194 = call fastcc i32 @qede_flow_parse_v4_common(ptr noundef %edev, ptr noundef %rule, ptr noundef %tuple) #18
  br label %cleanup

if.else86:                                        ; preds = %if.else76
  %or.cond166 = and i1 %cmp72, %cmp78
  br i1 %or.cond166, label %if.then94, label %if.else86.do.body97_crit_edge

if.else86.do.body97_crit_edge:                    ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body97

if.then94:                                        ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #20
  %ip_proto.i195 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %tuple, i32 0, i32 5
  %35 = ptrtoint ptr %ip_proto.i195 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 17, ptr %ip_proto.i195, align 2
  %eth_proto.i196 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %tuple, i32 0, i32 4
  %36 = ptrtoint ptr %eth_proto.i196 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -31011, ptr %eth_proto.i196, align 4
  %call.i197 = call fastcc i32 @qede_flow_parse_v6_common(ptr noundef %edev, ptr noundef %rule, ptr noundef %tuple) #18
  br label %cleanup

do.body97:                                        ; preds = %if.else86.do.body97_crit_edge, %if.end52.do.body97_crit_edge
  %dp_level98 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %37 = ptrtoint ptr %dp_level98 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %dp_level98, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %38)
  %cmp100 = icmp ult i8 %38, 3
  br i1 %cmp100, label %do.end111, label %do.body97.cleanup_crit_edge, !prof !252

do.body97.cleanup_crit_edge:                      ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end111:                                        ; preds = %do.body97
  %ndev113 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %39 = ptrtoint ptr %ndev113 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ndev113, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i198 = icmp eq i8 %42, 0
  br i1 %tobool.not.i198, label %do.end111.cond.end120_crit_edge, label %lor.lhs.false.i202

do.end111.cond.end120_crit_edge:                  ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end120

lor.lhs.false.i202:                               ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #20
  %call.i199 = call ptr @strchr(ptr noundef %40, i32 noundef 37) #18
  %tobool2.not.i200 = icmp eq ptr %call.i199, null
  %tobool115.not = icmp eq ptr %40, null
  %or.cond250 = and i1 %tobool115.not, %tobool2.not.i200
  %spec.select.i208 = select i1 %tobool2.not.i200, ptr %40, ptr @.str.56
  %spec.select252 = select i1 %or.cond250, ptr @.str.3, ptr %spec.select.i208
  br label %cond.end120

cond.end120:                                      ; preds = %lor.lhs.false.i202, %do.end111.cond.end120_crit_edge
  %cond121 = phi ptr [ @.str.56, %do.end111.cond.end120_crit_edge ], [ %spec.select252, %lor.lhs.false.i202 ]
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.79, i32 noundef 1862, ptr noundef %cond121) #21
  br label %cleanup

cleanup:                                          ; preds = %cond.end120, %do.body97.cleanup_crit_edge, %if.then94, %if.then84, %if.then74, %if.then65, %cond.end45, %do.body22.cleanup_crit_edge, %cond.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %cond.end ], [ -95, %do.body.cleanup_crit_edge ], [ -93, %cond.end45 ], [ -93, %do.body22.cleanup_crit_edge ], [ %call.i188, %if.then65 ], [ %call.i191, %if.then74 ], [ %call.i194, %if.then84 ], [ %call.i197, %if.then94 ], [ -22, %cond.end120 ], [ -22, %do.body97.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qede_parse_actions(ptr nocapture noundef readonly %edev, ptr nocapture noundef readonly %flow_action, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flow_action to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flow_action, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %1, label %for.body.preheader.i.i.i [
    i32 0, label %do.body
    i32 1, label %entry.flow_action_first_entry_get.exit.i.i_crit_edge
  ]

entry.flow_action_first_entry_get.exit.i.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %flow_action_first_entry_get.exit.i.i

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %3 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %cmp = icmp ult i8 %4, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !252

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end:                                           ; preds = %do.body
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %5 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call ptr @strchr(ptr noundef %6, i32 noundef 37) #18
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool6.not = icmp eq ptr %6, null
  %or.cond = and i1 %tobool6.not, %tobool2.not.i
  %spec.select.i76 = select i1 %tobool2.not.i, ptr %6, ptr @.str.56
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i76
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.56, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 1674, ptr noundef %cond) #21
  br label %cleanup

for.body.preheader.i.i.i:                         ; preds = %entry
  %entries.i.i.i = getelementptr inbounds %struct.flow_action, ptr %flow_action, i32 0, i32 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end7.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %i.024.i.i.i = phi i32 [ %inc.i.i.i, %if.end7.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %last_hw_stats.023.i.i.i = phi i32 [ %12, %if.end7.i.i.i.for.body.i.i.i_crit_edge ], [ 255, %for.body.preheader.i.i.i ]
  %action_entry.022.i.i.i = phi ptr [ %arrayidx11.i.i.i, %if.end7.i.i.i.for.body.i.i.i_crit_edge ], [ %entries.i.i.i, %for.body.preheader.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.024.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %i.024.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.if.end7.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.i.if.end7.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %hw_stats.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %action_entry.022.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %hw_stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_stats.i.i.i, align 8
  %conv.i.i.i = and i32 %last_hw_stats.023.i.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv.i.i.i)
  %cmp1.not.i.i.i = icmp eq i32 %10, %conv.i.i.i
  br i1 %cmp1.not.i.i.i, label %land.lhs.true.i.i.i.if.end7.i.i.i_crit_edge, label %do.body.i.i.i

land.lhs.true.i.i.i.if.end7.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7.i.i.i

do.body.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @flow_action_mixed_hw_stats_check.__msg) #18
  %tobool4.not.i.i.i = icmp eq ptr %extack, null
  br i1 %tobool4.not.i.i.i, label %do.body.i.i.i.cleanup_crit_edge, label %do.body.i.i.i.cleanup.sink.split.i.i_crit_edge

do.body.i.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split.i.i

do.body.i.i.i.cleanup_crit_edge:                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.if.end7.i.i.i_crit_edge, %for.body.i.i.i.if.end7.i.i.i_crit_edge
  %hw_stats8.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %action_entry.022.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %hw_stats8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw_stats8.i.i.i, align 8
  %inc.i.i.i = add nuw i32 %i.024.i.i.i, 1
  %arrayidx11.i.i.i = getelementptr %struct.flow_action, ptr %flow_action, i32 0, i32 1, i32 %inc.i.i.i
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %1
  br i1 %exitcond.not.i.i.i, label %if.end7.i.i.i.flow_action_first_entry_get.exit.i.i_crit_edge, label %if.end7.i.i.i.for.body.i.i.i_crit_edge

if.end7.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i.i

if.end7.i.i.i.flow_action_first_entry_get.exit.i.i_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %flow_action_first_entry_get.exit.i.i

flow_action_first_entry_get.exit.i.i:             ; preds = %if.end7.i.i.i.flow_action_first_entry_get.exit.i.i_crit_edge, %entry.flow_action_first_entry_get.exit.i.i_crit_edge
  %hw_stats.i.i = getelementptr inbounds %struct.flow_action, ptr %flow_action, i32 2
  %13 = ptrtoint ptr %hw_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hw_stats.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %flow_action_first_entry_get.exit.i.i.land.lhs.true.i.i_crit_edge

flow_action_first_entry_get.exit.i.i.land.lhs.true.i.i_crit_edge: ; preds = %flow_action_first_entry_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true.i.i

land.rhs.i.i:                                     ; preds = %flow_action_first_entry_get.exit.i.i
  %.b1.i.i = load i1, ptr @__flow_action_hw_stats_check.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.land.lhs.true.i.i_crit_edge, label %if.then14.i.i, !prof !254

land.rhs.i.i.land.lhs.true.i.i_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true.i.i

if.then14.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @__flow_action_hw_stats_check.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.103, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.then14.i.i, %land.rhs.i.i.land.lhs.true.i.i_crit_edge, %flow_action_first_entry_get.exit.i.i.land.lhs.true.i.i_crit_edge
  %15 = ptrtoint ptr %hw_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hw_stats.i.i, align 8
  %neg.i.i = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %neg.i.i)
  %tobool46.not.i.i = icmp eq i32 %neg.i.i, 3
  br i1 %tobool46.not.i.i, label %if.end15, label %do.body48.i.i

do.body48.i.i:                                    ; preds = %land.lhs.true.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__flow_action_hw_stats_check.__msg) #18
  %tobool49.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool49.not.i.i, label %do.body48.i.i.cleanup_crit_edge, label %do.body48.i.i.cleanup.sink.split.i.i_crit_edge

do.body48.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %do.body48.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split.i.i

do.body48.i.i.cleanup_crit_edge:                  ; preds = %do.body48.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup.sink.split.i.i:                           ; preds = %do.body48.i.i.cleanup.sink.split.i.i_crit_edge, %do.body.i.i.i.cleanup.sink.split.i.i_crit_edge
  %flow_action_mixed_hw_stats_check.__msg.sink.i.i = phi ptr [ @flow_action_mixed_hw_stats_check.__msg, %do.body.i.i.i.cleanup.sink.split.i.i_crit_edge ], [ @__flow_action_hw_stats_check.__msg, %do.body48.i.i.cleanup.sink.split.i.i_crit_edge ]
  %17 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %flow_action_mixed_hw_stats_check.__msg.sink.i.i, ptr %extack, align 4
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.i.i
  %18 = ptrtoint ptr %flow_action to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flow_action, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp16104.not = icmp eq i32 %19, 0
  br i1 %cmp16104.not, label %if.end15.cleanup_crit_edge, label %for.body.lr.ph

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end15
  %entries = getelementptr inbounds %struct.flow_action, ptr %flow_action, i32 0, i32 1
  %num_queues = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 18
  %fp_num_tx = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %act.0106 = phi ptr [ %entries, %for.body.lr.ph ], [ %arrayidx57, %for.inc.for.body_crit_edge ]
  %i.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %20 = ptrtoint ptr %act.0106 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %act.0106, align 8
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %21, label %for.body.cleanup_crit_edge [
    i32 1, label %for.body.for.inc_crit_edge
    i32 20, label %sw.bb
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb:                                            ; preds = %for.body
  %vf = getelementptr inbounds %struct.flow_action_entry, ptr %act.0106, i32 0, i32 5, i32 0, i32 1
  %23 = ptrtoint ptr %vf to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %vf, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool18.not = icmp eq i8 %24, 0
  br i1 %tobool18.not, label %if.end20, label %sw.bb.for.inc_crit_edge

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end20:                                         ; preds = %sw.bb
  %25 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0106, i32 0, i32 5
  %index = getelementptr inbounds %struct.anon.216, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index, align 4
  %28 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %num_queues, align 2
  %conv21 = zext i16 %29 to i32
  %30 = ptrtoint ptr %fp_num_tx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %fp_num_tx, align 1
  %conv22 = zext i8 %31 to i32
  %sub = sub nsw i32 %conv21, %conv22
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %sub)
  %cmp23.not = icmp ult i32 %27, %sub
  br i1 %cmp23.not, label %if.end20.for.inc_crit_edge, label %do.body26

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

do.body26:                                        ; preds = %if.end20
  %dp_level27 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %32 = ptrtoint ptr %dp_level27 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dp_level27, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp29 = icmp ult i8 %33, 2
  br i1 %cmp29, label %do.end40, label %do.body26.cleanup_crit_edge, !prof !252

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end40:                                         ; preds = %do.body26
  %ndev42 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %34 = ptrtoint ptr %ndev42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ndev42, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i80 = icmp eq i8 %37, 0
  br i1 %tobool.not.i80, label %do.end40.cond.end49_crit_edge, label %lor.lhs.false.i84

do.end40.cond.end49_crit_edge:                    ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end49

lor.lhs.false.i84:                                ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #20
  %call.i81 = tail call ptr @strchr(ptr noundef %35, i32 noundef 37) #18
  %tobool2.not.i82 = icmp eq ptr %call.i81, null
  %tobool44.not = icmp eq ptr %35, null
  %or.cond103 = and i1 %tobool44.not, %tobool2.not.i82
  %spec.select.i90 = select i1 %tobool2.not.i82, ptr %35, ptr @.str.56
  %spec.select108 = select i1 %or.cond103, ptr @.str.3, ptr %spec.select.i90
  br label %cond.end49

cond.end49:                                       ; preds = %lor.lhs.false.i84, %do.end40.cond.end49_crit_edge
  %cond50 = phi ptr [ @.str.56, %do.end40.cond.end49_crit_edge ], [ %spec.select108, %lor.lhs.false.i84 ]
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.99, i32 noundef 1690, ptr noundef %cond50) #21
  br label %cleanup

for.inc:                                          ; preds = %if.end20.for.inc_crit_edge, %sw.bb.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0105, 1
  %arrayidx57 = getelementptr %struct.flow_action, ptr %flow_action, i32 0, i32 1, i32 %inc
  %exitcond.not = icmp eq i32 %inc, %19
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %cond.end49, %do.body26.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %cleanup.sink.split.i.i, %do.body48.i.i.cleanup_crit_edge, %do.body.i.i.i.cleanup_crit_edge, %cond.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %cond.end ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %cond.end49 ], [ -22, %do.body26.cleanup_crit_edge ], [ -95, %do.body48.i.i.cleanup_crit_edge ], [ -95, %do.body.i.i.i.cleanup_crit_edge ], [ -95, %cleanup.sink.split.i.i ], [ 0, %if.end15.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_add_cls_rule(ptr noundef %edev, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %input.i = alloca %struct.ethtool_rx_flow_spec_input, align 8
  %t = alloca %struct.qede_arfs_tuple, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %fs = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %t) #18
  %0 = call ptr @memset(ptr %t, i32 255, i32 56)
  tail call void @__qede_lock(ptr noundef %edev) #18
  %arfs = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 41
  %1 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arfs, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %input.i) #18
  %3 = ptrtoint ptr %input.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %input.i, align 8
  %4 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fs, align 8
  %and.i.i = and i32 %5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end11.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end
  %dp_level.i.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %6 = ptrtoint ptr %dp_level.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dp_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.i.i = icmp ult i8 %7, 2
  br i1 %cmp.i.i, label %do.end.i.i, label %do.body.i.i.qede_flow_spec_to_rule.exit.thread_crit_edge, !prof !252

do.body.i.i.qede_flow_spec_to_rule.exit.thread_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %qede_flow_spec_to_rule.exit.thread

do.end.i.i:                                       ; preds = %do.body.i.i
  %ndev.i.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %8 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.cond.end.i.i_crit_edge, label %lor.lhs.false.i.i.i

do.end.i.i.cond.end.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end.i.i

lor.lhs.false.i.i.i:                              ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i.i = tail call ptr @strchr(ptr noundef %9, i32 noundef 37) #18
  %tobool2.not.i.i.i = icmp eq ptr %call.i.i.i, null
  %tobool6.not.i.i = icmp eq ptr %9, null
  %or.cond.i.i = and i1 %tobool6.not.i.i, %tobool2.not.i.i.i
  %spec.select.i106.i.i = select i1 %tobool2.not.i.i.i, ptr %9, ptr @.str.56
  %spec.select.i.i = select i1 %or.cond.i.i, ptr @.str.3, ptr %spec.select.i106.i.i
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %lor.lhs.false.i.i.i, %do.end.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi ptr [ @.str.56, %do.end.i.i.cond.end.i.i_crit_edge ], [ %spec.select.i.i, %lor.lhs.false.i.i.i ]
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108, i32 noundef 1504, ptr noundef %cond.i.i) #21
  br label %qede_flow_spec_to_rule.exit.thread

if.end11.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool14.not.i.i = icmp sgt i32 %5, -1
  br i1 %tobool14.not.i.i, label %if.end11.i.i.if.end.i_crit_edge, label %land.lhs.true.i.i

if.end11.i.i.if.end.i_crit_edge:                  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

land.lhs.true.i.i:                                ; preds = %if.end11.i.i
  %vlan_etype.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 2, i32 2
  %12 = ptrtoint ptr %vlan_etype.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vlan_etype.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool16.not.i.i = icmp eq i16 %13, 0
  br i1 %tobool16.not.i.i, label %lor.lhs.false.i.i, label %land.lhs.true.i.i.do.body21.i.i_crit_edge

land.lhs.true.i.i.do.body21.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body21.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i
  %vlan_tci.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 2, i32 3
  %14 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vlan_tci.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool19.not.i.i = icmp eq i16 %15, 0
  br i1 %tobool19.not.i.i, label %land.lhs.true52.i.i, label %lor.lhs.false.i.i.do.body21.i.i_crit_edge

lor.lhs.false.i.i.do.body21.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body21.i.i

do.body21.i.i:                                    ; preds = %lor.lhs.false.i.i.do.body21.i.i_crit_edge, %land.lhs.true.i.i.do.body21.i.i_crit_edge
  %dp_level22.i.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %16 = ptrtoint ptr %dp_level22.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dp_level22.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp24.i.i = icmp ult i8 %17, 2
  br i1 %cmp24.i.i, label %do.end34.i.i, label %do.body21.i.i.qede_flow_spec_to_rule.exit.thread_crit_edge, !prof !252

do.body21.i.i.qede_flow_spec_to_rule.exit.thread_crit_edge: ; preds = %do.body21.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %qede_flow_spec_to_rule.exit.thread

do.end34.i.i:                                     ; preds = %do.body21.i.i
  %ndev36.i.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %18 = ptrtoint ptr %ndev36.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndev36.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i110.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i110.i.i, label %do.end34.i.i.cond.end43.i.i_crit_edge, label %lor.lhs.false.i114.i.i

do.end34.i.i.cond.end43.i.i_crit_edge:            ; preds = %do.end34.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end43.i.i

lor.lhs.false.i114.i.i:                           ; preds = %do.end34.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i111.i.i = tail call ptr @strchr(ptr noundef %19, i32 noundef 37) #18
  %tobool2.not.i112.i.i = icmp eq ptr %call.i111.i.i, null
  %tobool38.not.i.i = icmp eq ptr %19, null
  %or.cond149.i.i = and i1 %tobool38.not.i.i, %tobool2.not.i112.i.i
  %spec.select.i120.i.i = select i1 %tobool2.not.i112.i.i, ptr %19, ptr @.str.56
  %spec.select151.i.i = select i1 %or.cond149.i.i, ptr @.str.3, ptr %spec.select.i120.i.i
  br label %cond.end43.i.i

cond.end43.i.i:                                   ; preds = %lor.lhs.false.i114.i.i, %do.end34.i.i.cond.end43.i.i_crit_edge
  %cond44.i.i = phi ptr [ @.str.56, %do.end34.i.i.cond.end43.i.i_crit_edge ], [ %spec.select151.i.i, %lor.lhs.false.i114.i.i ]
  %call45.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.108, i32 noundef 1510, ptr noundef %cond44.i.i) #21
  br label %qede_flow_spec_to_rule.exit.thread

land.lhs.true52.i.i:                              ; preds = %lor.lhs.false.i.i
  %data.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 2, i32 4
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool54.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool54.not.i.i, label %lor.lhs.false55.i.i, label %land.lhs.true52.i.i.do.body61.i.i_crit_edge

land.lhs.true52.i.i.do.body61.i.i_crit_edge:      ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body61.i.i

lor.lhs.false55.i.i:                              ; preds = %land.lhs.true52.i.i
  %arrayidx58.i.i = getelementptr %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 2, i32 4, i32 1
  %24 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx58.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool59.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool59.not.i.i, label %lor.lhs.false55.i.i.if.end.i_crit_edge, label %lor.lhs.false55.i.i.do.body61.i.i_crit_edge

lor.lhs.false55.i.i.do.body61.i.i_crit_edge:      ; preds = %lor.lhs.false55.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body61.i.i

lor.lhs.false55.i.i.if.end.i_crit_edge:           ; preds = %lor.lhs.false55.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

do.body61.i.i:                                    ; preds = %lor.lhs.false55.i.i.do.body61.i.i_crit_edge, %land.lhs.true52.i.i.do.body61.i.i_crit_edge
  %dp_level62.i.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %26 = ptrtoint ptr %dp_level62.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dp_level62.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp64.i.i = icmp ult i8 %27, 2
  br i1 %cmp64.i.i, label %do.end74.i.i, label %do.body61.i.i.qede_flow_spec_to_rule.exit.thread_crit_edge, !prof !252

do.body61.i.i.qede_flow_spec_to_rule.exit.thread_crit_edge: ; preds = %do.body61.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %qede_flow_spec_to_rule.exit.thread

do.end74.i.i:                                     ; preds = %do.body61.i.i
  %ndev76.i.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %28 = ptrtoint ptr %ndev76.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ndev76.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i124.i.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i124.i.i, label %do.end74.i.i.cond.end83.i.i_crit_edge, label %lor.lhs.false.i128.i.i

do.end74.i.i.cond.end83.i.i_crit_edge:            ; preds = %do.end74.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end83.i.i

lor.lhs.false.i128.i.i:                           ; preds = %do.end74.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i125.i.i = tail call ptr @strchr(ptr noundef %29, i32 noundef 37) #18
  %tobool2.not.i126.i.i = icmp eq ptr %call.i125.i.i, null
  %tobool78.not.i.i = icmp eq ptr %29, null
  %or.cond150.i.i = and i1 %tobool78.not.i.i, %tobool2.not.i126.i.i
  %spec.select.i134.i.i = select i1 %tobool2.not.i126.i.i, ptr %29, ptr @.str.56
  %spec.select152.i.i = select i1 %or.cond150.i.i, ptr @.str.3, ptr %spec.select.i134.i.i
  br label %cond.end83.i.i

cond.end83.i.i:                                   ; preds = %lor.lhs.false.i128.i.i, %do.end74.i.i.cond.end83.i.i_crit_edge
  %cond84.i.i = phi ptr [ @.str.56, %do.end74.i.i.cond.end83.i.i_crit_edge ], [ %spec.select152.i.i, %lor.lhs.false.i128.i.i ]
  %call85.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.108, i32 noundef 1516, ptr noundef %cond84.i.i) #21
  br label %qede_flow_spec_to_rule.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false55.i.i.if.end.i_crit_edge, %if.end11.i.i.if.end.i_crit_edge
  %and.i = and i32 %5, 2147483647
  %switch.tableidx = add nsw i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %32 = icmp ult i32 %switch.tableidx, 6
  br i1 %32, label %switch.hole_check, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

do.body.i:                                        ; preds = %switch.hole_check.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  %dp_level.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %33 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp.i = icmp eq i8 %34, 0
  br i1 %cmp.i, label %land.rhs.i, label %do.body.i.qede_flow_spec_to_rule.exit.thread_crit_edge

do.body.i.qede_flow_spec_to_rule.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %qede_flow_spec_to_rule.exit.thread

land.rhs.i:                                       ; preds = %do.body.i
  %dp_module.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 4
  %35 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dp_module.i, align 8
  %and3.i = and i32 %36, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %land.rhs.i.qede_flow_spec_to_rule.exit.thread_crit_edge, label %do.end.i, !prof !254

land.rhs.i.qede_flow_spec_to_rule.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %qede_flow_spec_to_rule.exit.thread

do.end.i:                                         ; preds = %land.rhs.i
  %ndev.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %37 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ndev.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i48.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i48.i, label %do.end.i.cond.end.i_crit_edge, label %lor.lhs.false.i50.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end.i

lor.lhs.false.i50.i:                              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i = tail call ptr @strchr(ptr noundef %38, i32 noundef 37) #18
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  %tobool10.not.i = icmp eq ptr %38, null
  %or.cond.i = and i1 %tobool10.not.i, %tobool2.not.i.i
  %spec.select.i55.i = select i1 %tobool2.not.i.i, ptr %38, ptr @.str.56
  %spec.select.i = select i1 %or.cond.i, ptr @.str.3, ptr %spec.select.i55.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %lor.lhs.false.i50.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ @.str.56, %do.end.i.cond.end.i_crit_edge ], [ %spec.select.i, %lor.lhs.false.i50.i ]
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef 1992, ptr noundef %cond.i, i32 noundef %5) #21
  br label %qede_flow_spec_to_rule.exit.thread

switch.hole_check:                                ; preds = %if.end.i
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 51, %switch.maskindex
  %41 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %switch.lobit.not = icmp eq i8 %41, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body.i_crit_edge, label %switch.lookup

switch.hole_check.do.body.i_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [6 x i16], ptr @switch.table.qede_add_cls_rule, i32 0, i32 %switch.tableidx
  %42 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %42)
  %switch.load = load i16, ptr %switch.gep, align 2
  %43 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %fs, ptr %input.i, align 8
  %call19.i = call ptr @ethtool_rx_flow_rule_create(ptr noundef nonnull %input.i) #18
  %cmp.i59.i = icmp ugt ptr %call19.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59.i, label %if.then21.i, label %if.end23.i

if.then21.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #20
  %44 = ptrtoint ptr %call19.i to i32
  br label %qede_flow_spec_to_rule.exit

if.end23.i:                                       ; preds = %switch.lookup
  %45 = ptrtoint ptr %call19.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call19.i, align 4
  %call24.i = call fastcc i32 @qede_parse_flow_attr(ptr noundef %edev, i16 noundef zeroext %switch.load, ptr noundef %46, ptr noundef nonnull %t) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end23.i.err_out.i_crit_edge

if.end23.i.err_out.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_out.i

if.end27.i:                                       ; preds = %if.end23.i
  %47 = ptrtoint ptr %call19.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call19.i, align 4
  %action.i = getelementptr inbounds %struct.flow_rule, ptr %48, i32 0, i32 1
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 6
  %49 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %location.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %50)
  %cmp.i60.i = icmp ugt i32 %50, 255
  br i1 %cmp.i60.i, label %do.body.i62.i, label %if.end11.i75.i

do.body.i62.i:                                    ; preds = %if.end27.i
  %dp_level.i61.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %51 = ptrtoint ptr %dp_level.i61.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %dp_level.i61.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %52)
  %cmp1.i.i = icmp ult i8 %52, 2
  br i1 %cmp1.i.i, label %do.end.i65.i, label %do.body.i62.i.err_out.i_crit_edge, !prof !252

do.body.i62.i.err_out.i_crit_edge:                ; preds = %do.body.i62.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_out.i

do.end.i65.i:                                     ; preds = %do.body.i62.i
  %ndev.i63.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %53 = ptrtoint ptr %ndev.i63.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ndev.i63.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i.i64.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i.i64.i, label %do.end.i65.i.cond.end.i74.i_crit_edge, label %lor.lhs.false.i.i71.i

do.end.i65.i.cond.end.i74.i_crit_edge:            ; preds = %do.end.i65.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end.i74.i

lor.lhs.false.i.i71.i:                            ; preds = %do.end.i65.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i66.i = call ptr @strchr(ptr noundef %54, i32 noundef 37) #18
  %tobool2.not.i.i67.i = icmp eq ptr %call.i.i66.i, null
  %tobool6.not.i68.i = icmp eq ptr %54, null
  %or.cond.i69.i = and i1 %tobool6.not.i68.i, %tobool2.not.i.i67.i
  %spec.select.i103.i.i = select i1 %tobool2.not.i.i67.i, ptr %54, ptr @.str.56
  %spec.select.i70.i = select i1 %or.cond.i69.i, ptr @.str.3, ptr %spec.select.i103.i.i
  br label %cond.end.i74.i

cond.end.i74.i:                                   ; preds = %lor.lhs.false.i.i71.i, %do.end.i65.i.cond.end.i74.i_crit_edge
  %cond.i72.i = phi ptr [ @.str.56, %do.end.i65.i.cond.end.i74.i_crit_edge ], [ %spec.select.i70.i, %lor.lhs.false.i.i71.i ]
  %call9.i73.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, i32 noundef 1944, ptr noundef %cond.i72.i) #21
  br label %err_out.i

if.end11.i75.i:                                   ; preds = %if.end27.i
  %57 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arfs, align 8
  %arfs_fltr_bmap.i.i = getelementptr inbounds %struct.qede_arfs, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %arfs_fltr_bmap.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arfs_fltr_bmap.i.i, align 4
  %div3.i.i.i = lshr i32 %50, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %60, i32 %div3.i.i.i
  %61 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %50, 31
  %63 = shl nuw i32 1, %and.i.i.i
  %64 = and i32 %62, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool13.not.i.i = icmp eq i32 %64, 0
  br i1 %tobool13.not.i.i, label %if.end42.i.i, label %do.body15.i.i

do.body15.i.i:                                    ; preds = %if.end11.i75.i
  %dp_level16.i.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %65 = ptrtoint ptr %dp_level16.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %dp_level16.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %66)
  %cmp18.i.i = icmp ult i8 %66, 2
  br i1 %cmp18.i.i, label %do.end28.i.i, label %do.body15.i.i.err_out.i_crit_edge, !prof !252

do.body15.i.i.err_out.i_crit_edge:                ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_out.i

do.end28.i.i:                                     ; preds = %do.body15.i.i
  %ndev30.i.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %67 = ptrtoint ptr %ndev30.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ndev30.i.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %68, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i107.i.i = icmp eq i8 %70, 0
  br i1 %tobool.not.i107.i.i, label %do.end28.i.i.cond.end37.i.i_crit_edge, label %lor.lhs.false.i111.i.i

do.end28.i.i.cond.end37.i.i_crit_edge:            ; preds = %do.end28.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end37.i.i

lor.lhs.false.i111.i.i:                           ; preds = %do.end28.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i108.i.i = call ptr @strchr(ptr noundef %68, i32 noundef 37) #18
  %tobool2.not.i109.i.i = icmp eq ptr %call.i108.i.i, null
  %tobool32.not.i.i = icmp eq ptr %68, null
  %or.cond146.i.i = and i1 %tobool32.not.i.i, %tobool2.not.i109.i.i
  %spec.select.i117.i.i = select i1 %tobool2.not.i109.i.i, ptr %68, ptr @.str.56
  %spec.select148.i.i = select i1 %or.cond146.i.i, ptr @.str.3, ptr %spec.select.i117.i.i
  br label %cond.end37.i.i

cond.end37.i.i:                                   ; preds = %lor.lhs.false.i111.i.i, %do.end28.i.i.cond.end37.i.i_crit_edge
  %cond38.i.i = phi ptr [ @.str.56, %do.end28.i.i.cond.end37.i.i_crit_edge ], [ %spec.select148.i.i, %lor.lhs.false.i111.i.i ]
  %call39.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.116, i32 noundef 1950, ptr noundef %cond38.i.i) #21
  br label %err_out.i

if.end42.i.i:                                     ; preds = %if.end11.i75.i
  %filter_count.i.i = getelementptr inbounds %struct.qede_arfs, ptr %58, i32 0, i32 3
  %71 = ptrtoint ptr %filter_count.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %filter_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool44.not.i.i = icmp eq i32 %72, 0
  br i1 %tobool44.not.i.i, label %if.end42.i.i.if.end80.i.i_crit_edge, label %land.lhs.true.i76.i

if.end42.i.i.if.end80.i.i_crit_edge:              ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end80.i.i

land.lhs.true.i76.i:                              ; preds = %if.end42.i.i
  %mode.i.i = getelementptr inbounds %struct.qede_arfs, ptr %58, i32 0, i32 4
  %73 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mode.i.i, align 4
  %mode46.i.i = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 6
  %75 = ptrtoint ptr %mode46.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mode46.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp47.not.i.i = icmp eq i32 %74, %76
  br i1 %cmp47.not.i.i, label %land.lhs.true.i76.i.if.end80.i.i_crit_edge, label %do.body50.i.i

land.lhs.true.i76.i.if.end80.i.i_crit_edge:       ; preds = %land.lhs.true.i76.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end80.i.i

do.body50.i.i:                                    ; preds = %land.lhs.true.i76.i
  %dp_level51.i.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %77 = ptrtoint ptr %dp_level51.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %dp_level51.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %78)
  %cmp53.i.i = icmp ult i8 %78, 2
  br i1 %cmp53.i.i, label %do.end63.i.i, label %do.body50.i.i.err_out.i_crit_edge, !prof !252

do.body50.i.i.err_out.i_crit_edge:                ; preds = %do.body50.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_out.i

do.end63.i.i:                                     ; preds = %do.body50.i.i
  %ndev65.i.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %79 = ptrtoint ptr %ndev65.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ndev65.i.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %80, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i121.i.i = icmp eq i8 %82, 0
  br i1 %tobool.not.i121.i.i, label %do.end63.i.i.cond.end72.i.i_crit_edge, label %lor.lhs.false.i125.i.i

do.end63.i.i.cond.end72.i.i_crit_edge:            ; preds = %do.end63.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end72.i.i

lor.lhs.false.i125.i.i:                           ; preds = %do.end63.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i122.i.i = call ptr @strchr(ptr noundef %80, i32 noundef 37) #18
  %tobool2.not.i123.i.i = icmp eq ptr %call.i122.i.i, null
  %tobool67.not.i.i = icmp eq ptr %80, null
  %or.cond147.i.i = and i1 %tobool67.not.i.i, %tobool2.not.i123.i.i
  %spec.select.i131.i.i = select i1 %tobool2.not.i123.i.i, ptr %80, ptr @.str.56
  %spec.select149.i.i = select i1 %or.cond147.i.i, ptr @.str.3, ptr %spec.select.i131.i.i
  br label %cond.end72.i.i

cond.end72.i.i:                                   ; preds = %lor.lhs.false.i125.i.i, %do.end63.i.i.cond.end72.i.i_crit_edge
  %cond73.i.i = phi ptr [ @.str.56, %do.end63.i.i.cond.end72.i.i_crit_edge ], [ %spec.select149.i.i, %lor.lhs.false.i125.i.i ]
  %call77.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.116, i32 noundef 1959, ptr noundef %cond73.i.i, i32 noundef %76, i32 noundef %72) #21
  br label %err_out.i

if.end80.i.i:                                     ; preds = %land.lhs.true.i76.i.if.end80.i.i_crit_edge, %if.end42.i.i.if.end80.i.i_crit_edge
  %call81.i.i = call fastcc i32 @qede_parse_actions(ptr noundef %edev, ptr noundef %action.i, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i.i)
  %tobool82.not.i.i = icmp eq i32 %call81.i.i, 0
  %..i.i = select i1 %tobool82.not.i.i, i32 0, i32 -22
  br label %err_out.i

err_out.i:                                        ; preds = %if.end80.i.i, %cond.end72.i.i, %do.body50.i.i.err_out.i_crit_edge, %cond.end37.i.i, %do.body15.i.i.err_out.i_crit_edge, %cond.end.i74.i, %do.body.i62.i.err_out.i_crit_edge, %if.end23.i.err_out.i_crit_edge
  %err.0.i = phi i32 [ -22, %if.end23.i.err_out.i_crit_edge ], [ -22, %do.body.i62.i.err_out.i_crit_edge ], [ -22, %cond.end.i74.i ], [ -22, %do.body15.i.i.err_out.i_crit_edge ], [ -22, %cond.end37.i.i ], [ -22, %do.body50.i.i.err_out.i_crit_edge ], [ -22, %cond.end72.i.i ], [ %..i.i, %if.end80.i.i ]
  call void @ethtool_rx_flow_rule_destroy(ptr noundef %call19.i) #18
  br label %qede_flow_spec_to_rule.exit

qede_flow_spec_to_rule.exit.thread:               ; preds = %cond.end.i, %land.rhs.i.qede_flow_spec_to_rule.exit.thread_crit_edge, %do.body.i.qede_flow_spec_to_rule.exit.thread_crit_edge, %cond.end83.i.i, %do.body61.i.i.qede_flow_spec_to_rule.exit.thread_crit_edge, %cond.end43.i.i, %do.body21.i.i.qede_flow_spec_to_rule.exit.thread_crit_edge, %cond.end.i.i, %do.body.i.i.qede_flow_spec_to_rule.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %input.i) #18
  br label %unlock

qede_flow_spec_to_rule.exit:                      ; preds = %err_out.i, %if.then21.i
  %retval.0.i = phi i32 [ %44, %if.then21.i ], [ %err.0.i, %err_out.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %input.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool1.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool1.not, label %if.end3, label %qede_flow_spec_to_rule.exit.unlock_crit_edge

qede_flow_spec_to_rule.exit.unlock_crit_edge:     ; preds = %qede_flow_spec_to_rule.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.end3:                                          ; preds = %qede_flow_spec_to_rule.exit
  %83 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arfs, align 8
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %tobool.not.i = icmp eq ptr %86, null
  %add.ptr.i = getelementptr i8, ptr %86, i32 -100
  %tobool2.not5255.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not52.i = or i1 %tobool.not.i, %tobool2.not5255.i
  br i1 %tobool2.not52.i, label %if.end3.if.end7_crit_edge, label %land.rhs.lr.ph.i

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

land.rhs.lr.ph.i:                                 ; preds = %if.end3
  %ip_proto5.i = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 5
  %src_port10.i = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 2
  %dst_port17.i = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 3
  %ip_comp.i = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 7
  br label %land.rhs.i59

land.rhs.i59:                                     ; preds = %for.inc.i.land.rhs.i59_crit_edge, %land.rhs.lr.ph.i
  %fltr.053.i = phi ptr [ %add.ptr.i, %land.rhs.lr.ph.i ], [ %add.ptr30.i, %for.inc.i.land.rhs.i59_crit_edge ]
  %node.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.053.i, i32 0, i32 14
  %87 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %node.i, align 4
  %tuple.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.053.i, i32 0, i32 4
  %ip_proto.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.053.i, i32 0, i32 4, i32 5
  %89 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %ip_proto.i, align 2
  %91 = ptrtoint ptr %ip_proto5.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %ip_proto5.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %90, i8 %92)
  %cmp.i58 = icmp eq i8 %90, %92
  br i1 %cmp.i58, label %land.lhs.true.i, label %land.rhs.i59.for.inc.i_crit_edge

land.rhs.i59.for.inc.i_crit_edge:                 ; preds = %land.rhs.i59
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %land.rhs.i59
  %src_port.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.053.i, i32 0, i32 4, i32 2
  %93 = ptrtoint ptr %src_port.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %src_port.i, align 8
  %95 = ptrtoint ptr %src_port10.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %src_port10.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %94, i16 %96)
  %cmp12.i = icmp eq i16 %94, %96
  br i1 %cmp12.i, label %land.lhs.true14.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true14.i:                                ; preds = %land.lhs.true.i
  %dst_port.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %fltr.053.i, i32 0, i32 4, i32 3
  %97 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %dst_port.i, align 2
  %99 = ptrtoint ptr %dst_port17.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %dst_port17.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %98, i16 %100)
  %cmp19.i = icmp eq i16 %98, %100
  br i1 %cmp19.i, label %land.lhs.true21.i, label %land.lhs.true14.i.for.inc.i_crit_edge

land.lhs.true14.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true21.i:                                ; preds = %land.lhs.true14.i
  %101 = ptrtoint ptr %ip_comp.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ip_comp.i, align 4
  %call.i = call zeroext i1 %102(ptr noundef %tuple.i, ptr noundef nonnull %t) #18
  br i1 %call.i, label %land.lhs.true21.i.unlock_crit_edge, label %land.lhs.true21.i.for.inc.i_crit_edge

land.lhs.true21.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true21.i.unlock_crit_edge:               ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

for.inc.i:                                        ; preds = %land.lhs.true21.i.for.inc.i_crit_edge, %land.lhs.true14.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %land.rhs.i59.for.inc.i_crit_edge
  %tobool26.not.i = icmp eq ptr %88, null
  %add.ptr30.i = getelementptr i8, ptr %88, i32 -100
  %tobool2.not56.i = icmp eq ptr %add.ptr30.i, null
  %tobool2.not.i = or i1 %tobool26.not.i, %tobool2.not56.i
  br i1 %tobool2.not.i, label %for.inc.i.if.end7_crit_edge, label %for.inc.i.land.rhs.i59_crit_edge

for.inc.i.land.rhs.i59_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs.i59

for.inc.i.if.end7_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.end7:                                          ; preds = %for.inc.i.if.end7_crit_edge, %if.end3.if.end7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %103 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %103, i32 noundef 3520, i32 noundef 112) #24
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end7.unlock_crit_edge, label %if.end11

if.end7.unlock_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.end11:                                         ; preds = %if.end7
  %eth_proto.i = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 4
  %104 = ptrtoint ptr %eth_proto.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %eth_proto.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %105)
  %cmp.i60 = icmp eq i16 %105, 2048
  %..i = select i1 %cmp.i60, i32 34, i32 54
  %ip_proto.i61 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 5
  %106 = ptrtoint ptr %ip_proto.i61 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %ip_proto.i61, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %107)
  %cmp4.i = icmp eq i8 %107, 6
  %add7.i = add nuw nsw i32 %..i, 20
  %add9.i = or i32 %..i, 8
  %size.1.i = select i1 %cmp4.i, i32 %add7.i, i32 %add9.i
  %call9.i.i64 = call noalias align 128 ptr @__kmalloc(i32 noundef %size.1.i, i32 noundef 3520) #22
  %data = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i, i32 0, i32 1
  %108 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call9.i.i64, ptr %data, align 4
  %tobool15.not = icmp eq ptr %call9.i.i64, null
  br i1 %tobool15.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  call void @kfree(ptr noundef nonnull %call7.i.i) #18
  br label %unlock

if.end17:                                         ; preds = %if.end11
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 6
  %109 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %location, align 8
  %conv = zext i32 %110 to i64
  %sw_id = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i, i32 0, i32 6
  %111 = ptrtoint ptr %sw_id to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %conv, ptr %sw_id, align 8
  %112 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arfs, align 8
  %arfs_fltr_bmap = getelementptr inbounds %struct.qede_arfs, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %arfs_fltr_bmap to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arfs_fltr_bmap, align 4
  call void @_set_bit(i32 noundef %110, ptr noundef %115) #18
  %buf_len = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i, i32 0, i32 3
  %116 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %size.1.i, ptr %buf_len, align 4
  %tuple = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i, i32 0, i32 4
  %117 = call ptr @memcpy(ptr %tuple, ptr %t, i32 56)
  %ring_cookie.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 5
  %118 = ptrtoint ptr %ring_cookie.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %ring_cookie.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %119)
  %cmp.i65 = icmp eq i64 %119, -1
  br i1 %cmp.i65, label %if.then.i, label %if.end.i68

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  %b_is_drop.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i, i32 0, i32 13
  %120 = ptrtoint ptr %b_is_drop.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %b_is_drop.i, align 8
  br label %qede_flow_set_destination.exit

if.end.i68:                                       ; preds = %if.end17
  %and.i.i66 = lshr i64 %119, 32
  %conv.i = trunc i64 %and.i.i66 to i8
  %vfid.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i, i32 0, i32 9
  %121 = ptrtoint ptr %vfid.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv.i, ptr %vfid.i, align 4
  %conv4.i = trunc i64 %119 to i16
  %rxq_id.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i, i32 0, i32 7
  %122 = ptrtoint ptr %rxq_id.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %conv4.i, ptr %rxq_id.i, align 8
  %next_rxq_id.i = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i, i32 0, i32 8
  %123 = ptrtoint ptr %next_rxq_id.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv4.i, ptr %next_rxq_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool.not.i67 = icmp eq i8 %conv.i, 0
  br i1 %tobool.not.i67, label %if.end.i68.qede_flow_set_destination.exit_crit_edge, label %do.body.i70

if.end.i68.qede_flow_set_destination.exit_crit_edge: ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #20
  br label %qede_flow_set_destination.exit

do.body.i70:                                      ; preds = %if.end.i68
  %dp_level.i69 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %124 = ptrtoint ptr %dp_level.i69 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %dp_level.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp9.i = icmp eq i8 %125, 0
  br i1 %cmp9.i, label %land.rhs.i73, label %do.body.i70.qede_flow_set_destination.exit_crit_edge

do.body.i70.qede_flow_set_destination.exit_crit_edge: ; preds = %do.body.i70
  call void @__sanitizer_cov_trace_pc() #20
  br label %qede_flow_set_destination.exit

land.rhs.i73:                                     ; preds = %do.body.i70
  %dp_module.i71 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 4
  %126 = ptrtoint ptr %dp_module.i71 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %dp_module.i71, align 8
  %and.i72 = and i32 %127, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i72)
  %tobool11.not.i = icmp eq i32 %and.i72, 0
  br i1 %tobool11.not.i, label %land.rhs.i73.qede_flow_set_destination.exit_crit_edge, label %do.end.i76, !prof !254

land.rhs.i73.qede_flow_set_destination.exit_crit_edge: ; preds = %land.rhs.i73
  call void @__sanitizer_cov_trace_pc() #20
  br label %qede_flow_set_destination.exit

do.end.i76:                                       ; preds = %land.rhs.i73
  %ndev.i74 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %128 = ptrtoint ptr %ndev.i74 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ndev.i74, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %129, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool.not.i.i75 = icmp eq i8 %131, 0
  br i1 %tobool.not.i.i75, label %do.end.i76.cond.end.i83_crit_edge, label %lor.lhs.false.i.i81

do.end.i76.cond.end.i83_crit_edge:                ; preds = %do.end.i76
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end.i83

lor.lhs.false.i.i81:                              ; preds = %do.end.i76
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i77 = call ptr @strchr(ptr noundef %129, i32 noundef 37) #18
  %tobool2.not.i.i78 = icmp eq ptr %call.i.i77, null
  %tobool17.not.i = icmp eq ptr %129, null
  %or.cond.i79 = and i1 %tobool17.not.i, %tobool2.not.i.i78
  %spec.select.i41.i = select i1 %tobool2.not.i.i78, ptr %129, ptr @.str.56
  %spec.select.i80 = select i1 %or.cond.i79, ptr @.str.3, ptr %spec.select.i41.i
  br label %cond.end.i83

cond.end.i83:                                     ; preds = %lor.lhs.false.i.i81, %do.end.i76.cond.end.i83_crit_edge
  %cond.i82 = phi ptr [ @.str.56, %do.end.i76.cond.end.i83_crit_edge ], [ %spec.select.i80, %lor.lhs.false.i.i81 ]
  %132 = trunc i64 %and.i.i66 to i32
  %conv21.i = and i32 %132, 255
  %sub.i = add nsw i32 %conv21.i, -1
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.124, i32 noundef 1622, ptr noundef %cond.i82, i32 noundef %sub.i) #21
  br label %qede_flow_set_destination.exit

qede_flow_set_destination.exit:                   ; preds = %cond.end.i83, %land.rhs.i73.qede_flow_set_destination.exit_crit_edge, %do.body.i70.qede_flow_set_destination.exit_crit_edge, %if.end.i68.qede_flow_set_destination.exit_crit_edge, %if.then.i
  %build_hdr = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i, i32 0, i32 4, i32 8
  %133 = ptrtoint ptr %build_hdr to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %build_hdr, align 8
  %135 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %data, align 4
  call void %134(ptr noundef %tuple, ptr noundef %136) #18
  %call24 = call fastcc i32 @qede_enqueue_fltr_and_config_searcher(ptr noundef %edev, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %qede_flow_set_destination.exit.unlock_crit_edge

qede_flow_set_destination.exit.unlock_crit_edge:  ; preds = %qede_flow_set_destination.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.end27:                                         ; preds = %qede_flow_set_destination.exit
  call void @__sanitizer_cov_trace_pc() #20
  %rxq_id = getelementptr inbounds %struct.qede_arfs_fltr_node, ptr %call7.i.i, i32 0, i32 7
  %137 = ptrtoint ptr %rxq_id to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %rxq_id, align 8
  call fastcc void @qede_configure_arfs_fltr(ptr noundef %edev, ptr noundef nonnull %call7.i.i, i16 noundef zeroext %138, i1 noundef zeroext true)
  %call28 = call fastcc i32 @qede_poll_arfs_filter_config(ptr noundef %edev, ptr noundef nonnull %call7.i.i)
  br label %unlock

unlock:                                           ; preds = %if.end27, %qede_flow_set_destination.exit.unlock_crit_edge, %if.then16, %if.end7.unlock_crit_edge, %land.lhs.true21.i.unlock_crit_edge, %qede_flow_spec_to_rule.exit.unlock_crit_edge, %qede_flow_spec_to_rule.exit.thread, %entry.unlock_crit_edge
  %rc.0 = phi i32 [ %retval.0.i, %qede_flow_spec_to_rule.exit.unlock_crit_edge ], [ %call24, %qede_flow_set_destination.exit.unlock_crit_edge ], [ %call28, %if.end27 ], [ -12, %if.then16 ], [ -1, %entry.unlock_crit_edge ], [ -12, %if.end7.unlock_crit_edge ], [ -95, %qede_flow_spec_to_rule.exit.thread ], [ -22, %land.lhs.true21.i.unlock_crit_edge ]
  call void @__qede_unlock(ptr noundef %edev) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %t) #18
  ret i32 %rc.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_cpu_rmap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_udp_tunnel_sync(ptr noundef %dev, i32 noundef %table) #0 align 64 {
entry:
  %tunn_params = alloca %struct.qed_tunn_params, align 8
  %ti = alloca %struct.udp_tunnel_info, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tunn_params) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ti) #18
  %0 = ptrtoint ptr %tunn_params to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %tunn_params, align 8
  %1 = ptrtoint ptr %ti to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %ti, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @udp_tunnel_nic_ops to i32))
  %2 = load ptr, ptr @udp_tunnel_nic_ops, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %udp_tunnel_nic_get_port.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

udp_tunnel_nic_get_port.exit:                     ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  call void %4(ptr noundef %dev, i32 noundef %table, i32 noundef 0, ptr noundef nonnull %ti) #18
  %5 = ptrtoint ptr %ti to i32
  call void @__asan_load2_noabort(i32 %5)
  %.pr = load i16, ptr %ti, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %.pr)
  %cmp = icmp eq i16 %.pr, 1
  br i1 %cmp, label %if.then, label %udp_tunnel_nic_get_port.exit.if.else_crit_edge

udp_tunnel_nic_get_port.exit.if.else_crit_edge:   ; preds = %udp_tunnel_nic_get_port.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

if.then:                                          ; preds = %udp_tunnel_nic_get_port.exit
  call void @__sanitizer_cov_trace_pc() #20
  %update_vxlan_port = getelementptr inbounds %struct.qed_tunn_params, ptr %tunn_params, i32 0, i32 1
  %6 = ptrtoint ptr %update_vxlan_port to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %update_vxlan_port, align 2
  %port = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 2
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %port, align 4
  %9 = ptrtoint ptr %tunn_params to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %tunn_params, align 8
  br label %if.end

if.else:                                          ; preds = %udp_tunnel_nic_get_port.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %update_geneve_port = getelementptr inbounds %struct.qed_tunn_params, ptr %tunn_params, i32 0, i32 3
  %10 = ptrtoint ptr %update_geneve_port to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %update_geneve_port, align 2
  %port2 = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 2
  %11 = ptrtoint ptr %port2 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %port2, align 4
  %geneve_port = getelementptr inbounds %struct.qed_tunn_params, ptr %tunn_params, i32 0, i32 2
  %13 = ptrtoint ptr %geneve_port to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %geneve_port, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ 3502, %if.else ], [ 3500, %if.then ]
  call void @__qede_lock(ptr noundef %add.ptr.i) #18
  %ops = getelementptr i8, ptr %dev, i32 2332
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %tunn_config = getelementptr inbounds %struct.qed_eth_ops, ptr %15, i32 0, i32 20
  %16 = ptrtoint ptr %tunn_config to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tunn_config, align 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 8
  %call3 = call i32 %17(ptr noundef %19, ptr noundef nonnull %tunn_params) #18
  call void @__qede_unlock(ptr noundef %add.ptr.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %geneve_dst_port = getelementptr i8, ptr %dev, i32 %.sink
  %port6 = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 2
  %20 = ptrtoint ptr %port6 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %port6, align 4
  %22 = ptrtoint ptr %geneve_dst_port to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %geneve_dst_port, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ti) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tunn_params) #18
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_xdp_reload_func(ptr noundef %edev, ptr nocapture noundef readonly %args) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %xdp_prog = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 44
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xdp_prog, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !256
  %u = getelementptr inbounds %struct.qede_reload_args, ptr %args, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 8
  %2 = ptrtoint ptr %1 to i32
  tail call void @llvm.prefetch.p0(ptr %xdp_prog, i32 1, i32 3, i32 1) #18
  %3 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %2, ptr %xdp_prog) #18, !srcloc !257
  %asmresult.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %4 = inttoptr i32 %asmresult.i to ptr
  tail call void @bpf_prog_put(ptr noundef nonnull %4) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_basic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qede_flow_parse_v4_common(ptr nocapture noundef readonly %edev, ptr noundef %rule, ptr nocapture noundef %t) unnamed_addr #0 align 64 {
entry:
  %match = alloca %struct.flow_match_ipv4_addrs, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %entry.if.end27_crit_edge, label %if.then

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match) #18
  %4 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !255
  %5 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %match, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !255
  call void @flow_rule_match_ipv4_addrs(ptr noundef %rule, ptr noundef nonnull %match) #18
  %7 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %match, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then.lor.lhs.false_crit_edge, label %land.lhs.true

if.then.lor.lhs.false_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.not = icmp eq i32 %14, -1
  br i1 %cmp.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.then.lor.lhs.false_crit_edge
  %dst = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool3.not = icmp eq i32 %16, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %land.lhs.true4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true4:                                   ; preds = %lor.lhs.false
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  %dst6 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %dst6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dst6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp7.not = icmp eq i32 %20, -1
  br i1 %cmp7.not, label %land.lhs.true4.cleanup_crit_edge, label %land.lhs.true4.do.body_crit_edge

land.lhs.true4.do.body_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true4.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %21 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp9 = icmp ult i8 %22, 3
  br i1 %cmp9, label %do.end, label %do.body.cleanup.thread_crit_edge, !prof !252

do.body.cleanup.thread_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

do.end:                                           ; preds = %do.body
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %23 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ndev, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = call ptr @strchr(ptr noundef %24, i32 noundef 37) #18
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool16.not = icmp eq ptr %24, null
  %or.cond = and i1 %tobool16.not, %tobool2.not.i
  %spec.select.i45 = select i1 %tobool2.not.i, ptr %24, ptr @.str.56
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i45
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.56, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, i32 noundef 1765, ptr noundef %cond) #21
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cond.end, %do.body.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match) #18
  br label %return

cleanup:                                          ; preds = %land.lhs.true4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %27 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %10, ptr %t, align 4
  %28 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dst, align 4
  %30 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %30, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match) #18
  br label %if.end27

if.end27:                                         ; preds = %cleanup, %entry.if.end27_crit_edge
  %call28 = call fastcc i32 @qede_flow_parse_ports(ptr noundef %edev, ptr noundef %rule, ptr noundef %t)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.return_crit_edge

if.end27.return_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end31:                                         ; preds = %if.end27
  %src_port.i = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 2
  %32 = ptrtoint ptr %src_port.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %src_port.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool.not.i49 = icmp eq i16 %33, 0
  %dst_port10.i = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 3
  %34 = ptrtoint ptr %dst_port10.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %dst_port10.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool12.not.i = icmp eq i16 %35, 0
  br i1 %tobool.not.i49, label %land.lhs.true9.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end31
  br i1 %tobool12.not.i, label %land.lhs.true.i.do.body.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %36 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool4.not.i = icmp eq i32 %37, 0
  br i1 %tobool4.not.i, label %land.lhs.true3.i.do.body.i_crit_edge, label %land.lhs.true5.i

land.lhs.true3.i.do.body.i_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true3.i
  %38 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool6.not.i = icmp eq i32 %40, 0
  br i1 %tobool6.not.i, label %land.lhs.true5.i.do.body.i_crit_edge, label %land.lhs.true5.i.if.end58.i_crit_edge

land.lhs.true5.i.if.end58.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end58.i

land.lhs.true5.i.do.body.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

land.lhs.true9.i:                                 ; preds = %if.end31
  br i1 %tobool12.not.i, label %land.lhs.true25.i, label %land.lhs.true13.i

land.lhs.true13.i:                                ; preds = %land.lhs.true9.i
  %41 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool14.not.i = icmp eq i32 %42, 0
  br i1 %tobool14.not.i, label %land.lhs.true15.i, label %land.lhs.true13.i.do.body.i_crit_edge

land.lhs.true13.i.do.body.i_crit_edge:            ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

land.lhs.true15.i:                                ; preds = %land.lhs.true13.i
  %43 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool16.not.i = icmp eq i32 %45, 0
  br i1 %tobool16.not.i, label %land.lhs.true15.i.if.end58.i_crit_edge, label %land.lhs.true15.i.do.body.i_crit_edge

land.lhs.true15.i.do.body.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

land.lhs.true15.i.if.end58.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end58.i

land.lhs.true25.i:                                ; preds = %land.lhs.true9.i
  %46 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool26.not.i = icmp eq i32 %48, 0
  %49 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool28.not.i = icmp eq i32 %50, 0
  br i1 %tobool26.not.i, label %land.lhs.true27.i, label %land.lhs.true39.i

land.lhs.true27.i:                                ; preds = %land.lhs.true25.i
  br i1 %tobool28.not.i, label %land.lhs.true27.i.do.body.i_crit_edge, label %land.lhs.true27.i.if.end58.i_crit_edge

land.lhs.true27.i.if.end58.i_crit_edge:           ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end58.i

land.lhs.true27.i.do.body.i_crit_edge:            ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

land.lhs.true39.i:                                ; preds = %land.lhs.true25.i
  br i1 %tobool28.not.i, label %land.lhs.true39.i.if.end58.i_crit_edge, label %land.lhs.true39.i.do.body.i_crit_edge

land.lhs.true39.i.do.body.i_crit_edge:            ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

land.lhs.true39.i.if.end58.i_crit_edge:           ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end58.i

do.body.i:                                        ; preds = %land.lhs.true39.i.do.body.i_crit_edge, %land.lhs.true27.i.do.body.i_crit_edge, %land.lhs.true15.i.do.body.i_crit_edge, %land.lhs.true13.i.do.body.i_crit_edge, %land.lhs.true5.i.do.body.i_crit_edge, %land.lhs.true3.i.do.body.i_crit_edge, %land.lhs.true.i.do.body.i_crit_edge
  %dp_level.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %51 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %52)
  %cmp.i = icmp ult i8 %52, 2
  br i1 %cmp.i, label %do.end.i, label %do.body.i.return_crit_edge, !prof !252

do.body.i.return_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

do.end.i:                                         ; preds = %do.body.i
  %ndev.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %53 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ndev.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i.i, label %do.end.i.cond.end.i_crit_edge, label %lor.lhs.false.i.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end.i

lor.lhs.false.i.i:                                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i = call ptr @strchr(ptr noundef %54, i32 noundef 37) #18
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  %tobool50.not.i = icmp eq ptr %54, null
  %or.cond.i = and i1 %tobool50.not.i, %tobool2.not.i.i
  %spec.select.i86.i = select i1 %tobool2.not.i.i, ptr %54, ptr @.str.56
  %spec.select.i50 = select i1 %or.cond.i, ptr @.str.3, ptr %spec.select.i86.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %lor.lhs.false.i.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ @.str.56, %do.end.i.cond.end.i_crit_edge ], [ %spec.select.i50, %lor.lhs.false.i.i ]
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, i32 noundef 1541, ptr noundef %cond.i) #21
  br label %return

if.end58.i:                                       ; preds = %land.lhs.true39.i.if.end58.i_crit_edge, %land.lhs.true27.i.if.end58.i_crit_edge, %land.lhs.true15.i.if.end58.i_crit_edge, %land.lhs.true5.i.if.end58.i_crit_edge
  %.sink.i = phi i32 [ 1, %land.lhs.true5.i.if.end58.i_crit_edge ], [ 2, %land.lhs.true15.i.if.end58.i_crit_edge ], [ 4, %land.lhs.true27.i.if.end58.i_crit_edge ], [ 3, %land.lhs.true39.i.if.end58.i_crit_edge ]
  %mode18.i = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 6
  %57 = ptrtoint ptr %mode18.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %.sink.i, ptr %mode18.i, align 4
  %ip_comp.i = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 7
  %58 = ptrtoint ptr %ip_comp.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @qede_flow_spec_ipv4_cmp, ptr %ip_comp.i, align 4
  %build_hdr.i = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 8
  %59 = ptrtoint ptr %build_hdr.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @qede_flow_build_ipv4_hdr, ptr %build_hdr.i, align 4
  %stringify.i = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 9
  %60 = ptrtoint ptr %stringify.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @qede_flow_stringify_ipv4_hdr, ptr %stringify.i, align 4
  br label %return

return:                                           ; preds = %if.end58.i, %cond.end.i, %do.body.i.return_crit_edge, %if.end27.return_crit_edge, %cleanup.thread
  %retval.1 = phi i32 [ -22, %if.end27.return_crit_edge ], [ -22, %cleanup.thread ], [ 0, %if.end58.i ], [ -95, %do.body.i.return_crit_edge ], [ -95, %cond.end.i ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv4_addrs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qede_flow_parse_ports(ptr nocapture noundef readonly %edev, ptr noundef %rule, ptr nocapture noundef writeonly %t) unnamed_addr #0 align 64 {
entry:
  %match = alloca %struct.flow_match_ports, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i.i = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match) #18
  %4 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !255
  %5 = getelementptr inbounds %struct.flow_match_ports, ptr %match, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !255
  call void @flow_rule_match_ports(ptr noundef %rule, ptr noundef nonnull %match) #18
  %7 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %match, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %if.then.lor.lhs.false_crit_edge, label %land.lhs.true

if.then.lor.lhs.false_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %14)
  %cmp.not = icmp eq i16 %14, -1
  br i1 %cmp.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.then.lor.lhs.false_crit_edge
  %dst = getelementptr inbounds %struct.anon.227, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %dst to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %dst, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool6.not = icmp eq i16 %16, 0
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %land.lhs.true7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true7:                                   ; preds = %lor.lhs.false
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  %dst9 = getelementptr inbounds %struct.anon.227, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %dst9 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %dst9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %20)
  %cmp11.not = icmp eq i16 %20, -1
  br i1 %cmp11.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.do.body_crit_edge

land.lhs.true7.do.body_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true7.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %21 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp15 = icmp ult i8 %22, 3
  br i1 %cmp15, label %do.end, label %do.body.cleanup.thread_crit_edge, !prof !252

do.body.cleanup.thread_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

do.end:                                           ; preds = %do.body
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %23 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ndev, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = call ptr @strchr(ptr noundef %24, i32 noundef 37) #18
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool22.not = icmp eq ptr %24, null
  %or.cond = and i1 %tobool22.not, %tobool2.not.i
  %spec.select.i41 = select i1 %tobool2.not.i, ptr %24, ptr @.str.56
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i41
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.56, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89, i32 noundef 1712, ptr noundef %cond) #21
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cond.end, %do.body.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match) #18
  br label %return

cleanup:                                          ; preds = %land.lhs.true7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %src_port = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 2
  %27 = ptrtoint ptr %src_port to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %10, ptr %src_port, align 4
  %28 = ptrtoint ptr %dst to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %dst, align 2
  %dst_port = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 3
  %30 = ptrtoint ptr %dst_port to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %dst_port, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match) #18
  br label %return

return:                                           ; preds = %cleanup, %cleanup.thread, %entry.return_crit_edge
  %retval.1 = phi i32 [ -22, %cleanup.thread ], [ 0, %cleanup ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ports(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @qede_flow_spec_ipv4_cmp(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %eth_proto = getelementptr inbounds %struct.qede_arfs_tuple, ptr %a, i32 0, i32 4
  %0 = ptrtoint ptr %eth_proto to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %eth_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %1)
  %cmp.not = icmp eq i16 %1, 2048
  br i1 %cmp.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %eth_proto2 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %b, i32 0, i32 4
  %2 = ptrtoint ptr %eth_proto2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %eth_proto2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %3)
  %cmp4.not = icmp eq i16 %3, 2048
  br i1 %cmp4.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %a, align 4
  %6 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %b, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp6 = icmp eq i32 %5, %7
  br i1 %cmp6, label %land.rhs, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %8 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %a, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %b, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %13)
  %cmp8 = icmp eq i32 %10, %13
  br label %return

return:                                           ; preds = %land.rhs, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false.return_crit_edge ], [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ %cmp8, %land.rhs ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qede_flow_build_ipv4_hdr(ptr nocapture noundef readonly %t, ptr nocapture noundef writeonly %header) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %header, i32 14
  %add.ptr1 = getelementptr i8, ptr %header, i32 34
  %eth_proto = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 4
  %0 = ptrtoint ptr %eth_proto to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %eth_proto, align 4
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %header, i32 0, i32 2
  %2 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 %1, ptr %h_proto, align 1
  %3 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %t, align 4
  %saddr = getelementptr i8, ptr %header, i32 26
  %5 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %saddr, align 4
  %6 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %daddr = getelementptr i8, ptr %header, i32 30
  %9 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %daddr, align 4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 69, ptr %add.ptr, align 4
  %ip_proto = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 5
  %11 = ptrtoint ptr %ip_proto to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ip_proto, align 2
  %protocol = getelementptr i8, ptr %header, i32 23
  %13 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %protocol, align 1
  %14 = load i16, ptr %eth_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %14)
  %cmp.i = icmp eq i16 %14, 2048
  %..i = select i1 %cmp.i, i32 34, i32 54
  %15 = ptrtoint ptr %ip_proto to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ip_proto, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %16)
  %cmp4.i = icmp eq i8 %16, 6
  %add7.i = add nuw nsw i32 %..i, 20
  %add9.i = or i32 %..i, 8
  %size.1.i = select i1 %cmp4.i, i32 %add7.i, i32 %add9.i
  %17 = trunc i32 %size.1.i to i16
  %conv = add nsw i16 %17, -14
  %tot_len = getelementptr i8, ptr %header, i32 16
  %18 = ptrtoint ptr %tot_len to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %tot_len, align 2
  %src_port = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 2
  %19 = ptrtoint ptr %src_port to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %src_port, align 4
  %21 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %add.ptr1, align 2
  %dst_port = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 3
  %22 = ptrtoint ptr %dst_port to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %dst_port, align 2
  %arrayidx6 = getelementptr i8, ptr %header, i32 36
  %24 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %arrayidx6, align 2
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_flow_stringify_ipv4_hdr(ptr noundef %t, ptr nocapture noundef writeonly %buffer) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ip_proto = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 5
  %0 = ptrtoint ptr %ip_proto to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ip_proto, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %1)
  %cmp = icmp eq i8 %1, 6
  %cond = select i1 %cmp, ptr @.str.92, ptr @.str.93
  %src_port = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 2
  %2 = ptrtoint ptr %src_port to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %src_port, align 4
  %conv2 = zext i16 %3 to i32
  %4 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 1
  %dst_port = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 3
  %5 = ptrtoint ptr %dst_port to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %dst_port, align 2
  %conv3 = zext i16 %6 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buffer, i32 noundef 64, ptr noundef nonnull @.str.94, ptr noundef nonnull %cond, ptr noundef %t, i32 noundef %conv2, ptr noundef %4, i32 noundef %conv3)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qede_flow_parse_v6_common(ptr nocapture noundef readonly %edev, ptr noundef %rule, ptr nocapture noundef %t) unnamed_addr #0 align 64 {
entry:
  %zero_addr = alloca %struct.in6_addr, align 4
  %addr = alloca %struct.in6_addr, align 4
  %match = alloca %struct.flow_match_ipv6_addrs, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %zero_addr) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr) #18
  %0 = call ptr @memset(ptr %zero_addr, i32 0, i32 16)
  %1 = call ptr @memset(ptr %addr, i32 255, i32 16)
  %2 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rule, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and.i.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %entry.if.end31_crit_edge, label %if.then

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end31

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match) #18
  %6 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !255
  %7 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %match, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !255
  call void @flow_rule_match_ipv6_addrs(ptr noundef %rule, ptr noundef nonnull %match) #18
  %9 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %match, align 4
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %10, ptr noundef nonnull dereferenceable(16) %zero_addr, i32 16) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then.lor.lhs.false_crit_edge, label %land.lhs.true

if.then.lor.lhs.false_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %7, align 4
  %bcmp51 = call i32 @bcmp(ptr noundef dereferenceable(16) %12, ptr noundef nonnull dereferenceable(16) %addr, i32 16) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp51)
  %tobool4.not = icmp eq i32 %bcmp51, 0
  br i1 %tobool4.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.then.lor.lhs.false_crit_edge
  %dst = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %10, i32 0, i32 1
  %bcmp49 = call i32 @bcmp(ptr noundef dereferenceable(16) %dst, ptr noundef nonnull dereferenceable(16) %zero_addr, i32 16) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp49)
  %tobool7.not = icmp eq i32 %bcmp49, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.end26_crit_edge, label %land.lhs.true8

lor.lhs.false.if.end26_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

land.lhs.true8:                                   ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %7, align 4
  %dst10 = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %14, i32 0, i32 1
  %bcmp50 = call i32 @bcmp(ptr noundef dereferenceable(16) %dst10, ptr noundef nonnull dereferenceable(16) %addr, i32 16) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp50)
  %tobool12.not = icmp eq i32 %bcmp50, 0
  br i1 %tobool12.not, label %land.lhs.true8.if.end26_crit_edge, label %land.lhs.true8.do.body_crit_edge

land.lhs.true8.do.body_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

land.lhs.true8.if.end26_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

do.body:                                          ; preds = %land.lhs.true8.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %15 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %cmp = icmp ult i8 %16, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !252

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end:                                           ; preds = %do.body
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %17 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = call ptr @strchr(ptr noundef %18, i32 noundef 37) #18
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool20.not = icmp eq ptr %18, null
  %or.cond = and i1 %tobool20.not, %tobool2.not.i
  %spec.select.i55 = select i1 %tobool2.not.i, ptr %18, ptr @.str.56
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i55
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.56, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, i32 noundef 1741, ptr noundef %cond) #21
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true8.if.end26_crit_edge, %lor.lhs.false.if.end26_crit_edge
  %21 = call ptr @memcpy(ptr %t, ptr %10, i32 16)
  %22 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 1
  %23 = call ptr @memcpy(ptr %22, ptr %dst, i32 16)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match) #18
  br label %if.end31

cleanup:                                          ; preds = %cond.end, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match) #18
  br label %cleanup37

if.end31:                                         ; preds = %if.end26, %entry.if.end31_crit_edge
  %call32 = call fastcc i32 @qede_flow_parse_ports(ptr noundef %edev, ptr noundef %rule, ptr noundef %t)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.cleanup37_crit_edge

if.end31.cleanup37_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup37

if.end35:                                         ; preds = %if.end31
  %src_port.i = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 2
  %24 = ptrtoint ptr %src_port.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %src_port.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.i59 = icmp eq i16 %25, 0
  %dst_port11.i = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 3
  %26 = ptrtoint ptr %dst_port11.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %dst_port11.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool13.not.i = icmp eq i16 %27, 0
  br i1 %tobool.not.i59, label %land.lhs.true10.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end35
  br i1 %tobool13.not.i, label %land.lhs.true.i.do.body.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %bcmp102.i = call i32 @bcmp(ptr noundef dereferenceable(16) %t, ptr noundef nonnull dereferenceable(16) %zero_addr, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp102.i)
  %tobool4.not.i = icmp eq i32 %bcmp102.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true3.i.do.body.i_crit_edge, label %land.lhs.true5.i

land.lhs.true3.i.do.body.i_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true3.i
  %28 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 1
  %bcmp103.i = call i32 @bcmp(ptr noundef dereferenceable(16) %28, ptr noundef nonnull dereferenceable(16) %zero_addr, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp103.i)
  %tobool7.not.i = icmp eq i32 %bcmp103.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true5.i.do.body.i_crit_edge, label %land.lhs.true5.i.if.end66.i_crit_edge

land.lhs.true5.i.if.end66.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end66.i

land.lhs.true5.i.do.body.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

land.lhs.true10.i:                                ; preds = %if.end35
  br i1 %tobool13.not.i, label %land.lhs.true28.i, label %land.lhs.true14.i

land.lhs.true14.i:                                ; preds = %land.lhs.true10.i
  %bcmp100.i = call i32 @bcmp(ptr noundef dereferenceable(16) %t, ptr noundef nonnull dereferenceable(16) %zero_addr, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp100.i)
  %tobool16.not.i = icmp eq i32 %bcmp100.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true17.i, label %land.lhs.true14.i.do.body.i_crit_edge

land.lhs.true14.i.do.body.i_crit_edge:            ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

land.lhs.true17.i:                                ; preds = %land.lhs.true14.i
  %29 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 1
  %bcmp101.i = call i32 @bcmp(ptr noundef dereferenceable(16) %29, ptr noundef nonnull dereferenceable(16) %zero_addr, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp101.i)
  %tobool19.not.i = icmp eq i32 %bcmp101.i, 0
  br i1 %tobool19.not.i, label %land.lhs.true17.i.if.end66.i_crit_edge, label %land.lhs.true17.i.do.body.i_crit_edge

land.lhs.true17.i.do.body.i_crit_edge:            ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

land.lhs.true17.i.if.end66.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end66.i

land.lhs.true28.i:                                ; preds = %land.lhs.true10.i
  %30 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 1
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %30, ptr noundef nonnull dereferenceable(16) %zero_addr, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool30.not.i = icmp eq i32 %bcmp.i, 0
  %bcmp97.i = call i32 @bcmp(ptr noundef dereferenceable(16) %t, ptr noundef nonnull dereferenceable(16) %zero_addr, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp97.i)
  %tobool33.not.i = icmp eq i32 %bcmp97.i, 0
  br i1 %tobool30.not.i, label %land.lhs.true31.i, label %land.lhs.true45.i

land.lhs.true31.i:                                ; preds = %land.lhs.true28.i
  br i1 %tobool33.not.i, label %land.lhs.true31.i.do.body.i_crit_edge, label %land.lhs.true31.i.if.end66.i_crit_edge

land.lhs.true31.i.if.end66.i_crit_edge:           ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end66.i

land.lhs.true31.i.do.body.i_crit_edge:            ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

land.lhs.true45.i:                                ; preds = %land.lhs.true28.i
  br i1 %tobool33.not.i, label %land.lhs.true45.i.if.end66.i_crit_edge, label %land.lhs.true45.i.do.body.i_crit_edge

land.lhs.true45.i.do.body.i_crit_edge:            ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

land.lhs.true45.i.if.end66.i_crit_edge:           ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end66.i

do.body.i:                                        ; preds = %land.lhs.true45.i.do.body.i_crit_edge, %land.lhs.true31.i.do.body.i_crit_edge, %land.lhs.true17.i.do.body.i_crit_edge, %land.lhs.true14.i.do.body.i_crit_edge, %land.lhs.true5.i.do.body.i_crit_edge, %land.lhs.true3.i.do.body.i_crit_edge, %land.lhs.true.i.do.body.i_crit_edge
  %dp_level.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %31 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %cmp.i = icmp ult i8 %32, 2
  br i1 %cmp.i, label %do.end.i, label %do.body.i.cleanup37_crit_edge, !prof !252

do.body.i.cleanup37_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup37

do.end.i:                                         ; preds = %do.body.i
  %ndev.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %33 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ndev.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i.i, label %do.end.i.cond.end.i_crit_edge, label %lor.lhs.false.i.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end.i

lor.lhs.false.i.i:                                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i = call ptr @strchr(ptr noundef %34, i32 noundef 37) #18
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  %tobool58.not.i = icmp eq ptr %34, null
  %or.cond.i = and i1 %tobool58.not.i, %tobool2.not.i.i
  %spec.select.i107.i = select i1 %tobool2.not.i.i, ptr %34, ptr @.str.56
  %spec.select.i60 = select i1 %or.cond.i, ptr @.str.3, ptr %spec.select.i107.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %lor.lhs.false.i.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ @.str.56, %do.end.i.cond.end.i_crit_edge ], [ %spec.select.i60, %lor.lhs.false.i.i ]
  %call61.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.97, i32 noundef 1576, ptr noundef %cond.i) #21
  br label %cleanup37

if.end66.i:                                       ; preds = %land.lhs.true45.i.if.end66.i_crit_edge, %land.lhs.true31.i.if.end66.i_crit_edge, %land.lhs.true17.i.if.end66.i_crit_edge, %land.lhs.true5.i.if.end66.i_crit_edge
  %.sink.i = phi i32 [ 1, %land.lhs.true5.i.if.end66.i_crit_edge ], [ 2, %land.lhs.true17.i.if.end66.i_crit_edge ], [ 4, %land.lhs.true31.i.if.end66.i_crit_edge ], [ 3, %land.lhs.true45.i.if.end66.i_crit_edge ]
  %mode21.i = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 6
  %37 = ptrtoint ptr %mode21.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink.i, ptr %mode21.i, align 4
  %ip_comp.i = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 7
  %38 = ptrtoint ptr %ip_comp.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @qede_flow_spec_ipv6_cmp, ptr %ip_comp.i, align 4
  %build_hdr.i = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 8
  %39 = ptrtoint ptr %build_hdr.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @qede_flow_build_ipv6_hdr, ptr %build_hdr.i, align 4
  br label %cleanup37

cleanup37:                                        ; preds = %if.end66.i, %cond.end.i, %do.body.i.cleanup37_crit_edge, %if.end31.cleanup37_crit_edge, %cleanup
  %retval.1 = phi i32 [ -22, %cleanup ], [ -22, %if.end31.cleanup37_crit_edge ], [ 0, %if.end66.i ], [ -95, %do.body.i.cleanup37_crit_edge ], [ -95, %cond.end.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %zero_addr) #18
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv6_addrs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @qede_flow_spec_ipv6_cmp(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %eth_proto = getelementptr inbounds %struct.qede_arfs_tuple, ptr %a, i32 0, i32 4
  %0 = ptrtoint ptr %eth_proto to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %eth_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %1)
  %cmp.not = icmp eq i16 %1, -31011
  br i1 %cmp.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %eth_proto2 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %b, i32 0, i32 4
  %2 = ptrtoint ptr %eth_proto2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %eth_proto2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %3)
  %cmp4.not = icmp eq i16 %3, -31011
  br i1 %cmp4.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %a, ptr noundef dereferenceable(16) %b, i32 16) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end7, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %4 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %a, i32 0, i32 1
  %5 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %b, i32 0, i32 1
  %bcmp16 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %4, ptr noundef dereferenceable(16) %5, i32 16) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp16)
  %tobool9.not = icmp eq i32 %bcmp16, 0
  br label %return

return:                                           ; preds = %if.end7, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false.return_crit_edge ], [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ %tobool9.not, %if.end7 ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qede_flow_build_ipv6_hdr(ptr nocapture noundef readonly %t, ptr nocapture noundef %header) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %header, i32 14
  %eth_proto = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 4
  %0 = ptrtoint ptr %eth_proto to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %eth_proto, align 4
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %header, i32 0, i32 2
  %2 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 %1, ptr %h_proto, align 1
  %saddr = getelementptr i8, ptr %header, i32 22
  %3 = call ptr @memcpy(ptr %saddr, ptr %t, i32 16)
  %daddr = getelementptr i8, ptr %header, i32 38
  %4 = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %daddr, ptr %4, i32 16)
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %add.ptr, align 4
  %bf.clear = and i8 %bf.load, 15
  %bf.set = or i8 %bf.clear, 96
  store i8 %bf.set, ptr %add.ptr, align 4
  %ip_proto = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 5
  %7 = ptrtoint ptr %ip_proto to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ip_proto, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %8)
  %cmp = icmp eq i8 %8, 6
  %spec.select = select i1 %cmp, i8 6, i8 17
  %spec.select22 = select i1 %cmp, i16 20, i16 8
  %9 = getelementptr i8, ptr %header, i32 20
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select, ptr %9, align 2
  %11 = getelementptr i8, ptr %header, i32 18
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %spec.select22, ptr %11, align 4
  %add.ptr1 = getelementptr i8, ptr %header, i32 54
  %src_port = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 2
  %13 = ptrtoint ptr %src_port to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %src_port, align 4
  %15 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %add.ptr1, align 2
  %dst_port = getelementptr inbounds %struct.qede_arfs_tuple, ptr %t, i32 0, i32 3
  %16 = ptrtoint ptr %dst_port to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %dst_port, align 2
  %arrayidx6 = getelementptr i8, ptr %header, i32 56
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %arrayidx6, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ethtool_rx_flow_rule_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_rx_flow_rule_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 137)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 137)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nobuiltin nounwind }
attributes #24 = { nounwind allocsize(2) }
attributes #25 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !103, !104, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !123, !124, !126, !127, !128, !129, !130, !132, !134, !136, !138, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !174, !176, !178, !180, !182, !183, !184, !185, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !200, !201, !203, !205, !207, !209, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242}
!llvm.module.flags = !{!243, !244, !245, !246, !247, !248, !249, !250}
!llvm.ident = !{!251}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 194, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qede_arfs_filter_op._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qede_arfs_filter_op._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 303, i32 3}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @qede_poll_for_freeing_arfs_filters._entry, !8, !"_entry", i1 false, i1 false}
!11 = !{ptr @qede_poll_for_freeing_arfs_filters._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @qede_alloc_arfs.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 321, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 683, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @qede_vlan_rx_add_vid._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @qede_vlan_rx_add_vid._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 687, i32 3}
!22 = !{ptr @qede_vlan_rx_add_vid._entry.9, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @qede_vlan_rx_add_vid._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 697, i32 4}
!26 = !{ptr @qede_vlan_rx_add_vid._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @qede_vlan_rx_add_vid._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 707, i32 3}
!30 = !{ptr @qede_vlan_rx_add_vid._entry.15, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @qede_vlan_rx_add_vid._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 726, i32 4}
!34 = !{ptr @qede_vlan_rx_add_vid._entry.18, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @qede_vlan_rx_add_vid._entry_ptr.20, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 794, i32 3}
!38 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @qede_configure_vlan_filters._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @qede_configure_vlan_filters._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 799, i32 4}
!43 = !{ptr @qede_configure_vlan_filters._entry.23, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @qede_configure_vlan_filters._entry_ptr.25, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 835, i32 2}
!47 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @qede_vlan_rx_kill_vid._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @qede_vlan_rx_kill_vid._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 844, i32 3}
!52 = !{ptr @qede_vlan_rx_kill_vid._entry.28, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @qede_vlan_rx_kill_vid._entry_ptr.30, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 853, i32 3}
!56 = !{ptr @qede_vlan_rx_kill_vid._entry.31, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @qede_vlan_rx_kill_vid._entry_ptr.33, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 864, i32 4}
!60 = !{ptr @qede_vlan_rx_kill_vid._entry.34, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @qede_vlan_rx_kill_vid._entry_ptr.36, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 900, i32 3}
!64 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @qede_vlan_mark_nonconfigured._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @qede_vlan_mark_nonconfigured._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.39, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1084, i32 3}
!69 = !{ptr @.str.40, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @qede_set_mac_addr._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @qede_set_mac_addr._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1090, i32 3}
!74 = !{ptr @qede_set_mac_addr._entry.41, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @qede_set_mac_addr._entry_ptr.43, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.45, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1105, i32 2}
!78 = !{ptr @qede_set_mac_addr._entry.44, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @qede_set_mac_addr._entry_ptr.46, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.48, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1108, i32 3}
!82 = !{ptr @qede_set_mac_addr._entry.47, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @qede_set_mac_addr._entry_ptr.49, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.50, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1206, i32 3}
!86 = !{ptr @.str.51, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @qede_config_rx_mode._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @qede_config_rx_mode._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.52, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1336, i32 3}
!91 = !{ptr @.str.53, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @qede_get_cls_rule_entry._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @qede_get_cls_rule_entry._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1888, i32 3}
!96 = !{ptr @.str.55, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @qede_add_tc_flower_fltr._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @qede_add_tc_flower_fltr._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.56, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!101 = !{ptr @.str.57, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 115, i32 3}
!103 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @qede_configure_arfs_fltr._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @qede_configure_arfs_fltr._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.59, !102, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.60, !102, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.61, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 145, i32 3}
!110 = !{ptr @.str.62, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @qede_enqueue_fltr_and_config_searcher._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @qede_enqueue_fltr_and_config_searcher._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!115 = !{ptr @.str.63, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.64, !114, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.65, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 665, i32 3}
!119 = !{ptr @.str.66, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @qede_config_accept_any_vlan._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @qede_config_accept_any_vlan._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.67, !118, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.68, !118, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.70, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 668, i32 3}
!126 = !{ptr @qede_config_accept_any_vlan._entry.69, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @qede_config_accept_any_vlan._entry_ptr.71, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.72, !125, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.73, !125, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @qede_udp_tunnels_both, !131, !"qede_udp_tunnels_both", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 988, i32 41}
!132 = !{ptr @qede_udp_tunnels_vxlan, !133, !"qede_udp_tunnels_vxlan", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 995, i32 4}
!134 = !{ptr @qede_udp_tunnels_geneve, !135, !"qede_udp_tunnels_geneve", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1001, i32 4}
!136 = !{ptr @.str.74, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1140, i32 3}
!138 = !{ptr @.str.75, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @qede_configure_mcast_filtering._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @qede_configure_mcast_filtering._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.76, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1391, i32 3}
!143 = !{ptr @.str.77, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @qede_poll_arfs_filter_config._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @qede_poll_arfs_filter_config._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.78, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1835, i32 3}
!148 = !{ptr @.str.79, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @qede_parse_flow_attr._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @qede_parse_flow_attr._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.81, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1842, i32 3}
!153 = !{ptr @qede_parse_flow_attr._entry.80, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @qede_parse_flow_attr._entry_ptr.82, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.84, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1862, i32 3}
!157 = !{ptr @qede_parse_flow_attr._entry.83, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @qede_parse_flow_attr._entry_ptr.85, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.86, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1765, i32 4}
!161 = !{ptr @.str.87, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @qede_flow_parse_v4_common._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @qede_flow_parse_v4_common._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.88, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1712, i32 4}
!166 = !{ptr @.str.89, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @qede_flow_parse_ports._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @qede_flow_parse_ports._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.90, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1541, i32 3}
!171 = !{ptr @.str.91, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @qede_set_v4_tuple_to_profile._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @qede_set_v4_tuple_to_profile._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.92, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1450, i32 52}
!176 = !{ptr @.str.93, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1450, i32 60}
!178 = !{ptr @.str.94, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1453, i32 4}
!180 = !{ptr @.str.95, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1740, i32 4}
!182 = !{ptr @.str.96, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @qede_flow_parse_v6_common._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @qede_flow_parse_v6_common._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.97, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1576, i32 3}
!187 = !{ptr @qede_set_v6_tuple_to_profile._entry, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @qede_set_v6_tuple_to_profile._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.98, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1674, i32 3}
!191 = !{ptr @.str.99, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @qede_parse_actions._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @qede_parse_actions._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.101, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1690, i32 5}
!196 = !{ptr @qede_parse_actions._entry.100, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @qede_parse_actions._entry_ptr.102, !195, !"_entry_ptr", i1 false, i1 false}
!198 = distinct !{null, !199, !"__already_done", i1 false, i1 false}
!199 = !{!"../include/net/flow_offload.h", i32 354, i32 2}
!200 = !{ptr @.str.103, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @__flow_action_hw_stats_check.__msg, !202, !"__msg", i1 false, i1 false}
!202 = !{!"../include/net/flow_offload.h", i32 358, i32 3}
!203 = distinct !{null, !204, !"__msg", i1 false, i1 false}
!204 = !{!"../include/net/flow_offload.h", i32 362, i32 3}
!205 = !{ptr @flow_action_mixed_hw_stats_check.__msg, !206, !"__msg", i1 false, i1 false}
!206 = !{!"../include/net/flow_offload.h", i32 323, i32 4}
!207 = !{ptr @.str.105, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1991, i32 3}
!209 = !{ptr @.str.106, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @qede_flow_spec_to_rule._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @qede_flow_spec_to_rule._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.107, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1504, i32 3}
!214 = !{ptr @.str.108, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @qede_flow_spec_validate_unused._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @qede_flow_spec_validate_unused._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.110, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1510, i32 3}
!219 = !{ptr @qede_flow_spec_validate_unused._entry.109, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @qede_flow_spec_validate_unused._entry_ptr.111, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.113, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1516, i32 3}
!223 = !{ptr @qede_flow_spec_validate_unused._entry.112, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @qede_flow_spec_validate_unused._entry_ptr.114, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.115, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1944, i32 3}
!227 = !{ptr @.str.116, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @qede_flow_spec_validate._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @qede_flow_spec_validate._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.118, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1950, i32 3}
!232 = !{ptr @qede_flow_spec_validate._entry.117, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @qede_flow_spec_validate._entry_ptr.119, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.121, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1957, i32 3}
!236 = !{ptr @qede_flow_spec_validate._entry.120, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @qede_flow_spec_validate._entry_ptr.122, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.123, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/qlogic/qede/qede_filter.c", i32 1621, i32 3}
!240 = !{ptr @.str.124, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @qede_flow_set_destination._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @qede_flow_set_destination._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{i32 1, !"wchar_size", i32 2}
!244 = !{i32 1, !"min_enum_size", i32 4}
!245 = !{i32 8, !"branch-target-enforcement", i32 0}
!246 = !{i32 8, !"sign-return-address", i32 0}
!247 = !{i32 8, !"sign-return-address-all", i32 0}
!248 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!249 = !{i32 7, !"uwtable", i32 1}
!250 = !{i32 7, !"frame-pointer", i32 2}
!251 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!252 = !{!"branch_weights", i32 1, i32 2000}
!253 = !{i8 0, i8 2}
!254 = !{!"branch_weights", i32 2000, i32 1}
!255 = !{!"auto-init"}
!256 = !{i64 2159370577}
!257 = !{i64 1037520, i64 1037537, i64 1037561, i64 1037587, i64 1037605}
!258 = !{i64 2159370935}
