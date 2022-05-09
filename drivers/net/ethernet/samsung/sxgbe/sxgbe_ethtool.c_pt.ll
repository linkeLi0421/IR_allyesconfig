; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/samsung/sxgbe/sxgbe_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/samsung/sxgbe/sxgbe_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sxgbe_stats = type { [32 x i8], i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sxgbe_ops = type { ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, i32, i32 }
%struct.mii_regs = type { i32, i32 }
%struct.mac_link = type { i32, i32, i32 }
%struct.sxgbe_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.114, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.114 = type { i32 }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }

@sxgbe_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 1, i32 0, ptr @sxgbe_getdrvinfo, ptr @sxgbe_get_regs_len, ptr @sxgbe_get_regs, ptr null, ptr null, ptr @sxgbe_getmsglevel, ptr @sxgbe_setmsglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @sxgbe_get_coalesce, ptr @sxgbe_set_coalesce, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sxgbe_get_strings, ptr null, ptr @sxgbe_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @sxgbe_get_sset_count, ptr @sxgbe_get_rxnfc, ptr @sxgbe_set_rxnfc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sxgbe_get_channels, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sxgbe_get_eee, ptr @sxgbe_set_eee, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"samsung_sxgbe\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.0.0\00", [26 x i8] zeroinitializer }, align 32
@sxgbe_gstrings_stats = internal constant { [78 x %struct.sxgbe_stats], [784 x i8] } { [78 x %struct.sxgbe_stats] [%struct.sxgbe_stats { [32 x i8] c"tx_process_stopped_irq\00\00\00\00\00\00\00\00\00\00", i32 4, i32 568 }, %struct.sxgbe_stats { [32 x i8] c"tx_ctxt_desc_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 572 }, %struct.sxgbe_stats { [32 x i8] c"tx_threshold\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 576 }, %struct.sxgbe_stats { [32 x i8] c"rx_threshold\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 580 }, %struct.sxgbe_stats { [32 x i8] c"tx_pkt_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 584 }, %struct.sxgbe_stats { [32 x i8] c"rx_pkt_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 588 }, %struct.sxgbe_stats { [32 x i8] c"normal_irq_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 592 }, %struct.sxgbe_stats { [32 x i8] c"tx_normal_irq_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 596 }, %struct.sxgbe_stats { [32 x i8] c"rx_normal_irq_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 600 }, %struct.sxgbe_stats { [32 x i8] c"napi_poll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 604 }, %struct.sxgbe_stats { [32 x i8] c"tx_clean\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 608 }, %struct.sxgbe_stats { [32 x i8] c"tx_reset_ic_bit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 612 }, %struct.sxgbe_stats { [32 x i8] c"rx_process_stopped_irq\00\00\00\00\00\00\00\00\00\00", i32 4, i32 616 }, %struct.sxgbe_stats { [32 x i8] c"rx_underflow_irq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 620 }, %struct.sxgbe_stats { [32 x i8] c"fatal_bus_error_irq\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 624 }, %struct.sxgbe_stats { [32 x i8] c"tx_read_transfer_err\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 628 }, %struct.sxgbe_stats { [32 x i8] c"tx_write_transfer_err\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 632 }, %struct.sxgbe_stats { [32 x i8] c"tx_desc_access_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 636 }, %struct.sxgbe_stats { [32 x i8] c"tx_buffer_access_err\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 640 }, %struct.sxgbe_stats { [32 x i8] c"tx_data_transfer_err\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 644 }, %struct.sxgbe_stats { [32 x i8] c"rx_read_transfer_err\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 648 }, %struct.sxgbe_stats { [32 x i8] c"rx_write_transfer_err\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 652 }, %struct.sxgbe_stats { [32 x i8] c"rx_desc_access_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 656 }, %struct.sxgbe_stats { [32 x i8] c"rx_buffer_access_err\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 660 }, %struct.sxgbe_stats { [32 x i8] c"rx_data_transfer_err\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 664 }, %struct.sxgbe_stats { [32 x i8] c"tx_lpi_entry_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 668 }, %struct.sxgbe_stats { [32 x i8] c"tx_lpi_exit_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 672 }, %struct.sxgbe_stats { [32 x i8] c"rx_lpi_entry_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 676 }, %struct.sxgbe_stats { [32 x i8] c"rx_lpi_exit_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 680 }, %struct.sxgbe_stats { [32 x i8] c"eee_wakeup_error_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 684 }, %struct.sxgbe_stats { [32 x i8] c"rx_code_gmii_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 688 }, %struct.sxgbe_stats { [32 x i8] c"rx_watchdog_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 692 }, %struct.sxgbe_stats { [32 x i8] c"rx_crc_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 696 }, %struct.sxgbe_stats { [32 x i8] c"rx_gaint_pkt_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 700 }, %struct.sxgbe_stats { [32 x i8] c"ip_hdr_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 704 }, %struct.sxgbe_stats { [32 x i8] c"ip_payload_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 708 }, %struct.sxgbe_stats { [32 x i8] c"overflow_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 712 }, %struct.sxgbe_stats { [32 x i8] c"len_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 716 }, %struct.sxgbe_stats { [32 x i8] c"mac_ctl_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 720 }, %struct.sxgbe_stats { [32 x i8] c"dcb_ctl_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 724 }, %struct.sxgbe_stats { [32 x i8] c"arp_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 728 }, %struct.sxgbe_stats { [32 x i8] c"oam_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 732 }, %struct.sxgbe_stats { [32 x i8] c"untag_okt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 736 }, %struct.sxgbe_stats { [32 x i8] c"other_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 740 }, %struct.sxgbe_stats { [32 x i8] c"svlan_tag_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 744 }, %struct.sxgbe_stats { [32 x i8] c"cvlan_tag_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 748 }, %struct.sxgbe_stats { [32 x i8] c"dvlan_ocvlan_icvlan_pkt\00\00\00\00\00\00\00\00\00", i32 4, i32 752 }, %struct.sxgbe_stats { [32 x i8] c"dvlan_osvlan_isvlan_pkt\00\00\00\00\00\00\00\00\00", i32 4, i32 756 }, %struct.sxgbe_stats { [32 x i8] c"dvlan_osvlan_icvlan_pkt\00\00\00\00\00\00\00\00\00", i32 4, i32 760 }, %struct.sxgbe_stats { [32 x i8] c"dvan_ocvlan_icvlan_pkt\00\00\00\00\00\00\00\00\00\00", i32 4, i32 764 }, %struct.sxgbe_stats { [32 x i8] c"not_ip_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 768 }, %struct.sxgbe_stats { [32 x i8] c"ip4_tcp_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 772 }, %struct.sxgbe_stats { [32 x i8] c"ip4_udp_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 776 }, %struct.sxgbe_stats { [32 x i8] c"ip4_icmp_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 780 }, %struct.sxgbe_stats { [32 x i8] c"ip4_unknown_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 784 }, %struct.sxgbe_stats { [32 x i8] c"ip6_tcp_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 788 }, %struct.sxgbe_stats { [32 x i8] c"ip6_udp_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 792 }, %struct.sxgbe_stats { [32 x i8] c"ip6_icmp_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 796 }, %struct.sxgbe_stats { [32 x i8] c"ip6_unknown_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 800 }, %struct.sxgbe_stats { [32 x i8] c"vlan_filter_match\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 804 }, %struct.sxgbe_stats { [32 x i8] c"sa_filter_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 808 }, %struct.sxgbe_stats { [32 x i8] c"da_filter_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 812 }, %struct.sxgbe_stats { [32 x i8] c"hash_filter_pass\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 816 }, %struct.sxgbe_stats { [32 x i8] c"l3_filter_match\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 820 }, %struct.sxgbe_stats { [32 x i8] c"l4_filter_match\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 824 }, %struct.sxgbe_stats { [32 x i8] c"timestamp_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 828 }, %struct.sxgbe_stats { [32 x i8] c"rx_msg_type_no_ptp\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 832 }, %struct.sxgbe_stats { [32 x i8] c"rx_ptp_type_sync\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 836 }, %struct.sxgbe_stats { [32 x i8] c"rx_ptp_type_follow_up\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 840 }, %struct.sxgbe_stats { [32 x i8] c"rx_ptp_type_delay_req\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 844 }, %struct.sxgbe_stats { [32 x i8] c"rx_ptp_type_delay_resp\00\00\00\00\00\00\00\00\00\00", i32 4, i32 848 }, %struct.sxgbe_stats { [32 x i8] c"rx_ptp_type_pdelay_req\00\00\00\00\00\00\00\00\00\00", i32 4, i32 852 }, %struct.sxgbe_stats { [32 x i8] c"rx_ptp_type_pdelay_resp\00\00\00\00\00\00\00\00\00", i32 4, i32 856 }, %struct.sxgbe_stats { [32 x i8] c"rx_ptp_type_pdelay_follow_up\00\00\00\00", i32 4, i32 860 }, %struct.sxgbe_stats { [32 x i8] c"rx_ptp_announce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 864 }, %struct.sxgbe_stats { [32 x i8] c"rx_ptp_mgmt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 868 }, %struct.sxgbe_stats { [32 x i8] c"rx_ptp_signal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 872 }, %struct.sxgbe_stats { [32 x i8] c"rx_ptp_resv_msg_type\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 876 }], [784 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/samsung/sxgbe/sxgbe_ethtool.c\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 16, i64 17]
@__sancov_gen_cov_switch_values.3 = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 16, i64 17]
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"sxgbe_ethtool_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 482, i32 33 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 178, i32 24 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 179, i32 25 }
@___asan_gen_.13 = private unnamed_addr constant [21 x i8] c"sxgbe_gstrings_stats\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 37, i32 33 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [54 x i8] c"../drivers/net/ethernet/samsung/sxgbe/sxgbe_ethtool.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 208, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @sxgbe_ethtool_ops, ptr @.str, ptr @.str.1, ptr @sxgbe_gstrings_stats, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_gstrings_stats to i32), i32 3120, i32 3904, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @sxgbe_set_ethtool_ops(ptr nocapture noundef writeonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @sxgbe_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_getdrvinfo(ptr nocapture noundef readnone %dev, ptr noundef %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #9
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.1, i32 noundef 32) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sxgbe_get_regs_len(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 8192
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_get_regs(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %regs, ptr nocapture noundef writeonly %space) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %dev, i32 2648
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 8
  %2 = call ptr @memset(ptr %space, i32 0, i32 8192)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %reg_offset.060 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %reg_ix.059 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %1, i32 %reg_offset.060
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !19
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !20
  %arrayidx = getelementptr i32, ptr %space, i32 %reg_ix.059
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %reg_ix.059, 1
  %add = add nuw nsw i32 %reg_offset.060, 4
  %exitcond.not = icmp eq i32 %inc, 896
  br i1 %exitcond.not, label %for.body.for.body6_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %reg_offset.162 = phi i32 [ %add16, %for.body6.for.body6_crit_edge ], [ 4096, %for.body.for.body6_crit_edge ]
  %reg_ix.161 = phi i32 [ %inc14, %for.body6.for.body6_crit_edge ], [ 896, %for.body.for.body6_crit_edge ]
  %add.ptr9 = getelementptr i8, ptr %1, i32 %reg_offset.162
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #9, !srcloc !19
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !21
  %arrayidx13 = getelementptr i32, ptr %space, i32 %reg_ix.161
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx13, align 4
  %inc14 = add nuw nsw i32 %reg_ix.161, 1
  %add16 = add nuw nsw i32 %reg_offset.162, 4
  %exitcond65.not = icmp eq i32 %inc14, 1472
  br i1 %exitcond65.not, label %for.body6.for.body20_crit_edge, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6

for.body6.for.body20_crit_edge:                   ; preds = %for.body6
  br label %for.body20

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.body6.for.body20_crit_edge
  %reg_offset.264 = phi i32 [ %add30, %for.body20.for.body20_crit_edge ], [ 12288, %for.body6.for.body20_crit_edge ]
  %reg_ix.263 = phi i32 [ %inc28, %for.body20.for.body20_crit_edge ], [ 1472, %for.body6.for.body20_crit_edge ]
  %add.ptr23 = getelementptr i8, ptr %1, i32 %reg_offset.264
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #9, !srcloc !19
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !22
  %arrayidx27 = getelementptr i32, ptr %space, i32 %reg_ix.263
  %11 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx27, align 4
  %inc28 = add nuw nsw i32 %reg_ix.263, 1
  %add30 = add nuw nsw i32 %reg_offset.264, 4
  %exitcond66.not = icmp eq i32 %inc28, 2048
  br i1 %exitcond66.not, label %do.end39, label %for.body20.for.body20_crit_edge

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body20

do.end39:                                         ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sxgbe_getmsglevel(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 3296
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @sxgbe_setmsglevel(ptr nocapture noundef writeonly %dev, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 3296
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %level, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_get_coalesce(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %use_riwt = getelementptr i8, ptr %dev, i32 3320
  %0 = ptrtoint ptr %use_riwt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %use_riwt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %rx_riwt = getelementptr i8, ptr %dev, i32 2416
  %2 = ptrtoint ptr %rx_riwt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_riwt, align 8
  %sxgbe_clk.i = getelementptr i8, ptr %dev, i32 3300
  %4 = ptrtoint ptr %sxgbe_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sxgbe_clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.sxgbe_riwt2usec.exit_crit_edge, label %if.end.i

if.then.sxgbe_riwt2usec.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sxgbe_riwt2usec.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = shl i32 %3, 8
  %div.i = udiv i32 %call.i, 1000000
  %div1.i = udiv i32 %mul.i, %div.i
  br label %sxgbe_riwt2usec.exit

sxgbe_riwt2usec.exit:                             ; preds = %if.end.i, %if.then.sxgbe_riwt2usec.exit_crit_edge
  %retval.0.i = phi i32 [ %div1.i, %if.end.i ], [ 0, %if.then.sxgbe_riwt2usec.exit_crit_edge ]
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %6 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.0.i, ptr %rx_coalesce_usecs, align 4
  br label %if.end

if.end:                                           ; preds = %sxgbe_riwt2usec.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_set_coalesce(ptr nocapture noundef %dev, ptr nocapture noundef readonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %0 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sxgbe_clk.i = getelementptr i8, ptr %dev, i32 3300
  %2 = ptrtoint ptr %sxgbe_clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sxgbe_clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %div.i = udiv i32 %call.i, 1000000
  %mul.i = mul i32 %div.i, %1
  %div13.i = lshr i32 %mul.i, 8
  %retval.0.i = select i1 %tobool.not.i, i32 0, i32 %div13.i
  %4 = add nsw i32 %retval.0.i, -113
  call void @__sanitizer_cov_trace_const_cmp4(i32 -112, i32 %4)
  %5 = icmp ult i32 %4, -112
  br i1 %5, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  %use_riwt = getelementptr i8, ptr %dev, i32 3320
  %6 = ptrtoint ptr %use_riwt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %use_riwt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.else.cleanup_crit_edge, label %if.end8

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %rx_riwt9 = getelementptr i8, ptr %dev, i32 2416
  %8 = ptrtoint ptr %rx_riwt9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %retval.0.i, ptr %rx_riwt9, align 8
  %hw = getelementptr i8, ptr %dev, i32 2660
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %dma = getelementptr inbounds %struct.sxgbe_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma, align 4
  %rx_watchdog = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %rx_watchdog to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_watchdog, align 4
  %ioaddr = getelementptr i8, ptr %dev, i32 2648
  %15 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr, align 8
  tail call void %14(ptr noundef %16, i32 noundef %retval.0.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -95, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_get_strings(ptr nocapture noundef readnone %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %entry.for.body_crit_edge, label %do.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.020 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %p.019 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %data, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [78 x %struct.sxgbe_stats], ptr @sxgbe_gstrings_stats, i32 0, i32 %i.020
  %0 = call ptr @memcpy(ptr %p.019, ptr %arrayidx, i32 32)
  %add.ptr = getelementptr i8, ptr %p.019, i32 32
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, 78
  br i1 %exitcond.not, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 208, i32 noundef 9, ptr noundef null) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %for.body.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_get_ethtool_stats(ptr nocapture noundef %dev, ptr nocapture noundef readnone %dummy, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %eee_enabled = getelementptr i8, ptr %dev, i32 3392
  %0 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eee_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cond.false.preheader_crit_edge, label %if.then

entry.cond.false.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.preheader

if.then:                                          ; preds = %entry
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %call1 = tail call i32 @phy_get_eee_err(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.cond.false.preheader_crit_edge, label %if.then3

if.then.cond.false.preheader_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.preheader

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %eee_wakeup_error_n = getelementptr i8, ptr %dev, i32 2988
  %4 = ptrtoint ptr %eee_wakeup_error_n to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call1, ptr %eee_wakeup_error_n, align 4
  br label %cond.false.preheader

cond.false.preheader:                             ; preds = %if.then3, %if.then.cond.false.preheader_crit_edge, %entry.cond.false.preheader_crit_edge
  br label %cond.false

cond.false:                                       ; preds = %cond.false.cond.false_crit_edge, %cond.false.preheader
  %i.017 = phi i32 [ %inc, %cond.false.cond.false_crit_edge ], [ 0, %cond.false.preheader ]
  %stat_offset = getelementptr [78 x %struct.sxgbe_stats], ptr @sxgbe_gstrings_stats, i32 0, i32 %i.017, i32 2
  %5 = ptrtoint ptr %stat_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stat_offset, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %6
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 4
  %conv = zext i32 %8 to i64
  %arrayidx7 = getelementptr i64, ptr %data, i32 %i.017
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %arrayidx7, align 8
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 78
  br i1 %exitcond.not, label %for.end, label %cond.false.cond.false_crit_edge

cond.false.cond.false_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

for.end:                                          ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sxgbe_get_sset_count(ptr nocapture noundef readnone %netdev, i32 noundef %sset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 78, i32 -22
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sxgbe_get_rxnfc(ptr nocapture noundef readnone %dev, ptr nocapture noundef %cmd, ptr nocapture noundef readnone %rule_locs) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %1)
  %cond = icmp eq i32 %1, 41
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %data.i, align 8
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flow_type.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %sw.bb.sw.epilog_crit_edge [
    i32 1, label %sw.bb.sw.epilog.sink.split.i_crit_edge
    i32 2, label %sw.bb.sw.epilog.sink.split.i_crit_edge4
    i32 3, label %sw.bb.sw.epilog.i_crit_edge
    i32 4, label %sw.bb.sw.epilog.i_crit_edge5
    i32 9, label %sw.bb.sw.epilog.i_crit_edge6
    i32 10, label %sw.bb.sw.epilog.i_crit_edge7
    i32 16, label %sw.bb.sw.epilog.i_crit_edge8
    i32 5, label %sw.bb.sw.epilog.sink.split.i_crit_edge9
    i32 6, label %sw.bb.sw.epilog.sink.split.i_crit_edge10
    i32 7, label %sw.bb.sw.epilog.i_crit_edge11
    i32 8, label %sw.bb.sw.epilog.i_crit_edge12
    i32 11, label %sw.bb.sw.epilog.i_crit_edge13
    i32 12, label %sw.bb.sw.epilog.i_crit_edge14
    i32 17, label %sw.bb.sw.epilog.i_crit_edge15
  ]

sw.bb.sw.epilog.i_crit_edge15:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.sw.epilog.i_crit_edge14:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.sw.epilog.i_crit_edge13:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.sw.epilog.i_crit_edge12:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.sw.epilog.i_crit_edge11:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.sw.epilog.sink.split.i_crit_edge10:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

sw.bb.sw.epilog.sink.split.i_crit_edge9:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

sw.bb.sw.epilog.i_crit_edge8:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.sw.epilog.i_crit_edge7:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.sw.epilog.i_crit_edge6:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.sw.epilog.i_crit_edge5:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.sw.epilog.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.sw.epilog.sink.split.i_crit_edge4:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

sw.bb.sw.epilog.sink.split.i_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog.sink.split.i:                           ; preds = %sw.bb.sw.epilog.sink.split.i_crit_edge, %sw.bb.sw.epilog.sink.split.i_crit_edge4, %sw.bb.sw.epilog.sink.split.i_crit_edge9, %sw.bb.sw.epilog.sink.split.i_crit_edge10
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 192, ptr %data.i, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %sw.bb.sw.epilog.i_crit_edge, %sw.bb.sw.epilog.i_crit_edge5, %sw.bb.sw.epilog.i_crit_edge6, %sw.bb.sw.epilog.i_crit_edge7, %sw.bb.sw.epilog.i_crit_edge8, %sw.bb.sw.epilog.i_crit_edge11, %sw.bb.sw.epilog.i_crit_edge12, %sw.bb.sw.epilog.i_crit_edge13, %sw.bb.sw.epilog.i_crit_edge14, %sw.bb.sw.epilog.i_crit_edge15
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %storemerge.in.i = load i64, ptr %data.i, align 8
  %storemerge.i = or i64 %storemerge.in.i, 48
  store i64 %storemerge.i, ptr %data.i, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.i ], [ -22, %sw.bb.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_set_rxnfc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %1)
  %cond = icmp eq i32 %1, 42
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data.i, align 8
  %and.i = and i64 %3, -241
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flow_type.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %5, label %if.end.i.sw.epilog_crit_edge [
    i32 1, label %if.end.i.sw.bb.i_crit_edge
    i32 5, label %if.end.i.sw.bb.i_crit_edge5
    i32 2, label %if.end.i.sw.bb17.i_crit_edge
    i32 6, label %if.end.i.sw.bb17.i_crit_edge6
    i32 3, label %if.end.i.sw.bb35.i_crit_edge
    i32 4, label %if.end.i.sw.bb35.i_crit_edge7
    i32 9, label %if.end.i.sw.bb35.i_crit_edge8
    i32 10, label %if.end.i.sw.bb35.i_crit_edge9
    i32 8, label %if.end.i.sw.bb35.i_crit_edge10
    i32 11, label %if.end.i.sw.bb35.i_crit_edge11
    i32 12, label %if.end.i.sw.bb35.i_crit_edge12
    i32 7, label %if.end.i.sw.bb35.i_crit_edge13
    i32 16, label %if.end.i.sw.bb35.i_crit_edge14
    i32 17, label %if.end.i.sw.bb35.i_crit_edge15
  ]

if.end.i.sw.bb35.i_crit_edge15:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35.i

if.end.i.sw.bb35.i_crit_edge14:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35.i

if.end.i.sw.bb35.i_crit_edge13:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35.i

if.end.i.sw.bb35.i_crit_edge12:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35.i

if.end.i.sw.bb35.i_crit_edge11:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35.i

if.end.i.sw.bb35.i_crit_edge10:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35.i

if.end.i.sw.bb35.i_crit_edge9:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35.i

if.end.i.sw.bb35.i_crit_edge8:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35.i

if.end.i.sw.bb35.i_crit_edge7:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35.i

if.end.i.sw.bb35.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb35.i

if.end.i.sw.bb17.i_crit_edge6:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

if.end.i.sw.bb17.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

if.end.i.sw.bb.i_crit_edge5:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge5
  %7 = and i64 %3, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 240, i64 %7)
  %.not87.i = icmp eq i64 %7, 240
  br i1 %.not87.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %sw.bb.i.sw.epilog_crit_edge

sw.bb.i.sw.epilog_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %if.end.i.sw.bb17.i_crit_edge, %if.end.i.sw.bb17.i_crit_edge6
  %8 = and i64 %3, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 240, i64 %8)
  %.not.i = icmp eq i64 %8, 240
  br i1 %.not.i, label %sw.bb17.i.sw.epilog.i_crit_edge, label %sw.bb17.i.sw.epilog_crit_edge

sw.bb17.i.sw.epilog_crit_edge:                    ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb17.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb35.i:                                        ; preds = %if.end.i.sw.bb35.i_crit_edge, %if.end.i.sw.bb35.i_crit_edge7, %if.end.i.sw.bb35.i_crit_edge8, %if.end.i.sw.bb35.i_crit_edge9, %if.end.i.sw.bb35.i_crit_edge10, %if.end.i.sw.bb35.i_crit_edge11, %if.end.i.sw.bb35.i_crit_edge12, %if.end.i.sw.bb35.i_crit_edge13, %if.end.i.sw.bb35.i_crit_edge14, %if.end.i.sw.bb35.i_crit_edge15
  %9 = and i64 %3, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %9)
  %10 = icmp eq i64 %9, 48
  br i1 %10, label %sw.bb35.i.sw.epilog.i_crit_edge, label %sw.bb35.i.sw.epilog_crit_edge

sw.bb35.i.sw.epilog_crit_edge:                    ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb35.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb35.i.sw.epilog.i_crit_edge, %sw.bb17.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %reg_val.0.i = phi i32 [ 4, %sw.bb.i.sw.epilog.i_crit_edge ], [ 8, %sw.bb17.i.sw.epilog.i_crit_edge ], [ 2, %sw.bb35.i.sw.epilog.i_crit_edge ]
  %ioaddr.i = getelementptr i8, ptr %dev, i32 2648
  %11 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr.i4 = getelementptr i8, ptr %12, i32 3200
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #9, !srcloc !19
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !23
  %or.i = or i32 %14, %reg_val.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !24
  tail call void @arm_heavy_mb() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %16 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr55.i = getelementptr i8, ptr %17, i32 3200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.i, i32 %15) #9, !srcloc !25
  %18 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr59.i = getelementptr i8, ptr %19, i32 3200
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i) #9, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !26
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.i, %sw.bb35.i.sw.epilog_crit_edge, %sw.bb17.i.sw.epilog_crit_edge, %sw.bb.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.i ], [ -22, %sw.bb.sw.epilog_crit_edge ], [ -22, %sw.bb.i.sw.epilog_crit_edge ], [ -22, %sw.bb17.i.sw.epilog_crit_edge ], [ -22, %sw.bb35.i.sw.epilog_crit_edge ], [ -22, %if.end.i.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @sxgbe_get_channels(ptr nocapture noundef readnone %dev, ptr nocapture noundef writeonly %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %max_rx = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 1
  %0 = ptrtoint ptr %max_rx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16, ptr %max_rx, align 4
  %max_tx = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 2
  %1 = ptrtoint ptr %max_tx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16, ptr %max_tx, align 4
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 5
  %2 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16, ptr %rx_count, align 4
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 6
  %3 = ptrtoint ptr %tx_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %tx_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_get_eee(ptr nocapture noundef readonly %dev, ptr noundef %edata) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %eee = getelementptr i8, ptr %dev, i32 3200
  %0 = ptrtoint ptr %eee to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eee, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %eee_enabled = getelementptr i8, ptr %dev, i32 3392
  %2 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eee_enabled, align 8
  %eee_enabled1 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %4 = ptrtoint ptr %eee_enabled1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %eee_enabled1, align 4
  %eee_active = getelementptr i8, ptr %dev, i32 3396
  %5 = ptrtoint ptr %eee_active to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %eee_active, align 4
  %eee_active2 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 4
  %7 = ptrtoint ptr %eee_active2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %eee_active2, align 4
  %tx_lpi_timer = getelementptr i8, ptr %dev, i32 3400
  %8 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_lpi_timer, align 8
  %tx_lpi_timer3 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 7
  %10 = ptrtoint ptr %tx_lpi_timer3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tx_lpi_timer3, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %11 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phydev, align 16
  %call4 = tail call i32 @phy_ethtool_get_eee(ptr noundef %12, ptr noundef %edata) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_set_eee(ptr noundef %dev, ptr noundef %edata) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %eee_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %0 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eee_enabled, align 4
  %eee_enabled1 = getelementptr i8, ptr %dev, i32 3392
  %2 = ptrtoint ptr %eee_enabled1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %eee_enabled1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sxgbe_disable_eee_mode(ptr noundef %add.ptr.i) #9
  br label %if.end9

if.else:                                          ; preds = %entry
  %call3 = tail call zeroext i1 @sxgbe_eee_init(ptr noundef %add.ptr.i) #9
  %conv = zext i1 %call3 to i32
  %3 = ptrtoint ptr %eee_enabled1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %eee_enabled1, align 8
  br i1 %call3, label %if.end, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %tx_lpi_timer = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 7
  %4 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_lpi_timer, align 4
  %tx_lpi_timer8 = getelementptr i8, ptr %dev, i32 3400
  %6 = ptrtoint ptr %tx_lpi_timer8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tx_lpi_timer8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %7 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phydev, align 16
  %call10 = tail call i32 @phy_ethtool_set_eee(ptr noundef %8, ptr noundef %edata) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ -95, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_get_eee_err(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_eee(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sxgbe_disable_eee_mode(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sxgbe_eee_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_eee(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @sxgbe_ethtool_ops, !1, !"sxgbe_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_ethtool.c", i32 482, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_ethtool.c", i32 178, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_ethtool.c", i32 179, i32 25}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_ethtool.c", i32 208, i32 3}
!8 = !{ptr @sxgbe_gstrings_stats, !9, !"sxgbe_gstrings_stats", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_ethtool.c", i32 37, i32 33}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 4240365}
!20 = !{i64 2156517178}
!21 = !{i64 2156517686}
!22 = !{i64 2156518194}
!23 = !{i64 2156515720}
!24 = !{i64 2156515949}
!25 = !{i64 4239947}
!26 = !{i64 2156516649}
